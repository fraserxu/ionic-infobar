angular.module('ionicApp', ['ionic', 'ionic.infobar'])

.controller('MainCtrl', function($scope, $timeout, infoBarService) {
  $scope.info = infoBarService;

  $scope.showIndicator = function(){
    infoBarService.show('some content', 4000)
  };
});