var Hamming = function() {};

Hamming.prototype.compute = function(one, two) {
  if (one.length !== two.length) {
    throw 'DNA strands must be of equal length.';
  } else {
    return compare(one, two);
  }
}

function compare(one, two) {
  var string_one = one.split('');
  var string_two = two.split('');
  var distance = 0;

  for(var i = 0; i < string_one.length; i++) {
    if (string_one[i] !== string_two[i]) { distance++; }
  }

  return distance;
}

module.exports = Hamming;
