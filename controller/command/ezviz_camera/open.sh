# open app
((x=16#215));((y=16#54a))
adb shell input tap $x $y
adb shell sleep 45
# open camera
((x=16#222));((y=16#4c0))
adb shell input tap $x $y
adb shell sleep 240
# back home
adb shell input keyevent 3
adb shell sleep 1
# kill app
adb shell am force-stop com.videogo