function reverse (str) {
  return str.split('').reverse().join('')
}

export default function (ports) {
  ports.check.subscribe(function (word) {
    ports.suggestions.send(reverse(word))
  })
}
