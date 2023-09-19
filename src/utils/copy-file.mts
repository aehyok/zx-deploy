import { $ } from 'zx'
import { writerLog } from './sql-helper.mjs';
import { format } from 'date-fns';
import { baseUrl, getFullVersion } from './common.mjs';
export const copyFile = async() => {
    try {
        const path = global.project.projectName
        const childPath = global.childName
        // const ipAddress = '139.9.184.171'  // '121.37.222.1'   //  139.9.184.171
        const ipAddress = '139.9.184.171'
        const sit_IpAddress =  '139.9.1.176'
        let result:any
        if(global.childName && global.childName !== "dvs-main") {
            result = await $`scp -r /e/work/git-${global.environment}/release/cms/${path}/child/${global.childName}/* root@${ipAddress}:/usr/local/sunlight/dvsv3/ui/${path}/child/${global.childName}/`
            result = await $`scp -r /e/work/git-${global.environment}/release/cms/${path}/child/${global.childName}/* root@${sit_IpAddress}:/usr/local/sunlight/dvsv3/ui/${path}/child/${global.childName}/`
        } else {
            result = await $`scp -r /e/work/git-${global.environment}/release/cms/${path}/* root@${ipAddress}:/usr/local/sunlight/dvsv3/ui/${path}/`
            result = await $`scp -r /e/work/git-${global.environment}/release/cms/${path}/* root@${sit_IpAddress}:/usr/local/sunlight/dvsv3/ui/${path}/`
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
    const { projectPath } = global.project
    writerLog(projectPath, info, getFullVersion());
};