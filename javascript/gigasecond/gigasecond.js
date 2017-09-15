module.exports = class Gigasecond {
  constructor (date) {
    this.start = date
  }

  date () {
    return new Date(this.start.valueOf()+1e12)
  }
}
