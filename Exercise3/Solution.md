# Analysis:

To find why redis-cli is not working ?

# Troubleshooting process:

Restarted the redis service & checked the log file. Then i have found that the log is not getting written in the logfile


# Solution:

Finally i have changed the log file path in redis.conf and restared the redis-server process to fix the issue.

Now the redis-cli is working fine


![redis-cli](https://github.com/gogularaja229/Devops_Exercise/blob/master/Exercise3/Selection_282.png)
![redis-conf](https://github.com/gogularaja229/Devops_Exercise/blob/master/Exercise3/Selection_283.png)
