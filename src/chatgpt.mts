import { Configuration, OpenAIApi }  from 'openai'

const configuration = new Configuration({
  apiKey: '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',
});
const openai = new OpenAIApi(configuration);

// openai.createCompletion({
//   model: "text-davinci-003",
//   // prompt: "go语言 hello world 代码",
//   prompt: "go开发微服务，应该使用那些框架",
//   temperature: 0,
//   max_tokens: 100,
//   top_p: 1,
//   frequency_penalty: 0.2,
//   presence_penalty: 0,
// }).then((response: any)=> {
//   console.log(response.data.choices, 'response');
// })


 openai.createImage({
  model: "text-davinci-003",
  prompt: "这张照片中的场景令人心醉，一位年轻女子穿着一条不长的裙子，站在海边，露着清秀可人的脸庞，凝视着地平线下的夕阳。太阳已经沉入了海面，一片金黄色的光芒在海面上弥漫，照亮了整片海洋，仿佛这个时刻被定格在了时间的某个角落里。女子的头发随着微风轻轻飘动，轮廓被余晖映照得柔和而温暖。她的目光凝视着远方，仿佛在思考着生命的意义和无尽的未来。这张照片中蕴含着一种深刻的内涵，让人感受到时间和自然的力量，也让人思考着自己在这个宏大而美丽的世界中的角色和意义",
  n: 1,
  size: "512x512",
}).then((response: any)=> {
  var image_url = response.data.data[0].url;
  console.log(image_url, 'image-url')
})
