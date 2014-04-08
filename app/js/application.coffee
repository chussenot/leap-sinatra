source = new EventSource('/events')

source.addEventListener 'open', (event) ->
  console.log 'connected'
, false

source.addEventListener 'leap', (event) ->
  console.log(event.data)
, false