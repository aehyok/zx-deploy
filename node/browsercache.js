const http = require('http');
const path = require('path');
const fs = require('fs');

const mimes = {
  css: 'text/css',
  less: 'text/css',
  gif: 'image/gif',
  html: 'text/html',
  ico: 'image/x-icon',
  jpeg: 'image/jpeg',
  jpg: 'image/jpeg',
  js: 'text/javascript',
  json: 'application/json',
  pdf: 'application/pdf',
  png: 'image/png',
  svg: 'image/svg+xml',
  swf: 'application/x-shockwave-flash',
  tiff: 'image/tiff',
  txt: 'text/plain',
  wav: 'audio/x-wav',
  wma: 'audio/x-ms-wma',
  wmv: 'video/x-ms-wmv',
  xml: 'text/xml',
}


function updateTime() {
  setInterval(() => this.time = new Date().toUTCString(), 1000)
  return this.time
}

// 获取文件信息
const getFileStat = (path) => {
  return new Promise((resolve) => {
    fs.stat(path, (_, stat) => {
      resolve(stat)
    })
  })
}

// 获取文件的类型
function parseMime(url) {
  // path.extname获取路径中文件的后缀名
  let extName = path.extname(url)
  extName = extName ? extName.slice(1) : 'unknown'
  return mimes[extName]
}

// 将文件转成传输所需格式
const parseStatic = (dir) => {
  return new Promise((resolve) => {
    resolve(fs.readFileSync(dir), 'binary')
  })
}


http.createServer(async(req, res) => {
  console.log('url:', `${req.method} ${req.url} `)
  const { url } = req
  // 强缓存  10秒钟后过期ss
  if('/' === url) {
    res.setHeader('Expires', new Date(Date.now() + 30 * 1000).toUTCString())
    res.end(`
    <html>
        <!-- <meta http-equiv="Refresh" content="5" /> -->
        Html Update Time: ${updateTime()}
        <script src='main.js'></script>
    </html>
  `)
  } else if ( "/main.js" === url) {
    // 设置 Cache-Control 响应头优先级会大于Expires
    res.setHeader('Cache-Control', 'max-age=10')
    res.setHeader('Expires', new Date(Date.now() + 5 * 1000).toUTCString())
    // const content = `document.writeln('<br>JS 1  Update Time:${updateTime()}')`

    const filePath = path.resolve(__dirname, `.${url}`)
    const ifModifiedSince = res.req.headers['if-modified-since']
    const fileStat = await getFileStat(filePath)
    console.log(new Date(fileStat.mtime).getTime())
    res.setHeader('Cache-Control', 'no-cache')
    res.setHeader('Content-Type', parseMime(url))
    // 比对时间，mtime为文件最后修改时间
    if (ifModifiedSince === fileStat.mtime.toGMTString()) {
      res.statusCode = 304
      res.end()
    } else {
      res.statusCode = 200
      res.setHeader('Last-Modified', fileStat.mtime.toGMTString())
      const content = await parseStatic(filePath)
      res.end(content)
    }

    // res.end(content)
  } else if (url === '/favicon.ico') {
    console.log('favicon..')
    res.end('')
  } 

}).listen(3001, () => {
  console.log("浏览器缓存测试")
})
console.log('浏览器缓存实战')
