build:
	coffee -co dist/ src/

uglify:
	uglifyjs dist/ionic.infobar.js > dist/ionic.infobar.min.js

clean:
	rm -rf dist

all: clean build uglify