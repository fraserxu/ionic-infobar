// Generated by CoffeeScript 1.7.1
(function() {
  angular.module('ionic.infobar', []).directive('infoBar', function() {
    return {
      restrict: 'E',
      template: '<div class="bar bar-loading" class="{{type}}"> {{ content }} </div>',
      link: function(scope, element, attr) {
        scope.content = attr.content || "loading...";
        return scope.type = attr.type;
      }
    };
  }).service('infoBarService', function($timeout) {
    this.isShown = false;
    this.content = null;
    this.type = null;

    /**
     * show info bar with the given content
     * @param {Number} duration time
     * @param  {String} content
     * @param {Sting} type info type
     */
    this.show = function(content, duration, type) {
      if (duration == null) {
        duration = 2000;
      }
      if (type == null) {
        type = 'bar-assertive';
      }
      this.type = type;
      this.content = content;
      this.isShown = true;
      return $timeout((function(_this) {
        return function() {
          return _this.hide();
        };
      })(this), duration);
    };

    /**
     * Hide infor bar and clear content
     */
    this.hide = function() {
      this.content = null;
      return this.isShown = false;
    };
    return this;
  });

}).call(this);
