# Nahashon Mutahi - Week 03 Project

This week I mastered the command line and Git workflow — essential tools for every professional developer. Through hands-on exercises, I learned how to navigate the terminal, manage repositories, handle merge conflicts, and collaborate using GitHub. This project demonstrates a complete Git workflow with meaningful commits, branching strategies, and professional documentation.

## Live Demo

[View Live Site](https://nahashonmutahi95.github.io/iyf-s11-week-03-nahashonmutahi95)

## Screenshot

![Project Screenshot](./images/screenshot.png)

## Features

- ✅ Responsive design with modern CSS
- ✅ Accessible (WCAG compliant) navigation
- ✅ Multi-page layout (Home, About, Projects, Contact)
- ✅ Professional Git history with meaningful commits
- ✅ Branch management and merge conflict resolution
- ✅ Comprehensive project documentation

## Technologies Used

- **Terminal/Command Line** (PowerShell, Bash)
- **Git** - Version control system
- **GitHub** - Remote repository hosting
- HTML5 - Semantic markup
- CSS3 - Flexbox, Grid layouts
- Markdown - Documentation

## Project Structure

```
iyf-s11-week-03-nahashonmutahi95/
├── README.md
├── .gitignore
├── terminal-log.md
├── new-project.sh
├── new-project.ps1
├── git-branching-tutorial.sh
├── git-branch-workflow-exercise-2.sh
├── git-merge-conflict-exercise-3.sh
├── index.html
├── about.html
├── projects.html
├── contact.html
├── css/
│   └── styles.css
├── images/
│   └── screenshot.png
├── src/
├── pages/
├── docs/
├── archive/
└── demo-project/
```

## What I Learned

### Terminal Mastery 🖥️
- **File Navigation:** Using `pwd`, `cd`, `ls` to navigate the file system efficiently
- **File Operations:** Creating, copying, moving, and deleting files using CLI commands
- **Search & Find:** Using `find` and `grep` to search files and patterns
- **Scripting:** Writing shell scripts to automate project setup

### Git Fundamentals 📚
- **Repository Management:** Initializing repos and understanding the staging area
- **Commits:** Writing meaningful commit messages following Conventional Commits
- **Branching:** Creating feature branches and understanding branching workflows
- **Merging:** Successfully merging branches and resolving merge conflicts
- **Conflict Resolution:** Identifying, understanding, and manually resolving conflicts
- **Remote Operations:** Pushing to and pulling from GitHub

### Professional Workflow 🚀
- **Version Control Best Practices:** Using `.gitignore`, meaningful messages, clean history
- **Collaboration Readiness:** Understanding PR workflows and team collaboration
- **Documentation:** Writing professional READMEs and project documentation
- **Code Organization:** Structuring projects logically for maintainability

## Key Git Commands Reference

```bash
# Setup
git config --global user.name "Your Name"
git config --global user.email "your@email.com"

# Initialization
git init                      # Initialize repository
git status                    # Check status
git add .                     # Stage all files
git commit -m "message"       # Create commit

# Branching
git branch                    # List branches
git branch <name>            # Create branch
git checkout <branch>        # Switch branch
git checkout -b <branch>     # Create and switch
git switch <branch>          # Newer switch syntax

# Merging
git merge <branch>           # Merge branch
git merge --abort            # Cancel merge
git branch -d <branch>       # Delete branch

# Remote
git remote add origin <url>  # Add remote
git remote -v                # View remotes
git push -u origin main      # Push branch
git pull origin main         # Pull changes

# Viewing History
git log                       # View commits
git log --oneline            # Compact view
git log --graph --all        # Branch visualization
git diff                      # View changes
```

## Exercises Completed

### ✅ Lesson 5: Command Line Essentials
- Task 5.1: Terminal Navigation
- Task 5.2: File Operations
- Task 5.3: Useful Terminal Commands
- Task 5.4: Shell Script Basics

### ✅ Lesson 6: Git & GitHub Workflow
- Task 6.1: Git Basics - 4 meaningful commits with proper messages
- Task 6.2: Branching & Merging
  - Exercise 1: Create and use branches
  - Exercise 2: Complete branch workflow (feature/about-page)
  - Exercise 3: Handle merge conflicts
- Task 6.3: GitHub Remote Workflow
  - Push to GitHub
  - Collaboration simulation
  - .gitignore implementation
- Task 6.4: Professional README (this file!)

## Commit History

This repository demonstrates proper Git workflow:

1. **Initial commit: portfolio structure** - Foundation files
2. **feat: add navigation styling** - Navigation enhancements
3. **fix: correct responsive breakpoints** - Responsive fixes
4. **docs: update README with project info** - Documentation
5. **docs: add comprehensive .gitignore** - Best practices
6. Additional commits for exercise scripts and tutorials

## Future Improvements

- [ ] Add JavaScript interactivity
- [ ] Implement dark mode toggle
- [ ] Add project filtering system
- [ ] Create contact form with validation
- [ ] Set up GitHub Pages for live demo
- [ ] Add CSS animations and transitions
- [ ] Implement localStorage for user preferences
- [ ] Create automated testing suite

## Challenges & How I Overcame Them

**Challenge:** Understanding merge conflicts  
**Solution:** Practiced with the merge conflict exercise, learned to identify conflict markers, and resolve manually

**Challenge:** Writing good commit messages  
**Solution:** Followed Conventional Commits standard (feat, fix, docs, style, refactor)

**Challenge:** Managing multiple branches  
**Solution:** Used descriptive branch names and maintained clear workflow

## Contact

- **Email:** nahashonmutahi95@gmail.com
- **GitHub:** [@nahashonmutahi95](https://github.com/nahashonmutahi95)
- **LinkedIn:** [Nahashon Mutahi](https://linkedin.com/in/yourprofile)

## License

This project is open source and available under the [MIT License](LICENSE).

---

## Resources Used

- [MDN: Command Line Crash Course](https://developer.mozilla.org/en-US/docs/Learn/Tools_and_testing/Understanding_client-side_tools/Command_line)
- [Git Documentation](https://git-scm.com/doc)
- [GitHub Skills](https://skills.github.com/)
- [Conventional Commits](https://www.conventionalcommits.org/)
- [Pro Git Book](https://git-scm.com/book/en/v2)
- [Oh Shit, Git!](https://ohshitgit.com/) - Git troubleshooting

---

**Status:** ✅ Week 3 Complete - Terminal & Git Mastery Achieved!

**Next:** Ready for Week 4 - JavaScript Fundamentals 🚀

*Last Updated: July 5, 2026*
