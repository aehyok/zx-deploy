const { execSync } = require('child_process');
const path = require('path');

async function crawlXHSContent(url, noteId, downloadFolder = 'c:\\downloads', options = {}) {
  const {
    timeout = 30000,
    silent = false,
    maxBuffer = 1024 * 1024 * 10
  } = options;

  try {
    // 验证和格式化URL
    if (!url || typeof url !== 'string') {
      throw new Error('无效的URL');
    }
    
    // 处理短链接格式
    const formattedUrl = url.includes('xhslink.com') ? url : `http://xhslink.com/a/${url}`;
    
    // 验证笔记ID
    if (!noteId || typeof noteId !== 'string') {
      throw new Error('无效的笔记ID');
    }

    !silent && console.log('⏳ 开始抓取内容...');
    const command = `npx -y mcp-smart-crawler --download-folder ${downloadFolder} --xhs --url ${formattedUrl} --note-id ${noteId}`;
    
    const result = execSync(command, {
      encoding: 'utf-8',
      timeout,
      maxBuffer,
      windowsHide: true
    });

    const downloadDir = path.resolve(downloadFolder);
    !silent && console.log('✓ 抓取完成');
    !silent && console.log('✓ 图片已保存至：', downloadDir);

    return {
      success: true,
      result,
      downloadDir,
      url: formattedUrl
    };

  } catch (error) {
    console.error('× 抓取失败：', error.message);
    return {
      success: false,
      error: error.message,
      url: url
    };
  }
}

// 示例用法
// crawlXHSContent('http://xhslink.com/a/o4tkUyGQHYJ9', '5kTfx3bA3RdmbGg', 'd:\\xhs-downloads');
