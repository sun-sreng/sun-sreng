#!/bin/zsh
# chmod +x delete_merged_branches.zsh
# source ~/.zshrc

echo "Fetching branches..."
# Fetch all branches and prune deleted remote branches
git fetch -p

# Get the name of the main branch
main_branch=$(git symbolic-ref --short HEAD)

echo "Finding merged branches..."
# List merged branches except for the main branch
merged_branches=$(git branch --merged "$main_branch" --format "%(refname:short)" | grep -v '^\*' | grep -v "$main_branch")

# Confirm deletion
if [[ -n "$merged_branches" ]]; then
    echo "The following branches will be deleted:"
    echo "$merged_branches"
    echo -n "Are you sure you want to delete these branches? (y/n): "
    read response
    if [[ "$response" == "y" || "$response" == "Y" ]]; then
        # Delete merged branches
        for branch in $merged_branches; do
            # Check if branch exists before deletion
            if git rev-parse --quiet --verify "$branch"; then
                git branch -d "$branch"
                echo "Branch '$branch' deleted successfully."
            else
                echo "Error: Branch '$branch' not found."
            fi
        done
    else
        echo "Deletion aborted."
    fi
else
    echo "No merged branches found."
fi
