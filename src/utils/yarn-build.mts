import { writerLog } from "./sql-helper.mjs";
import { baseUrl } from "./common.mjs";
import { $ } from "zx";

export const yarnBuild = async () => {
  const { projectPath } = global.project;
  const path = baseUrl() + "\\" + projectPath;
  await yarnBuildBy(path);
};

export const yarnBuildBy = async (path: string) => {
  try {
    oneLogger(`yarn build start ${path}`);
    const buildInfo = await $` cd ${path}; ${global.buildType} build;`;
    console.log(buildInfo, "buildInfo");
    if (buildInfo.exitCode === 0) {
      oneLogger(`yarn build end success`);
    } else {
      oneLogger(`yarn build error: ${buildInfo.stderr}`);
    }
  } catch (error) {
    console.log("yarn build error", error);
    oneLogger("yarn build error");
  }
};

export const yarnBuildChildList = async (list: any) => {
  console.log(list, "yarn build child list");
  oneLogger("yarn build childList start");
  try {
    const result = await Promise.all(
      list.map((item) => {
        return $`cd ${item}; ${global.buildType} build`;
      })
    );
    if (result) {
      console.log("all", result);
      oneLogger("yarn build childList start");
    }
  } catch (error) {
    console.log(error, "error");
    oneLogger("yarn build childList error");
  }
};

const oneLogger = (info) => {
  console.log(info);
  const { projectName } = global.project;
  writerLog(projectName, info, global.version);
};
