import { gitPull } from "./utils/git-pull.mjs";
import { yarnBuildBy, yarnBuildChildList } from "./utils/yarn-build.mjs";
import { baseUrl, getCopyBaseUrl, getPrefix } from "./utils/common.mjs";
import { gitTag } from "./utils/git-tag.mjs";
import { copyFile } from "./utils/copy-file.mjs";
import { gitPush } from "./utils/git-push.mjs";
import { updateVersion } from "./utils/fs-version.mjs";
import { $ } from 'zx'

export const build_pc = async (tag,child,git) => {
  console.log("build_pc", 'appversion');
  const { projectPath } = global.project

  const path = baseUrl() + getPrefix() + projectPath;
  const mainPath = path + getPrefix() + "dvs-main";

  const appChildListPath =  [
    path + getPrefix() + "dvs-base",
    path + getPrefix() + "dvs-cons",
    path + getPrefix() + "dvs-village",
    path + getPrefix() + "dvs-ffp",
    path + getPrefix() + "dvs-facility",
    path + getPrefix() + "dvs-company",
    path + getPrefix() + "dvs-collect",
    path + getPrefix() + "dvs-monitor",
    path + getPrefix() + "dvs-gis",
    // path + getPrefix() + "dvs-chat",
    path + getPrefix() + "dvs-workflow",
  ];

  await gitPull();

  // 编译主应用前，先备份child目录
  if(child ==="dvs-main") {
    const deleteResult = await $`rm -rf ${getCopyBaseUrl()}/release/cms/child/`
    const createResult = await $`mkdir ${getCopyBaseUrl()}/release/cms/child/`
    const copyResult = await $`scp -r ${getCopyBaseUrl()}/release/cms/console/child/* /e/work/git-${global.environment}/release/cms/child/`
  }
  if(!child || child === "dvs-main") {
    updateVersion(mainPath);

    console.log('main build dvs-main start',mainPath)
    await yarnBuildBy(mainPath, 'yarn');
  }

  if(child && child !== "dvs-main") {
    const childList = appChildListPath.find(item => item.includes(child))
    
    await yarnBuildChildList([childList]);
  } else if (!child) {
    await yarnBuildChildList(appChildListPath);
  }

  if(child ==="dvs-main") {
    const createResult = await $`mkdir ${getCopyBaseUrl()}/release/cms/console/child/`
    const copyResult = await $`scp -r ${getCopyBaseUrl()}/release/cms/child/* /e/work/git-${global.environment}/release/cms/console/child/`
    const deleteResult = await $`rm -rf ${getCopyBaseUrl()}/release/cms/child/`
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