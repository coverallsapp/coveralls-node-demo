var should = require('should');

var run = require('../index').run;

describe("run", function(){
    it ("runs method d", function(){
        run.d().should.equal(1);
    });

    it ("runs method e", function(){
        run.e().should.equal('blah');
    });
});
