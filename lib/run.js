var run = {
  a: function(){
    return 1;
  },

  b: function(){
    return 2;
  },

  c: function(x){
    var y = x > 0 ? 1 : 0;
    
    return y;
  }
};

module.exports = run;
