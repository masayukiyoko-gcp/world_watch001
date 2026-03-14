const { chromium } = require('playwright');
const fs = require('fs');

(async () => {
  const url = process.env.URL || 'https://masayukiyoko-gcp.github.io/world_watch001/';
  const outDir = 'artifacts/screenshots';
  if (!fs.existsSync(outDir)) fs.mkdirSync(outDir, { recursive: true });

  const browser = await chromium.launch();
  const page = await browser.newPage();
  await page.goto(url, { waitUntil: 'networkidle' });
  await page.screenshot({ path: `${outDir}/homepage.png`, fullPage: false });
  console.log('screenshot saved:', `${outDir}/homepage.png`);
  await browser.close();
})();
