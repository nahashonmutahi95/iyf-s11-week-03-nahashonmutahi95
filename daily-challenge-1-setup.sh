#!/bin/bash
# Daily Challenge 1: Terminal-Only Project Setup
# Create a complete project structure using only terminal commands

echo "=== Daily Challenge 1: Terminal-Only Project Setup ==="
echo "Creating project structure with NO GUI file explorer!"
echo ""

# Step 1: Create project directory
echo "Step 1: Create main project directory"
echo "Command: mkdir daily-challenge-1"
mkdir daily-challenge-1
echo "✓ Created daily-challenge-1/"
echo ""

# Step 2: Create src directory and subdirectories
echo "Step 2: Create nested directory structure"
echo "Command: mkdir -p daily-challenge-1/src/css daily-challenge-1/src/js"
mkdir -p daily-challenge-1/src/css daily-challenge-1/src/js
echo "✓ Created src/, src/css/, and src/js/ directories"
echo ""

# Step 3: Create index.html with boilerplate
echo "Step 3: Create index.html with HTML5 boilerplate"
cat > daily-challenge-1/src/index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daily Challenge 1 Project</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <h1>Welcome to Daily Challenge 1</h1>
        <p>This project was created entirely using terminal commands!</p>
    </header>

    <main>
        <section>
            <h2>Project Features</h2>
            <ul>
                <li>Created with terminal commands only</li>
                <li>No GUI file explorer used</li>
                <li>Complete project structure</li>
                <li>Professional boilerplate files</li>
            </ul>
        </section>
    </main>

    <footer>
        <p>&copy; 2026 Daily Challenge 1. All rights reserved.</p>
    </footer>

    <script src="js/app.js"></script>
</body>
</html>
EOF
echo "✓ Created index.html with HTML5 boilerplate"
echo ""

# Step 4: Create style.css with starter styles
echo "Step 4: Create style.css with starter CSS"
cat > daily-challenge-1/src/css/style.css << 'EOF'
/* Global Styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    line-height: 1.6;
    color: #333;
    background-color: #f4f4f4;
}

/* Header Styles */
header {
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    color: white;
    padding: 2rem;
    text-align: center;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
}

header h1 {
    font-size: 2.5rem;
    margin-bottom: 0.5rem;
}

header p {
    font-size: 1.1rem;
    opacity: 0.95;
}

/* Main Content */
main {
    max-width: 1200px;
    margin: 2rem auto;
    padding: 0 1rem;
}

section {
    background: white;
    padding: 2rem;
    border-radius: 8px;
    box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    margin-bottom: 1.5rem;
}

section h2 {
    color: #667eea;
    margin-bottom: 1rem;
    font-size: 1.8rem;
}

section ul {
    list-style-position: inside;
}

section li {
    margin-bottom: 0.5rem;
    padding-left: 1rem;
}

/* Footer Styles */
footer {
    background: #333;
    color: white;
    text-align: center;
    padding: 1.5rem;
    margin-top: 2rem;
}

footer p {
    font-size: 0.9rem;
}

/* Responsive Design */
@media (max-width: 768px) {
    header h1 {
        font-size: 1.8rem;
    }

    main {
        margin: 1rem auto;
    }

    section {
        padding: 1rem;
    }
}
EOF
echo "✓ Created style.css with professional styles"
echo ""

# Step 5: Create app.js with starter JavaScript
echo "Step 5: Create app.js with starter JavaScript"
cat > daily-challenge-1/src/js/app.js << 'EOF'
/**
 * Daily Challenge 1 - JavaScript Application
 * Created entirely using terminal commands
 */

// DOM Ready
document.addEventListener('DOMContentLoaded', function() {
    console.log('Application initialized!');
    console.log('This project was created with terminal commands only.');
    
    initializeApp();
});

/**
 * Initialize the application
 */
function initializeApp() {
    console.log('✓ App initialized');
    
    // Add welcome message
    const main = document.querySelector('main');
    if (main) {
        const message = document.createElement('div');
        message.style.marginTop = '1rem';
        message.style.padding = '1rem';
        message.style.backgroundColor = '#e8f5e9';
        message.style.borderRadius = '4px';
        message.style.borderLeft = '4px solid #4caf50';
        message.innerHTML = '<strong>✓ JavaScript loaded successfully!</strong>';
        main.appendChild(message);
    }
}

/**
 * Utility function: Log application info
 */
