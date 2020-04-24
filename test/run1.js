var should = require('should');

var run = require('../index').run;

describe("run", function(){
  it ("runs method a", function(){
    run.a().should.equal(1);
  });

  it ("runs method b", function(){
    run.b(0).should.equal(0);
    run.b(1).should.equal(2);
  });

  it ("runs method c", function(){
    run.c(1).should.equal(1);
    run.c(0).should.equal(0);
  });
});
