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
<info-bar ng-if="info.isShown" content="{{info.content}}" type="{{info.type}}"></info-bar>
```

In your controller

```JavaScript
myApp.controller('myCtrl', function ($scope, inforBarService) {
  $scope.info = infoBarService

  // show infobar
  infoBarService.show('some content', 4000)

  // show with type
  infoBarservice.show('oops, there is an error', 4000, 'bar-light')

  // hide infobar
  infoBarService.hide()
})
```

Options:

* Type: 'bar-light', 'bar-stable', 'bar-positive', 'bar-calm', 'bar-balanced', 'bar-energized', 'bar-assertive', 'bar-royal', 'bar-dark'

#### Build:

* `npm install` Install coffeescript and uglify
* `make all` Build js file and compress

#### License

MIT