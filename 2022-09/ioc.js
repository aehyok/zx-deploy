// https://zhuanlan.zhihu.com/p/125024256

class Rate {
  star(count) {
    console.log(`您对订单的评价为${count}星`)
  }
}


class Share{
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
  constructor() {
    this.rate = new Rate()
    this.share = new Share()
  }

  getInfo() {
    console.log('这里是订单的信息')
  }
}

let order = new Order()
order.getInfo()
order.rate.star(5)
order.share.shareTo('wx')
