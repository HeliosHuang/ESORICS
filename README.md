# IoTEnsemble
This repository contains part of the datasets we used in IoTEnsemble (20 TCP/IP based devices, each device selects the first three days of data) and the control scripts for devices.
## Dataset architecture
```
-- device name
  -- year-month-day.pcap (.pcap raw packets saved every day).
```
## Control script description

### Architecture
```
-- controller.py (trigger activities according to activity_list)
-- command
  -- device name
    -- activity script (the activity is triggered via ADB (Android Debug Bridge))
  -- activity_list.csv
```

### Run code
```sh
python3 controller.py
```
