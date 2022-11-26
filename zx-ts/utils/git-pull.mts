import { writerLog } from "./sql-helper.mjs";
import { baseUrl } from "./common.mjs";
import { $ } from 'zx'
/**
 * 通过全局项目进行拉取
 */
export const gitPull = async () => {
  const { projectPath, projectName } = global.project;
  const path = baseUrl() +"\\" + projectPath;
  await gitPullBy(projectName, path);
};

/**
 * 通过传入参数进行拉取
 * @param {*} name
 * @param {*} path
 */
export const gitPullBy = async(projectName: string, path: string) => {
  try {
     writerLog(projectName, `git pull start`, global.version);
    const gitPullInfo = await $`cd ${path}; git pull;`;
    console.log(gitPullInfo, "pullInfo");
    if (gitPullInfo.exitCode === 0) {
       writerLog(projectName, `git pull end success`, global.version);
    } else {
      console.log("fail", $`$?`);
    }
  } catch {
     writerLog(projectName, `git pull error`, global.version);
  }
};
