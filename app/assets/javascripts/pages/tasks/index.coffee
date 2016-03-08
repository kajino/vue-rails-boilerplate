module.exports = new Vue
  el: '#tasks-index'
  data:
    tasks: null
    modalTask: null
  created: ->
    $.ajax
      url: "/tasks"
      dataType: 'json'
    .then (res) =>
      @tasks = res
  methods:
    onClickShow : (task)->
      @modalTask = task
  components:
    "task-preview": require "./components/preview"