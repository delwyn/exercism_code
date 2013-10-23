var Words = function(sentence) {
  var words = this.getWords(sentence);

  this.count = this.getCount(words);
};

Words.prototype.getWords = function(sentence) {
  return sentence.toLowerCase().split(/\W+/).filter(function(word) {
    return word !== '';
  });
};

Words.prototype.getCount = function(words) {
  var count = {};

  words.forEach(function(word) {
    count[word] = (count[word] || 0) + 1;
  });

  return count;
};

module.exports = Words;
