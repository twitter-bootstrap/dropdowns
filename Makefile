
build: components dropdowns.css index.js
	@component build --dev

dropdowns.css: dropdowns.less variables.less mixins.less
	@lessc dropdowns.less >dropdowns.css

components: component.json
	@component install --dev

clean:
	rm -fr build components dropdowns.css

test: build
	# open test/index.html in your browser

.PHONY: clean test
