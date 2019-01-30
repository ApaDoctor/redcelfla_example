#!/bin/sh
# Start a cron functionality of Dockefile

if [ "$1" = 'app' ]
then
    set -- 'python app.py'
elif [ "$1" = 'celery' ]
then
    set -- "celery worker -l info -A tasks --uid 2"
fi

exec $@

