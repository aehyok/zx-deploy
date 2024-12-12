import { baseUrl_github, baseUrl, getPrefix } from "./utils/common.mjs";
import { gitTag } from './utils/git-tag.mjs'
import { gitPull_Github, gitPull } from './utils/git-pull.mjs'
import { yarnBuildBy } from "./utils/yarn-build.mjs";
import { copyFile, copyFile_Github } from "./utils/copy-file.mjs";
import { gitPush } from "./utils/git-push.mjs";

export const build_one = async (tag: string) => {
  const { projectPath } = global.project;

  const path = `${baseUrl()}${getPrefix()}${projectPath}`;
  await gitPull();
  await yarnBuildBy(path);
  if(tag) {
    await gitTag();
  }

  await copyFile()
  await gitPush()
};


export const build_github = async () => {
  const { projectPath, uiPath } = global.project;

  const path = `${baseUrl_github()}${getPrefix()}${projectPath}${getPrefix()}${uiPath}`;
  console.log(path, "path")
  await gitPull_Github();
  await yarnBuildBy(path, "pnpm");

  await copyFile_Github()
};