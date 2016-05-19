Run Node-RED on Docker container
====

Overview
----
Dockerfile to run Node-RED.

Installation
----
You pull docker image `dzeyelid/nodered` and run that.
```bash
docker pull dzeyelid/nodered
docker run -d -p 1880:1880 --name nodered dzeyelid/nodered
```

Then, you can access on `192.168.99.100:1880` and start using Node-RED. If the IP address is wrong, you can confirm by `docker-machine ip`.

To Do
----
- [ ] able to save node to guest directory by mounting.
