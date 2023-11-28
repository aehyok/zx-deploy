import { writerLog } from "./sql-helper.mjs";
import { baseUrl, getFullVersion, getPrefix, isMac } from "./common.mjs";
import { $ } from 'zx'
/**
 * 通过全局项目进行拉取
 */
export const gitPull = async () => {
  const { projectPath, projectName } = global.project;
  const path = baseUrl() + getPrefix() + projectPath;
  await gitPullBy(projectName, path);
};

/**
 * 通过传入参数进行拉取
 * @param {*} name
 * @param {*} path
 */
export const gitPullBy = async(projectName: string, path: string) => {
  try {
     // && git checkout -- . ;  如果脱离本地 可以加上 防止git pull 冲突
     writerLog(projectName, `git pull start ${path}`, getFullVersion());
    const gitPullInfo = await $`cd ${path} && git pull;`;
    console.log(gitPullInfo, "pullInfo");
    if (gitPullInfo.exitCode === 0) {
       writerLog(projectName, `git pull end success ${path}`, getFullVersion());
    } else {
      console.log("git pull fail ${path}", $`$?`);
    }
  } catch {
     writerLog(projectName, `git pull error ${path}`, getFullVersion());
  }
};

/**
 * 可用于每次编译前拉取release项目（保证为最新而不冲突）
 */
export const gitPullRelease = async () => {
  let prefix = isMac() ? '/' : '\\\\'
  const releasePath = baseUrl() + prefix + 'release';
  await gitPullBy("release",releasePath);
}