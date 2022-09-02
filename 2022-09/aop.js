// https://juejin.cn/post/6844903700368982029
const logger = console.log

const sendApi = () => {
  console.log('一些代码逻辑......，发送接口请求')
}

const buttonClick = () => {
  logger('调用接口前的处理')

  sendApi()

  logger('调用接口后的处理')
}

buttonClick()

// 如果100个页面200个按钮，都这样处理也不是不行 局势太麻烦了

