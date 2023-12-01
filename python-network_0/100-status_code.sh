#!/bin/bash
# Write a Bash script that sends a request to a URL passed as an argument, and displays only the status code of the response.
curl -s -o /dev/null -w "%{http_code}" $1
# Script that sends a request to a URL passed as an argument, and displays only the status code of the response
curl -so /dev/null -w "%{http_code}" "$1"
