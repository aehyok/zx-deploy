import koa from "koa"
import { $ } from "zx"
import Router from "@koa/router"
import bodyParser  from 'koa-bodyparser'
const app = new koa()
const router = new Router();

app.use(bodyParser());
app.use(router.routes()).use(router.allowedMethods());

// 前端主项目
const array = ["console", "mp", "mini"]

// pc项目（可单独编译打包）
const childArray = ["dvs-main", "dvs-base", "dvs-village","dvs-ffp", "dvs-cons","dvs-company", "dvs-facility","dvs-gis","dvs-collect","dvs-monitor"]

router.get('/api/node/cicd', async (ctx) => {
  const  { cmdStr } = ctx.query;

  if(array.includes(cmdStr)) {
    const result = await $ `cd . ; pnpm ${cmdStr}`;
  } else if(childArray.includes(cmdStr)) {
    const result = await $`cd .; pnpm console -c ${cmdStr}`
  }

  // console.log(result, "----------------result")
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


app.listen(3000, () => {
  console.log("server start")
});