import { createConnection } from "mysql2";
import { ChatCompletionResponseMessageRoleEnum } from "openai";
import shortid from "shortid";

let _conn: any = null;
const executeSql = async(sql, params) => {
  // interface DbConfig {
  //   host: string,
  //   port: number,
  //   user: string,
  //   password: string,
  //   database: string
  // }

  // let dbConfig: DbConfig = {
  //   host: process.env.host || "",
  //   port: process.env.port? Number(process.env.port) : 0,
  //   user: process.env.user || "",
  //   password: process.env.password || "",
  //   database: process.env.database || ""
  // }

  // _conn = createConnection({
  //   // 创建mysql实例
  //   host: dbConfig.host,
  //   port: dbConfig.port,
  //   user: dbConfig.user,
  //   password: dbConfig.password,
  //   database: dbConfig.database,
  // });
  
  // const result = await _conn.execute(sql, params);
  // await _conn.end();
};

export const writerLog = async (project, content, version, type= 'info') => {
  let id = shortid.generate()
  console.log(id, "id-writelog")
  try{
    await executeSql("INSERT INTO CicdLog values(?,?,?,?,?,?)", [id,
      project,
      content,
      version,
      new Date(),
      type
    ]);
  }
  catch(ex)
  {
    console.log(ex, "---------------------myusql Error--------------------")
  }
  console.log(id, "end---writelog")
};
