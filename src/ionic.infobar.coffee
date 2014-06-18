angular.module 'ionic.infobar', []

# Info bar directive
.directive 'infoBar', ->
    return {
        restrict: 'E'
        template: '<div class="bar bar-loading" class="{{type}}"> {{ content }} </div>'
        link: (scope, element, attr) ->
            scope.content = attr.content or "loading..."
            scope.type = attr.type
    }

# A service to controll the content, visibality of the info bar
.service 'infoBarService', ($timeout) ->
    @isShown = false
    @content = null
    @type = null

    ###*
     * show info bar with the given content
     * @param {Number} duration time
     * @param  {String} content
     * @param {Sting} type info type
    ###
    @show = (content, duration = 2000, type = 'bar-assertive') ->
        @type = type
        @content = content
        @isShown = true
        $timeout =>
            @hide()
        , duration

    ###*
     * Hide infor bar and clear content
    ###
    @hide = ->
        @content = null
        @isShown = false

    return @
