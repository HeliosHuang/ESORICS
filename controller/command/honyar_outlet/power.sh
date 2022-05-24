# open app
((x=16#158));((y=16#3c2))
adb shell input tap $x $y
adb shell sleep 20
# view device
((x=16#219));((y=16#730))
adb shell input tap $x $y
adb shell sleep 5
# view plug
((x=16#367));((y=16#15e))
adb shell input tap $x $y
adb shell sleep 5
# power off
((x=16#27a));((y=16#1b4))
adb shell input tap $x $y
adb shell sleep 5
# power on
((x=16#27a));((y=16#1b4))
adb shell input tap $x $y
adb shell sleep 5
# power off
((x=16#27a));((y=16#1b4))
adb shell input tap $x $y
adb shell sleep 5
# power on
((x=16#27a));((y=16#1b4))
adb shell input tap $x $y
adb shell sleep 5
# power off
((x=16#27a));((y=16#1b4))
adb shell input tap $x $y
adb shell sleep 5
# power on
((x=16#27a));((y=16#1b4))
adb shell input tap $x $y
adb shell sleep 5
# back home
adb shell input keyevent 3
adb shell sleep 1
# kill app
adb shell am force-stop com.broadlink.SmartHonyar