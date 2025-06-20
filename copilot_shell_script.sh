#!/bin/bash

read -p "Enter new assignment name: " new_assignment

# Update the ASSIGNMENT in config.env
sed -i "s/^ASSIGNMENT=.*/ASSIGNMENT=${new_assignment}/" submission_reminder_*/config/config.env

# Rerun the app
bash submission_reminder_*/scripts/startup.sh
