// https://zhuanlan.zhihu.com/p/125024256


class Message {
  Send(content: string) {
    console.log(`给小红发的消息：${content}`)
  }
}

class Friends {
  Send(content: string) {
    console.log(`发送朋友圈：${content}`)
  }
}

function Inject(modules: any) {
  return function(target: any) {
    modules.forEach((module: any) => {
      target.prototype[module.name] = new module()
    })
  }
}

@Inject([Message, Friends])
class Weixin {
  constructor(name: string) {
    console.log(`我是${name}的微信`)
  }
}

let xiaoming: any = new Weixin("小明")
xiaoming.Message.Send('我们一起出去玩吧？')
xiaoming.Friends.Send('和小红出去玩的九宫格图片')
