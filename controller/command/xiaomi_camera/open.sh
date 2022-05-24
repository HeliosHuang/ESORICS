# open app
((x=16#15a));((y=16#247))
adb shell input tap $x $y
adb shell sleep 20
# open camera
((x=16#ea));((y=16#31d))
adb shell input tap $x $y
adb shell sleep 260
# back home
adb shell input keyevent 3
adb shell sleep 1
# kill app
adb shell am force-stop com.xiaomi.smarthome