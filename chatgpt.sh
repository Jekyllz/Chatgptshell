#!/bin/bash

filename = "list"

# Use a while loop to read each line and print it
while IFS= read -r line; do
echo $line

curl --location --request POST 'https://api.openai.com/v1/completions' \
--header 'Authorization: Bearer <API-KEY-Here>' \
--header 'Content-Type: application/json' \
--data-raw '{
  "model": "gpt-3.5-turbo-instruct",
  "prompt": 'How to Make ' + "'"$filename"'",
  "max_tokens": 250,
  "temperature": 0.7}'
done < list
