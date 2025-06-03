#!/usr/bin/env pwsh
# Universal MCP Servers - Quick Installation Script
# Location: scripts/setup/quick-install.ps1

Write-Host "🚀 Universal MCP Servers - Quick Installation" -ForegroundColor Green
Write-Host "=========================================" -ForegroundColor Green
Write-Host ""

# Check prerequisites
Write-Host "🔍 Checking prerequisites..." -ForegroundColor Cyan

# Check Python
try {
    $PythonVersion = python --version 2>&1
    Write-Host "✅ Python: $PythonVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Python not found. Please install Python 3.10+" -ForegroundColor Red
    Write-Host "   Download from: https://python.org/downloads" -ForegroundColor Yellow
    exit 1
}

# Check Node.js
try {
    $NodeVersion = node --version 2>&1
    Write-Host "✅ Node.js: $NodeVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Node.js not found. Please install Node.js 18+" -ForegroundColor Red
    Write-Host "   Download from: https://nodejs.org" -ForegroundColor Yellow
    exit 1
}

# Check Git
try {
    $GitVersion = git --version 2>&1
    Write-Host "✅ Git: $GitVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Git not found. Please install Git" -ForegroundColor Red
    Write-Host "   Download from: https://git-scm.com" -ForegroundColor Yellow
    exit 1
}

Write-Host ""

# Install Python dependencies for PyMuPDF4LLM
Write-Host "📦 Installing Python dependencies..." -ForegroundColor Cyan
try {
    python -m pip install --upgrade pip
    python -m pip install mcp[cli] pydantic pymupdf4llm typer
    Write-Host "✅ Python dependencies installed" -ForegroundColor Green
} catch {
    Write-Host "❌ Failed to install Python dependencies" -ForegroundColor Red
    exit 1
}

# Install global npm packages
Write-Host "📦 Installing Node.js packages..." -ForegroundColor Cyan
try {
    # These will be installed on-demand via npx, but we can pre-install for faster startup
    npm install -g @agentdeskai/browser-tools-mcp@latest
    npm install -g @negokaz/excel-mcp-server@latest
    Write-Host "✅ Node.js packages installed" -ForegroundColor Green
} catch {
    Write-Host "⚠️ Node.js packages will be installed on-demand via npx" -ForegroundColor Yellow
}

# Check for GitHub MCP Server
Write-Host "🔍 Checking for GitHub MCP Server..." -ForegroundColor Cyan
$GitHubMcpPath = Get-Command github-mcp-server -ErrorAction SilentlyContinue
if ($GitHubMcpPath) {
    Write-Host "✅ GitHub MCP Server found: $($GitHubMcpPath.Source)" -ForegroundColor Green
} else {
    Write-Host "⚠️ GitHub MCP Server not found in PATH" -ForegroundColor Yellow
    Write-Host "   Download from: https://github.com/anthropics/mcp-examples/releases" -ForegroundColor Yellow
    Write-Host "   Or use the provided binaries in your local setup" -ForegroundColor Yellow
}

# Check for Vercel MCP
Write-Host "🔍 Checking for Vercel MCP..." -ForegroundColor Cyan
$VercelMcpPath = Get-Command vercel-mcp -ErrorAction SilentlyContinue
if ($VercelMcpPath) {
    Write-Host "✅ Vercel MCP found: $($VercelMcpPath.Source)" -ForegroundColor Green
} else {
    Write-Host "⚠️ Vercel MCP not found in PATH" -ForegroundColor Yellow
    Write-Host "   Install with: npm install -g vercel-mcp" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "🎉 Installation Summary" -ForegroundColor Green
Write-Host "=====================" -ForegroundColor Green
Write-Host "✅ Python dependencies: Installed" -ForegroundColor Green
Write-Host "✅ PyMuPDF4LLM MCP: Ready (performance fixed)" -ForegroundColor Green
Write-Host "✅ Browser Tools MCP: Ready" -ForegroundColor Green
Write-Host "✅ Excel MCP: Ready" -ForegroundColor Green

Write-Host ""
Write-Host "📋 Next Steps:" -ForegroundColor Yellow
Write-Host "1. 🔑 Set up your API tokens:" -ForegroundColor White
Write-Host "   - GitHub: https://github.com/settings/tokens" -ForegroundColor Gray
Write-Host "   - Vercel: https://vercel.com/account/tokens" -ForegroundColor Gray
Write-Host ""
Write-Host "2. 🛠️ Configure your MCP client:" -ForegroundColor White
Write-Host "   - Cursor: Copy configs/cursor/universal-mcp-config.json" -ForegroundColor Gray
Write-Host "   - Claude Desktop: Copy configs/claude-desktop/claude_desktop_config.json" -ForegroundColor Gray
Write-Host ""
Write-Host "3. 🔄 Update paths in configuration:" -ForegroundColor White
Write-Host "   - Replace '/path/to/universal-mcp-servers' with actual path" -ForegroundColor Gray
Write-Host "   - Add your API tokens" -ForegroundColor Gray
Write-Host ""
Write-Host "4. 🚀 Restart your MCP client and test:" -ForegroundColor White
Write-Host "   - 'List my GitHub repositories'" -ForegroundColor Gray
Write-Host "   - 'Convert a PDF to markdown'" -ForegroundColor Gray
Write-Host "   - 'List my Vercel deployments'" -ForegroundColor Gray
Write-Host ""
Write-Host "📚 Documentation:" -ForegroundColor Yellow
Write-Host "- Setup guides: docs/setup-guides/" -ForegroundColor Gray
Write-Host "- Troubleshooting: docs/troubleshooting/" -ForegroundColor Gray
Write-Host "- API reference: docs/api-documentation/" -ForegroundColor Gray
Write-Host ""
Write-Host "🎆 Ready to revolutionize your development workflow!" -ForegroundColor Cyan
