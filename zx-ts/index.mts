#!/usr/bin/env zx

import { $, argv } from "zx";
import { build_app } from "./build-app.mjs";
import { build_pc } from "./build-pc.mjs";
import { build } from "./build-one.mjs";
import { baseUrl } from "./utils/common.mjs";

$.verbose = true;
let projectRelease = "release";
let gitProject = baseUrl + projectRelease;

let projectList = [
  {
    shortName: "pc",
    name: "dvs-server-ui-dev",
    isqiankun: true,
  },
  {
    shortName: "app",
    name: "dvs-app-h5-dev",
    isqiankun: true,
  },
  {
    shortName: "wechat",
    name: "dvs-offiaccount-dev",
    isqiankun: false,
  },
  {
    shortName: "park",
    name: "dvs-park-h5-app",
    isqiankun: false,
  },
  {
    shortName: "qrcode",
    name: "qrcode-demo-dev",
    isqiankun: false,
  },
];

// 获取版本信息

console.log(argv, '---------------parameters---------------')
console.log(argv.v, "v");
let version = argv.v;
global.version = version;
// 获取项目信息
console.log(argv.p, "p");
let projectName = argv.p;
let tag = argv.t;
console.log(tag, 'tag');

let child = argv.c;
console.log(child, 'child');
global.project = projectList.find((item) => item.shortName === projectName);
console.log('global.project', global.project);
// await $`scp -r /e/work/git/dvs-2.x/release/cms/* root@139.159.245.209:/usr/local/aehyok/sunlight/`

if (projectName === "pc") {
  await build_pc(tag,child);
}
else if (projectName === "app") {
  await build_app(tag,child);
} else {
  await build(tag);
}
// let currentProject = projectList.find(
//   (item) => !item.isqiankun && item.shortName === projectName
// );
// console.log(currentProject, "currentProject");
// if (currentProject && Object.keys(currentProject).length > 0) {
//   global.projectName = projectList.find((item: any) => item.shortName === projectName).name;
//   await build(tag);
// }

// // await $`scp -r /e/work/git/dvs-2.x/release/cms/* root@139.9.184.171:/usr/local/sunlight/dvs/dvs-uis/`
