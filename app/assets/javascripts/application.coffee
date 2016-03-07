global.Vue = require 'vue'
Vue.use require 'vue-validator/dist/vue-validator'
global.$ = global.jQuery = require 'jquery'
require 'jquery-ujs'
global._ = require 'lodash'

page = (selector, callback) ->
  if $('body').hasClass(selector)
    callback()

$ ->
  page 'tasks-index', ->
    require './pages/tasks/index'
  page 'tasks-new', ->
    require './pages/tasks/new'
  page 'tasks-edit', ->
    require './pages/tasks/edit'
