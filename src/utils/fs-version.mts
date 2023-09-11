import { cd } from 'zx'
import fs from "fs-extra"
export const updateVersion = (path: string) => {
  cd(`${ path }`);
  console.log('---------mainPath-----------')
  const packageString = fs.readFileSync(`${path}\\package.json`).toString();
  let packageJson = JSON.parse(packageString)
  packageJson.version = global.version;
  packageJson.lastVersion = global.lastVersion;
  fs.writeFileSync(`${path}\\package.json`, JSON.stringify(packageJson, null, 2))
}