#!/bin/bash
# Git Branch Workflow Exercise 2
# Complete workflow: create, modify, commit, merge, and delete branches

echo "=== Git Branch Workflow Exercise 2 ==="
echo ""

# Step 1: Create branch feature/about-page
echo "Step 1: Create branch 'feature/about-page'"
echo "Command: git branch feature/about-page"
git branch feature/about-page
echo "✓ Branch created"
echo ""

# Step 2: Switch to the branch
echo "Step 2: Switch to the feature/about-page branch"
echo "Command: git checkout feature/about-page"
git checkout feature/about-page
echo "✓ Switched to feature/about-page"
echo ""

# Step 3: Make changes to about.html
echo "Step 3: Make changes to about.html"
echo "Creating/modifying about.html..."
cat > about.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Me</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <nav>
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="about.html">About</a></li>
            <li><a href="projects.html">Projects</a></li>
            <li><a href="contact.html">Contact</a></li>
        </ul>
    </nav>

    <main>
        <section class="about">
            <h1>About Me</h1>
            <p>Welcome to my portfolio! I'm a passionate developer learning modern web technologies.</p>
            
            <h2>Skills</h2>
            <ul>
                <li>HTML5</li>
                <li>CSS3 (Flexbox, Grid)</li>
                <li>Git & GitHub</li>
                <li>Command Line</li>
            </ul>

            <h2>Experience</h2>
            <p>Currently learning full-stack development through the IYF Weekend Academy program.</p>
        </section>
    </main>

    <footer>
        <p>&copy; 2026 My Portfolio. All rights reserved.</p>
    </footer>
</body>
</html>
EOF
echo "✓ about.html created with content"
echo ""

# Step 4: Check status and commit changes
echo "Step 4: Check git status"
echo "Command: git status"
git status
echo ""

echo "Step 4b: Stage and commit changes"
echo "Command: git add about.html"
git add about.html
echo "Command: git commit -m 'feat: add about page with navigation'"
git commit -m "feat: add about page with navigation"
echo "✓ Changes committed"
echo ""

# Step 5: Switch back to main
echo "Step 5: Switch back to main branch"
echo "Command: git checkout main"
git checkout main
echo "✓ Switched to main"
echo ""

# Step 6: Merge the feature branch
echo "Step 6: Merge feature/about-page into main"
echo "Command: git merge feature/about-page"
git merge feature/about-page
echo "✓ Branch merged successfully"
echo ""

# Step 7: Delete the merged branch
echo "Step 7: Delete the merged branch"
echo "Command: git branch -d feature/about-page"
git branch -d feature/about-page
echo "✓ feature/about-page branch deleted"
echo ""

# Final: Show branch list
echo "Final: Current branches"
echo "Command: git branch"
git branch
echo ""

echo "=== Workflow Complete ==="
echo "Branch 'feature/about-page' has been:"
echo "  ✓ Created"
echo "  ✓ Modified (about.html added)"
echo "  ✓ Committed"
echo "  ✓ Merged into main"
echo "  ✓ Deleted"
