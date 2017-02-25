command: "osascript -e 'get volume settings' | cut -f2 -d':' | cut -f1 -d',';"

refreshFrequency: 2000

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="vol"
    <span></span>
    <span class="icon"></span>
  </div>
  """

style: """
  -webkit-font-smoothing: antialiased
  font: 10px Input
  top: 7px
  right: 375px
  color: #d5c4a1
"""

update: (output, el) ->
    vol = parseInt(output)
    $(".vol span:first-child", el).text("  #{output}")
    $icon = $(".vol span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa #{@icon(vol)}")

icon: (output) =>
  return if output > 50
    "fa-volume-up"
  else if output > 0
    "fa-volume-down"
  else
    "fa-volume-off"
