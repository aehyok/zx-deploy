const QRCode = require("qrcode")
const { Canvas, loadImage } = require("skia-canvas")
const fs = require("fs");

async function generateCustomQRCode(text, outputPath) {
  // 生成基本二维码
  const qrCodeDataURL = await QRCode.toDataURL(text, { errorCorrectionLevel: 'H' });
  const qrCodeImage = await loadImage(qrCodeDataURL);

  // 创建画布
  const size = 400;
  const canvas = new Canvas(size, size);
  const ctx = canvas.getContext('2d');

  // 绘制白色背景
  ctx.fillStyle = 'white';
  ctx.fillRect(0, 0, size, size);

  // 解析二维码图像数据
  const tempCanvas = new Canvas(qrCodeImage.width, qrCodeImage.height);
  const tempCtx = tempCanvas.getContext('2d');
  tempCtx.drawImage(qrCodeImage, 0, 0);
  const imageData = tempCtx.getImageData(0, 0, qrCodeImage.width, qrCodeImage.height);

  // 重新绘制二维码
  const moduleSize = size / qrCodeImage.width;
  for (let y = 0; y < qrCodeImage.height; y++) {
      for (let x = 0; x < qrCodeImage.width; x++) {
          const i = (y * qrCodeImage.width + x) * 4;
          if (imageData.data[i] === 0) {
              ctx.fillStyle = '#3498db'; // 自定义码点颜色
              const centerX = x * moduleSize + moduleSize / 2;
              const centerY = y * moduleSize + moduleSize / 2;
              const radius = moduleSize / 2 * 0.8;

              // 绘制圆形码点
              ctx.beginPath();
              ctx.arc(centerX, centerY, radius, 0, 2 * Math.PI);
              ctx.fill();
          }
      }
  }

  // 自定义码眼
  const eyeRadius = moduleSize * 3.5;
  const eyePositions = [
      [3.5, 3.5],
      [qrCodeImage.width - 3.5, 3.5],
      [3.5, qrCodeImage.height - 3.5]
  ];

  eyePositions.forEach(([eyeX, eyeY]) => {
      // 绘制外边框
      ctx.fillStyle = '#e74c3c'; // 自定义码眼外边框颜色
      ctx.beginPath();
      ctx.arc(eyeX * moduleSize, eyeY * moduleSize, eyeRadius, 0, 2 * Math.PI);
      ctx.fill();

      // 绘制内部
      ctx.fillStyle = 'white';
      ctx.beginPath();
      ctx.arc(eyeX * moduleSize, eyeY * moduleSize, eyeRadius * 0.7, 0, 2 * Math.PI);
      ctx.fill();

      // 绘制内核
      ctx.fillStyle = '#3498db'; // 自定义码眼内核颜色
      ctx.beginPath();
      ctx.rect(
          (eyeX - 1) * moduleSize,
          (eyeY - 1) * moduleSize,
          moduleSize * 2,
          moduleSize * 2
      );
      ctx.fill();
  });

  // 添加中心logo
  const logoSize = size * 0.2;
  console.log(__dirname, "dirname")
  const logo = await loadImage(`${__dirname}\\vite.png`); // 请替换为实际的logo路径
  ctx.drawImage(
      logo,
      (size - logoSize) / 2,
      (size - logoSize) / 2,
      logoSize,
      logoSize
  );

  // 保存图像
  const buffer = await canvas.toBuffer('png');
  fs.writeFileSync(outputPath, buffer);

  console.log(`自定义二维码已保存至 ${outputPath}`);
}

generateCustomQRCode('https://baidu.com', 'custom_qr_code.png');