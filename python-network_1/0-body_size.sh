#!/bin/bash

# Check if a URL is provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

url=$1

# Use curl to fetch the URL and get the size of the response body
response=$(curl -sI "$url")
content_length=$(echo "$response" | grep -i "Content-Length" | awk '{print $2}' | tr -d '\r\n')

# Check if Content-Length is present in the response headers
if [ -z "$content_length" ]; then
  echo "Error: Content-Length not found in the response headers."
  exit 1
fi

echo "Size of the response body: $content_length bytes"
