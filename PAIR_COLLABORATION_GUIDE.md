# Pair Collaboration Lab Guide
## Real Team Workflow Practice for CommunityHub

This guide walks through the complete pair collaboration exercise demonstrating professional team workflow with Git, GitHub, Pull Requests, and conflict resolution.

---

## 📋 Setup Phase

### Step 1: Lead Partner Creates Repository

```bash
# Lead partner creates the shared repository
# Repository name: iyf-s11-week-03-pair-{lead-username}

# Example: iyf-s11-week-03-pair-nahashonmutahi95

# Go to GitHub.com and create a new public repository
# Add description: "Week 03 Pair Collaboration Lab - Real team workflow practice"
```

### Step 2: Add Collaborator

**Lead Partner:**
1. Go to repository Settings → Collaborators
2. Click "Add people"
3. Search for your partner's GitHub username
4. Send invitation (partner receives email)

**Partner:**
- Accept the collaboration invitation

### Step 3: Enable Branch Protection

**Lead Partner:**
1. Go to Settings → Branches
2. Click "Add rule"
3. Branch name pattern: `main`
4. Enable:
   - ✅ Require a pull request before merging
   - ✅ Require approvals (minimum: 1)
   - ✅ Require status checks to pass before merging (optional)
5. Click "Create"

### Step 4: Both Partners Clone Repository

```bash
# Both partners run this command
git clone https://github.com/lead-username/iyf-s11-week-03-pair-lead-username.git
cd iyf-s11-week-03-pair-lead-username

# Verify remote connection
git remote -v
```

---

## 👥 Individual Feature Branch Workflow

### Partner 1: Create Feature Branch & Profile Card

```bash
# musembijoel
git checkout -b feature/partner1-profile

# Create/edit index.html with your profile card
cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portfolio Team</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Our Portfolio Team</h1>
    
    <div class="team-container">
        <!-- Partner 1 Profile Card -->
        <div class="profile-card">
            <h2>Partner 1 Name</h2>
            <p><strong>Role:</strong> Developer</p>
            <p><strong>Skills:</strong> HTML, CSS, Git</p>
            <p><strong>Bio:</strong> Passionate about learning web development and collaboration.</p>
            <p><strong>GitHub:</strong> <a href="https://github.com/partner1">@partner1</a></p>
        </div>
    </div>
</body>
</html>
EOF

# Stage, commit, and push
git add index.html
git commit -m "feat: add partner 1 profile card to team page"
git push -u origin feature/partner1-profile
```

### Partner 2: Create Feature Branch & Profile Card

```bash
# francis waceke
# Make sure you're on main first
git checkout main
git pull origin main

# Create your feature branch
git checkout -b feature/partner2-profile

# Edit index.html to add your profile card
cat >> index.html << 'EOF'

        <!-- Partner 2 Profile Card -->
        <div class="profile-card">
            <h2>Partner 2 Name</h2>
            <p><strong>Role:</strong> Developer</p>
            <p><strong>Skills:</strong> HTML, CSS, Git</p>
            <p><strong>Bio:</strong> Enthusiastic about building great software collaboratively.</p>
            <p><strong>GitHub:</strong> <a href="https://github.com/partner2">@partner2</a></p>
        </div>
    </div>
</body>
</html>
EOF

# Stage, commit, and push
git add index.html
git commit -m "feat: add partner 2 profile card to team page"
git push -u origin feature/partner2-profile
```

---

## 🔄 Pull Request & Code Review Workflow

### Opening Pull Requests

**Partner 1:**
1. Go to GitHub repository
2. Click "Pull requests" tab
3. Click "New pull request"
4. Base: `main` ← Compare: `feature/partner1-profile`
5. Add title: `feat: add partner 1 profile card`
6. Add description:
   ```
   ## Description
   Added my profile card to the team portfolio page.
   
   ## Changes
   - Added HTML for profile card section
   - Includes name, skills, and GitHub link
   
   ## Related Issue
   Part of Pair Collaboration Lab Week 03
   ```
7. Click "Create pull request"

**Partner 2:**
1. Repeat same process for `feature/partner2-profile`

### Reviewing Pull Requests

**Partner 1 Reviews Partner 2's PR:**
```
1. Go to PR #2 (partner2-profile)
2. Click "Files changed" tab
3. Hover over line and click comment icon
4. Leave constructive comment:
   "Great work! Love the profile card layout. 
    Consider adding a profile image link in the future."
5. Click "Review changes" (top right)
6. Select "Approve"
7. Click "Submit review"
```

**Partner 2 Reviews Partner 1's PR:**
```
Same process for PR #1 (partner1-profile)
```

### Merging Pull Requests

**After Approval:**

Partner 1:
1. Go to your PR #1
2. Click "Merge pull request"
3. Click "Confirm merge"
4. Click "Delete branch" (clean up)

Partner 2:
1. Go to your PR #2
2. Click "Merge pull request"
3. Click "Confirm merge"
4. Click "Delete branch"

---

## ⚠️ Merge Conflict Resolution Exercise

### Step 1: Create README.md Conflict

**Partner 1: Create Initial README**

