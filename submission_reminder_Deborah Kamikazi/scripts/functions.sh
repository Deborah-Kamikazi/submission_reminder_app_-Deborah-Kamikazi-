#!/bin/bash

list_pending_submissions() {
  while IFS=',' read -r name status; do
    if [[ "$status" == "pending" ]]; then
      echo "$name needs to submit"
    fi
  done < "$(dirname "$0")/../data/submissions.txt"
}
