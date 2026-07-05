#!/bin/bash
# Daily Challenge 2: Find and Grep Commands
# Advanced terminal search and file operations

echo "=== Daily Challenge 2: Find and Grep Commands ==="
echo "Mastering file search and text pattern matching"
echo ""

# Create test environment if it doesn't exist
echo "Setting up test environment..."
mkdir -p test-projects/project1/css test-projects/project1/html
mkdir -p test-projects/project2/css test-projects/project2/html

# Create sample CSS files
cat > test-projects/project1/css/styles.css << 'EOF'
/* Main Styles */
body {
    display: flex;
    flex-direction: column;
}

.container {
    display: flex;
    justify-content: center;
    align-items: center;
}

.header {
    background: linear-gradient(45deg, #667eea 0%, #764ba2 100%);
}
EOF

cat > test-projects/project1/css/layout.css << 'EOF'
/* Layout Styles */
.flexbox {
    display: flex;
    flex-wrap: wrap;
}

.grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
}
EOF

cat > test-projects/project2/css/responsive.css << 'EOF'
/* Responsive Design */
@media (max-width: 768px) {
    .flex-container {
        display: flex;
        flex-direction: column;
    }
}

/* Animation */
@keyframes slide {
    from { transform: translateX(-100%); }
    to { transform: translateX(0); }
}
EOF

# Create sample HTML files
cat > test-projects/project1/html/index.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>Test Page</title>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Welcome</h1>
        </div>
        <div class="content">
            <p>Test content</p>
        </div>
    </div>
</body>
</html>
EOF

cat > test-projects/project2/html/about.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>About</title>
</head>
<body>
    <div class="wrapper">
        <div class="nav">Navigation</div>
        <div class="main">
            <div class="section">About Us</div>
        </div>
    </div>
</body>
</html>
EOF

echo "✓ Test environment created"
echo ""

# ============================================
# Task 1: Find all CSS files in projects folder
# ============================================
echo "╔════════════════════════════════════════════════════════════╗"
echo "║ Task 1: Find all CSS files in projects folder              ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""
echo "Command: find test-projects -name '*.css' -type f"
echo ""
echo "Results:"
find test-projects -name "*.css" -type f
echo ""
echo "Explanation:"
echo "  -name '*.css'  : Match files ending in .css"
echo "  -type f        : Match only files (not directories)"
echo ""

# ============================================
# Task 2: Find all files modified in last 7 days
# ============================================
echo "╔════════════════════════════════════════════════════════════╗"
echo "║ Task 2: Find files modified in the last 7 days             ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""
echo "Command: find test-projects -type f -mtime -7"
echo ""
echo "Results:"
find test-projects -type f -mtime -7
echo ""
echo "Explanation:"
echo "  -type f    : Match only files"
echo "  -mtime -7  : Modified within the last 7 days"
echo "  -mtime +7  : Modified more than 7 days ago"
echo "  -mtime 7   : Modified exactly 7 days ago"
echo ""

# ============================================
# Task 3: Search for "flex" in all CSS files
# ============================================
echo "╔════════════════════════════════════════════════════════════╗"
echo "║ Task 3: Search for 'flex' in all CSS files                 ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""
echo "Command: grep -r 'flex' test-projects --include='*.css'"
echo ""
echo "Results:"
grep -r 'flex' test-projects --include='*.css'
echo ""
echo "Explanation:"
echo "  -r                : Recursive search (search subdirectories)"
echo "  --include='*.css' : Only search .css files"
echo "  'flex'            : Pattern to search for"
echo ""

# Advanced grep task: Case-insensitive search
echo "Advanced: Case-insensitive search for 'FLEX'"
echo "Command: grep -ri 'FLEX' test-projects --include='*.css'"
echo ""
grep -ri 'FLEX' test-projects --include='*.css'
echo ""
echo "  -i : Case-insensitive (ignore case)"
echo ""

# ============================================
# Task 4: Count occurrences of "div" in HTML files
# ============================================
echo "╔════════════════════════════════════════════════════════════╗"
echo "║ Task 4: Count occurrences of 'div' in HTML files           ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""

