command: """
services=$(networksetup -listnetworkserviceorder | grep 'Hardware Port')

while read line; do
    sname=$(echo $line | awk -F  "(, )|(: )|[)]" '{print $2}')
    sdev=$(echo $line | awk -F  "(, )|(: )|[)]" '{print $4}')
    # echo "Current service: $sname, $sdev, $currentservice"
    if [ -n "$sdev" ]; then
        ifconfig $sdev 2>/dev/null | grep 'status: active' > /dev/null 2>&1
        rc="$?"
        if [ "$rc" -eq 0 ]; then
            currentservice="$sname"
            break
        fi
    fi
done <<< "$(echo "$services")"

if [ -n "$currentservice" ] ; then
    echo "$currentservice@$(networksetup -getairportnetwork en0 | cut -c 24-)@$(networksetup -getinfo "Apple USB Ethernet Adapter" | grep "IP address" | grep "\." | cut -c 13-)"
else
    echo "off@ "
fi
"""

refreshFrequency: 60000

update: (output, el) ->
    $(".np span:first-child", el).text(" #{output.split('@')[1].replace(/\r?\n|\r/g, "")}")
    $icon = $(".np span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa #{@icon(output.split('@')[0])}")

icon: (status) =>
    return if status == "Wi-Fi"
        "fa-wifi"
    else
        "fa-lg fa-times-circle"

style: """
    -webkit-font-smoothing: antialiased
    color: #d5c4a1
    font: 10px Input
    right: 365px
    top: 6px
"""

render: (output) -> """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="np"
    <span></span>
    <span class="icon"></span>
  </div>
"""
