#!/usr/bin/env sh

DOMAIN=$1
shift

if [ "$#" -eq 2 ]; then
  IP=$1
  shift
else
  IP=$DOMAIN
fi
PORT=$1

if echo 'q' | openssl s_client -quiet -verify_quiet -verify_return_error -verify_hostname ${DOMAIN} -connect ${DOMAIN}:${PORT} >/dev/null; then
  echo ok
  exit 0
else
  echo invalid
  exit 1
fi
