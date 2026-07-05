# Nahashon Mutahi - Week 03 Project

This week I mastered the command line and Git workflow — essential tools for professional development. I set up my portfolio with full Git history and learned best practices for version control.

## Learning Objectives Completed

✅ Navigate file system using terminal  
✅ Create, copy, move, delete files via CLI  
✅ Initialize a Git repository  
✅ Make commits with meaningful messages  
✅ Understand branching & merging  
✅ Push to and pull from GitHub  
✅ Write professional README documentation  

## Git Setup

```bash
# Initial setup
git config --global user.name "Nahashon Mutahi"
git config --global user.email "your@email.com"
git config --list

# Initialize and first commit
cd iyf-s11-week-01-nahashonmutahi95
git init
git status
git add .
git commit -m "Initial commit: portfolio structure"

# Commit 2: navigation styling
git add .
git commit -m "feat: add navigation styling"

# Commit 3: responsive fixes
git add .
git commit -m "fix: correct responsive breakpoints"

# Commit 4: documentation
git add .
git commit -m "docs: update README with project info"

# View commit history
git log --oneline

# Connect to remote and push
git remote add origin https://github.com/nahashonmutahi95/iyf-s11-week-03-nahashonmutahi95.git
git push -u origin main
```

## Commit History

This repository demonstrates proper Git workflow with 4 meaningful commits:

1. **Initial commit: portfolio structure** - Set up the base portfolio files
2. **feat: add navigation styling** - Enhanced navigation with CSS improvements
3. **fix: correct responsive breakpoints** - Fixed responsive design issues
4. **docs: update README with project info** - Added project documentation

## Technologies Used

- **Command Line** (Terminal/PowerShell)
- **Git** - Version control
- **GitHub** - Remote repository hosting
- HTML5
- CSS3 (Flexbox, Grid)

## Lessons Learned

### Terminal Mastery
- Navigating file systems with `cd`, `pwd`, `ls`
- Creating and managing files/directories with `mkdir`, `touch`, `cp`, `rm`
- Searching files with `find` and `grep`
- Viewing file contents with `cat`, `head`, `tail`

### Git Fundamentals
- Initializing repositories with `git init`
- Staging files with `git add`
- Creating commits with meaningful messages
- Viewing history with `git log`
- Understanding the Git workflow: Working Directory → Staging Area → Repository

### GitHub Collaboration
- Adding remote repositories
- Pushing code to GitHub
- Understanding branch protection
- Preparing for team collaboration

## Key Commands Reference

```bash
# Terminal
pwd                    # Current directory
ls                     # List files
cd <path>             # Change directory
mkdir <name>          # Create directory
touch <file>          # Create file
cp <src> <dst>        # Copy file
mv <src> <dst>        # Move/rename
rm <file>             # Delete file
find . -name "*.txt"  # Find files
grep "text" file.txt  # Search in file

# Git
git init              # Initialize repository
git status            # Check status
git add .             # Stage all files
git commit -m "msg"   # Create commit
git log               # View history
git branch            # List branches
git checkout -b name  # Create new branch
git merge branch      # Merge branch
git remote add origin <url>  # Add remote
git push origin main  # Push to GitHub
git pull origin main  # Pull from GitHub
```

## Project Structure

```
iyf-s11-week-03-nahashonmutahi95/
├── README.md
├── terminal-log.md
├── new-project.sh
├── new-project.ps1
├── src/
├── pages/
├── docs/
├── archive/
└── demo-project/
```

## Future Improvements

- [ ] Add JavaScript interactivity
- [ ] Implement dark mode toggle
- [ ] Create project filtering system
- [ ] Add contact form functionality
- [ ] Set up GitHub Pages for live demo

## What I Learned This Week

The command line and Git are powerful tools that separate amateur and professional developers. Understanding version control isn't optional — it's essential for collaborating with teams and maintaining code quality. This week reinforced that good commit messages, organized workflows, and proper branching strategies make the difference between chaos and professional development.

## Contact

- Email: your@email.com
- GitHub: [@nahashonmutahi95](https://github.com/nahashonmutahi95)
- LinkedIn: [Your Profile](https://linkedin.com/in/yourprofile)

## License

This project is open source and available under the [MIT License](LICENSE).

---

**Status:** ✅ Week 3 Complete - Ready for Week 4!
