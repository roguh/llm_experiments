#!/bin/sh
# Define the input file
INFILE=./prompts.txt

# Read the input file line by line
RUN="${RUN:-1}"
MODEL="${MODEL:-codellama}"
mkdir -p "$MODEL-results/"

i=1
LINE=true
while [ "$LINE" ]; do
    LINE="$(tail "$INFILE" -n +$i | head -n1)"
    OUT="$MODEL-results/prompt-$i-run-$RUN.txt"
    i=$((i + 1))

    echo "$LINE" | tee "$OUT"
    ollama run "$MODEL" --verbose "$LINE" | tee --append "$OUT"
done
