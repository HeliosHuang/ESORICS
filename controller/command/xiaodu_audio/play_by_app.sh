# open app
((x=16#92));((y=16#550))
adb shell input tap $x $y
adb shell sleep 30
# search
((x=16#114));((y=16#b9))
adb shell input tap $x $y
adb shell sleep 5
# TS
((x=16#79));((y=16#126))
adb shell input tap $x $y
adb shell sleep 5
# Sicko Mode
((x=16#6d));((y=16#30f))
adb shell input tap $x $y
adb shell sleep 230
# pause music
((x=16#22a));((y=16#525))
adb shell input tap $x $y
adb shell sleep 5
# back home
adb shell input keyevent 3
adb shell sleep 1
# kill app
adb shell am force-stop com.baidu.duer.superapp