#!/bin/bash

rm -rf /etc/cni/net.d/*
cp bash-cni /opt/cni/bin/
cp bash-cni.json /etc/cni/net.d/
