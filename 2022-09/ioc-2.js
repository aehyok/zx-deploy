class Weixin {
  static functions = new Map()
  constructor(name) {
    for(let fun of Weixin.functions.values()) {
      fun.init(this);
    }
    console.log(`我是${name}的微信`)
  }

  static inject(module) {
    Weixin.functions.set(module.constructor.name, module);
  }
}

class Message {
  init(weixin) {
    weixin.Message = this;
  }
  Send(content) {
    console.log(`给小红发的消息：${content}`)
  }
}

class Friends {
  init(weixin) {
    weixin.Friends = this;
  }
  Send(content) {
    console.log(`发送朋友圈：${content}`)
  }
}

const message = new Message();
Weixin.inject(message);

const friends = new Friends();
Weixin.inject(friends);

let xiaoming = new Weixin('小明')

xiaoming.Message.Send('我们一起出去玩吧？')
xiaoming.Friends.Send('和小红出去玩的九宫格图片')
