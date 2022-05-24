# open app
((x=16#2d7));((y=16#554))
adb shell input tap $x $y
adb shell sleep 30
# open camera
((x=16#21c));((y=16#2bc))
adb shell input tap $x $y
adb shell sleep 250
# back home
adb shell input keyevent 3
adb shell sleep 1
# kill app
adb shell am force-stop com.philips.ipcamera