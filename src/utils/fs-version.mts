import { cd } from 'zx'
import fs from "fs-extra"
import { isMac } from './common.mjs';
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