#!/bin/bash

status_code_ok=200
status_code=$(curl --write-out %{http_code} --output /dev/null --silent http://localhost)

if [ $status_code -ne $status_code_ok ]
then
    mail -s "Problema no servidor" address_email_here<<del
    Occour problema on server. The users can't access content web.
del

    sudo systemctl restart apache2
fi