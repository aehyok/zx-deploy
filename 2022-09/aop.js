// https://juejin.cn/post/6844903700368982029
const logger = console.log

const sendApi = () => {
  console.log('一些代码逻辑......，发送接口请求')
}

// 如果100个页面200个按钮，都这样处理也不是不行 局势太麻烦了

// fun传入的执行函数
Function.prototype.before = function(fun) {

  // 这里的this指向当前运行的函数，比如上面的buttonClick
  let self = this;
  return function() {

    // 通过apply将传入的fun进行先执行
    fun.apply(this,arguments)

    // 
    let result = self.apply(this,arguments)

    return result;
  }
}

Function.prototype.after = function(fun) {
  let self = this;
  return function () {
    let result = self.apply(this,arguments);
    fun.apply(this,arguments);
    return result;
  }
}

let buttonClick = () => {
  // logger('调用接口前的处理')

  sendApi()

  // logger('调用接口后的处理')
}

buttonClick = buttonClick.before(() => {
  logger('先执行')
}).after(() => {
  logger("后执行")
})

buttonClick()


const kindOf = (cache => thing => {
  const str = toString.call(thing);
  return cache[str] || (cache[str] = str.slice(8, -1).toLowerCase());
})(Object.create(null));


const pureObject = Object.create(null);
console.log(pureObject,'111'); //=> {}