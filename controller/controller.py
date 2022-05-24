# -*- coding: utf-8 -*-
# @Time    : 2020/11/19 11:02 上午
# @Author  : Roy
# @Email   : liry19@mails.tsinghua.edu.cn
# @File    : controller.py

import subprocess
from datetime import datetime
import pandas as pd
import os
import time
from playsound import playsound
import threading


def load_activity(file_name):
    df = pd.read_csv(file_name).set_index(keys='time')
    return df.to_dict(orient='index')


root_dir = 'command'
activity_file = os.path.join(root_dir, 'activity_list.csv')
dev_dict = load_activity(activity_file)


def check_time(t):
    global dev_dict
    now = datetime.now()
    if [now.hour, now.minute, now.second] == [0, 0, 0]:
        print('reload acitvity list...')
        dev_dict = load_activity(activity_file)
        for k in dev_dict:
            print(dev_dict[k])
        print(dev_dict)
        time.sleep(1)
        return -1
    elif (int(t.split(':')[0]), int(t.split(':')[1])) == (now.hour, now.minute):
        do_control(dev_dict[t])
        return 1
    else:
        return 0


def exec_command(info):
    subprocess.call(['adb', 'connect', '192.168.1.171:5555'])
    shell_file = os.path.join(root_dir, info['device'], info['activity'] + '.sh')
    subprocess.Popen(['git-bash', shell_file])


def play_sound(info):
    sound_file = os.path.join(root_dir, info['device'], info['activity'] + '.mp3')
    t = threading.Thread(target=lambda x: playsound(x), args=[sound_file])
    t.start()


def do_control(info):
    print('{}, {}, {}'.format(info['device'], info['activity'], info['interaction']))
    if info['interaction'] == 'app':
        exec_command(info)
    elif info['interaction'] == 'voice':
        play_sound(info)


if __name__ == '__main__':
    time_sort = {int(x.split(':')[0])+int(x.split(':')[1])/60: x for x in list(dev_dict.keys())}
    now_int = datetime.now().hour + datetime.now().minute / 60
    next_time_int = min(time_sort)
    next_time = time_sort.pop(next_time_int)
    while next_time_int < now_int:
        try:
            next_time_int = min(time_sort)
            next_time = time_sort.pop(next_time_int)
        except ValueError:
            next_time = '24:00'
            break
    print('next time is: {}'.format(next_time))
    while 1:
        rtc = check_time(next_time)
        if rtc == 1:
            try:
                next_time = time_sort.pop(min(time_sort))
            except ValueError:
                next_time = '24:00'
            print('next time is: {}'.format(next_time))
        elif rtc == -1:
            time_sort = {int(x.split(':')[0])+int(x.split(':')[1])/60: x for x in list(dev_dict.keys())}
            next_time = time_sort.pop(min(time_sort))
            print('next time is: {}'.format(next_time))
        time.sleep(0.5)
