import { $, argv } from "zx";

export const isMac = () => {
    // win32 代表window平台
    // darwin 代表mac平台
    //
    return process.platform === "darwin" ? true : false;
}

/**
 * dvs项目基础路径test
 */
// dev = /e/work/git/dvs-2.x/
// lingyuan = '/e/work/git-lingyuan/' 
// export const baseUrl = isMac() ? '/Users/admin/Desktop/aehyok/github/' : '/e/work/git-lingyuan/' 

// export const baseUrl =  `/e/work/git-xuanen/`

export const baseUrl = ()=> {
    const env = global.environment
    // return `/e/work/git-${env}/`
    return `e:\\work\\git-${env}`
}

function getLength(s: any) {
    const match = s.match(/^(\d+)$/);
    return match ? match[0].length : null;
  }
export const getFullVersion = () => {
    const lastVersion = global.lastVersion
    const length = getLength(lastVersion)
  
    let strVersion = ""
    if(length === 2) {
      strVersion = `0${lastVersion}`
    }
    else if(length ===1) {
      strVersion = `00${lastVersion}`
    }
    return `v${global.version}.${strVersion}`
  }