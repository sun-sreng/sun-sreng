#!/bin/zsh
# chmod +x delete_merged_branches.zsh

echo "Fetching branches..."
# Fetch all branches and prune deleted remote branches
git fetch -p

# Get the name of the main branch
main_branch=$(git symbolic-ref --short HEAD)

echo "Finding merged branches..."
# List merged branches except for the main branch
merged_branches=$(git branch --merged "$main_branch" | grep -v '^\*' | grep -v "$main_branch")

# Confirm deletion
if [[ -n "$merged_branches" ]]; then
    echo "The following branches will be deleted:"
    echo "$merged_branches"
    read -r -p "Are you sure you want to delete these branches? (y/n) " response
    if [[ "$response" =~ ^[Yy]$ ]]; then
        # Delete merged branches
        git branch -d $merged_branches
        echo "Branches deleted successfully."
    else
        echo "Deletion aborted."
    fi
else
    echo "No merged branches found."
fi
