import koa from "koa"
import { $ } from "zx"
const app = new koa()

app.use(async (ctx, next) => {
  ctx.body = "hello world"
  await $`cd .. && pnpm mp`
});

app.listen(3000, () => {
  console.log("server start")
});