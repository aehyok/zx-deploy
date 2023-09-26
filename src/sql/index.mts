import { $ } from 'zx'

// 开发环境服务器IP
const devIp = '139.9.184.171' 

// 测试环境服务器IP地址
const productIp = '139.9.1.176'

// 登录开发服务器，相当于在开发服务器上执行 gen-sql脚本
const result = await $`ssh root@${devIp} < ./src/sql/export-sql.sh` 
if(result.exitCode === 0) {
    console.log(`gen file end success`)

    // 生成sql脚本后拷贝到window本地
    const copyToWindow = await $`scp -r root@${devIp}:/usr/local/sunlight/sql/*  /h/github/zx-deploy/src/sql/data`
    if(copyToWindow.exitCode === 0) {
      console.log(`Copy CollectFormMetaData file end success`)

      // 将window本地的sql文件拷贝到宣恩生成环境的服务器上
      const copyToProduct = await $`scp -r /h/github/zx-deploy/src/sql/data/* root@${productIp}:/usr/local/sunlight/sql/`
      if(copyToProduct.exitCode === 0) {
        console.log(`copy to sit success`)
        
        const execResult = await $`ssh root@${productIp} < ./src/sql/import-sql.sh` 
        if(execResult.exitCode ===0) {
          console.log('exec sql success')
        }
      }
    }
}
else {
  console.log("fail", $`$?`);
}