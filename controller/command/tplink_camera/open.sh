# open app
((x=16#2e3));((y=16#236))
adb shell input tap $x $y
adb shell sleep 20
# view camera
((x=16#207));((y=16#2ba))
adb shell input tap $x $y
adb shell sleep 255
# back home
adb shell input keyevent 3
adb shell sleep 1
# kill app
adb shell am force-stop com.tplink.ipc