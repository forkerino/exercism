module.exports = class Pangram {
  constructor (pangram) {
    this.pangram = pangram.toLowerCase()
  }

  isPangram () {
    return 'abcdefghijklmnopqrstuvwxyz'.split('').every(letter => {
      return this.pangram.includes(letter)
    })
  }
}
