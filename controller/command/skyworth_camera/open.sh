# open app
((x=16#39b));((y=16#238))
adb shell input tap $x $y
adb shell sleep 20
# view camera
((x=16#209));((y=16#4f5))
adb shell input tap $x $y
adb shell sleep 270
# back home
adb shell input keyevent 3
adb shell sleep 1
# kill app
adb shell am force-stop com.skyworthdigital.picamera