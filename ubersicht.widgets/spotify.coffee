command: """
read -r running <<<"$(ps -ef | grep \"MacOS/Spotify\" | grep -v \"grep\" | wc -l)" &&
test $running != 0 &&
IFS='|' read -r theArtist theName theState <<<"$(osascript <<<'tell application "Spotify"
        set theTrack to current track
        set theArtist to artist of theTrack
        set theName to name of theTrack
        set theState to player state as string
        return theArtist & "|" & theName & "|" & theState
    end tell')" &&
echo "$theArtist - $theName@$theState" || echo "$(whoami)@off"
"""

refreshFrequency: 2000

update: (output, el) ->
    $(".np span:first-child", el).text(" #{output.split('@')[0]}")
    $icon = $(".np span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa #{@icon(output.split('@')[1].replace(/\r?\n|\r/g, ""))}")

icon: (status) =>
    return if status == "stopped"
        "fa-stop"
    else if status == "paused"
        "fa-pause"
    else if status == "off"
        "fa-apple"
    else
        "fa-play"

style: """
  -webkit-font-smoothing: antialiased
  text-align: center
  color: #d5c4a1
  font: 10px Input
  height: 16px
  left: 25%
  overflow: hidden
  text-overflow: ellipsis
  top: 6px
  width: 50%
"""

render: (output) -> """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="np"
    <span></span>
    <span class="icon"></span>
  </div>
"""