function logAppInfo() {
    console.log('=== Daily Challenge 1 Info ===');
    console.log('Project: Terminal-Only Project Setup');
    console.log('Created: Terminal commands only');
    console.log('No GUI file explorer used!');
    console.log('================================');
}

// Log app info on load
logAppInfo();
EOF
echo "✓ Created app.js with starter code"
echo ""

# Step 6: Create README.md
echo "Step 6: Create README.md with project documentation"
cat > daily-challenge-1/README.md << 'EOF'
# Daily Challenge 1: Terminal-Only Project Setup

## Overview

This project was created **entirely using terminal commands** with **NO GUI file explorer**! This demonstrates proficiency with the command line interface.

## Challenge Completed

✅ Created complete project structure using only terminal  
✅ Created nested directories with `mkdir -p`  
✅ Created multiple files with `cat` and redirection  
✅ Added professional boilerplate code to all files  
✅ No graphical file manager used  

## Project Structure

```
daily-challenge-1/
├── src/
│   ├── index.html
│   ├── css/
│   │   └── style.css
│   └── js/
│       └── app.js
└── README.md
```

## Files Included

### index.html
- HTML5 boilerplate structure
- Links to CSS and JavaScript files
- Professional semantic markup
- Responsive meta tags

### css/style.css
- Professional styling with gradients
- Responsive design
- Flexbox ready
- Mobile-friendly breakpoints

### js/app.js
- JavaScript initialization
- DOM ready event listener
- Console logging
- Utility functions

### README.md
- Project documentation
- Setup instructions
- Terminal commands used

## Terminal Commands Used

```bash
# Create main directory
mkdir daily-challenge-1

# Create nested directories
mkdir -p daily-challenge-1/src/css daily-challenge-1/src/js

# Create files with content
cat > daily-challenge-1/src/index.html << 'EOF'
...
EOF

cat > daily-challenge-1/src/css/style.css << 'EOF'
...
EOF

cat > daily-challenge-1/src/js/app.js << 'EOF'
...
EOF

cat > daily-challenge-1/README.md << 'EOF'
...
EOF
```

## How to Use

1. Open `index.html` in a web browser
2. Check browser console (F12) for JavaScript messages
3. View styled content with responsive design

## Key Learnings

✅ **mkdir -p** - Create nested directories in one command  
✅ **cat with redirection** - Create files with content  
✅ **Terminal efficiency** - Complete project setup without GUI  
✅ **Boilerplate code** - Professional starter templates  
✅ **File organization** - Logical project structure  

## Skills Demonstrated

- Terminal navigation and file operations
- Creating nested directory structures
- Creating files with content via terminal
- Professional code structure
- HTML5, CSS3, and JavaScript basics
- Responsive web design
- Command-line efficiency

---

**Completed:** July 5, 2026  
**Challenge:** Daily Challenge 1 - Terminal-Only Project Setup  
**Status:** ✅ Complete

This project showcases the ability to work efficiently with terminal commands - an essential skill for professional developers!
EOF
echo "✓ Created README.md with documentation"
echo ""

# Step 7: Display project structure
echo "Step 7: Display the created project structure"
echo "Command: tree daily-challenge-1 (or ls -R daily-challenge-1)"
echo ""
tree daily-challenge-1 2>/dev/null || find daily-challenge-1 -type f -o -type d | sort
echo ""

# Step 8: Show file contents summary
echo "Step 8: Verify all files were created"
echo "Command: find daily-challenge-1 -type f"
find daily-challenge-1 -type f
echo ""

# Step 9: Show file count and sizes
echo "Step 9: Project statistics"
echo "File count: $(find daily-challenge-1 -type f | wc -l) files"
echo "Directory count: $(find daily-challenge-1 -type d | wc -l) directories"
echo ""

echo "=== Daily Challenge 1 Complete ==="
echo ""
echo "✅ Project structure created entirely with terminal commands"
echo "✅ All files populated with professional boilerplate"
echo "✅ Ready to use immediately"
echo ""
echo "Next steps:"
echo "1. cd daily-challenge-1"
echo "2. Open src/index.html in a browser"
echo "3. Check the browser console for JavaScript messages"
echo ""
echo "Terminal commands mastered in this challenge:"
echo "  • mkdir - Create directories"
echo "  • mkdir -p - Create nested directories"
echo "  • cat > file - Create file with content"
echo "  • cat << EOF - Multi-line file creation"
echo "  • find - Locate and list files"
echo "  • tree/ls - Display directory structure"
echo ""
