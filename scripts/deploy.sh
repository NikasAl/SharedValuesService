#!/bin/bash

#ssh vagrant@192.168.50.100 "sudo mkdir -p /home/nikas/IDEA_prj/web/WordManager/web/target/cobertura/; sudo chown -R vagrant:vagrant /home/nikas/"
#scp ../web/target/ContactManager.war vagrant@192.168.50.100:/tmp/
#ssh vagrant@192.168.50.100  "sudo mv -f /tmp/ContactManager.war /var/share/tomcat6/webapps/"

scp -i ~/.ssh/insecure_private_key forestymanager/target/ForestyMonitor.war nikas@192.168.1.18:/home/nikas/programs/apache-tomcat-6.0.26/webapps/

