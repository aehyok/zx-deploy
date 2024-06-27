import { writerLog } from "./sql-helper.mjs";
import { baseUrl, getFullVersion, getPrefix } from "./common.mjs";
import { $ } from "zx";

export const yarnBuild = async () => {
  const { projectPath } = global.project;
  const path = baseUrl() + getPrefix() + projectPath;
  await yarnBuildBy(path);
};

export const yarnBuildBy = async (path: string, pnpm: string = '') => {
  try {
    oneLogger(`yarn build start ${path}`);
    let buildType = ""
    let install = ""
    let buildInfo: any = null
    if(pnpm =="pnpm") {
      buildType = 'pnpm'
      install = 'pnpm'
      buildInfo = await $` cd ${path}; pnpm i; ${buildType} build;`;
    } else {
      buildType = "yarn"
      install = "yarn"
      buildInfo = await $` cd ${path}; yarn; ${buildType} build;`;
    }
    console.log(buildInfo, "buildInfo");
    if (buildInfo.exitCode === 0) {
      oneLogger(`yarn build end success:  ${path}`);
    } else {
      oneLogger(`yarn build error: ${path}:  ${buildInfo.stderr}`, "error");
    }
  } catch (error) {
    console.log("yarn build error", error);
    oneLogger(`yarn build error: ${path}`, "error");
  }
};

const chunkArray = (array, size) => {
  const chunked_arr: any[] = [];
  let index = 0;
  while (index < array.length) {
    chunked_arr.push(array.slice(index, size + index));
    index += size;
  }
  return chunked_arr;
};

export const yarnBuildChildList = async (list: any) => {
  oneLogger("yarn build childList start");
  try {

    const threads = process.env.threads ? parseInt(process.env.threads) : 3;
    console.log(threads, "threads");
    const groupedPaths = chunkArray(list, threads);

    for (const group of groupedPaths) {
      const promises = group.map(item => $`cd ${item}; ${global.buildType}; ${global.buildType} build`);
      const results = await Promise.allSettled(promises);
      for (const [index, result]  of results.entries()) {
        if((result as any).exitCode === 0) {
          console.log(result,"每个子项目的编译结果");
          oneLogger(`yarn build childList:${group[index]} `, "success");
        }
        else {
          oneLogger(`yarn build childList:${group[index]} `, "error");
        }
      }
    }
  } catch (error) {
    console.log(error, "error");
    oneLogger("yarn build childList error", "error");
  }
};

const oneLogger = (info, type= 'info') => {
  const { projectName } = global.project;
  writerLog(projectName, info, getFullVersion(), type);
};

function executePromisesInSequence(promiseFunctions) {
  let chain: any = Promise.resolve();
  const results: any = [];

  promiseFunctions.forEach(fn => {
    chain = chain.then(() => {
      return fn();
    }).then(result => {
      results.push(result);
      return results;
    });
  });

  return chain;
}