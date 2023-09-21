import { $, argv } from 'zx'
import { baseUrl } from '../utils/common.mjs';
import fs from 'fs-extra';
import { writerLog } from '../utils/sql-helper.mjs';
import { config } from "dotenv"

config()

const packageJson = fs.readJsonSync('./package.json')
console.log(packageJson.version, packageJson.environment, 'packageObj');
$.verbose = true;
global.version = packageJson.version;
global.environment = packageJson.environment;
const initPath = baseUrl()
console.log(argv.p, "p");
let projectName = argv.p;
console.log(argv.f, "f");
let frameworkVersion = argv.f;
if(frameworkVersion == '3.1') {
  frameworkVersion= 'netcoreapp3.1'
} else {
  frameworkVersion = 'net6.0'
}

//server-csharp\Services\CustomForm\DVS.CustomForm.Api

let projectList = [
  {
    projectName: "dvs-dynamic",
    serverName: "dvsv3-dynamic",
    serverPath: "dvsv3",
    projectPath: "server-csharp/Services/Dynamic/DVS.Dynamic.Api",
    projectBuild: "../../../../"
  },
  {
    projectName: "dvs-customform",
    serverName: "dvsv3-customform",
    serverPath: "dvsv3",
    projectPath: "server-csharp/Services/CustomForm/DVS.CustomForm.Api",
    projectBuild: "../../../../"
  },
  {
    projectName: "dvs-collect",
    projectPath: "server-csharp/Services/DVS.Collect.API",
    projectBuild: "../../../"
  },
  {
    projectName: "dvs-robot",
    serverName: "dvs-robot",
    serverPath: "dvs",
    projectPath: "SLRobotAdmin/SLRobot.Admin",
    projectBuild: "./../../"
  },
  {
    projectName: "dvs-query",
    projectPath: "MDEngine/SLMDEngine.Base",
    projectBuild: "./../../"
  }
];

const project = projectList.find((item) => item.projectName === projectName);
console.log(project, "----------------------------project-=---------")
const projectPath = `${initPath}\\${project?.projectPath}`;
// await gitPull();
// linux-x64
// linux-arm64
// const platform = "linux-x64"
const platform = "linux-arm64"
const buildInfo = await $`cd ${projectPath}; dotnet publish -c Release -o ${project?.projectBuild}release/server/${project?.projectName} -f ${frameworkVersion} -r ${platform} --no-self-contained;`;
if(buildInfo.exitCode === 0) {
  console.log("build info ok")
} else {
  console.log(`build info error: ${buildInfo.stderr}`)
}

const ipAddress = '139.9.184.171'   //  139.9.184.171   // 121.37.222.1
const result = await $`scp -r /e/work/git-refactor/release/server/${project?.projectName}/* root@${ipAddress}:/usr/local/sunlight/${project?.serverPath}/${project?.projectName}/`
if(result.exitCode === 0) {
    console.log(`copy file to linux server end success`)
}
else {
  console.log("fail", $`$?`);
}

// 可以执行本地的server.sh脚本指令 (-t保持登录状态    ssh -t root@139.9.184.171 < server.sh)
// 还可以添加脚本参数
await $`pwd`
const login = await $`ssh -t root@${ipAddress} 'bash -s' <./src/dotnetcore/server.sh ${project?.serverName}`

if(login.exitCode === 0) {
  console.log(`ssh login success`)
}
else {
  console.log("fail", $`$?`);
}



