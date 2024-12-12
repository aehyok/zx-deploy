import { $, argv } from 'zx'
import { baseUrl, getCopyBaseUrl, getPrefix } from '../utils/common.mjs';
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
const prefix = getPrefix()
console.log(argv.p, "p");
let projectName = argv.p;


// 区分环境 dev sit px xe
let env = argv.e; 

// 区分framework版本 3.1和 6.0
console.log(argv.f, "f");
let frameworkVersion = argv.f;
if(frameworkVersion == '3.1') {
  frameworkVersion= 'netcoreapp3.1'
} else {
  frameworkVersion = 'net6.0'
}

// linux-x64
// linux-arm64
// const platform = "linux-x64"
// 编译平台
console.log(argv.r, "r");
let platform = argv.r;
if(platform != 'linux-arm64') {
  platform = 'linux-x64'
}

let projectList = [
  {
    projectName: "dvs-dynamic",
    serverName: "dvsv3-dynamic",
    serverPath: "dvsv3",
    projectPath: "server-csharp",
    serviceApiPath: "/Services/Dynamic/DVS.Dynamic.Api",
    projectBuild: "../../../../"
  },
  {
    projectName: "dvs-ncdp",
    serverName: "dvsv3-ncdp",
    serverPath: "dvsv3",
    projectPath: "server-csharp",
    serviceApiPath: "/Services/NCDP/DVS.NCDP.Api",
    projectBuild: "../../../../"
  },
  {
    projectName: "dvs-basic",
    serverName: "dvsv3-basic",
    serverPath: "dvsv3",
    projectPath: "server-csharp",
    serviceApiPath: "/Services/Basic/DVS.Basic.Api",
    projectBuild: "../../../../"
  },
  {
    projectName: "dvs-systemservice",
    serverName: "dvsv3-systemservice",
    serverPath: "dvsv3",
    projectPath: "server-csharp",
    serviceApiPath: "/Services/SystemService/DVS.SystemService",
    projectBuild: "../../../../"
  },
  {
    projectName: "dvs-customform",
    serverName: "dvsv3-customform",
    serverPath: "dvsv3",
    projectPath: "server-csharp",
    serviceApiPath: "/Services/CustomForm/DVS.CustomForm.Api",
    projectBuild: "../../../../"
  },
  {
    projectName: "dvs-query",
    serverName: "dvsv3-query",
    serverPath: "dvsv3",
    projectPath: "server-csharp",
    serviceApiPath: "/Services/Query/DVS.Query.Api",
    projectBuild: "../../../../"
  },
  {
    projectName: "dvs-collect",
    serverPath: "dvsv3",
    projectPath: "server-csharp",
    serviceApiPath: "/Services/DVS.Collect.API",
    projectBuild: "../../../"
  },
  {
    projectName: "dvs-robot",
    serverName: "dvs-robot",
    serverPath: "dvs",
    projectPath: "SLRobotAdmin",
    serviceApiPath: "/SLRobot.Admin",
    projectBuild: "./../../"
  },
  // {
  //   projectName: "dvs-query",
  //   serverName: "dvs-queryv3",
  //   serverPath: "dvs",
  //   projectPath: "MDEngine",
  //   serviceApiPath: "/SLMDEngine.Base",
  //   projectBuild: "./../../"
  // },
  // {
  //   projectName: "dvs-query",
  //   serverName: "dvs-query",
  //   serverPath: "dvs",
  //   projectPath: "MDEngine",
  //   serviceApiPath: "/SLMDEngine.Base",
  //   projectBuild: "./../../"
  // }
];

const project = projectList.find((item) => item.projectName === projectName);
console.log(project, "----------------------------project-=---------")
const projectPath = `${initPath}${prefix}${project?.projectPath}`;
const serviceApiPath = `${projectPath}${project?.serviceApiPath}`;

const cmd = process.platform == "win32" ? "dotnet" : "/usr/local/dotnet-sdk/dotnet"
const buildInfo = await $`cd ${projectPath}; 
                          git pull; cd ${serviceApiPath};  
                          ${cmd} publish -c Release -o ${project?.projectBuild}release/server/${project?.projectName} -f ${frameworkVersion} -r ${platform} --no-self-contained;`;
if(buildInfo.exitCode === 0) {
  console.log("build info ok")
} else {
  console.log(`build info error: ${buildInfo.stderr}`)
}

if(!env) {
  env = 'dev'
}
const ipAddress = process.env[env]
console.log(ipAddress, "ipAddress", env);
ipAddress?.split(',').forEach(async (itemIpAddress) => {
  const result = await $`scp -r ${getCopyBaseUrl()}/release/server/${project?.projectName}/* root@${itemIpAddress}:/usr/local/sunlight/${project?.serverPath}/${project?.projectName}/`
  if(result.exitCode === 0) {
      console.log(`copy file to linux server: ${itemIpAddress} end success`)
  }
  else {
    console.log(`copy file to linux server: ${itemIpAddress} fail`, $`$?`);
  }

  await $`pwd`
  const login = await $`ssh -t root@${itemIpAddress} 'bash -s' <./src/dotnetcore/server.sh ${project?.serverName}`

  if(login.exitCode === 0) {
    console.log(`ssh restart service: ${itemIpAddress} success`)
  }
  else {
    console.log(`ssh restart service: ${itemIpAddress} fail`, $`$?`);
  }
})
