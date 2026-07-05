#!/bin/bash
# Git Branching Workflow Tutorial
# Exercise 1: Create and Use Branches

echo "=== Git Branching Basics ==="
echo ""

# View current branches
echo "Step 1: View current branches"
echo "Command: git branch"
git branch
echo ""

# Create new branch
echo "Step 2: Create new branch 'feature/contact-form'"
echo "Command: git branch feature/contact-form"
git branch feature/contact-form
echo ""

# Switch to new branch using checkout
echo "Step 3: Switch to new branch using checkout"
echo "Command: git checkout feature/contact-form"
git checkout feature/contact-form
echo ""

# Verify current branch
echo "Current branch after switch:"
git branch
echo ""

# Switch back to main
echo "Step 4: Switch back to main"
echo "Command: git checkout main"
git checkout main
echo ""

# Create and switch in one command
echo "Step 5: Create and switch in one command using 'git checkout -b'"
echo "Command: git checkout -b feature/new-header"
git checkout -b feature/new-header
echo ""

# Verify current branch
echo "Current branch after creating feature/new-header:"
git branch
echo ""

# Alternative: Using newer 'git switch' syntax
echo "Step 6: Alternative using newer 'git switch' syntax"
echo "Command: git switch main"
git switch main
echo ""

echo "=== Branching Exercise Complete ==="
