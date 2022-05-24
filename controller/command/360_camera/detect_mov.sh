# open app
((x=16#217));((y=16#234))
adb shell input tap $x $y
adb shell sleep 30
# open camera
((x=16#215));((y=16#67b))
adb shell input tap $x $y
adb shell sleep 20
# setting
((x=16#19a));((y=16#5dc))
adb shell input tap $x $y
adb shell sleep 5
# alert
((x=16#397));((y=16#4de))
adb shell input tap $x $y
adb shell sleep 5
# open alert
((x=16#3e5));((y=16#ce))
adb shell input tap $x $y
adb shell sleep 5
# back to setting
((x=16#35));((y=16#69))
adb shell input tap $x $y
adb shell sleep 5
# back to video
((x=16#35));((y=16#69))
adb shell input tap $x $y
adb shell sleep 190
# setting
((x=16#19a));((y=16#5dc))
adb shell input tap $x $y
adb shell sleep 5
# alert
((x=16#397));((y=16#4de))
adb shell input tap $x $y
adb shell sleep 5
# close alert
((x=16#3e5));((y=16#ce))
adb shell input tap $x $y
adb shell sleep 5
# back home
adb shell input keyevent 3
adb shell sleep 1
# kill app
adb shell am force-stop com.qihoo.camera