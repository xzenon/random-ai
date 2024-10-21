#!/bin/bash

curl -s -X POST https://api.openai.com/v1/chat/completions -H "Content-Type: application/json" -H "Authorization: Bearer $OPENAI_API_KEY" -d '{"model":"gpt-3.5-turbo","messages":[{"role":"user","content":"Generate a random number from 1 to 100, response only with the number"}]}' | jq -r '.choices[0].message.content // 0'