echo "Method 1: Count total occurrences across all files"
echo "Command: grep -ro '<div' test-projects --include='*.html' | wc -l"
echo ""
TOTAL_DIVS=$(grep -ro '<div' test-projects --include='*.html' 2>/dev/null | wc -l)
echo "Total <div> tags: $TOTAL_DIVS"
echo ""
echo "  -r : Recursive search"
echo "  -o : Only output matching parts"
echo "  wc -l : Count lines (occurrences)"
echo ""

echo "Method 2: Count occurrences per file"
echo "Command: grep -r '<div' test-projects --include='*.html' -c"
echo ""
grep -r '<div' test-projects --include='*.html' -c
echo ""
echo "  -c : Show count of matches per file"
echo ""

echo "Method 3: Show line numbers with matches"
echo "Command: grep -rn '<div' test-projects --include='*.html'"
echo ""
grep -rn '<div' test-projects --include='*.html'
echo ""
echo "  -n : Show line numbers"
echo ""

# ============================================
# Advanced Tasks
# ============================================
echo "╔════════════════════════════════════════════════════════════╗"
echo "║ Advanced Tasks                                              ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""

echo "Task A: Find files modified today"
echo "Command: find test-projects -type f -mtime 0"
echo ""
find test-projects -type f -mtime 0
echo ""

echo "Task B: Find all .html and .css files together"
echo "Command: find test-projects -type f \\( -name '*.html' -o -name '*.css' \\)"
echo ""
find test-projects -type f \( -name '*.html' -o -name '*.css' \)
echo ""

echo "Task C: Search for 'display' in CSS and show file paths"
echo "Command: grep -l 'display' test-projects/*/css/*.css"
echo ""
grep -l 'display' test-projects/*/css/*.css 2>/dev/null
echo ""
echo "  -l : Show only file names (not matching lines)"
echo ""

echo "Task D: Find all CSS files over 100 bytes"
echo "Command: find test-projects -name '*.css' -type f -size +100c"
echo ""
find test-projects -name '*.css' -type f -size +100c
echo ""
echo "  -size +100c : Files larger than 100 bytes (c = bytes)"
echo ""

# ============================================
# Reference Commands
# ============================================
echo "╔════════════════════════════════════════════════════════════╗"
echo "║ Find and Grep Commands Reference                            ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""

echo "FIND Command Options:"
echo "  find <path> -name <pattern>     # Find by filename"
echo "  find <path> -type f             # Find only files"
echo "  find <path> -type d             # Find only directories"
echo "  find <path> -mtime -7           # Modified in last 7 days"
echo "  find <path> -size +100c         # Larger than 100 bytes"
echo "  find <path> -executable         # Executable files"
echo ""

echo "GREP Command Options:"
echo "  grep -r <pattern> <path>        # Recursive search"
echo "  grep -i <pattern> <path>        # Case-insensitive"
echo "  grep -l <pattern> <path>        # Show filenames only"
echo "  grep -c <pattern> <path>        # Count matches per file"
echo "  grep -n <pattern> <path>        # Show line numbers"
echo "  grep -o <pattern> <path>        # Show only matches"
echo "  grep --include='*.ext' <pat>    # Limit to file type"
echo ""

echo "Combining Commands:"
echo "  find . -name '*.js' | xargs grep 'function'  # Search in found files"
echo "  grep -r 'TODO' . | wc -l                      # Count total TODOs"
echo "  find . -type f | wc -l                        # Count total files"
echo ""

# ============================================
# Cleanup
# ============================================
echo "╔════════════════════════════════════════════════════════════╗"
echo "║ Cleanup                                                     ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""
echo "To clean up test environment, run:"
echo "  rm -rf test-projects"
echo ""

echo "=== Daily Challenge 2 Complete ==="
echo ""
echo "✅ Mastered find command for file searching"
echo "✅ Mastered grep command for text pattern matching"
echo "✅ Combined commands for advanced searches"
echo "✅ Used various options and flags correctly"
echo ""
echo "Key Skills Demonstrated:"
echo "  • File searching with find"
echo "  • Pattern matching with grep"
echo "  • Recursive directory searching"
echo "  • Text analysis and counting"
echo "  • Command chaining and piping"
echo ""
