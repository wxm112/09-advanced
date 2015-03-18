
var app = {

  words: ["ruby", "javascript", "callback", "closure", "framework", "instance"],

  chooseWord: function () {
    return this.words[Math.floor(Math.random() * this.words.length)];
  },

  blanksFromAnswer: function (answerWord) {
    var result = "";
    for (i = 0; i < answerWord.length; i++) {
      result += "-";
    };
    return result;
  },

  alterAT: function (n, c, originalString) {
    return originalString.substr(0,n) + c
    + originalString.substr(n+1,originalString.length);
  },

  guessLetter: function ( letter, shown, answer ){
    var checkLetter = answer.indexOf(letter);
    while ( checkLetter >= 0) {
      shown = this.alterAT(checkLetter, letter, shown);
      checkLetter = answer.indexOf(letter, checkLetter+1);
    }
    return shown;
  }
}