import { gitPull } from "./utils/git-pull.mjs";
import { yarnBuildBy, yarnBuildChildList } from "./utils/yarn-build.mjs";
import { baseUrl } from "./utils/common.mjs";
import { gitTag } from "./utils/git-tag.mjs";
import { copyFile } from "./utils/copy-file.mjs";
import { gitPush } from "./utils/git-push.mjs";
import { updateVersion } from "./utils/fs-version.mjs";

// const project = "dvs-server-ui-dev";
// const path = baseUrl() + project;
// const mainPath = path + "\\" + "dvs-main";
// console.log(path, mainPath, '-----path-----mainpath');

export const build_pc = async (tag,child) => {
  console.log("build_pc", 'appversion');
  const { projectPath } = global.project

  const path = baseUrl() +'\\' + projectPath;
  const mainPath = path + "\\" + "dvs-main";

  const appChildListPath =  [
    path + "\\" + "dvs-base",
    path + "\\" + "dvs-cons",
    path + "\\" + "dvs-village",
    path + "\\" + "dvs-digital",
    path + "\\" + "dvs-ffp",
    path + "\\\\" + "dvs-facility",
    path + "\\\\" + "dvs-company",
    // path + "\\\\" + "dvs-park",
    // path + "\\\\" + "dvs-gis",
    // path + "\\\\" + "dvs-collect",
    // path + "\\\\" + "dvs-facility",
  ];

  await gitPull();

  if(!child) {
    updateVersion(mainPath);

    console.log('main build failed',mainPath)
    await yarnBuildBy(mainPath, 'pnpm');
  }

  if(child) {
    const childList = appChildListPath.find(item => item.includes(child))
    
    await yarnBuildChildList([childList]);
  } else {
    await yarnBuildChildList(appChildListPath);
  }

  if(tag) {
    await gitTag();
  }

  await copyFile()
  await gitPush()
};