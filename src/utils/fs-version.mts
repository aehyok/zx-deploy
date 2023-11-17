import { cd } from 'zx'
import fs from "fs-extra"
import { getPrefix, isMac } from './common.mjs';
export const updateVersion = (path: string) => {
  console.log(path, '---------mainPath-----------')
  cd(`${ path }`);
  console.log(isMac(), "return isMac");
  let prefix = isMac() ? "/" : "\\";


  let miniPath = `${path}${prefix}package.json`
  const packageString = fs.readFileSync(miniPath).toString();
  let packageJson = JSON.parse(packageString)
  packageJson.version = global.version;
  packageJson.lastVersion = global.lastVersion;
  fs.writeFileSync(miniPath, JSON.stringify(packageJson, null, 2))
}

// 修改配置文件中的字段值
export const updatePackageConfig = (path: string, key: string ,value : any) => {
  cd(`${ path }`);
  const packagePath = `${path}${getPrefix()}package.json`;
  const packageString = fs.readFileSync(packagePath).toString();
  let packageJson = JSON.parse(packageString)
  packageJson[key] = value;
  fs.writeFileSync(packagePath, JSON.stringify(packageJson, null, 2))
}