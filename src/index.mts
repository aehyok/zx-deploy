#!/usr/bin/env zx

import { $, argv } from "zx";
import { build_app } from "./build-app.mjs";
import { build_pc } from "./build-pc.mjs";
import { build_one } from "./build-one.mjs";
import fs from "fs-extra";
import { gitPull, gitPullRelease } from "./utils/git-pull.mjs";
import { gitTag } from "./utils/git-tag.mjs";
import { getFullVersion, isMac, getMiniPath } from "./utils/common.mjs";
import { updateVersion } from "./utils/fs-version.mjs";
import { config } from "dotenv";

config();

console.log(isMac(), "isMac--------------");

const packageJson = fs.readJsonSync("./package.json");
console.log(packageJson.version, packageJson.environment, "packageObj");
$.verbose = true;

let projectList = [
  {
    projectName: "console",
    projectPath: "server-ui",
  },
  {
    projectName: "dvschat",
    projectPath: "dvs-chat",
  },
  {
    projectName: "mp",
    projectPath: "mp-h5",
  },
  {
    projectName: "mini",
    projectPath: "mini-program",
  },
  {
    projectName: "robot",
    projectPath: "robot-ui",
  },
];

// 获取版本信息

console.log($, argv, "---------------parameters---------------");
global.version = packageJson.version;
global.environment = packageJson.environment;
global.lastVersion = packageJson.lastVersion;
console.log("--------------------------");
console.log(`当前编译环境：${global.environment}`);
console.log("--------------------------");

console.log(
  getFullVersion(),
  "--------------getFullVersion---------------------"
);
// 获取项目信息
console.log(argv.p, "p");
let projectName = argv.p;
let tag = argv.t;
console.log(tag, "tag");
let git = argv.g;
console.log(git, "git");

let buildType = argv.b; // 通过什么工具进行编译 yarn  pnpm,默认为yarn
if (buildType == "pnpm") {
  global.buildType = buildType;
} else {
  global.buildType = "yarn";
}

console.log(buildType, "buildType");

let child = argv.c;
console.log(child, "child");
global.childName = child;
global.project = projectList.find((item) => item.projectName === projectName);
console.log("global.project", global.project);

await gitPullRelease();

if (projectName === "console") {
  await build_pc(tag, child, git);
} else if (["app"].includes(projectName)) {
  await build_app(tag, child, git);
} else if (["mp", "dvschat"].includes(projectName)) {
  await build_one(tag);
} else if (projectName === "mini") {
  console.log(projectName, "-----------------------微信小程序");
  if (global.childName === "pull") {
    let path = getMiniPath() || "";
    updateVersion(path);
    await gitPull();
  }
  if (global.childName === "tag") {
    await gitTag();
  }
} else {
  await build_one(tag);
}
