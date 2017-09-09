module.exports = class Cipher {
  constructor (key) {
    if (/[A-Z0-9]/.test(key) || key === '') {
      throw new Error('Bad key')
    } else if (key === undefined) {
      this.key = this.generateRandomKey()
    } else {
      this.key = key
    }
  }

  generateRandomKey () {
    let result = ''
    for (let i = 0; i < 100; i++) {
      result += String.fromCharCode(Math.floor(Math.random() * 26) + 97)
    }
    return result
  }

  encode (message) {
    return message.split('').map((letter,index) => {
      let cc = letter.charCodeAt() + this.key[index % this.key.length].charCodeAt() - 97
      if (cc > 122) cc -= 26
      return String.fromCharCode(cc)
    }).join('')
  }

  decode (encodedString) {
    return encodedString.split('').map((letter, index) => {
      let cc = letter.charCodeAt() - this.key[index % this.key.length].charCodeAt() + 97
      if (cc < 97) cc += 26
      return String.fromCharCode(cc)
    }).join('')
  }
}
