#!/bin/bash

memory_total=$(free | grep -i mem | awk '{ print $2 }')
memory_used=$(free | grep -i mem | awk '{ print $3 }')


percente_used_memory=$(bc <<< "scale=2;($memory_used/$memory_total)*100")
percente_used_memory=$(echo $percente_used_memory | awk -F. '{ print $1 }')
percente_consume_trigger_notify=50

if [ $percente_used_memory -gt $percente_consume_trigger_notify ]
then
     mail -s "Consume memory server" tiagorosadacost@gmail.com<<del 
     Consume memory greather than 50%.
del
fi