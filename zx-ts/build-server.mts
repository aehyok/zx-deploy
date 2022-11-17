
import { $ } from 'zx'
const path = "/H/work/dvs/server-csharp/"
const collectPath= path + "Services/DVS.Collect.API"
// const gitPullInfo = await $`cd ${path}; git pull;`;

// if (gitPullInfo.exitCode === 0) {
//   console.log(`git pull end success`);
// } else {
//   console.log(`git pull error: ${gitPullInfo.stderr}`);
// }

const buildInfo = await $`cd ${collectPath}; dotnet publish -o ../../publish/dvs-collect -f net6.0 -r linux-arm64 --no-self-contained;`;
if(buildInfo.exitCode === 0) {
  console.log("build info ok")
} else {
  console.log(`build info error: ${buildInfo.stderr}`)
}


const buildpath = 'dvs-collect'
const result = await $`scp -r /h/work/dvs/server-csharp/publish/${buildpath}/* root@139.9.184.171:/usr/local/sunlight/dvs/${buildpath}/`
        if(result.exitCode === 0) {
            console.log(`copy file end success`)
        }
        else {
            console.log("fail", $`$?`);
          }

// 可以执行本地的server.sh脚本指令 (-t保持登录状态    ssh -t root@139.9.184.171 < server.sh)
// 还可以添加脚本参数
const login = await $`ssh root@139.9.184.171 < server.sh`

if(login.exitCode === 0) {
  console.log(`ssh login success`)
}
else {
  console.log("fail", $`$?`);
}



