#!/bin/bash
set -e
TEST_DIRS=(.)

for TEST_DIR in ${TEST_DIRS[@]}
do
  for FILE in $(find $TEST_DIR -type f -name "*.json")
  do
    printf "Linting $FILE\n"
    grep '	' $FILE && \
      { printf "\n$FILE contains tab characters!  Please convert them to spaces.\n"; exit 1; }
    cat $FILE | python -m json.tool >/dev/null || \
      { printf "\n$FILE is not valid JSON!\n"; exit 1; }
  done
done
