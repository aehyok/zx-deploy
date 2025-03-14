const fs = require('fs');
const path = require('path');
const ds = require('./index_md.js');


const systemPrompt = `
---------------------
请将我提供的上述内容，按照如下模板进行输出，模板如下：《《

## 1. 商品房预售许可办理流程流程步骤

| 步骤 | 时间要求 |
|------|---------|
| 受理 | 30分钟 |
| 审核 | 3小时 |
| 现场复核（特殊环节） | 4小时 |
| 审批 | 30分钟 |
| 制证（出文） | - |

## 2. 商品房预售许可办理流程人员角色

| 环节 | 责任人 |
|------|--------|
| 受理 | 县（市）政务服务中心综合窗口工作人员 |
| 审核 | 县（市）住建局房产股/房产交易所/行政审批股工作人员 |
| 执行 | 县（市）住建局房产股/房产交易所/行政审批股工作人员 |
| 审批 | 县（市）住建局行政审批股股长 |
| 制证（出文） | 县（市）政务服务中心综合窗口工作人员 |

## 3. 商品房预售许可办理流程申请材料

申请人需提交的材料清单：

| 序号 | 材料名称 |
|-----|---------|
| 1 | 商品房预售许可申请表（有标准文本） |
| 2 | 建设工程施工合同 |
| 3 | 前期物业服务合同备案表及前期物业服务合同（有示范文本） |
| 4 | 商品房预售方案 |
| 5 | 资金监管协议 |
| 6 | 规划方案总平面图 |
| 7 | 抵押权人出具的同意销售的书面说明 |
| 8 | 投入开发建设的资金达到工程建设总投资的25%以上的材料 |

## 4. 商品房预售许可办理流程流程特征

- **材料精简**：此事项原需14项材料，现只需申请人提交8项材料
  
- **部门共享材料**（5项）：
  1. 房地产开发企业营业执照正、副本
  2. 房地产开发企业资质证书正、副本
  3. 中华人民共和国不动产权证书
  4. 《建设工程规划许可证》正、副本
  5. 国有土地出让合同
  
- **内部核查材料**（1项）：
  - 《建筑工程施工许可证》正、副本
  
- **流程优化**：通过部门间数据共享和内部核查，减轻了申请人的材料准备负担，提高了办事效率
》》`;

// 包含要处理的文本文件的文件夹
const sourceFolder = 'h:\\github\\zx-deploy\\ds-file\\old'; // 更改为你的源文件夹路径
// 新文件将被保存的文件夹
const outputFolder = 'h:\\github\\zx-deploy\\ds-file\\new'; // 更改为你的输出文件夹路径

// 确保输出根目录存在
if (!fs.existsSync(outputFolder)) {
  fs.mkdirSync(outputFolder, { recursive: true });
}

// 递归处理目录和其子目录
async function processDirectory(sourcePath, relativePath = '') {
  // 读取当前目录中的所有文件和文件夹
  const entries = fs.readdirSync(path.join(sourcePath, relativePath), { withFileTypes: true });
  
  // 收集需要处理的文件
  const files = [];

  for (const entry of entries) {
    const entryRelativePath = path.join(relativePath, entry.name);
    const sourceEntryPath = path.join(sourcePath, entryRelativePath);
    
    if (entry.isDirectory()) {
      // 如果是目录，则创建相应的输出目录
      const targetDir = path.join(outputFolder, entryRelativePath);
      if (!fs.existsSync(targetDir)) {
        fs.mkdirSync(targetDir, { recursive: true });
      }
      
      // 递归处理子目录
      await processDirectory(sourcePath, entryRelativePath);
    } else if (entry.isFile() && path.extname(entry.name).toLowerCase() === '.txt') {
      // 如果是txt文件，则处理它
      // await processTextFile(sourceEntryPath, entryRelativePath);
      files.push({
        sourceFilePath: sourceEntryPath,
        relativeFilePath: entryRelativePath
      });
    }
  }
  
  console.log(`共找到 ${files.length} 个文件需要处理`);
  const batchSize = 16;
  for(let index = 0; index < files.length; index += batchSize) {
    const batch = files.slice(index, index + batchSize);
    console.log(`并发处理批次 ${index/batchSize + 1}, 文件数: ${batch.length}`);
    await Promise.all(batch.map(file => processTextFile(file.sourceFilePath, file.relativeFilePath)));
  }
}

// 处理单个文本文件
async function processTextFile(sourceFilePath, relativeFilePath) {
  try {
    // 读取文件内容
    const data = fs.readFileSync(sourceFilePath, 'utf8');
    
    // console.log(`正在处理: ${data}`);
    var result = await ds.callApi(systemPrompt, data, false);
    // console.log(result, "result--------------")
    // 创建输出文件路径，保持相同的目录结构
    const outputPath = path.join(outputFolder, relativeFilePath);
    
    // 将修改后的内容写入新文件
    fs.writeFileSync(outputPath, result, 'utf8');
    
    console.log(`已处理: ${relativeFilePath}`);
  } catch (err) {
    console.error(`处理文件 ${relativeFilePath} 时出错:`, err);
  }
}

// 开始处理
try {
  console.log('开始处理文件...');
  processDirectory(sourceFolder).then(res => {
    console.log('所有文件处理完成！');
  });
} catch (err) {
  console.error('处理过程中发生错误:', err);
}