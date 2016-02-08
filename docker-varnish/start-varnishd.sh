#!/bin/bash

varnishd -a $VARNISH_LISTEN_PORT -T localhost:6082 -f /etc/varnish/default.vcl -S /etc/varnish/secret -s malloc,256m
varnishlog
