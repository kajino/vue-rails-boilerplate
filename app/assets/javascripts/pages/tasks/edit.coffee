module.exports = new Vue
  el: '#tasks-edit'
  mixins: [require "./mixins/form"]
  props:
    url:
      type: String
      required: true
  created: ->
    $.ajax
      url: @url
      dataType: 'json'
    .then (res) =>
      @title = res.title
      @content = res.content