import { $, argv } from 'zx'
import fs from 'fs-extra';
import { config } from "dotenv"

config()


const projectPath ="/h/github/go-services/"
const ipAddress = '121.37.222.1'

let serviceName='dvsv3-cicd'
let sercicePath ='dvs-cicd'

const startServer = async() => {
  console.log("startServer-info_______________________________startServer-info________________________")
  const before = await $`ssh -t root@${ipAddress} 'bash -s' <./src/go/server-after.sh ${serviceName}`
  
  if(before.exitCode === 0) {
    console.log(`ssh start success`)
  }
  else {
    console.log("fail", $`$?`);
  }
}

const copyFile = async() => {
  console.log("copyFile-info_______________________________copyFile-info________________________")
  const result = await $`scp -r ${projectPath}server/* root@${ipAddress}:/usr/local/sunlight/dvsv3/${sercicePath}/`
  if(result.exitCode === 0) {
      console.log(`copy file to linux server end success`)
      startServer();
  }
  else {
    console.log("fail", $`$?`);
  }
}

const stopServer = async() => {
  console.log("stopServer-info_______________________________stopServer-info________________________")
  const before = await $`ssh -t root@${ipAddress} 'bash -s' <./src/go/server-before.sh ${serviceName}`
  
  if(before.exitCode === 0) {
    console.log(`ssh stop success`)
    copyFile()
  }
  else {
    console.log("fail", $`$?`);
  }
}

const build = async() => {
  console.log("build-info_______________________________build-info________________________")
  const buildInfo = await $`cd ${projectPath};swag init; CGO_ENABLED=0 GOOS=linux GOARCH=arm64 go build -o ./server/geekdemo`;
  if(buildInfo.exitCode === 0) {
    console.log("build info ok")
    stopServer()
  } else {
    console.log(`build info error: ${buildInfo.stderr}`)
  }
}



// 编译/停止服务/拷贝/重启服务
build()









