# open app
((x=16#15a));((y=16#247))
adb shell input tap $x $y
adb shell sleep 20
# view gateway
((x=16#bf));((y=16#4d8))
adb shell input tap $x $y
adb shell sleep 5
# view color
((x=16#276));((y=16#f1))
adb shell input tap $x $y
adb shell sleep 5
# change color
((x=16#234));((y=16#35b))
adb shell input tap $x $y
adb shell sleep 5
# change color
((x=16#2c9));((y=16#230))
adb shell input tap $x $y
adb shell sleep 5
# change color
((x=16#137));((y=16#2ac))
adb shell input tap $x $y
adb shell sleep 5
# back home
adb shell input keyevent 3
adb shell sleep 1
# kill app
adb shell am force-stop com.xiaomi.smarthome