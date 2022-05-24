# open app
((x=16#399));((y=16#3ca))
adb shell input tap $x $y
adb shell sleep 20
# view camera
((x=16#207));((y=16#34d))
adb shell input tap $x $y
adb shell sleep 260
# back home
adb shell input keyevent 3
adb shell sleep 1
# kill app
adb shell am force-stop com.mercury.ipc