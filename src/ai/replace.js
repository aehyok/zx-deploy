const fs = require('fs');
const path = require('path');
const ds = require('./utilAI.js');
const { format } = require('date-fns');

const systemPrompt = `现在你是一位优秀的数据整理大师，请将我提供的内容进行批量替换。我的要求有如下三条：
                      1、如果有'县（市）'全部替换为'来凤县'，
                      2、如果有'县级'全部替换为'来凤县'
                      3、如果原文中没有出现需要替换的字样，则直接只返回原文就可以了，其他内容无需返回。
                      `;

// 包含要处理的文本文件的文件夹
const sourceFolder = 'h:\\github\\zx-deploy\\ds-file\\result'; // 更改为你的源文件夹路径
// 新文件将被保存的文件夹
const outputFolder = 'h:\\github\\zx-deploy\\ds-file\\replace'; // 更改为你的输出文件夹路径

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
    const now = new Date();
    console.log(`并发处理批次 ${index/batchSize + 1}, 文件数: ${batch.length}, 开始执行时间:${format(now, "yyyy-MM-dd hh:mm:ss ")}`);
    await Promise.all(batch.map(file => processTextFile(file.sourceFilePath, file.relativeFilePath)));
  }
}

// 处理单个文本文件
async function processTextFile(sourceFilePath, relativeFilePath) {
  try {
    // 创建输出文件路径，保持相同的目录结构
    const outputPath = path.join(outputFolder, relativeFilePath);

    // 检查输出文件是否已存在且不为空
    if (fs.existsSync(outputPath)) {
      const existingContent = fs.readFileSync(outputPath, 'utf8');
      if (existingContent && existingContent.trim().length > 0) {
        console.log(`文件已存在且不为空，跳过处理: ${relativeFilePath}`);
        return; // 跳过后续处理
      }
    }

    // 读取文件内容
    const data = fs.readFileSync(sourceFilePath, 'utf8');
    
    // console.log(`正在处理: ${data}`);
    var result = await ds.callApi(systemPrompt, data, false);
    console.log(result, "result--------------")
    
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