```bash
git checkout main
git pull origin main
git checkout -b feature/partner1-readme

cat > README.md << 'EOF'
# Week 03 Pair Collaboration Lab

## Team Members
Author: Partner 1

This is a collaborative project demonstrating real team workflow.
EOF

git add README.md
git commit -m "docs: add README with partner 1 info"
git push -u origin feature/partner1-readme
```

**Partner 2: Edit Same Line on Different Branch**

```bash
git checkout main
git pull origin main
git checkout -b feature/partner2-readme

cat > README.md << 'EOF'
# Week 03 Pair Collaboration Lab

## Team Members
Author: Partner 2

This is a collaborative project demonstrating real team workflow.
EOF

git add README.md
git commit -m "docs: add README with partner 2 info"
git push -u origin feature/partner2-readme
```

### Step 2: Open Both PRs

**Partner 1:**
1. Create PR for `feature/partner1-readme` → `main`
2. Get approval from Partner 2
3. Merge PR #3

**Partner 2:**
1. Create PR for `feature/partner2-readme` → `main`
2. Get approval from Partner 1
3. Attempt to merge → **CONFLICT!**

### Step 3: Resolve the Conflict

**Partner 2 (whose PR has conflict):**

```bash
# Go to PR on GitHub
# Click "Resolve conflicts" button

# The conflict will show:
# <<<<<<< feature/partner2-readme
# Author: Partner 2
# =======
# Author: Partner 1
# >>>>>>> main

# Edit to combine both contributions:
# Author: Partner 1 & Partner 2

# Click "Mark as resolved"
# Click "Commit merge"
```

**Or resolve locally:**

```bash
git checkout feature/partner2-readme
git pull origin main
# Will show conflict

# Edit README.md manually to:
cat > README.md << 'EOF'
# Week 03 Pair Collaboration Lab

## Team Members
- Partner 1
- Partner 2

This is a collaborative project demonstrating real team workflow.
EOF

git add README.md
git commit -m "merge: resolve README conflict, include both partners"
git push origin feature/partner2-readme
```

### Step 4: Complete the Merge

Partner 2:
1. Go back to PR #4
2. Click "Merge pull request"
3. Click "Confirm merge"

---

## ✅ Verification Checklist

After completing the lab, verify:

- [ ] Repository created: `iyf-s11-week-03-pair-{lead-username}`
- [ ] Branch protection enabled on `main`
- [ ] Both partners have access (listed as collaborators)
- [ ] PR #1 merged (Partner 1 profile card)
- [ ] PR #2 merged (Partner 2 profile card)
- [ ] PR #3 merged (Partner 1 README)
- [ ] PR #4 merged with conflict resolved (Partner 2 README)
- [ ] Both partners appear in `Insights → Contributors`
- [ ] Commit history shows both partners' work
- [ ] index.html displays both profile cards
- [ ] README.md shows both partner names

### Check Insights

1. Go to repository
2. Click "Insights" tab
3. Click "Contributors"
4. Verify both partners listed with commits/contributions

---

## 📊 Pull Request Summary

| PR # | Branch | Author | Status | Notes |
|------|--------|--------|--------|-------|
| 1 | feature/partner1-profile | Partner 1 | ✅ Merged | Profile card |
| 2 | feature/partner2-profile | Partner 2 | ✅ Merged | Profile card |
| 3 | feature/partner1-readme | Partner 1 | ✅ Merged | Initial README |
| 4 | feature/partner2-readme | Partner 2 | ✅ Merged | Conflict resolved |

---

## 🎓 Learning Outcomes

### What You'll Learn:

✅ **Collaboration:** Working with a partner on shared code  
✅ **Branching Strategy:** Feature branches for isolated work  
✅ **Pull Requests:** Code review workflow and approval process  
✅ **Merge Conflicts:** Identifying and resolving conflicts collaboratively  
✅ **Communication:** Using PR comments and commit messages to communicate  
✅ **Git Workflow:** Professional team Git practices  

### Git Commands Used:

```bash
git checkout -b <branch>           # Create feature branch
git push -u origin <branch>        # Push branch to GitHub
git pull origin main               # Get latest main
git merge <branch>                 # Merge locally (if needed)
git branch -d <branch>             # Delete branch
```

### GitHub Features Used:

- Branch protection rules
- Pull requests
- Code reviews and approvals
- Conflict resolution
- Collaborator management
- Insights → Contributors

---

## 💡 Tips for Success

1. **Communicate:** Use PR comments to discuss changes
2. **Small PRs:** Easier to review and merge
3. **Descriptive Messages:** Clear commit and PR titles help everyone understand
4. **Test Locally:** Before pushing, test your changes
5. **Review Thoroughly:** Don't just approve blindly
6. **Resolve Conflicts Together:** Talk about which version to keep

---

## 🚀 Ready for CommunityHub!

This lab simulates the exact workflow you'll use in CommunityHub:
- Feature branches for features/fixes
- Pull requests for code review
- Conflict resolution as a team
- Professional communication and documentation

**Great job completing the Pair Collaboration Lab!** 🎉

---

*Last Updated: July 5, 2026*
