# open app
((x=16#15a));((y=16#247))
adb shell input tap $x $y
adb shell sleep 20
# view gateway
((x=16#276));((y=16#2f0))
adb shell input tap $x $y
adb shell sleep 5
# view setting
((x=16#3f8));((y=16#73))
adb shell input tap $x $y
adb shell sleep 5
# back to gateway
((x=16#50));((y=16#71))
adb shell input tap $x $y
adb shell sleep 5
# back home
adb shell input keyevent 3
adb shell sleep 1
# kill app
adb shell am force-stop com.xiaomi.smarthome