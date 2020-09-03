REPORTER = spec
test:
	@$(MAKE) lint
	@NODE_ENV=test ./node_modules/.bin/mocha -b --reporter $(REPORTER)

lint:
	./node_modules/.bin/jshint ./lib ./test ./index.js

test-coverage-1:
	@NODE_ENV=test ./node_modules/.bin/istanbul cover \
	./node_modules/mocha/bin/_mocha --report lcovonly test/run1.js -- -R spec

test-coverage-2:
	@NODE_ENV=test ./node_modules/.bin/istanbul cover \
	./node_modules/mocha/bin/_mocha --report lcovonly test/run2.js -- -R spec

test-coveralls:
	@NODE_ENV=test ./node_modules/.bin/istanbul cover \
	./node_modules/mocha/bin/_mocha --report lcovonly -- -R spec && \
		wget -c -q https://mer.s3.amazonaws.com/coveralls-linux.tar.gz -O - | tar -xz && chmod +x coveralls && \
		./coveralls -f./coverage/lcov.info

test-coveralls-1:
	@NODE_ENV=test ./node_modules/.bin/istanbul cover \
	./node_modules/mocha/bin/_mocha --report lcovonly test/run1.js -- -R spec && \
		cat ./coverage/lcov.info | ./node_modules/coveralls/bin/coveralls.js --verbose

test-coveralls-2:
	@NODE_ENV=test ./node_modules/.bin/istanbul cover \
	./node_modules/mocha/bin/_mocha --report lcovonly test/run2.js -- -R spec && \
		cat ./coverage/lcov.info | ./node_modules/coveralls/bin/coveralls.js --verbose

.PHONY: test
