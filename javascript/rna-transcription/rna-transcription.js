var DnaTranscriber = function() {};

var complement = {
  G: 'C',
  C: 'G',
  T: 'A',
  A: 'U'
};

DnaTranscriber.prototype.toRna = function(strand) {
  var a = strand.split(''),
      b = [];

  a.forEach((nucleotide) => {
    b.push(complement[nucleotide]);
  });

  return b.join('');
}

module.exports = DnaTranscriber;
