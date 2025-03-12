const fs = require('fs');
const path = require('path');
const ds = require('./index_md.js');

// 包含要处理的文本文件的文件夹
const sourceFolder = 'h:\\github\\zx-deploy\\ds-file\\old'; // 更改为你的源文件夹路径
// 新文件将被保存的文件夹
const outputFolder = 'h:\\github\\zx-deploy\\ds-file\\new'; // 更改为你的输出文件夹路径
// 要添加到每个文件的内容
const contentToAppend = 'xxxx'; // 更改为你想要添加的内容

// 确保输出根目录存在
if (!fs.existsSync(outputFolder)) {
  fs.mkdirSync(outputFolder, { recursive: true });
}

// 递归处理目录和其子目录
async function processDirectory(sourcePath, relativePath = '') {
  // 读取当前目录中的所有文件和文件夹
  const entries = fs.readdirSync(path.join(sourcePath, relativePath), { withFileTypes: true });
  
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
      await processTextFile(sourceEntryPath, entryRelativePath);
    }
  }
}

// 处理单个文本文件
async function processTextFile(sourceFilePath, relativeFilePath) {
  try {
    // 读取文件内容
    const data = fs.readFileSync(sourceFilePath, 'utf8');
    
    console.log(`正在处理: ${data}`);
    var result = await ds.callApi(data);
    // var result = ds.add();

    // 添加内容
    // const modifiedContent = data + contentToAppend;
    
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
  processDirectory(sourceFolder);
  console.log('所有文件处理完成！');
} catch (err) {
  console.error('处理过程中发生错误:', err);
}