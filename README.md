ionic-infobar
=============

A ionic style angularjs directive to display a info bar in the page header.

#### Install:

* `bower install ionic-infobar` Install with `bower`

#### Usage:

Include the `ionic.infobar` module into your app

```JavaScript
app.module('myApp', ['ionic-infobar'])
```

In your template

```
<info-bar ng-if="info.isShown" content="info.content"></info-bar>
```

In your controller

```JavaScript
myApp.controller('myCtrl', function ($scope, inforBarService) {
  $scope.info = infoBarService

  // show infobar
  infoBarservice.show('some content', 4000)

  // hide infobar
  infoBarservice.hide()
})
```

#### Build:

* `npm install` Install coffeescript and uglify
* `make all` Build js file and compress

#### License

MIT