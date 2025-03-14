const { OpenAI } = require('openai');
const { config } = require("dotenv");

config();

console.log(process.env.DB_HOST); // 输出: localhost

// 初始化OpenAI客户端
// const client = new OpenAI({
//   apiKey: 'sk-4ce2e53a474c4287b0066c007ec6fd78',
//   baseURL: 'https://api.deepseek.com'
// });

const client = new OpenAI({
  apiKey: process.env.apiKey,
  baseURL: process.env.apiBaseUrl
});


const userPrompt = `3、商品房预售许可办理流程
受理	30分钟	
审核	3小时	
现场复核（特殊环节）4小时	
审批	30分钟	
制证（出文）
						受理人：县（市）政务服务中心综合窗口工作人员		审核人：县（市）住建局房产股/房产交易所/行政审批股工作人员	执行人：县（市）住建局房产股/房产交易所/行政审批股工作人员	审批人：县（市）住建局行政审批股股长		
制证人（出文人）：县（市）政务服务中心综合窗口工作人员
申请人需提交的材料清单
序号	材料名称
1.商品房预售许可申请表（有标准文本）
2.建设工程施工合同
3.前期物业服务合同备案表及前期物业服务合同（有示范文本）
4.商品房预售方案
5.资金监管协议
6.规划方案总平面图
7.抵押权人出具的同意销售的书面说明
8.投入开发建设的资金达到工程建设总投资的25%以上的材料
备注：此事项原需14项材料，其中5项（1.房地产开发企业营业执照正、副本，2.房地产开发企业资质证书正、副本，3.中华人民共和国不动产权证书，4.《建设工程规划许可证》正、副本，5.国有土地出让合同）通过部门共享获取；1项（《建筑工程施工许可证》正、副本）通过内部核查获取；申请人只需提交上述8项材料。   
`;

async function callAPI(system, content, isJson) {
  try {

    const messages = [
      { role: "system", content: system },
      { role: "user", content: content??userPrompt }
    ];
    var response = {};
    if (isJson) {
      console.log("进入json模式");
      response = await client.chat.completions.create({
        model: "deepseek-v3",
        // model: "deepseek-reasoner",
        messages: messages,
        response_format: { type: 'json_object' }
      });

      // console.log("response---ai", response);
      // console.log("response---ai", response.choices[0].message.content);
  
      // console.log("response---ai", typeof response.choices[0].message.content);
      var result = response.choices[0].message.content;
      // console.log(response.choices[0].message.content);
      return JSON.parse(result);
    }
    else {
      console.log("进入非json模式");
      response = await client.chat.completions.create({
        model: "deepseek-r1",
        // model: "deepseek-reasoner",
        messages: messages,
      });

      // console.log("response---ai", response);
      // console.log("response---ai", response.choices[0].message.content);
  
      // console.log("response---ai", typeof response.choices[0].message.content);
      var result = response.choices[0].message.content;
      return result;
    }
    // console.log(JSON.parse(response.choices[0].message.content));
  } catch (error) {
    console.error('调用API时出错:', error);
  }
}



function Add()
{
  return "9";
}



// 正确导出示例
module.exports = {
  add: function() { // 确保方法名是 add
      // 实现逻辑
      return Add()
  },
  callApi: function(system,data, isJson) {
      // 原有实现
     return callAPI(system, data, isJson) 
  },
};
//能告诉我如何给汽车加油吗

//请告诉我办理财政票据领用证需要多长时间



//农村集体经济审计的办理流程



