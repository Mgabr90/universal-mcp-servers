#!/usr/bin/env pwsh
# GitHub MCP Server Installation Script
# Location: scripts/setup/install-github-mcp.ps1

Write-Host "🐙 GitHub MCP Server Installation" -ForegroundColor Green
Write-Host "================================" -ForegroundColor Green
Write-Host ""

$GitHubMcpUrl = "https://github.com/anthropics/mcp-examples/releases/latest/download/github-mcp-server.exe"
$InstallDir = "C:\Program Files\Universal-MCP-Servers"
$BinaryPath = Join-Path $InstallDir "github-mcp-server.exe"

# Create installation directory
Write-Host "📁 Creating installation directory: $InstallDir" -ForegroundColor Cyan
try {
    if (-not (Test-Path $InstallDir)) {
        New-Item -ItemType Directory -Path $InstallDir -Force | Out-Null
    }
    Write-Host "✅ Directory created" -ForegroundColor Green
} catch {
    Write-Host "❌ Failed to create directory. Run as Administrator." -ForegroundColor Red
    exit 1
}

# Download GitHub MCP Server
Write-Host "📦 Downloading GitHub MCP Server..." -ForegroundColor Cyan
try {
    $ProgressPreference = 'SilentlyContinue'
    Invoke-WebRequest -Uri $GitHubMcpUrl -OutFile $BinaryPath
    Write-Host "✅ Downloaded to: $BinaryPath" -ForegroundColor Green
} catch {
    Write-Host "❌ Download failed: $($Error[0])" -ForegroundColor Red
    Write-Host "   Manual download: $GitHubMcpUrl" -ForegroundColor Yellow
    exit 1
}

# Add to PATH
Write-Host "🔄 Adding to system PATH..." -ForegroundColor Cyan
try {
    $CurrentPath = [Environment]::GetEnvironmentVariable("PATH", "Machine")
    if ($CurrentPath -notlike "*$InstallDir*") {
        $NewPath = "$CurrentPath;$InstallDir"
        [Environment]::SetEnvironmentVariable("PATH", $NewPath, "Machine")
        Write-Host "✅ Added to system PATH" -ForegroundColor Green
        Write-Host "   ⚠️ Restart your terminal to use 'github-mcp-server' command" -ForegroundColor Yellow
    } else {
        Write-Host "✅ Already in PATH" -ForegroundColor Green
    }
} catch {
    Write-Host "❌ Failed to update PATH. Run as Administrator." -ForegroundColor Red
    Write-Host "   Manual: Add '$InstallDir' to your system PATH" -ForegroundColor Yellow
}

# Test installation
Write-Host "🧪 Testing installation..." -ForegroundColor Cyan
try {
    $TestOutput = & $BinaryPath --version 2>&1
    Write-Host "✅ GitHub MCP Server installed successfully" -ForegroundColor Green
    Write-Host "   Version info: $TestOutput" -ForegroundColor Gray
} catch {
    Write-Host "❌ Installation test failed" -ForegroundColor Red
}

Write-Host ""
Write-Host "🎉 Installation Complete!" -ForegroundColor Green
Write-Host ""
Write-Host "📋 Next Steps:" -ForegroundColor Yellow
Write-Host "1. 🔑 Create GitHub Personal Access Token:" -ForegroundColor White
Write-Host "   - Go to: https://github.com/settings/tokens" -ForegroundColor Gray
Write-Host "   - Create token with 'repo', 'read:user', 'notifications' scopes" -ForegroundColor Gray
Write-Host ""
Write-Host "2. 🔄 Restart your terminal (to load PATH changes)" -ForegroundColor White
Write-Host ""
Write-Host "3. 🛠️ Add to your MCP configuration:" -ForegroundColor White
Write-Host '   "command": "github-mcp-server"' -ForegroundColor Gray
Write-Host '   "env": { "GITHUB_PERSONAL_ACCESS_TOKEN": "your_token_here" }' -ForegroundColor Gray
Write-Host ""
Write-Host "🚀 GitHub MCP Server is ready for use!" -ForegroundColor Cyan
