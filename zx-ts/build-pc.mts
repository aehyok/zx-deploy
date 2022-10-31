import { gitPull } from "./utils/git-pull.mjs";
import { yarnBuildBy, yarnBuildChildList } from "./utils/yarn-build.mjs";
import { baseUrl } from "./utils/common.mjs";
import { gitTag } from "./utils/git-tag.mjs";
import { copyFile } from "./utils/copy-file.mjs";
import { gitPush } from "./utils/git-push.mjs";

const project = "dvs-server-ui-dev";
const path = baseUrl + project;
const mainPath = path + "/" + "dvs-main";

const appChildListPath =  [
  path + "/" + "dvs-basic",
  path + "/" + "dvs-cons",
  path + "/" + "dvs-village",
  path + "/" + "dvs-digital",
  path + "/" + "dvs-park",
  path + "/" + "dvs-gis",
  path + "/" + "dvs-ffp",
  path + "/" + "dvs-collect",
  path + "/" + "dvs-company",
  path + "/" + "dvs-facility",
];
export const build_pc = async (tag,child) => {
  console.log("build_pc", 'appversion');

  await gitPull();

  if(!child) {
    await yarnBuildBy(mainPath);
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
