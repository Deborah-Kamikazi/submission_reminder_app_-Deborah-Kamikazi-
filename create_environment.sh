#!/bin/bash

# Prompt for user name
read -p "Enter your name: " username

# Define main directory
main_dir="submission_reminder_${username}"

# Create directory structure
mkdir -p "${main_dir}/config" "${main_dir}/data" "${main_dir}/scripts"

# Create config.env
cat << EOF > "${main_dir}/config/config.env"
# Configuration for Submission Reminder App
ASSIGNMENT=Assignment_1
EOF

# Create submissions.txt with additional students
cat << EOF > "${main_dir}/data/submissions.txt"
John Doe,submitted
Jane Smith,pending
Alice Johnson,submitted
Bob Brown,pending
Eve Davis,pending
Chris Lee,submitted
Nina Patel,pending
Omar Rizvi,submitted
Lila White,pending
EOF

# Create reminder.sh
cat << 'EOF' > "${main_dir}/scripts/reminder.sh"
#!/bin/bash
source "$(dirname "$0")/functions.sh"
source "$(dirname "$0")/../config/config.env"

echo "Checking for pending submissions for $ASSIGNMENT..."
list_pending_submissions
EOF

# Create functions.sh
cat << 'EOF' > "${main_dir}/scripts/functions.sh"
#!/bin/bash

list_pending_submissions() {
  while IFS=',' read -r name status; do
    if [[ "$status" == "pending" ]]; then
      echo "$name needs to submit"
    fi
  done < "$(dirname "$0")/../data/submissions.txt"
}
EOF

# Create startup.sh
cat << 'EOF' > "${main_dir}/scripts/startup.sh"
#!/bin/bash

echo "Starting Submission Reminder App..."
bash "$(dirname "$0")/reminder.sh"
EOF

# Make all .sh files executable
chmod +x "${main_dir}/scripts/"*.sh

echo "Environment setup complete in ./${main_dir}"
