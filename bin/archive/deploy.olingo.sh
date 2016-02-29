#!/bin/bash

export https_proxy=https://proxy:8080

~/opt/neo-sdk/tools/neo.sh deploy -u p1940750605 -password Abcd.1234 ~/dev/deploy/deploy.web.ref.odata4.properties
~/opt/neo-sdk/tools/neo.sh stop -y -u p1940750605 -password Abcd.1234 ~/dev/deploy/deploy.web.ref.odata4.properties
~/opt/neo-sdk/tools/neo.sh start -y -u p1940750605 -password Abcd.1234 ~/dev/deploy/deploy.web.ref.odata4.properties

