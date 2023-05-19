/*
 * @Author: 刘启明 455043818@qq.com
 * @Date: 2023-01-06 16:19:35
 * @LastEditors: 刘启明 455043818@qq.com
 * @LastEditTime: 2023-04-28 17:12:35
 * @FilePath: \blog-history\src\build-server.mts
 * @Description: 
 * 
 * Copyright (c) 2023 by ${git_name_email}, All Rights Reserved. 
 */

import { $ } from 'zx'
import { gitPull } from './utils/git-pull.mjs';
const path = "/H/work/dvs/server-csharp/"
const collectPath= path + "Services/DVS.Collect.API"


// await gitPull();
// linux-x64 
// linux-arm64
const buildInfo = await $`cd ${collectPath}; dotnet publish -o ../release -f net6.0 -r linux-x64 --no-self-contained;`;
if(buildInfo.exitCode === 0) {
  console.log("build info ok")
} else {
  console.log(`build info error: ${buildInfo.stderr}`)
}

const buildpath = 'dvs-collect'

// const ipAddress = '139.9.184.171'   //  139.9.184.171   // 121.37.222.1
// const result = await $`scp -r /h/work/dvs/server-csharp/publish/${buildpath}/* root@${ipAddress}:/usr/local/sunlight/dvs/${buildpath}/`
// if(result.exitCode === 0) {
//     console.log(`copy file end success`)
// }
// else {
//   console.log("fail", $`$?`);
// }

// // 可以执行本地的server.sh脚本指令 (-t保持登录状态    ssh -t root@139.9.184.171 < server.sh)
// // 还可以添加脚本参数
// await $`pwd`
// const login = await $`ssh root@${ipAddress} < ./src/server.sh`

// if(login.exitCode === 0) {
//   console.log(`ssh login success`)
// }
// else {
//   console.log("fail", $`$?`);
// }



