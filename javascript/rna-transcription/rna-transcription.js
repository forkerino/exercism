module.exports = class DnaTranscriber {
  constructor () {
    this.pairs = {
      'A': 'U',
      'T': 'A',
      'C': 'G',
      'G': 'C'
    }
  }

  toRna (dna) {
    return dna.split('').map(nucleotide => {
      if (this.pairs.hasOwnProperty(nucleotide)) {
        return this.pairs[nucleotide]
      } else {
        throw new Error('Invalid input')
      }
    }).join('')
  }
}
