# Universal MCP Servers Collection

A comprehensive collection of Model Context Protocol (MCP) servers including GitHub, Vercel, and PyMuPDF4LLM implementations with complete setup guides and utilities.

## 🚀 Featured MCP Servers

### 1. **GitHub MCP Server** 🐙
- **50+ GitHub tools** for repositories, issues, PRs, comments, and more
- Complete GitHub API integration
- Automated workflows and repository management
- **Status**: ✅ Fully functional

### 2. **Vercel MCP Server** 🌐
- Deployment management and automation
- Project configuration and environment variables
- Team and collaboration tools
- **Status**: ✅ Production ready

### 3. **PyMuPDF4LLM MCP Server** 📄
- PDF to Markdown conversion with image extraction
- Performance optimized (fixed duplicate processing bug)
- Support for large documents with chunked processing
- **Status**: ✅ Performance optimized & bug-fixed

## 📁 Repository Structure

```
├── servers/
│   ├── github-mcp/           # GitHub MCP Server implementation
│   ├── vercel-mcp/           # Vercel MCP Server implementation
│   └── pymupdf4llm-mcp/      # PyMuPDF4LLM MCP Server (fixed version)
├── configs/
│   ├── cursor/               # Cursor IDE configurations
│   ├── claude-desktop/       # Claude Desktop configurations
│   └── universal/            # Universal MCP configurations
├── scripts/
│   ├── windows/              # Windows PowerShell scripts
│   ├── setup/                # Setup and installation scripts
│   └── testing/              # Testing and debugging scripts
├── docs/
│   ├── setup-guides/         # Detailed setup instructions
│   ├── troubleshooting/      # Common issues and solutions
│   └── api-documentation/    # API documentation
└── examples/
    ├── workflows/            # Example workflows and use cases
    └── integrations/         # Integration examples
```

## 🔧 Quick Start

### Prerequisites
- **Windows 10/11** (PowerShell 7+)
- **Python 3.8+** (for PyMuPDF4LLM)
- **Node.js 18+** (for Vercel MCP)
- **GitHub Personal Access Token** (for GitHub MCP)
- **Vercel API Token** (for Vercel MCP)

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/Mgabr90/universal-mcp-servers.git
   cd universal-mcp-servers
   ```

2. **Choose your setup method**:
   - 🚀 **Quick Setup**: Run `scripts/setup/quick-install.ps1`
   - 📋 **Manual Setup**: Follow individual server guides in `docs/setup-guides/`
   - 🎯 **Custom Setup**: Use universal configuration templates

3. **Configure your MCP client**:
   - **Cursor IDE**: Copy configs from `configs/cursor/`
   - **Claude Desktop**: Copy configs from `configs/claude-desktop/`

## 📚 Documentation

### Setup Guides
- [🐙 GitHub MCP Setup Guide](docs/setup-guides/GITHUB_MCP_SETUP.md)
- [🌐 Vercel MCP Setup Guide](docs/setup-guides/VERCEL_MCP_SETUP.md)
- [📄 PyMuPDF4LLM MCP Setup Guide](docs/setup-guides/PYMUPDF4LLM_MCP_SETUP.md)
- [🎯 Universal MCP Configuration Guide](docs/setup-guides/UNIVERSAL_MCP_SETUP.md)

### Troubleshooting
- [❓ Common Issues & Solutions](docs/troubleshooting/COMMON_ISSUES.md)
- [🔧 Debugging MCP Connections](docs/troubleshooting/DEBUG_GUIDE.md)
- [⚡ Performance Optimization](docs/troubleshooting/PERFORMANCE.md)

## 🌟 Key Features

### GitHub MCP Server
- ✅ **Repository Management**: Create, fork, manage repositories
- ✅ **Issue Tracking**: Create, update, comment on issues
- ✅ **Pull Requests**: Create, review, merge PRs
- ✅ **File Operations**: Read, create, update, delete files
- ✅ **Search Capabilities**: Code, issues, repositories, users
- ✅ **Notifications**: List, manage GitHub notifications
- ✅ **Security**: Code scanning, secret scanning alerts

### Vercel MCP Server
- ✅ **Deployment Management**: Create, list, manage deployments
- ✅ **Project Configuration**: Environment variables, settings
- ✅ **Team Collaboration**: Team management and permissions
- ✅ **Custom Environments**: Branch-specific deployments

### PyMuPDF4LLM MCP Server
- ✅ **PDF Processing**: Convert PDFs to markdown format
- ✅ **Image Extraction**: Extract and reference PDF images
- ✅ **Performance Optimized**: Fixed duplicate processing bug
- ✅ **Large File Support**: Chunked processing for large documents
- ✅ **Flexible Output**: Direct content or file save options

## 🚨 Recent Fixes & Improvements

### PyMuPDF4LLM Performance Fix
- **Issue**: Duplicate PDF processing causing 2x processing time
- **Solution**: Eliminated redundant `pymupdf4llm.to_markdown()` calls
- **Impact**: Up to 50% performance improvement for file operations
- **Status**: ✅ Fixed and tested

### GitHub MCP Token Permissions
- **Issue**: Limited token scopes preventing issue creation
- **Solution**: Updated token permissions guide
- **Status**: ✅ Documented and verified

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## 📄 License

MIT License - see [LICENSE](LICENSE) file for details.

## 🔗 Related Resources

- [MCP Official Documentation](https://modelcontextprotocol.io/)
- [Anthropic MCP Examples](https://github.com/anthropics/mcp-examples)
- [Claude Desktop Documentation](https://docs.anthropic.com/claude/docs)
- [Cursor IDE Documentation](https://docs.cursor.com/)

## 💡 Support

If you encounter issues:
1. Check the [troubleshooting guide](docs/troubleshooting/COMMON_ISSUES.md)
2. Review existing [GitHub issues](https://github.com/Mgabr90/universal-mcp-servers/issues)
3. Create a new issue with detailed information

---

**Made with ❤️ for the MCP community**