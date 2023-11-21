import { writerLog } from "./sql-helper.mjs"
import { baseUrl, getFullVersion, getPrefix, isMac } from "./common.mjs";
import { $ } from 'zx'
import { gitPullBy } from "./git-pull.mjs";
import { gitTag } from "./git-tag.mjs";

export const gitPush = async() => {
    const { projectPath, projectName } = global.project
    await gitPushBy(projectPath, projectName)
}

export const gitPushBy = async(name: string, projectName: string) => {
    try {
        let prefix = isMac() ? '/' : '\\\\'
        const releasePath = baseUrl() + prefix + 'release';
        
        await gitPullBy("release", releasePath);
        let buildProject = "";
        if(global.childName) {
            buildProject = projectName + getPrefix()+  global.childName
        } else {
            buildProject = projectName
        }
        await writerLog(projectName, `git push start: ${releasePath}`, getFullVersion());

        const message=`chore: ${buildProject}::commit-version-${getFullVersion()}`
        const result = await $`cd ${releasePath} && 
                               git add .  &&  
                               git commit -m ${message} && 
                               git push origin;`
        if(result && result.exitCode === 0 ) {
            await writerLog(projectName, `git push [${buildProject}] end success ${releasePath}`, getFullVersion());

            await gitTag(releasePath)
        } else {
            await writerLog(projectName, `git push [${buildProject}] error: ${result.stderr}`, getFullVersion()); 
        }
    } catch (error){
        console.log(error, 'error')
        if(error.stdout.includes('nothing to commit, working tree clean')) {
            await writerLog(projectName, `git push nothing to commit`, getFullVersion());
        }
        await writerLog(projectName, `git push error`, getFullVersion());
    }
}

