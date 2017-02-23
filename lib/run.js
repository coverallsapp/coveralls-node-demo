var run = {
  a: function(){
    return 1;
  },

  b: function(){
    return 2;
  },

  c: function(x){
    var zero = 0;
    var one = 1;

    var y = x > zero ? one : zero;

    return y;
  }
};

module.exports = run;
