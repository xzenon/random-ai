# random-ai

## What is it?
It's just a solution for ["Weird one-line code contest"](https://robotdreams.cc/uk/course/1645-konkurs-na-naykrashchiy-laynokod-ukrajini) by Robot_dreams.

## Task

> Write a code that generates an absolutely random number from 1 to 100... without a random number generator. You can do this, why not?

Why bother with a random number generator when you can ask ✨AI✨ (even though it is irrational, slow and expensive) - it knows everything about absolute randomness.

## Usage

You'll need an OpenAI API key. You can get one by signing up at [OpenAI](https://platform.openai.com).

1. Export your API key as environment variable.

```
export OPENAI_API_KEY="<YOUR API KEY>"
```

2. Run the one-liner.

```
curl -s -X POST https://api.openai.com/v1/chat/completions -H "Content-Type: application/json" -H "Authorization: Bearer $OPENAI_API_KEY" -d '{"model":"gpt-3.5-turbo","messages":[{"role":"user","content":"Generate a random number from 1 to 100, response only with the number"}]}' | jq -r '.choices[0].message.content // 0'
```

3. Enjoy your truly 😉 random number!

<img src="random-ai.gif" width=50%>
