import { $ } from 'zx'

const devIp = '139.9.184.171' 
const productIp = '139.9.79.161'
const result = await $`ssh root@${devIp} < ./src/gen-sql.sh` 
if(result.exitCode === 0) {
    console.log(`gen file end success`)
    const copy = await $`scp -r root@${devIp}:/usr/local/sunlight/CollectFormMetaData.sql  /h/github/blog-history/`
    if(copy.exitCode === 0) {
      console.log(`Copy CollectFormMetaData file end success`)
      const execResult = await $`scp -r /h/github/blog-history/CollectFormMetaData.sql root@${productIp}:/usr/local/sunlight/`
      if(execResult.exitCode === 0) {
        console.log(`copy 到宣恩 success`)

        // 备份原来的表
        // 执行当前记录
      }
    }
}
else {
  console.log("fail", $`$?`);
}