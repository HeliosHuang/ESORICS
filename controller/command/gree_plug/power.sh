# open app
((x=16#39d));((y=16#550))
adb shell input tap $x $y
adb shell sleep 30
# view plug
((x=16#ab));((y=16#32e))
adb shell input tap $x $y
adb shell sleep 20
# close plug
((x=16#c7));((y=16#6ae))
adb shell input tap $x $y
adb shell sleep 20
# open plug
((x=16#c7));((y=16#6ae))
adb shell input tap $x $y
adb shell sleep 20
# back home
adb shell input keyevent 3
adb shell sleep 1
# kill app
adb shell am force-stop com.gree.greesmarthome