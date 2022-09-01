// https://zhuanlan.zhihu.com/p/125024256
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var Rate = /** @class */ (function () {
    function Rate() {
    }
    Rate.prototype.star = function (count) {
        console.log("\u60A8\u5BF9\u8BA2\u5355\u7684\u8BC4\u4EF7\u4E3A" + count + "\u661F");
    };
    return Rate;
}());
var Share = /** @class */ (function () {
    function Share() {
    }
    Share.prototype.shareTo = function (platform) {
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
    };
    return Share;
}());
function Inject(modules) {
    return function (target) {
        modules.forEach(function (module) {
            target.prototype[module.name] = new module();
        });
    };
}
var Order = /** @class */ (function () {
    function Order() {
    }
    Order.prototype.getInfo = function () {
        console.log('这里是订单的信息');
    };
    Order = __decorate([
        Inject([Share, Rate])
    ], Order);
    return Order;
}());
var order = new Order();
order.getInfo();
order.rate.star(5);
order.share.shareTo('wx');
