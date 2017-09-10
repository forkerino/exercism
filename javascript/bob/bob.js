module.exports = class Bob {
  constructor () {
    this.responses = {
      question: 'Sure.',
      yell: 'Whoa, chill out!',
      nothing: 'Fine. Be that way!',
      whatever: 'Whatever.'
    }
  }

  hey (utterance) {
    if (utterance.toUpperCase() === utterance && /[A-Z]/.test(utterance)) {
      return this.responses.yell
    } else if (utterance.trim().endsWith('?')) {
      return this.responses.question
    } else if (utterance.trim() === '') {
      return this.responses.nothing
    } else {
      return this.responses.whatever
    }
  }
}
