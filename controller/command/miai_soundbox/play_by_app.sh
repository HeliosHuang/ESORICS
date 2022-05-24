# open app
((x=16#8e));((y=16#3ca))
adb shell input tap $x $y
adb shell sleep 10
# click somewhere
((x=16#372));((y=16#626))
adb shell input tap $x $y
adb shell sleep 2
# backward
adb shell input keyevent 4
adb shell sleep 2
# search
((x=16#408));((y=16#75))
adb shell input tap $x $y
adb shell sleep 5
# kdot
((x=16#a4));((y=16#39d))
adb shell input tap $x $y
adb shell sleep 5
# play music HUMBLE
((x=16#201));((y=16#160))
adb shell input tap $x $y
adb shell sleep 270
# pause music
((x=16#219));((y=16#6c3))
adb shell input tap $x $y
adb shell sleep 5
# back home
adb shell input keyevent 3
adb shell sleep 1
# kill app
adb shell am force-stop com.xiaomi.mico