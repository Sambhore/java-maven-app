#!/bin/bash
echo "Restarting Tomcat..."
sudo /opt/tomcat/bin/shutdown.sh || true
sleep 5
sudo /opt/tomcat/bin/startup.sh
