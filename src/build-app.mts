import { baseUrl, isMac } from "./utils/common.mjs";
import { gitPull } from "./utils/git-pull.mjs";
import { yarnBuildBy, yarnBuildChildList } from "./utils/yarn-build.mjs";
import { gitTag } from "./utils/git-tag.mjs";
import { copyFile } from "./utils/copy-file.mjs";
import { gitPush } from "./utils/git-push.mjs";
import { updateVersion } from "./utils/fs-version.mjs";
export const build_app = async (tag,child, git) => {

  const { projectPath } = global.project

  const path = `${baseUrl()}\\${projectPath}`;

  const mainPath = path + "\\" + "main-app";

  const ffp = path + "\\" + "ffp-app";

  const prefix = isMac() ? "/" : "\\\\";
  const appChildListPath = [path + prefix + "ffp-app"];

  console.log('build_app', 'appversion');

  await gitPull();
  if(!child) {
    
    // updateVersion(ffp);

    await yarnBuildBy(mainPath);
  }

  await yarnBuildChildList(appChildListPath);

  if(tag) {
    await gitTag();
  }

  await copyFile()
  if(git) {
    await gitPush()
  }
};

