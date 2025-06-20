#!/bin/bash
source "$(dirname "$0")/functions.sh"
source "$(dirname "$0")/../config/config.env"

echo "Checking for pending submissions for $ASSIGNMENT..."
list_pending_submissions
