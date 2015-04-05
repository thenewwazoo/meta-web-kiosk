#!/bin/sh
KICKFILE="/var/run/midori/kick-new-midori-config"
CONFIGFILE="/var/run/midori/config"
CONFIGDIR="/var/run/midori"
MIDORICOMMAND="/usr/bin/midori -e Fullscreen -c ${CONFIGDIR}"
CHECKDELAY=1

while true
do
  if [ ! -f ${KICKFILE} ]
  then
    sleep ${CHECKDELAY}
  else
    killall -9 midori
    sleep 1
    newhomepage="`cat ${CONFIGFILE} | grep ^homepage= | sed 's/^homepage=//'`"
    echo starting midori with new homepage: ${newhomepage}
    ${MIDORICOMMAND} &
    echo started new midori
    rm -f ${KICKFILE}
  fi
done
