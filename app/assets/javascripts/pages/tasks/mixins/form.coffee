module.exports =
  props: ['nextUrl']
  data:
    title: ''
    content: ''
    loading: false
    errors: {}
  methods:
    onSubmit: (e) ->
      @loading = true
      $form = $(@.$el).find("form")
      fd = new FormData($form[0])
      $.ajax
        url: $form.attr('action'),
        type: $form.attr('method'),
        processData: false,
        contentType: false,
        data: fd,
        dataType: "json"
      .done (res) =>
        window.location = @nextUrl
      .fail (jqXHR, statusText, errorThrown) =>
        @errors =  jqXHR.responseJSON
        @loading = false