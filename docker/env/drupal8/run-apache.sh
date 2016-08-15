#!/bin/bash

# Make sure we're not confused by old, incompletely-shutdown httpd
# context after restarting the container.  httpd won't start correctly
# if it thinks it is already running.
rm -rf /run/httpd/* /tmp/httpd*

exec apache2-foreground

# exec /usr/sbin/apache2ctl -D FOREGROUND
# CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
exec supervisord -n
