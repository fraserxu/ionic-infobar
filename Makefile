build:
	coffee -co dist/ src/

uglify:
	uglifyjs dist/ionic.infobar.js > dist/ionic.infobar.min.js

clean:
	rm -rf dist

css:
	cp src/ionic.infobar.css dist/ionic.infobar.css

all: clean build uglify css