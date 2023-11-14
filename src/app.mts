import koa from "koa"
import { $ } from "zx"
import Router from "@koa/router"
import bodyParser  from 'koa-bodyparser'
const app = new koa()
const router = new Router();

app.use(bodyParser());
app.use(router.routes()).use(router.allowedMethods());

router.get('/api/cicd', async (ctx) => {
  await $`cd . && pnpm mp`
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