const axios = require('axios');
const fs = require('fs');

// 股票代码数组
const stockCodes = [
  "688480", "688096", "688501", "603813", "300938", "603377", "300506", "002989", 
  "002713", "605303", "601789", "601881", "600358", "002195", "603887", "600734", 
  "600589", "002197", "600289", "300167", "300042", "301608", "688182", "300650", 
  "300128", "688678", "301280", "600360", "688385", "688234", "603931", "688395", 
  "688160", "301079", "688700", "688789", "300521", "001256", "601717", "301032", 
  "000570", "600860", "300402", "605100", "600592", "301255", "002164", "301603", 
  "300083", "688622", "688788", "688636", "688439", "688311", "603712", "603678", 
  "603267", "300447", "002025", "000733", "600764", "300600", "688297", "688543", 
  "300593", "603985", "600458", "301063", "301040", "688680", "688598", "002056", 
  "605196", "603618", "002276", "300932", "002706", "600212", "002358", "002580", 
  "600478", "600416", "002196", "000710", "301093", "688273", "688266", "688319", 
  "688166", "002755", "002105", "301607", "301225", "300745", "300611", "002921", 
  "300652", "002488", "603788", "603767", "600841", "600698", "300507", "002434", 
  "002283", "000678", "002101", "000700", "600539", "003010", "000622", "300022", 
  "600738", "600693", "600619", "603579", "603992", "603615", "603326", "002853", 
  "003018", "002846", "605009", "301177", "002574", "002345", "002875", "603958", 
  "300901", "300819", "002042", "600381", "603057", "605198", "000596", "000568", 
  "002891", "002162", "600301", "600281", "300328", "002167", "002149", "603799", 
  "600711", "301219", "601020", "002114", "605208", "600595", "003038", "002379", 
  "600782", "000932", "688357", "603822", "688386", "301216", "001333", "301585", 
  "301190", "603977", "002683", "603067", "600367", "603983", "603630", "603193", 
  "603059", "001328"
];

// 结果存储
const results = [];

// 添加延迟函数，避免请求过快
const delay = ms => new Promise(resolve => setTimeout(resolve, ms));

// 设置请求头
const headers = {
  'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36',
  'Referer': 'https://data.eastmoney.com/',
  'Accept': 'application/json, text/plain, */*',
  'Accept-Language': 'zh-CN,zh;q=0.9,en;q=0.8'
};

// 主函数，处理API调用
async function fetchStockData() {
  for (let i = 0; i < stockCodes.length; i++) {
    const stockCode = stockCodes[i];
    // const url = `https://datacenter.eastmoney.com/securities/api/data/get?type=RPT_PUBLIC_OP_PREDICT_BBN&source=DataCenter&client=WAP&sty=SECURITY_CODE,SECURITY_NAME_ABBR,REPORTDATE,PREDICT_TYPE,VRANGE_4,RANGE_4,VRANGE_1,RANGE_1,VRANGE_3,RANGE_3,NOTICE_DATE,ORG_CODE&p=1&ps=4&sr=-1&st=REPORTDATE&filter=(SECURITY_CODE=%22${stockCode}%22)`;
    const url =`https://datacenter.eastmoney.com/securities/api/data/get?type=RPT_LICO_FN_CPD_BB&source=DataCenter&client=WAP&sty=SECURITY_CODE,SECURITY_NAME_ABBR,TRADE_MARKET,REPORTDATE,REPORTDATEWZ,REPORTDATEYW,BASIC_EPS,TOTAL_OPERATE_INCOME,TOTAL_OPERATE_INCOME_TQ,PARENT_NETPROFIT,PARENT_NETPROFIT_TQ,ISNEW,NOTICE_DATE&p=1&ps=4&sr=-1&st=REPORTDATE&filter=(SECURITY_CODE=%22${stockCode}%22)`;
    try {
      console.log(`正在获取第 ${i + 1}/${stockCodes.length} 个股票数据: ${stockCode}`);
      
      const response = await axios.get(url, { headers });
      
      if (response.data && response.data.result) {
        // 处理成功的响应
        results.push({
          stockCode: stockCode,
          data: response.data.result
        });
        
        console.log(`股票 ${stockCode} 数据获取成功`);
      } else {
        console.log(`股票 ${stockCode} 数据获取失败或无数据`);
        results.push({
          stockCode: stockCode,
          data: null,
          error: "无数据"
        });
      }
    } catch (error) {
      console.error(`获取股票 ${stockCode} 数据时出错:`, error.message);
      results.push({
        stockCode: stockCode,
        data: null,
        error: error.message
      });
    }
    
    // 添加延迟，避免频繁请求被封
    await delay(1000); // 1秒延迟
  }
  
  // 所有请求完成后，将结果保存到文件
  fs.writeFileSync('stock_data_results1.json', JSON.stringify(results, null, 2), 'utf8');
  console.log('全部数据获取完成，结果已保存到 stock_data_result1s.json');
}

// 执行主函数
fetchStockData().catch(error => {
  console.error('程序执行出错:', error);
});