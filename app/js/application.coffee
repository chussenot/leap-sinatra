source = new EventSource('/events')

source.addEventListener 'open', (event) ->
  console.log('open')
, false  

source.addEventListener 'error', (event) ->
  console.log('error')
, false
