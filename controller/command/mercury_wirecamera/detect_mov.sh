# open app
((x=16#399));((y=16#3ca))
adb shell input tap $x $y
adb shell sleep 20
# view camera
((x=16#207));((y=16#34d))
adb shell input tap $x $y
adb shell sleep 20
# setting
((x=16#400));((y=16#69))
adb shell input tap $x $y
adb shell sleep 5
# alert
((x=16#193));((y=16#2f4))
adb shell input tap $x $y
adb shell sleep 5
# open alert
((x=16#3dd));((y=16#e2))
adb shell input tap $x $y
adb shell sleep 5
# back to setting
((x=16#2f));((y=16#64))
adb shell input tap $x $y
adb shell sleep 5
# back to video
((x=16#2f));((y=16#64))
adb shell input tap $x $y
adb shell sleep 200
# setting
((x=16#400));((y=16#69))
adb shell input tap $x $y
adb shell sleep 5
# alert
((x=16#193));((y=16#2f4))
adb shell input tap $x $y
adb shell sleep 5
# close alert
((x=16#3dd));((y=16#e2))
adb shell input tap $x $y
adb shell sleep 5
# back home
adb shell input keyevent 3
adb shell sleep 1
# kill app
adb shell am force-stop com.mercury.ipc