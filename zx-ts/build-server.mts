
import { $ } from 'zx'
const path = "/H/work/dvs/server-csharp/"
const collectPath= path + "Services/DVS.Collect.API"
const gitPullInfo = await $`cd ${path}; git pull;`;

if (gitPullInfo.exitCode === 0) {
  console.log(`git pull end success`);
} else {
  console.log(`git pull error: ${gitPullInfo.stderr}`);
}

const buildInfo = await $`cd ${collectPath}; dotnet publish -o ../../publish/dvs-collect -f net6.0 -r linux-arm64 --no-self-contained;`;
if(buildInfo.exitCode === 0) {
  console.log("build info ok")
} else {
  console.log(`build info error: ${buildInfo.stderr}`)
}