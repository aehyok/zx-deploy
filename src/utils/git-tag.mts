import { baseUrl, getFullVersion, getPrefix } from "./common.mjs";
import { writerLog } from "./sql-helper.mjs";
import { $ } from 'zx'

export const gitTag = async (releasePath: string = '') => {
  let path = ""
  let isExist = false
  if(releasePath) {
    path = releasePath
   } else {
    const { projectPath } = global.project
    path = baseUrl() + getPrefix() + projectPath
    isExist = await isExistTag(path) || false
    console.log(isExist, 'isExist')
   }
  if (isExist) {
    let isSuccess = await deleteTag(path);
    if (isSuccess) {
      await addTag(path, isExist);
    } else {
      await oneLogger(`delete tag [${getFullVersion()}] error`);
    }
  } else {
    await addTag(path,false);
  }
};

const isExistTag = async (path: string) => {
  const result = await $` cd ${path};git tag;`;
  console.log("判断是否存在tag", result);
  if (result && result.exitCode === 0) {
    let array = result.stdout.split("\n");
    if (array.length > 0 && array.includes(getFullVersion())) {
      return true;
    }
    return false;
  }
};

const deleteTag = async (path: string) => {
  oneLogger(`delete tag [${getFullVersion()}] start`);
  const result = await $` cd ${path}; 
                            git tag -d ${getFullVersion()}; 
                            git push origin :refs/tags/${getFullVersion()}`;
  if (result.exitCode === 0) {
    await oneLogger(`delete tag [${getFullVersion()}] end success`);
    return true;
  }
  return false;
};

/**
 *
 * @param {*} path 路径
 * @param {*} isExist 0为不存在，直接创建的；1为已存在删除的，重新创建
 */
const addTag = async (path: string, isExist: boolean) => {
  console.log(path, '----------------path---------------')
  const result = await $` cd ${path};
                           git tag -a ${getFullVersion()} -m 'chore:version ${getFullVersion()}版本号'; 
                           git push origin ${getFullVersion()};`;
  if (result && result.exitCode === 0) {
    if (isExist) {
      await oneLogger(`re create tag [${getFullVersion()}] success`);
    } else {
      await oneLogger(`create tag [${getFullVersion()}] success`);
    }
  }
};

const oneLogger = (info: any)=> {
  console.log(info);
  const { projectName } = global.project;
  writerLog(projectName, info, getFullVersion());
};
