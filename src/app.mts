import koa from "koa"
import { $ } from "zx"
import Router from "@koa/router"

const app = new koa()
const router = new Router();

router.get('/api/cicd', async (ctx) => {
  await $`cd . && pnpm mp`
  ctx.body = 'hello cicd';
});

router.get('/api/cicd/test', async (ctx) => {
  ctx.body = 'hello test';
});

app.use(router.routes()).use(router.allowedMethods());


app.listen(3000, () => {
  console.log("server start")
});