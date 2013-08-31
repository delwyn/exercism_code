var shouting = /^[^a-z]+$/;
var silence  = /^\s*$/;
var question = /\?$/;

var Bob = function() {};

Bob.prototype.hey = function(message) {
  switch (true) {
    case silence.test(message):
      return 'Fine. Be that way!';
    case shouting.test(message):
      return 'Woah, chill out!';
    case question.test(message):
      return 'Sure.';
    default: 
      return 'Whatever.';
  }
};

module.exports = Bob;