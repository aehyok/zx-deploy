function demo(callback, time) {
  setTimeout(() => {
    callback()
  }, time);
}

const fun = () => console.log('demo2')
demo(fun, 2000)