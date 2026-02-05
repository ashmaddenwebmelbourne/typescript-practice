#!/bin/bash
# new-challenge.sh - Create a new TypeScript challenge folder and file

if [ -z "$1" ]; then
  echo "Usage: ./new-challenge.sh <challenge-name>"
  echo "Example: ./new-challenge.sh day1-arrays"
  exit 1
fi

CHALLENGE_NAME=$1
CHALLENGES_DIR="challenges"
CHALLENGE_DIR="$CHALLENGES_DIR/$CHALLENGE_NAME"
TS_FILE="$CHALLENGE_DIR/$CHALLENGE_NAME.ts"

if [ -d "$CHALLENGE_DIR" ]; then
  echo "Error: Challenge '$CHALLENGE_NAME' already exists"
  exit 1
fi

mkdir -p "$CHALLENGE_DIR"
touch "$TS_FILE"

echo "Created new challenge: $CHALLENGE_DIR/$CHALLENGE_NAME.ts"
echo "Run it with: bun run $CHALLENGE_DIR/$CHALLENGE_NAME.ts"