import { baseUrl } from "./utils/common.mjs";
import { gitTag } from './utils/git-tag.mjs'
import { gitPull } from './utils/git-pull.mjs'
import { yarnBuild } from "./utils/yarn-build.mjs";
import { copyFile } from "./utils/copy-file.mjs";
import { gitPush } from "./utils/git-push.mjs";
let path = ""; 

const init = () => {
  path = baseUrl + global.projectPath;
};

export const build = async (tag: string) => {
  init();
  
  await gitPull();
  await yarnBuild();
  if(tag) {
    await gitTag();
  }

  await copyFile()
  await gitPush()
};