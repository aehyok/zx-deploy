import { $ } from 'zx'
import { writerLog } from './sql-helper.mjs';

export const copyFile = async() => {
    try {
        const path = global.project.projectName
        // const ipAddress = '121.37.222.1'   //  139.9.184.171
        const ipAddress = '139.9.184.171'
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

const oneLogger = (info) => {
    console.log(info);
    const { projectName } = global.project
    writerLog(projectName, info, global.version);
};