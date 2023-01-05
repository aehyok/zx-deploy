import { $ } from 'zx'

// 开发环境服务器IP
const devIp = '139.9.184.171' 

// 宣恩生产环境服务器IP地址
const productIp = '139.9.79.161'

// 登录开发服务器，相当于在开发服务器上执行 gen-sql脚本
const result = await $`ssh root@${devIp} < ./src/gen-sql.sh` 
if(result.exitCode === 0) {
    console.log(`gen file end success`)

    // 生成sql脚本后拷贝到window本地
    const copyToWindow = await $`scp -r root@${devIp}:/usr/local/sunlight/sql/*  /h/github/blog-history/sql/`
    if(copyToWindow.exitCode === 0) {
      console.log(`Copy CollectFormMetaData file end success`)

      // 将window本地的sql文件拷贝到宣恩生成环境的服务器上
      const copyToProduct = await $`scp -r /h/github/blog-history/sql/* root@${productIp}:/usr/local/sunlight/sql/`
      if(copyToProduct.exitCode === 0) {
        console.log(`copy to xuanen success`)
        
        const execResult = await $`ssh root@${productIp} < ./src/exec-sql.sh` 
        if(execResult.exitCode ===0) {
          console.log('exec sql success')
        }
      }
    }
}
else {
  console.log("fail", $`$?`);
}