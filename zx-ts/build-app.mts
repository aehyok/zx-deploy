import { baseUrl } from "./utils/common.mjs";
import { gitPull } from "./utils/git-pull.mjs";
import { yarnBuildBy, yarnBuildChildList } from "./utils/yarn-build.mjs";
import { gitTag } from "./utils/git-tag.mjs";
import { $ } from 'zx'
import { copyFile } from "./utils/copy-file.mjs";
import { gitPush } from "./utils/git-push.mjs";
import fs from 'fs-extra';

export const build_app = async (tag,child) => {

  const { projectPath } = global.project

  const path = baseUrl() + projectPath;
  const mainPath = path + "/" + "main-app";
  
  const appChildListPath = [path + "/" + "ffp-app"];


  console.log('build_app', 'appversion');

  await gitPull();
  if(!child) {
    // let file = 'package.json';
    // const cdInfo = await $` cd ${mainPath};`;
    // if (cdInfo.exitCode === 0) {
    //   const packageJson = await fs.readJsonSync('./package.json')
    //   // console.log(packageJson.version, packageJson.environment, 'packageObj');
    //   // const packageJson = JSON.parse(cdInfo.stdout)
    //   console.log(packageJson.version, 'dddddd')
    // } else {

    // }
    await yarnBuildBy(mainPath);
  }

  await yarnBuildChildList(appChildListPath);

  if(tag) {
    await gitTag();
  }

  await copyFile()
  await gitPush()
};
