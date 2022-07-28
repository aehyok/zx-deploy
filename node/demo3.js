function demo(callback, time) {
  setTimeout(() => {
    callback()
  }, time);
}

const fun = () => console.log('demo3')
demo(fun, 1000)