import { baseUrl } from "./utils/common.mjs";
import { gitTag } from './utils/git-tag.mjs'
import { gitPull } from './utils/git-pull.mjs'
import { yarnBuildBy } from "./utils/yarn-build.mjs";
import { copyFile } from "./utils/copy-file.mjs";
import { gitPush } from "./utils/git-push.mjs";


export const build_one = async (tag: string) => {
  const { projectPath } = global.project

  const path = `${baseUrl()}\\\\${projectPath}`;
  await gitPull();
  await yarnBuildBy(path);
  if(tag) {
    await gitTag();
  }

  await copyFile()
  await gitPush()
};