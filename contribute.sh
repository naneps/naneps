#!/bin/bash

# Make changes to a file (e.g., CONTRIBUTE.md)
echo -e "$(date): Automated contribution ⭐\n" >> CONTRIBUTE.md || { echo "Failed to make changes to CONTRIBUTE.md"; exit 1; }

# Stage changes
git add CONTRIBUTE.md || { echo "Failed to stage changes"; exit 1; }

# Commit changes
commit_message="Automated contribution ⭐ $(date)"
git commit -m "$commit_message" || { echo "Failed to commit changes"; exit 1; }

# Push changes
git push origin main || { echo "Failed to push changes"; exit 1; }
