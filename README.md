# Instructions

Please see linuxserver/smokeping for instructions.

This image is complementary to that smokeping image.  It will run Smokeping in slave mode and turn off the Apache web server to conserve resources.

To run, you need two environment variables

* *SLAVE_SECRET* = The secret you've entered in the master Smokeping's slave_secret for that slave. For the example I will use 3c6f
* *MASTER_URL* = HTTP url to the master Smokeping instance's smokeping.cgi . For the example - I will use http://10.6.1.7/smokeping/smokeping.cgi 

In addition, you'll need 
* *slavehost* = The name you have used in your master Smokeping for this instance. 

docker run -d -h slavehost --name slave2 -e SLAVE_SECRET=3c6f -e MASTER_URL=http://10.6.1.7/smokeping/smokeping.cgi -e PGID=1000 -e PUID=1000 -e TZ=UTC divyavanmahajan/smokeping-slave


