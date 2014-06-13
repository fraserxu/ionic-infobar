build:
	node_modules/.bin/coffee -co dist/ src/

uglify:
	node_modules/.bin/uglifyjs dist/ionic.infobar.js > dist/ionic.infobar.min.js

clean:
	rm -rf dist

css:
	cp src/ionic.infobar.css dist/ionic.infobar.css

.PHONY: all clean

all: clean build uglify css