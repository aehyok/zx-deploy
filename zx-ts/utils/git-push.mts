import { writerLog } from "./sql-helper.mjs"
import { baseUrl } from "./common.mjs";
import { $ } from 'zx'
import { gitPullBy } from "./git-pull.mjs";

export const gitPush = async() => {
    const { projectPath, projectName } = global.project
    const path = baseUrl + projectPath
    await gitPushBy(projectPath, projectName)
}

export const gitPushBy = async(name: string, projectName: string) => {
    try {
        const releasePath = baseUrl + 'release';
        await gitPullBy(name,releasePath)
        await writerLog(name, `git push start`, global.version);
        // const message=`build：前端${name} -- commit-version:${global.version}`
        let buildProject = "";
        if(global.childName) {
            buildProject = projectName + '/'+  global.childName
        } else {
            buildProject = projectName
        }
        const message=`$chore: ${buildProject}::commit-version-${global.version}`
        const result = await $`cd ${releasePath}; git add . ; sleep 3; git commit -m ${message}; git push origin;`
        if(result && result.exitCode === 0 ) {
            await writerLog(name, `git push end success`, global.version);
        } else {
            await writerLog(name, `git push error: ${result.stderr}`, global.version); 
        }
    } catch (error){
        console.log(error, 'error')
        if(error.stdout.includes('nothing to commit, working tree clean')) {
            await writerLog(name, `git push nothing to commit`, global.version);
        }
        await writerLog(name, `git push error`, global.version);
    }
} 

