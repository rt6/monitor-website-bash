# Monitor Website

A simple bash script to monitor website is up or down. 


1) Add a list of web urls to `sites.txt`
```
http://subdomain.domain.com
http://www.somewhere.com/site
```

2) Add crontab entry  to repeat every 1 minute
```sh
 */1   *    *    *    * /opt/monitor-web/monitor.sh >> /opt/monitor-web/log 2>&1
 ```
 
3) The output log file looks like this
 ```
[2017-08-14:01:02:01] [http://www.somewhere.com/site] up
[2017-08-14:01:03:01] [http://www.somewhere.com/site] up
[2017-08-14:01:04:01] [http://www.somewhere.com/site] up

 ```
 
 4) You can use the log file for downstream analytics or dashboards or push to database 
 
 
