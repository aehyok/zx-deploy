const { createConnection } = require("mysql2");
const shortid = require("shortid");
const { config } = require("dotenv");

config();


const executeSql = async(sql, params) => {

  let dbConfig = {
    host: process.env.host || "",
    port: process.env.port? Number(process.env.port) : 0,
    user: process.env.user || "",
    password: process.env.password || "",
    database: process.env.database || ""
  }
  let _conn = null;
  _conn = createConnection({
    // 创建mysql实例
    host: dbConfig.host,
    port: dbConfig.port,
    user: dbConfig.user,
    password: dbConfig.password,
    database: dbConfig.database,
  });
  
  const result = await _conn.execute(sql, params);
  await _conn.end();
};

/**
 * 
 * @param {*} project 
 * @param {*} projectType 
 * @param {*} folder 
 * @param {*} fileName 
 * @param {*} logType 
 * @param {*} content 
 */
const writerLog = async (projectType, folder, fileName, logType, content) => {
  console.log(projectType, folder, fileName, logType, content, "writerLog")
  let id = shortid.generate()
  let project = process.env.project || "";
  console.log(id, "id-writelog")
  try{
    await executeSql("INSERT INTO AILog values(?,?,?,?,?,?,?,?)", [
      id,
      project,
      projectType,
      folder,
      fileName,
      new Date(),
      logType,
      content,
    ]);
  }
  catch(ex)
  {
    console.log(ex, "---------------------myusql Error--------------------")
  }
  console.log(id, "end---writelog")
};


// 正确导出示例
module.exports = {
  /**
   * 
   * @param {*} project 
   * @param {*} projectType 
   * @param {*} folder 
   * @param {*} fileName 
   * @param {*} logType 
   * @param {*} content 
   * @returns 
   */
  writeLog: function(projectType, folder, fileName, logType, content) {
      // 原有实现
     return writerLog(projectType, folder, fileName, logType, content);
  },
};
