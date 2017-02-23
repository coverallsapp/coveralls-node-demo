var run = {
  a: function(){
    return 1;
  },

  b: function(x){
    var y;

    if(x === 0) y = 1;
    if(x > 0) y = 2;

    return y;
  },

  c: function(x){
    var zero = 0;
    var one = 1;

    var y = x > zero ? one : zero;

    return y;
  }
};

module.exports = run;
