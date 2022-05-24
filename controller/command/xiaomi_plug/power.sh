# open app
((x=16#152));((y=16#243))
adb shell input tap $x $y
adb shell sleep 30
# view plug
((x=16#302));((y=16#5de))
adb shell input tap $x $y
adb shell sleep 20
# close plug
((x=16#79));((y=16#548))
adb shell input tap $x $y
adb shell sleep 20
# open plug
((x=16#79));((y=16#548))
adb shell input tap $x $y
adb shell sleep 20
# back home
adb shell input keyevent 3
adb shell sleep 1
# kill app
adb shell am force-stop com.xiaomi.smarthome