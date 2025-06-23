const fs = require('fs');
const path = require('path');
const fss = require('fs/promises');
const ds = require('./utilAI.js');
const { writeLog } = require('./sqlHelper.js');

const systemPrompt = `
---------------------
帮我将这段内容分成两段，注意格式与上面的保持要保持完全的一致`;


// 包含要处理的文本文件的文件夹
const sourceFolder = 'h:\\github\\zx-deploy\\ds-file\\replace-26'; // 更改为你的源文件夹路径
// 新文件将被保存的文件夹
const outputFolder = 'h:\\github\\zx-deploy\\ds-file\\splitsize'; // 更改为你的输出文件夹路径

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
    } 
    
    else if (entry.isFile() && path.extname(entry.name).toLowerCase() === '.txt') {
      // 如果是txt文件，则处理它
      // await processTextFile(sourceEntryPath, entryRelativePath);
      files.push({
        sourceFilePath: sourceEntryPath,
        relativeFilePath: entryRelativePath
      });
    }
  }

  console.log(`共找到 ${files.length} 个文件需要处理`);
  writeLog("split", sourcePath, relativePath, "info", `共找到 ${files.length} 个文件需要处理`);
  const batchSize = 16;
  for(let index = 0; index < files.length; index += batchSize) {
    const batch = files.slice(index, index + batchSize);
    console.log(`并发处理批次 ${index/batchSize + 1}, 文件数: ${batch.length}`);
    await Promise.all(batch.map(file => processSplitFile(file.sourceFilePath, file.relativeFilePath)));
  }
}

// 处理单个文本文件
async function processSplitFile(sourceFilePath, relativeFilePath) {
  try {
    const filePath = relativeFilePath.replace(/\\(\d+)/, (match, number) => `\\${number}-1`);
    
    // 创建输出文件路径，保持相同的目录结构
    const outputPath = path.join(outputFolder, filePath);

    console.log(fs.existsSync(outputPath), "是否存在");
    // 检查输出文件是否已存在且不为空
    if (fs.existsSync(sourceFilePath)) {

      const stats = await fss.stat(sourceFilePath);
      console.log(stats, "stats---")
      if (stats.size > 1024) {
        const data = fs.readFileSync(sourceFilePath, 'utf8');
        if (data && data.trim().length > 0) {   
          var result = await ds.callApi( systemPrompt, data, true);
          console.log(result.length, "result---content");
          
        }
      } else {
        // 读取文件内容
        const data = fs.readFileSync(sourceFilePath, 'utf8');
         // 将修改后的内容写入新文件
         fs.writeFileSync(outputPath, data, 'utf8');
      }
    } else {
      // 读取文件内容
      const data = fs.readFileSync(sourceFilePath, 'utf8');
      
      var result = await ds.callApi( systemPrompt, data, true);

      console.log(result.length, "result---content");
      if (result.length != 4) {
        console.log(`文件 ${relativeFilePath} 未处理`);
        return;
      }

      // 写一个for循环用来处理result.content,将其中的\n字符去掉，然后写入到outputFolder中
      for (let i = 0; i < result.length; i++) {
        const temp = result[i].content.replace(/\n/g
          , "");
        const filePath = relativeFilePath.replace(/\\(\d+)/, (match, number) => `\\${number}-${i+1}`);
        
        // 创建输出文件路径，保持相同的目录结构
        const outputPath = path.join(outputFolder, filePath);
        
        // 将修改后的内容写入新文件
        fs.writeFileSync(outputPath, temp, 'utf8');
      }
    }
    
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