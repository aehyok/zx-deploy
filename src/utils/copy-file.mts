import { $ } from 'zx'
import { writerLog } from './sql-helper.mjs';
import { format } from 'date-fns';
import { baseUrl, getCopyBaseUrl, getFullVersion } from './common.mjs';
export const copyFile = async() => {
    try {
        const path = global.project.projectName
        const ipAddress = process.env.dev
        const sit_IpAddress =  process.env.productIp
        let result:any
        if(global.childName && global.childName !== "dvs-main") {
            result = await $`scp -r ${getCopyBaseUrl()}/release/cms/${path}/child/${global.childName}/* root@${ipAddress}:/usr/local/sunlight/dvsv3/ui/${path}/child/${global.childName}/`
            oneLogger(`copy file：${global.childName} [${getFullVersion()}]  dev end success`)
            result = await $`scp -r ${getCopyBaseUrl()}/release/cms/${path}/child/${global.childName}/* root@${sit_IpAddress}:/usr/local/sunlight/dvsv3/ui/${path}/child/${global.childName}/`
            oneLogger(`copy file：${global.childName} [${getFullVersion()}]  sit end success`)
        } else {
            result = await $`scp -r ${getCopyBaseUrl()}/release/cms/${path}/* root@${ipAddress}:/usr/local/sunlight/dvsv3/ui/${path}/`
            oneLogger(`copy file：${path} [${getFullVersion()}]  dev end success`)
            result = await $`scp -r ${getCopyBaseUrl()}/release/cms/${path}/* root@${sit_IpAddress}:/usr/local/sunlight/dvsv3/ui/${path}/`
            oneLogger(`copy file：${path} [${getFullVersion()}]  sit end success`)
        }
        
        if(result.exitCode === 0) {
            oneLogger(`copy file  [${getFullVersion()}] end success`)
        }
        else {
            console.log("fail", $`$?`);
        }
    } catch {
        oneLogger(`copy file [${getFullVersion()}] end error`)
    }
}

// export const backupFile = async() => {
//     const url = `/e/work/git-${global.environment}/`
//     const dTime = format(Date.now(), 'yyyy-MM-dd-HH-mm-ss')
//     const sourceUrl = `${url}release/cms/*`
//     console.log(dTime, '时间')
//     const historyUrl = `${baseUrl()}release-history\\${dTime}`

//     const targetUrl = `${url}release-history/${dTime}`
//     await $`mkdir ${historyUrl}`
//     const result = await $`scp -r ${sourceUrl} ${targetUrl}  `
//     if(result.exitCode === 0) {
//         oneLogger(`copy history file  [${global.version}] end success`)
//     }
//     else {
//         console.log("fail", $`$?`);
//     }
// }


const oneLogger = (info) => {
    console.log(info);
    const { projectName } = global.project
    writerLog(projectName, info, getFullVersion());
};