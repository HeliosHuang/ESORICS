# open app
((x=16#217));((y=16#234))
adb shell input tap $x $y
adb shell sleep 30
# open camera
((x=16#215));((y=16#67b))
adb shell input tap $x $y
adb shell sleep 20
# change resolution
((x=16#289));((y=16#5d8))
adb shell input tap $x $y
adb shell sleep 10
# change resolution
((x=16#289));((y=16#5d8))
adb shell input tap $x $y
adb shell sleep 10
# change resolution
((x=16#289));((y=16#5d8))
adb shell input tap $x $y
adb shell sleep 10
# back home
adb shell input keyevent 3
adb shell sleep 1
# kill app
adb shell am force-stop com.qihoo.camera