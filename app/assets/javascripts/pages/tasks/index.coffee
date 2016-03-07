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
      @tasks = _.map res, (task)->
        task.active = false
        task
  methods:
    onClickTitle : (index)->
      @tasks[index].active = !@tasks[index].active
    onClickShow : (task)->
      @modalTask = task
  components:
    "task-preview": require "./components/preview"