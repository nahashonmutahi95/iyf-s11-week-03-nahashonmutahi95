
param(
    [Parameter(Position = 0, Mandatory = $true)]
    [string]$mutahi tech
    
)

if (-not $ProjectName) {
    Write-Host "Usage: .\new-project.ps1 project-name"
    exit 1
}

if (Test-Path $ProjectName) {
    Write-Host "Error: '$ProjectName' already exists."
    exit 1
}

$directories = @(
    "$ProjectName/src/css",
    "$ProjectName/src/js",
    "$ProjectName/src/images",
    "$ProjectName/docs",
    "$ProjectName/tests"
)

$files = @(
    "$ProjectName/README.md",
    "$ProjectName/src/index.html",
    "$ProjectName/src/css/styles.css",
    "$ProjectName/src/js/main.js"
)

New-Item -ItemType Directory -Path $directories -Force | Out-Null
New-Item -ItemType File -Path $files -Force | Out-Null

Set-Content -Path "$ProjectName/README.md" -Value "# $ProjectName"
Write-Host "Project $ProjectName created successfully!"
