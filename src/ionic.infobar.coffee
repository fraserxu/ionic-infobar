angular.module 'ionic.infobar', []

# Info bar directive
.directive 'infoBar', ->
    return {
        restrict: 'E'
        scope:
            'info': '='
        template: '<div class="bar bar-loading {{info.type}}"> {{ info.content }} </div>'
        link: (scope, element, attr) ->

    }

# A service to controll the content, visibality of the info bar
.service 'infoBarService', ($timeout) ->
    @isShown = false
    @content = 'loading...'
    @type = 'bar-assertive'

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
