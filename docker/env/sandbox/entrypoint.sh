#!/bin/bash


rm -rf /run/httpd/* /tmp/httpd*

env >> /etc/environment

exec supervisord -n