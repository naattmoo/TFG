#!/bin/bash

export ONOS_APPS="drivers,openflow,vpls"
service onos start
sleep 30
/opt/onos/karaf/bin/client "app activate org.onosproject.drivers"
sleep 10
/opt/onos/karaf/bin/client "app activate org.onosproject.openflow"
sleep 10
/opt/onos/karaf/bin/client "app activate org.onosproject.vpls"
