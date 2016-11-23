var DnaTranscriber = function() {};

var complement = {
  G: 'C',
  C: 'G',
  T: 'A',
  A: 'U'
};

DnaTranscriber.prototype.toRna = function(strand) {
  if (strand.length === 0) {
    throw new error('Please enter a valid DNA strand');
  } else if (strand.length === 1) {
    return complement[strand];
  } else if (strand.length > 1) {
    var a = strand.split(''),
        b = [];

    a.forEach((nucleotide) => {
      b.push(complement[nucleotide]);
    });

    return b.join('');
  }
}

module.exports = DnaTranscriber;
