import { $, argv } from 'zx'
import { net8_baseUrl, getCopy_net8BaseUrl, getPrefix } from '../utils/common.mjs';
import fs from 'fs-extra';
import { writerLog } from '../utils/sql-helper.mjs';
import { config } from "dotenv"

config()

const packageJson = fs.readJsonSync('./package.json')
console.log(packageJson.version, packageJson.environment, 'packageObj');
$.verbose = true;
global.version = packageJson.version;
global.environment = packageJson.environment;
const initPath = net8_baseUrl()
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
}
else if(frameworkVersion == '6.0') {
  frameworkVersion= 'net6.0'
}  
else {
  frameworkVersion = 'net8.0'
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
    projectName: "sun-xxm",
    serverName: "sun-xxm",
    serverPath: "sunlight",
    projectPath: "xxm0624",
    serviceApiPath: "/server/sun.xxm",
    projectBuild: "../../../"
  },
  {
    projectName: "sun-ncdp",
    serverName: "sun-ncdp",
    serverPath: "sunlight",
    projectPath: "NET8.0",
    serviceApiPath: "/src/Services/NCDP/sun.NCDP.Api",
    projectBuild: "../../../../../"
  },
  {
    projectName: "sun-basic",
    serverName: "sun-basic",
    serverPath: "sunlight",
    projectPath: "NET8.0",
    serviceApiPath: "/src/Services/Basic/sun.Basic.Api",
    projectBuild: "../../../../../"
  },
  {
    projectName: "sun-systemservice",
    serverName: "sun-systemservice",
    serverPath: "sunlight",
    projectPath: "NET8.0",
    serviceApiPath: "/src/Services/SystemService/sun.SystemService",
    projectBuild: "../../../../../"
  }
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

ipAddress?.split(',').forEach(async (itemIpAddress) => {
  const result = await $`scp -r ${getCopy_net8BaseUrl()}/release/server/${project?.projectName}/* root@${itemIpAddress}:/usr/local/${project?.serverPath}/${project?.projectName}/`
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
