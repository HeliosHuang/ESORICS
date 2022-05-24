# open app
((x=16#217));((y=16#234))
adb shell input tap $x $y
adb shell sleep 30
# setting
((x=16#397));((y=16#3f8))
adb shell input tap $x $y
adb shell sleep 5
# open alert
((x=16#3e5));((y=16#581))
adb shell input tap $x $y
adb shell sleep 5
# back to menu
((x=16#37));((y=16#6b))
adb shell input tap $x $y
adb shell sleep 20
# open camera
((x=16#98));((y=16#3f8))
adb shell input tap $x $y
adb shell sleep 210
# setting
((x=16#397));((y=16#3f8))
adb shell input tap $x $y
adb shell sleep 5
# close alert
((x=16#3e5));((y=16#581))
adb shell input tap $x $y
adb shell sleep 5
# back home
adb shell input keyevent 3
adb shell sleep 1
# kill app
adb shell am force-stop com.qihoo.camera