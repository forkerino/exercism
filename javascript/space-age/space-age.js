module.exports = class SpaceAge {
  constructor (seconds) {
    this.seconds = seconds
  }

  convertYears (factor) {
    return +(this.seconds / 31557600 / factor).toFixed(2)
  }

  onMercury () {
    return this.convertYears(0.2408467)
  }

  onVenus () {
    return this.convertYears(0.61519726)
  }

  onEarth () {
    return this.convertYears(1)
  }

  onMars () {
    return this.convertYears(1.8808158)
  }

  onJupiter () {
    return this.convertYears(11.862615)
  }

  onSaturn () {
    return this.convertYears(29.447498)
  }

  onUranus () {
    return this.convertYears(84.016846)
  }

  onNeptune () {
    return this.convertYears(164.79132)
  }
}
