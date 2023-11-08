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
    if(pnpm) {
      buildType = 'pnpm'
      install = 'pnpm i'
      buildInfo = await $` cd ${path};pnpm i; ${buildType} build;`;
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

export const yarnBuildChildList = async (list: any) => {
  console.log(list, "yarn build child list");
  oneLogger("yarn build childList start");
  try {
    const execList = list.map((item) => {
      return {
        key: item,
        exec: $`cd ${item}; ${global.buildType}; ${global.buildType} build`
      };
    })

    console.log(execList, '--------------list--------------------')
    const resultList: any = []
    for (let item of execList) {
      try{
        const result = await item.exec;
        oneLogger(`build child success: ${item.key}`);
        resultList.push(result);
      }
      catch {
        console.log(item.key, "编译时发生异常")
        oneLogger(`yarn build childList error: ${item.key}`, "error");
      }
    }

    console.log(resultList, 'result-list');

    // const result = await Promise.all(execList);
    // if (result) {
    //   console.log("all", result);
    //   oneLogger("yarn build childList start");
    // }
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