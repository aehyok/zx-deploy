class Weixin {
  constructor(name) {
    this.Friends = new Friends();
    this.Message = new Message();
    console.log(`我是${name}的微信`)
  }
}

class Message {
  Send(content) {
    console.log(`给小红发的消息：${content}`)
  }
}

class Friends {
  Send(content) {
    console.log(`发送朋友圈：${content}`)
  }
}

let xiaoming = new Weixin('小明')

xiaoming.Message.Send('我们一起出去玩吧？')
xiaoming.Friends.Send('和小红出去玩的九宫格图片')
