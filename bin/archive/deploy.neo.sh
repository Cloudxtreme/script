#!/bin/bash

/opt/neo-sdk/tools/neo.sh deploy -u p1160370 -password Test1234 ~/dev/deploy/deploy.web.scenario.odata.properties
/opt/neo-sdk/tools/neo.sh stop -y -u p1160370 -password Test1234 ~/dev/deploy/deploy.web.scenario.odata.properties
/opt/neo-sdk/tools/neo.sh start -y -u p1160370 -password Test1234 ~/dev/deploy/deploy.web.scenario.odata.properties

/opt/neo-sdk/tools/neo.sh deploy -u p1160370 -password Test1234 ~/dev/deploy/deploy.web.helloworld.odata.properties
/opt/neo-sdk/tools/neo.sh stop -y -u p1160370 -password Test1234 ~/dev/deploy/deploy.web.helloworld.odata.properties
/opt/neo-sdk/tools/neo.sh start -y -u p1160370 -password Test1234 ~/dev/deploy/deploy.web.helloworld.odata.properties

#/opt/neo-sdk/tools/neo.sh deploy -u p1160370 -password Test1234 ~/dev/deploy/deploy.web.northwind.odata.properties
#/opt/neo-sdk/tools/neo.sh stop -y -u p1160370 -password Test1234 ~/dev/deploy/deploy.web.northwind.odata.properties
#/opt/neo-sdk/tools/neo.sh start -y -u p1160370 -password Test1234 ~/dev/deploy/deploy.web.northwind.odata.properties

/opt/neo-sdk/tools/neo.sh deploy -u p1160370 -password Test1234 ~/dev/deploy/deploy.web.ref.odata.properties
/opt/neo-sdk/tools/neo.sh stop -y -u p1160370 -password Test1234 ~/dev/deploy/deploy.web.ref.odata.properties
/opt/neo-sdk/tools/neo.sh start -y -u p1160370 -password Test1234 ~/dev/deploy/deploy.web.ref.odata.properties

