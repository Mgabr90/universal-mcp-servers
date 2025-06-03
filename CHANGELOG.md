# Changelog

All notable changes to the Universal MCP Servers collection.

## [1.0.0] - 2025-06-03

### Added
- 🎉 Initial release of Universal MCP Servers collection
- 🐙 GitHub MCP Server integration (50+ tools)
- 🚀 Vercel MCP Server integration (11+ tools)  
- 📄 PyMuPDF4LLM MCP Server with performance fixes
- 🌐 Browser Tools MCP integration
- 📊 Excel MCP Server integration
- 🛠️ Comprehensive setup guides and documentation
- 💻 Cross-platform installation scripts
- 🔧 Troubleshooting guides and common solutions

### Performance Fixes

#### PyMuPDF4LLM MCP Server
- ⚡ **CRITICAL FIX**: Eliminated duplicate PDF processing in `save_path` mode
  - **Issue**: PDF was processed twice when using `save_path` parameter
  - **Impact**: 50% performance improvement for file save operations
  - **Solution**: Removed redundant `pymupdf4llm.to_markdown()` call
  
- 🛠️ **SERVER STARTUP FIX**: Fixed log level validation error
  - **Issue**: `ValueError: Invalid log level: info`
  - **Solution**: Added explicit environment variable and log level configuration
  - **Result**: Reliable server startup

### Configuration
- 📝 Universal configuration templates for Cursor IDE and Claude Desktop
- 🔒 Secure environment variable handling
- 🎯 Optimized settings for each MCP server

### Documentation
- 📚 Complete setup guides for all servers
- 🔍 API reference with 70+ tool descriptions
- 🚨 Common issues and solutions guide
- 📊 Performance optimization notes
- 💻 Installation scripts for Windows

### Repository Structure
```
servers/
├── pymupdf4llm-mcp/     # Performance-fixed PDF processing
configs/
├── cursor/              # Cursor IDE configurations
└── claude-desktop/      # Claude Desktop configurations
scripts/
├── setup/               # Installation scripts
└── windows/             # Windows-specific scripts
docs/
├── setup-guides/        # Detailed setup instructions
├── troubleshooting/     # Problem resolution guides
└── api-documentation/   # Complete API reference
```

### Server Coverage

#### GitHub MCP Server (50+ tools)
- Repository management (create, fork, search)
- Issue tracking (create, update, comment)
- Pull request workflows (create, review, merge)
- File operations (read, create, update, delete)
- Search capabilities (code, issues, repos, users)
- Notifications management
- Security alerts (code scanning, secrets)
- Branch and tag management
- User profile operations

#### Vercel MCP Server (11+ tools)
- Deployment management and monitoring
- Project configuration and settings
- Environment variables management
- Team collaboration tools
- Custom environment creation

#### PyMuPDF4LLM MCP Server (Performance Fixed)
- PDF to markdown conversion
- Image extraction and referencing
- Large file processing with chunking
- 50% performance improvement over original
- Reliable server startup

#### Browser Tools MCP
- Web navigation and interaction
- Screenshot capabilities
- Form filling and submission
- Content extraction

#### Excel MCP Server
- Sheet reading and writing
- Formula and table creation
- Screen capture (Windows)
- Data manipulation and formatting

### Quality Improvements
- ✅ Production-ready implementations
- ✅ Comprehensive error handling
- ✅ Performance optimizations applied
- ✅ Security best practices
- ✅ Cross-platform compatibility

### Testing
- 🧪 Automated test scripts for server verification
- 🔍 Dependency checking and validation
- 📊 Performance benchmarking tools

---

## Future Roadmap

### Planned Features
- 🔄 Auto-update mechanisms for MCP servers
- 🐳 Docker containerization for easy deployment
- 🔌 Additional MCP server integrations
- 📊 Advanced performance monitoring
- 🔒 Enhanced security features

### Performance Targets
- ⚡ Further optimization of PyMuPDF4LLM processing
- 🚀 GitHub API request optimization
- 📊 Memory usage improvements

### Documentation Enhancements
- 🎥 Video setup tutorials
- 📚 Interactive documentation
- 🌍 Multi-language support

---

**Contributors**: Universal MCP Servers Team  
**License**: MIT License  
**Repository**: https://github.com/Mgabr90/universal-mcp-servers
