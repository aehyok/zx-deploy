import { $, argv } from 'zx'
import fs from 'fs-extra';
import { config } from "dotenv"

config()


const projectPath ="/h/github/go-services/"
const ipAddress = '101.35.211.235'

const startServer = async() => {
  console.log("startServer-info_______________________________startServer-info________________________")
  const before = await $`ssh -t root@${ipAddress} 'bash -s' <./src/go/server-after.sh ${"geek.service"}`
  
  if(before.exitCode === 0) {
    console.log(`ssh start success`)
  }
  else {
    console.log("fail", $`$?`);
  }
}

const copyFile = async() => {
  console.log("copyFile-info_______________________________copyFile-info________________________")
  const result = await $`scp -r ${projectPath}server/* root@${ipAddress}:/usr/local/sunlight/go/course/`
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
  const before = await $`ssh -t root@${ipAddress} 'bash -s' <./src/go/server-before.sh ${"geek.service"}`
  
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
  const buildInfo = await $`cd ${projectPath};swag init; CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o ./server/geekdemo`;
  if(buildInfo.exitCode === 0) {
    console.log("build info ok")
    stopServer()
  } else {
    console.log(`build info error: ${buildInfo.stderr}`)
  }
}



// 编译/停止服务/拷贝/重启服务
build()








