#!/bin/bash

export http_proxy=one.proxy.att.com:8080
export https_proxy=one.proxy.att.com:8080
chdir /home/wj3525/docker-test/django-test
sudo /usr/local/bin/docker-compose up -d
