#!/bin/bash

# Navigate to the repository directory
cd CONTRIBUTE.md || { echo "Failed to navigate to the repository directory"; exit 1; }

# Make changes to a file (e.g., README.md)
echo "$(date): Automated contribution" >> CONTRIBUTE.md || { echo "Failed to make changes to README.md"; exit 1; }

# Stage changes
git add CONTRIBUTE.md || { echo "Failed to stage changes"; exit 1; }

# Commit changes
commit_message="Automated contribution ⭐ $(date)"
git commit -m "$commit_message" || { echo "Failed to commit changes"; exit 1; }

# Push changes
git push origin main || { echo "Failed to push changes"; exit 
