#!/usr/bin/env zx

import { $, argv } from "zx";
import { build_app } from "./build-app.mjs";
import { build_pc } from "./build-pc.mjs";
import { build } from "./build-one.mjs";
import fs from 'fs-extra';

const packageJson = fs.readJsonSync('./package.json')
console.log(packageJson.version, packageJson.environment, 'packageObj');
$.verbose = true;

let projectList = [
  {
    projectName: "console",
    projectPath: "server-ui",
  },
  {
    projectName: "app",
    projectPath: "dvs-app-h5-dev",
  },
  {
    projectName: "mp",
    projectPath: "mp-h5",
  },
  {
    projectName: "wechat",
    projectPath: "dvs-offiaccount-dev",
  },
  {
    projectName: "park",
    projectPath: "dvs-park-h5-app",
  },
  {
    projectName: "robot",
    projectPath: "robot-ui",
  },
  {
    projectName: "qrcode",
    projectPath: "qrcode-demo-dev",
  },
  {
    projectName: "server",
    projectPath: ""
  }
];

// 获取版本信息

console.log($, argv, '---------------parameters---------------')
global.version = packageJson.version;
global.environment = packageJson.environment;
global.lastVersion = packageJson.lastVersion;
console.log('--------------------------')
console.log(`当前编译环境：${global.environment}`)
console.log('--------------------------')
// 获取项目信息
console.log(argv.p, "p");
let projectName = argv.p;
let tag = argv.t;
console.log(tag, 'tag');

let buildType = argv.b; // 通过什么工具进行编译 yarn  pnpm,默认为yarn
if(buildType == 'pnpm') {
  global.buildType = buildType;
} else {
  global.buildType = "yarn";
}

console.log(buildType, 'buildType');

let child = argv.c;
console.log(child, 'child');
global.childName = child
global.project = projectList.find((item) => item.projectName === projectName);
console.log('global.project', global.project);
// await $`scp -r /e/work/git/dvs-2.x/release/cms/* root@139.159.245.209:/usr/local/aehyok/sunlight/`

if (projectName === "console") {
  await build_pc(tag,child);
}
else if (["app", "mp"].includes(projectName)) {
  await build_app(tag,child);
} else {
  await build(tag);
}
