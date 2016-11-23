var Bob = function() {};

Bob.prototype.hey = function(input) {

  var phrase    = input.trim().split(''),
      last      = phrase.length - 1,
      lowercase = input.match(/[a-z]/g),
      uppercase = input.match(/[A-Z]/g),
      umlauts   = input.match(/(\xfc)|(\xe4)|(\xdc)/g);

  if (input.trim() === '') {
    return 'Fine. Be that way!';
  } else if (phrase[last] === '!') {
    if (!lowercase) {
      return 'Whoa, chill out!';
    } else {
      return 'Whatever.';
    }
  } else if (phrase[last] === '?') {
    if (!lowercase && uppercase) {
      return 'Whoa, chill out!';
    } else {
      return 'Sure.';
    }
  } else {
    if (!lowercase && uppercase && !umlauts) {
      return 'Whoa, chill out!';
    } else {
      return 'Whatever.';
    }
  }
};

module.exports = Bob;
