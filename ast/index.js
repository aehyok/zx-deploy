const recast = require('recast')

// 测试函数字符串
const code =
  `
  function add(a, b) {
    return a +
      // 有什么奇怪的东西混进来了
      b
  }
  `

const ast = recast.parse(code)

const fun = recast.print(ast).code

console.log(fun, 'fun')

// recast.run(code,)



class Order {
  constructor() {

  }

  getInfo() {
    console.log('这里是订单的信息')
  }
}

let order = new Order()
order.getInfo()


