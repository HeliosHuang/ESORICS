# open app
((x=16#15a));((y=16#247))
adb shell input tap $x $y
adb shell sleep 20
# open camera
((x=16#ea));((y=16#31d))
adb shell input tap $x $y
adb shell sleep 20
# setting
((x=16#3d5));((y=16#5a))
adb shell input tap $x $y
adb shell sleep 5
# alert setting
((x=16#b1));((y=16#14d))
adb shell input tap $x $y
adb shell sleep 5
# open alert
((x=16#3d7));((y=16#103))
adb shell input tap $x $y
adb shell sleep 5
# back to setting
((x=16#4c));((y=16#62))
adb shell input tap $x $y
adb shell sleep 5
# back to video
((x=16#3ef));((y=16#6f))
adb shell input tap $x $y
adb shell sleep 200
# setting
((x=16#3d5));((y=16#5a))
adb shell input tap $x $y
adb shell sleep 5
# alert setting
((x=16#b1));((y=16#14d))
adb shell input tap $x $y
adb shell sleep 5
# close alert
((x=16#3d7));((y=16#103))
adb shell input tap $x $y
adb shell sleep 5
# back home
adb shell input keyevent 3
adb shell sleep 1
# kill app
adb shell am force-stop com.xiaomi.smarthome