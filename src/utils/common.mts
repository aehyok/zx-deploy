import { $, argv } from "zx";

export const isMac = () => {
    // win32 代表window平台
    // darwin 代表mac平台
    //
    return process.platform === "win32" ? false : true;
}

// 微信小程序路径设置
export const getMiniPath = () => {
  return isMac() ? process.env.miniPath_Linux: process.env.miniPath_Window
}

export const net8_baseUrl = () => {
  return isMac() ? process.env.net8_baseUrl_Linux: process.env.net8_baseUrl_Window

}

export const baseUrl = ()=> {
    const env = global.environment
    // return `/e/work/git-${env}/`
    if (isMac())
    {
      return process.env.baseUrl_Linux
    }
    else {
      return process.env.baseUrl_Window
    }
}

// 获取当前项目的路径
export const getCurrentPath = () => {
  if (isMac())
  {
    return process.env.currentPath_Linux
  }
  else {
    console.log(process.env.currentPath_Window, 'process.env.currentPath_Window')
    return process.env.currentPath_Window
  }
}


export const getCopyBaseUrl = () => {
  const env = global.environment
  if (isMac())
  {
    return process.env.baseUrl_Linux
  }
  else {
    return process.env.copyBaseUrl_Window
  }
}

export const getCopy_net8BaseUrl = () => {
  const env = global.environment
  if (isMac())
  {
    return process.env.baseUrl_Linux
  }
  else {
    return process.env.net8_copyBaseUrl_Window
  }
}

export const getPrefix = () => {
  return isMac() ? "/" : "\\";
}

function getLength(s: any) {
    const match = s.match(/^(\d+)$/);
    return match ? match[0].length : null;
  }
export const getFullVersion = () => {
  const lastVersion = global.lastVersion
  let arrayVersion = lastVersion.split('.');
  const length = getLength(arrayVersion[0])

  let strVersion = ""
  if(length === 2) {
    strVersion = `0${arrayVersion[0]}`
  }
  else if(length ===1) {
    strVersion = `00${arrayVersion[0]}`
  }

  if(arrayVersion.length > 1) {
    return `${global.version}.${strVersion}.${arrayVersion[1]}`
  } else {
    return `${global.version}.${strVersion}`
  }
}