## one-liner to show the last 50 lines of a log, filtered to errors only

`$ tail -n 50 new_test_long.log |  grep "\[ERROR\]"`
this fill show error in last 50 lines of log file