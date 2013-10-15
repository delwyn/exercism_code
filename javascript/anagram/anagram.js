var Anagram;

Anagram = function(word) {
  this.word = word;
  this.sortedWord = this.sortWord(word);
};

Anagram.prototype.match = function(words) {
  var self = this;

  return words.filter(function(word) {
    return self.isDifferent.call(self, word) && self.isAnagram.call(self, word);
  });
};

Anagram.prototype.sortWord = function(word) {
  return word.toLowerCase().split('').sort().join('');
};

Anagram.prototype.isAnagram = function(word) {
  return this.sortedWord === this.sortWord(word);
};

Anagram.prototype.isDifferent = function(word) {
  return this.word !== word;
};

module.exports = Anagram;
