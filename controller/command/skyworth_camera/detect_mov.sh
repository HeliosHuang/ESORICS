# open app
((x=16#39b));((y=16#238))
adb shell input tap $x $y
adb shell sleep 20
# view camera
((x=16#209));((y=16#4f5))
adb shell input tap $x $y
adb shell sleep 10
# setting
((x=16#3d9));((y=16#6d))
adb shell input tap $x $y
adb shell sleep 5
# alert
((x=16#35b));((y=16#1e2))
adb shell input tap $x $y
adb shell sleep 5
# open alert
((x=16#3c4));((y=16#198))
adb shell input tap $x $y
adb shell sleep 5
# back to setting
((x=16#58));((y=16#8a))
adb shell input tap $x $y
adb shell sleep 5
# back to video
((x=16#58));((y=16#8a))
adb shell input tap $x $y
adb shell sleep 220
# setting
((x=16#3d9));((y=16#6d))
adb shell input tap $x $y
adb shell sleep 5
# alert
((x=16#35b));((y=16#1e2))
adb shell input tap $x $y
adb shell sleep 5
# close alert
((x=16#3c4));((y=16#198))
adb shell input tap $x $y
adb shell sleep 5
# back home
adb shell input keyevent 3
adb shell sleep 1
# kill app
adb shell am force-stop com.skyworthdigital.picamera