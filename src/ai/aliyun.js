var RPCClient = require('@alicloud/pop-core').RPCClient;
const { config } = require("dotenv");

config();

var client = new RPCClient({
  accessKeyId: process.env.Aliyun_AccessKeyId,
  accessKeySecret: process.env.Aliyun_AccessKeySecret,
  endpoint: 'https://nls-meta.cn-shanghai.aliyuncs.com',
  apiVersion: '2019-02-28'
});

// => returns Promise
// => request(Action, params, options)
client.request('CreateToken').then((result) => {
    console.log(result.Token)
    console.log("token = " + result.Token.Id)
    console.log("expireTime = " + result.Token.ExpireTime)
});