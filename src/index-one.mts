#!/usr/bin/env zx

import { $, argv } from "zx";
import { build_github } from "./build-one.mjs";
import { config } from "dotenv";

config();

$.verbose = true;

let projectList = [
  {
    projectName: "xxm-large",
    projectPath: "xxm0624",
    uiPath: "ui\\large-screen"
  },
  {
    projectName: "xxm-pc",
    projectPath: "xxm0624",
    uiPath: "ui\\large-pc"
  }
];

// 获取版本信息

console.log($, argv, "---------------parameters---------------");
console.log("--------------------------");
console.log(`当前编译环境：${global.environment}`);
console.log("--------------------------");

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

global.project = projectList.find((item) => item.projectName === projectName);
console.log("global.project", global.project);

if (projectName === "console") {

} else if (["xxm-large", "xxm-pc"].includes(projectName)) {
  await build_github();
}
