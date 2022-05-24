# open app
((x=16#217));((y=16#234))
adb shell input tap $x $y
adb shell sleep 30
# open camera
((x=16#215));((y=16#67b))
adb shell input tap $x $y
adb shell sleep 250
# back home
adb shell input keyevent 3
adb shell sleep 1
# kill app
adb shell am force-stop com.qihoo.camera