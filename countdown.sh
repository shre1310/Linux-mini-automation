#!/bin/bash
# Target date (example: GATE exam 8  Feb 2026)
target_date="2026-02-08"

# Current date and target in seconds since epoch
today=$(date +%s)
end=$(date -d "$target_date" +%s)

# Days left
diff=$(( (end - today) / 86400 ))

# Show notification
notify-send "⏳ $diff days left until GATE exam"
