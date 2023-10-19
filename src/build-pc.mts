import { gitPull } from "./utils/git-pull.mjs";
import { yarnBuildBy, yarnBuildChildList } from "./utils/yarn-build.mjs";
import { baseUrl } from "./utils/common.mjs";
import { gitTag } from "./utils/git-tag.mjs";
import { copyFile } from "./utils/copy-file.mjs";
import { gitPush } from "./utils/git-push.mjs";
import { updateVersion } from "./utils/fs-version.mjs";
import { $ } from 'zx'

// const project = "dvs-server-ui-dev";
// const path = baseUrl() + project;
// const mainPath = path + "\\" + "dvs-main";
// console.log(path, mainPath, '-----path-----mainpath');

export const build_pc = async (tag,child,git) => {
  console.log("build_pc", 'appversion');
  const { projectPath } = global.project

  const path = baseUrl() +'\\' + projectPath;
  const mainPath = path + "\\" + "dvs-main";

  const appChildListPath =  [
    path + "\\" + "dvs-base",
    path + "\\" + "dvs-cons",
    path + "\\" + "dvs-village",
    path + "\\" + "dvs-ffp",
    path + "\\" + "dvs-facility",
    path + "\\" + "dvs-company",
    path + "\\" + "dvs-collect",
    path + "\\" + "dvs-monitor",
    // path + "\\\\" + "dvs-gis",
  ];

  await gitPull();

  console.log("child----project-----------------------------------", child !=="dvs-main");

  // 编译主应用前，先备份child目录
  if(child ==="dvs-main") { 
    const deleteResult = await $`rm -rf /e/work/git-${global.environment}/release/cms/child/`
    const createResult = await $`mkdir /e/work/git-${global.environment}/release/cms/child/`
    const copyResult = await $`scp -r /e/work/git-${global.environment}/release/cms/console/child/* /e/work/git-${global.environment}/release/cms/child/`
  }
  if(!child || child === "dvs-main") {
    updateVersion(mainPath);

    console.log('main build dvs-main start',mainPath)
    await yarnBuildBy(mainPath, 'pnpm');
  }

  if(child && child !== "dvs-main") {
    const childList = appChildListPath.find(item => item.includes(child))
    
    await yarnBuildChildList([childList]);
  } else if (!child) {
    await yarnBuildChildList(appChildListPath);
  }

  if(child ==="dvs-main") {
    const createResult = await $`mkdir /e/work/git-${global.environment}/release/cms/console/child/`
    const copyResult = await $`scp -r /e/work/git-${global.environment}/release/cms/child/* /e/work/git-${global.environment}/release/cms/console/child/`
    const deleteResult = await $`rm -rf /e/work/git-${global.environment}/release/cms/child/`
  }
  if(tag) {
    await gitTag();
  }

  await copyFile()
  
  if(git) {
    await gitPush()
  }
};

// 创建自定义执行命令的方法