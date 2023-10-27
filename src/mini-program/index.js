const ci = require('miniprogram-ci');
const { spawn } = require('child_process');
const minimist = require('minimist');
const fs = require('fs-extra')
const hjson = require('hjson');


// const a = spawn('pwd');
// a.stdout.on('data', (data) => {
//   console.log(`stdout: ${data}`);
// });

// a.stderr.on('data', (data) => {
//   console.error(`stderr: ${data}`);
// });

// a.on('close', (code) => {
//   console.log(`child process exited with code ${code}`);
// });

// 修改manifest.json中的appid
const resetWechatAppid = () => {
  const wechatPath = `${global.compilePath}\\apps\\digital-village\\src\\manifest.json`
  const packageString = fs.readFileSync(`${wechatPath}`,"utf-8").toString();
  let packageJson = hjson.parse(packageString)
  packageJson["mp-weixin"]["appid"]= wechat[`${global.environment}`];
  fs.writeFileSync(`${wechatPath}`, JSON.stringify(packageJson, null, 2));
}

const resetProjectLastVersion = () => {
  const wechatPath = `${global.compilePath}\\apps\\digital-village\\package.json`
  const packageString = fs.readFileSync(`${wechatPath}`,"utf-8").toString();
  let packageJson = hjson.parse(packageString)
  packageJson['lastVersion'] = global.lastVersion;
  packageJson['version'] = global.currentVersion;
  console.log(packageJson, "packageJson version");
  fs.writeFileSync(`${wechatPath}`, JSON.stringify(packageJson, null, 2))
}

const buildMiniProgram = (callback) => {
  const sArgs = [global.environment];
  const child = spawn(global.command, sArgs, { cwd: global.compilePath });
  child.stdout.on('data', (data) => {
    console.log(`stdout: ${data}`);
  });

  child.stderr.on('data', (data) => {
    console.error(`stderr: ${data}`);
  });

  child.on('close', (code) => {
    console.log(`child process exited with code ${code}`);
    callback()
  });
}

const uploadMiniProgram = () => {
  ci.upload(
  {
    project: global.project,
    version: global.version,
    desc: `自动化提交发布版本${global.version}`,
    threads: 4, // 并发数，默认为 cpu 数量
    setting: {
      es6: true,     // 对应小程序开发者工具的 "es6 转 es5"
      es7: true,     // 对应小程序开发者工具的 "增强编译"
      minify: true,  // 压缩所有代码，对应小程序开发者工具的 "压缩代码"
      ignoreUploadUnusedFiles: true,
    },
    onProgressUpdate: (info) => { console.log(info, "upload") },
  }).then(result => {
    console.log(result, "uploadResult");
    console.log("----------------------upload代码上传完毕--------------------------------");
  })
}

const previewMiniProgram = () => {
  ci.preview({
    project: global.project,
    version: global.version,
    desc: `自动化提交发布版本${global.version}`,
    setting: {
      es6: true,     // 对应小程序开发者工具的 "es6 转 es5"
      es7: true,     // 对应小程序开发者工具的 "增强编译"
      minify: true,  // 压缩所有代码，对应小程序开发者工具的 "压缩代码"
      ignoreUploadUnusedFiles: true,
    },
    onProgressUpdate: (info) => { console.log(info, "preview") },
    qrcodeFormat: 'image',
    qrcodeOutputDest: './test.jpg',
    pagePath: 'pages/home/index', // 预览页面
    // searchQuery: 'a=1&b=2',  // 预览参数 [注意!]这里的`&`字符在命令行中应写成转义字符`\&`
  }).then(preResult=> {
    console.log("生成二维码结束，开始扫码测试");
    console.log(preResult);
  })
}

const init = () => {  
  initWechatConfig();
  
  initCmdArguments();

  const project = new ci.Project({
    appid: wechat[`${global.environment}`],
    type: "miniProgram",
    projectPath: `${global.compilePath}\\apps\\digital-village\\dist\\build\\mp-weixin`,
    privateKeyPath: `h:\\github\\zx-deploy\\src\\mini-program\\private.${global.environment}.key`,
    // ignores: ['node_modules/**/*'],
  });

  global.project = project;
}

// 初始化微信小程序配置信息
const initWechatConfig = () => {
  const wechat = {
    "dev": "wx858ddde80e1d69ec",
    "sit": "wx98011a7ed2295c2c",
    "xe": "wx636b10db5fe7f274",
    "ly": "wxea256481926fa978"
  }

  compilePath = `e:\\work\\git-refactor\\mini-program`
  const command = 'pnpm.cmd';

  global.wechat = wechat
  global.compilePath = compilePath
  global.command = command
  global.version = getFullVersion()
} 

// 初始化命令行参数
const initCmdArguments = () => {
  const args = minimist(process.argv.slice(2));
  console.log(args, "arguments")

  // 通过命令行获取参数
  const environment = args.e;
  global.environment = environment;

  // 上传和预览（upload preview）
  const type = args.t;
  global.type = type;
}

const getLength = (s) => {
  const match = s.match(/^(\d+)$/);
  return match ? match[0].length : null;
}

const getFullVersion = () => {
  const packageObject = require('../../package.json');
  const version =packageObject.version;
  const lastVersion = packageObject.lastVersion;
  global.currentVersion = version;
  global.lastVersion = lastVersion;

  let arrayVersion = lastVersion.split('.');
  const length = getLength(arrayVersion[0])

  let strVersion = ""
  if(length === 2) {
    strVersion = `0${arrayVersion[0]}`
  }
  else if(length ===1) {
    strVersion = `00${arrayVersion[0]}`
  }

  if(arrayVersion.length > 1) {
    return `${version}.${strVersion}.${arrayVersion[1]}`
  } else {
    return `${version}.${strVersion}`
  }
}


init();

resetWechatAppid();

resetProjectLastVersion();

if(global.type === 'upload') {
  buildMiniProgram(uploadMiniProgram);
}

if(global.type === 'preview') {
  buildMiniProgram(previewMiniProgram);
}