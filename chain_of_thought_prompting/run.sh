#!/bin/sh
# Define the input file
INFILE=./prompts.txt

# Read the input file line by line
RUN="${RUN:-1}"
MODEL="${MODEL:-codellama}"
mkdir -p "$MODEL-results/"

PROMPT="$(cat prompt.txt)"

OUT="$MODEL-results/run-$RUN.txt"
echo "$PROMPT" | tee "$OUT"
ollama run "$MODEL" --verbose "$PROMPT" | tee --append "$OUT"
