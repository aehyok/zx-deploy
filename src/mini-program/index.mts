import * as ci from 'miniprogram-ci';
import { baseUrl } from "../utils/common.mjs";
import { getFullVersion } from "../utils/common.mjs"

const { Project, upload } = ci;
// 创建项目
const project = new Project({
  appid: "wx636b10db5fe7f274",
  type: "miniProgram",
  projectPath: `${baseUrl()}\\mini-program\\apps\\digital-village\\dist\\dev\\mp-weixin`,
});

console.log(project,"project");
// {
//   appid: "wx636b10db5fe7f274",
//   type: "miniProgram",
//   projectPath: `${baseUrl()}\\mini-program\\apps\\digital-village\\dist\\dev\\mp-weixin`,
//   privateKeyPath: "./private.wx636b10db5fe7f274.key",
//   ignores: ['node_modules/**/*'],
// }

const uploadResult = await upload(
  {
    project,
    version: getFullVersion(),
    desc: "糖家三勺 在 2023年8月21日晚上7点52分 提交上传",
    setting: {
      es6: true,     // 对应小程序开发者工具的 "es6 转 es5"
			es7: true,     // 对应小程序开发者工具的 "增强编译"
      minify: true,  // 压缩所有代码，对应小程序开发者工具的 "压缩代码"
    },
    onProgressUpdate: (info) => { console.log(info, "upload") },
  });

console.log(uploadResult, "uploadResult");