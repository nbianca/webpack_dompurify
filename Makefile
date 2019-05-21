.PHONY: test
test: webpack
	bundle exec ./test.rb

.PHONY: webpack
webpack:
	npx webpack --config webpack.config.js
