// https://zhuanlan.zhihu.com/p/125024256

class Rate {
  init(order) {
    order.rate = this;
  }
  star(count) {
    console.log(`您对订单的评价为${count}星`)
  }
}


class Share {
  init(order) {
    order.share = this;
  }
  shareTo(platform){
      switch (platform) {
          case 'wx':
              console.log('分享至微信');
              break;
          case 'wb':
              console.log('分享至微博');
              break;
          default:
              console.error('分享失败，请检查platform');
              break;
      }
  }
}

class Order {
  // 用于维护依赖关系的Map
  static modules = new Map();

  constructor() {
    // this.rate = new Rate()
    // this.share = new Share()
    for (let module of Order.modules.values()) {
      // 调用模块init方法
      module.init(this);
    }
  }

  static inject(module) {
    Order.modules.set(module.constructor.name, module);
  }

  getInfo() {
    console.log('这里是订单的信息')
  }
}
const rate = new Rate();
// 注入依赖
Order.inject(rate);

const share = new Share();
Order.inject(share);
let order = new Order()
order.getInfo()
order.rate.star(5)
order.share.shareTo('wx')
