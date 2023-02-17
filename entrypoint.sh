#!/bin/sh

# Write the contents of the CRON_SCHEDULE environment variable to a crontab file
echo "$CRON_SCHEDULE" > /etc/cron.d/crontab

# Set the correct permissions on the crontab file
chmod 0644 /etc/cron.d/crontab

# Start the cron daemon
crond -f
