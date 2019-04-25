# Analysis:

To find why we are getting 503 Exception while accessing the webpage ?

# Troubleshooting process:

In IIS i have found that the DefaultAppPool is in stopped state. Then i have tried to start it, but it doesnot work


# Solution:

Then in Advanced Settings i have changed the identity by using the localsystem username & password.
Then restarted the DefaultAppPool.

Now the application is working fine.


![iis](https://github.com/gogularaja229/Devops_Exercise/blob/master/Exercise4/Selection_284.png)
![browser](https://github.com/gogularaja229/Devops_Exercise/blob/master/Exercise4/Selection_285.png)
