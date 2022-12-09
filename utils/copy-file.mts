import { $ } from 'zx'
import { writerLog } from './sql-helper.mjs';
import { format } from 'date-fns';
import { baseUrl } from './common.mjs';
export const copyFile = async() => {
    try {
        const path = global.project.projectName
        const ipAddress = '121.37.222.1'   //  139.9.184.171
        // const ipAddress = '139.9.184.171'
        const result = await $`scp -r /e/work/git-${global.environment}/release/cms/${path}/* root@${ipAddress}:/usr/local/sunlight/dvs/dvs-ui/${path}/`
        if(result.exitCode === 0) {
            oneLogger(`copy file  [${global.version}] end success`)
        }
        else {
            console.log("fail", $`$?`);
        }
    } catch {
        oneLogger(`copy file [${global.version}] end error`)
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
    writerLog(projectName, info, global.version);
};