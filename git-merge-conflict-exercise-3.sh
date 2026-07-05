#!/bin/bash
# Git Merge Conflict Exercise 3
# Demonstrates how to create, detect, and resolve merge conflicts

echo "=== Git Merge Conflict Resolution Exercise ==="
echo ""

# Step 1: Create a base file on main
echo "Step 1: Create a base file on main branch"
echo "Command: git checkout main"
git checkout main
echo ""

cat > config.txt << 'EOF'
# Application Configuration
app_name=MyPortfolio
version=1.0.0
author=Nahashon Mutahi
description=Professional portfolio website
EOF

echo "Command: git add config.txt"
git add config.txt
echo "Command: git commit -m 'init: add configuration file'"
git commit -m "init: add configuration file"
echo "✓ Base file created on main"
echo ""

# Step 2: Create first feature branch
echo "Step 2: Create first feature branch 'feature/config-update-1'"
echo "Command: git checkout -b feature/config-update-1"
git checkout -b feature/config-update-1
echo ""

echo "Editing config.txt on feature/config-update-1..."
cat > config.txt << 'EOF'
# Application Configuration
app_name=MyPortfolio Pro
version=1.0.0
author=Nahashon Mutahi
description=Professional portfolio website
EOF

echo "Command: git add config.txt"
git add config.txt
echo "Command: git commit -m 'feat: update app name to Pro version'"
git commit -m "feat: update app name to Pro version"
echo "✓ Changes committed to feature/config-update-1"
echo ""

# Step 3: Create second feature branch from main
echo "Step 3: Create second feature branch 'feature/config-update-2'"
echo "Command: git checkout main"
git checkout main
echo "Command: git checkout -b feature/config-update-2"
git checkout -b feature/config-update-2
echo ""

echo "Editing config.txt on feature/config-update-2 (same line, different change)..."
cat > config.txt << 'EOF'
# Application Configuration
app_name=MyPortfolio Enhanced
version=1.0.0
author=Nahashon Mutahi
description=Professional portfolio website
EOF

echo "Command: git add config.txt"
git add config.txt
echo "Command: git commit -m 'feat: update app name to Enhanced version'"
git commit -m "feat: update app name to Enhanced version"
echo "✓ Changes committed to feature/config-update-2"
echo ""

# Step 4: Merge first branch (should succeed)
echo "Step 4: Merge feature/config-update-1 into main"
echo "Command: git checkout main"
git checkout main
echo "Command: git merge feature/config-update-1"
git merge feature/config-update-1
echo "✓ First merge successful (no conflict)"
echo ""

# Step 5: Attempt to merge second branch (will cause conflict)
echo "Step 5: Attempt to merge feature/config-update-2 into main"
echo "This will create a MERGE CONFLICT because both branches edited the same line"
echo "Command: git merge feature/config-update-2"
git merge feature/config-update-2 2>&1 || true
echo ""

# Step 6: Show the conflict
echo "Step 6: View the merge conflict"
echo "Command: git status"
git status
echo ""

echo "Content of conflicted file (config.txt):"
cat config.txt
echo ""

# Step 7: Resolve the conflict manually
echo "Step 7: Resolve the conflict manually"
echo "Choosing to keep the 'Enhanced' version from feature/config-update-2..."
cat > config.txt << 'EOF'
# Application Configuration
app_name=MyPortfolio Enhanced
version=1.0.0
author=Nahashon Mutahi
description=Professional portfolio website
EOF

echo "Command: git add config.txt"
git add config.txt
echo "✓ Conflict resolved"
echo ""

# Step 8: Complete the merge
echo "Step 8: Complete the merge with a merge commit"
echo "Command: git commit -m 'merge: resolve conflict in config.txt, keeping Enhanced version'"
git commit -m "merge: resolve conflict in config.txt, keeping Enhanced version"
echo "✓ Merge completed successfully"
echo ""

# Step 9: Show final state
echo "Step 9: Final state"
echo "Command: git log --oneline --graph --all"
git log --oneline --graph --all
echo ""

# Clean up branches
echo "Step 10: Clean up merged branches"
echo "Command: git branch -d feature/config-update-1 feature/config-update-2"
git branch -d feature/config-update-1 feature/config-update-2
echo "✓ Feature branches deleted"
echo ""

echo "=== Merge Conflict Resolution Complete ==="
echo ""
echo "Summary of what happened:"
echo "  1. Created a base config.txt file on main"
echo "  2. Created feature/config-update-1 and edited the same line differently"
echo "  3. Created feature/config-update-2 and edited the same line differently"
echo "  4. Merged feature/config-update-1 successfully"
echo "  5. Attempted to merge feature/config-update-2 - CONFLICT DETECTED"
echo "  6. Manually resolved the conflict by choosing Enhanced version"
echo "  7. Completed the merge with a merge commit"
echo "  8. Cleaned up the feature branches"
echo ""
echo "Key Commands for Conflict Resolution:"
echo "  git status                    # See which files have conflicts"
echo "  git diff                      # View the conflicts"
echo "  git add <file>               # Stage the resolved file"
echo "  git commit                   # Complete the merge"
echo "  git merge --abort            # Cancel the merge if needed"
