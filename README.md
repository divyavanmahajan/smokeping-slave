# Instructions

This overrides the default Smokeping init script to run in slave mode

To run
docker run -d -h slave2 --name slave2 -e SLAVE_SECRET=3c6f -e MASTER_URL=http://10.6.1.7/smokeping/smokeping.cgi -e PGID=1000 -e PUID=1000 -e TZ=UTC -v root/etc/services.d/smokeping/run:/etc/services.d/smokeping/run divyavanmahajan/smokeping-slave

