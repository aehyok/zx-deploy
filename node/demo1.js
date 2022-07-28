function demo(callback, time) {
  setTimeout(() => {
    callback()
  }, time);
}

const fun = () => console.log('demo1')
demo(fun, 3000)