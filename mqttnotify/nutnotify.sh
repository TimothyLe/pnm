#!/bin/bash

# Add TLS cert
mosquitto_pub -h mqtt.example.com -t "/power/$UPSNAME/notify/$NOTIFYTYPE" -m "$1" -u mqttuser -P mqttpasswd --tls-version tlsv1.1 --cafile /etc/nut/mqttnotify/haefelfinger-ca.crt

# Example cmd
# UPSNAME=UPS1 NOTIFYTYPE=ONLINE /etc/nut/mqttnotify/nutnotify.sh "Testmessage"

