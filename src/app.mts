import koa from "koa"
import { $ } from "zx"
import Router from "@koa/router"
import bodyParser  from 'koa-bodyparser'
import fs from "fs-extra"
import { config } from "dotenv";
import { getCurrentPath, getPrefix } from "./utils/common.mjs"
import { updatePackageConfig, updateVersion } from "./utils/fs-version.mjs"

config();

const app = new koa()
const router = new Router();

app.use(bodyParser());
app.use(router.routes()).use(router.allowedMethods());

// 前端主项目
const array = ["console", "mp", "mini"]

// pc项目（可单独编译打包）
const childArray = ["dvs-main", "dvs-base", "dvs-village","dvs-ffp", "dvs-cons","dvs-company", "dvs-facility","dvs-gis","dvs-collect","dvs-monitor"]

// 执行编译打包的命令
router.post('/api/node/cicd', async (ctx) => {
  const  { cmdStr } = ctx.request.body;

  if(array.includes(cmdStr)) {
    const result = await $ `cd . ; pnpm ${cmdStr}`;
  } else if(childArray.includes(cmdStr)) {
    const result = await $`cd .; pnpm console -c ${cmdStr}`
  }
  ctx.body = 'hello cicd';
}); 

router.get('/api/cicd/get', async (ctx) => {
  const queryParams = ctx.query;
  ctx.body = `NAME:${queryParams.name}, age:${queryParams.age} `;
}); 

router.post('/api/cicd/post', async (ctx) => {
  const postParams = ctx.request.body;
  console.log(postParams, "----------------postParams")
  ctx.body = `NAME:${postParams.name}, age:${postParams.age} `;
});

//获取当前package.json中的版本号
router.get('/api/cicd/getVersion', async (ctx) => {
  const path = `${getCurrentPath()}${getPrefix()}package.json`;
  console.log(path, "path");
  const packageJson = fs.readJsonSync(path)
  ctx.body = `${packageJson.version}${packageJson.lastVersion}`;
});

// 修改package.json中的版本号
router.get('/api/cicd/setVersion', async (ctx) => {
  const path = `${getCurrentPath()}`;
  await updatePackageConfig(path, "version", "3.1.0");
});

// 修改package.json中的最后版本号
router.post('/api/cicd/setLastVersion', async (ctx) => {
  const path = `${getCurrentPath()}`;
  await updatePackageConfig(path, "lastVersion", "24.1");
});

app.listen(3000, () => {
  console.log("server start")
});