# 🌍 Universal MCP Servers Collection

> **A comprehensive, production-ready collection of Model Context Protocol (MCP) servers with performance optimizations, bug fixes, and universal configurations.**

[![GitHub](https://img.shields.io/badge/GitHub-MCP%20Ready-success?logo=github)](https://github.com/Mgabr90/universal-mcp-servers)
[![Vercel](https://img.shields.io/badge/Vercel-Deployment%20Ready-blue?logo=vercel)](https://vercel.com)
[![PyMuPDF4LLM](https://img.shields.io/badge/PyMuPDF4LLM-Performance%20Fixed-green?logo=python)](https://pymupdf.readthedocs.io)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

---

## 🚀 What's Included

### **🎯 5 Production-Ready MCP Servers** 

| Server | Tools | Status | Key Features |
|--------|-------|--------|-------------|
| **🐙 GitHub MCP** | 50+ | ✅ Fully Functional | Repository management, Issues, PRs, Search, Security alerts |
| **🚀 Vercel MCP** | 11+ | ✅ Production Ready | Deployments, Projects, Environment variables, Teams |
| **📄 PyMuPDF4LLM MCP** | 1 | ✅ Performance Fixed | PDF processing **50% faster** than original |
| **🌐 Browser Tools MCP** | 15+ | ✅ Ready | Web navigation, Screenshots, Form automation |
| **📊 Excel MCP** | 6+ | ✅ Ready | Excel manipulation, Formulas, Screen capture |

### **🔧 Performance Fixes Applied**

#### 🚨 **CRITICAL PyMuPDF4LLM Performance Bug Fixed**
- **Issue**: PDF processed **twice** when using `save_path` (2x processing time)
- **Solution**: Eliminated duplicate `pymupdf4llm.to_markdown()` calls  
- **Result**: **50% performance improvement** for file operations
- **Additional Fix**: Server startup log level validation error resolved

---

## 📊 Quick Comparison

### **Before vs After Performance**
| Operation | Original | Fixed Version | Improvement |
|-----------|----------|---------------|-------------|
| PDF Direct Content | ⚡ Fast | ⚡ Fast | No change |
| PDF File Save | 🐌 2x processing | ⚡ 1x processing | **50% faster** |
| Large PDFs (100+ pages) | 🐌 Very slow | ⚡ Optimized | **Significant** |
| Server Startup | ❌ Failed | ✅ Reliable | **Fixed** |

---

## 🛠️ Quick Start

### **1. Clone & Install**
```bash
git clone https://github.com/Mgabr90/universal-mcp-servers.git
cd universal-mcp-servers

# Quick installation (Windows)
.\scripts\setup\quick-install.ps1
```

### **2. Configure Your Client**

**🎯 Cursor IDE:**
```json
{
  "mcpServers": {
    "github-universal": {
      "command": "github-mcp-server",
      "env": { "GITHUB_PERSONAL_ACCESS_TOKEN": "your_token" }
    },
    "pymupdf4llm-fixed": {
      "command": "python",
      "args": ["C:/path/to/universal-mcp-servers/servers/pymupdf4llm-mcp/app.py"]
    }
  }
}
```

**💬 Claude Desktop:**
- Copy `configs/claude-desktop/claude_desktop_config.json`
- Update paths and add your API tokens
- Restart Claude Desktop

### **3. Test Your Setup**
```
"List my GitHub repositories"
"Convert this PDF to markdown"
"List my Vercel deployments"
"Take a screenshot of this webpage"
"Read data from this Excel file"
```

---

## 🎯 Real-World Usage Examples

### **GitHub Workflow Automation**
```
🤖 "Search for Python repositories with machine learning topics"
🤖 "Fork the most popular one to my account"
🤖 "Create a new branch called 'feature-documentation'"
🤖 "Create an issue about improving the README"
🤖 "Create a pull request with documentation improvements"
```

### **PDF Processing Pipeline**
```
🤖 "Convert this aviation regulation PDF to markdown"
🤖 "Extract all images and save them to a separate folder"
🤖 "Process this 200-page technical manual efficiently"
📊 Result: 50% faster processing than original implementation
```

### **Vercel Deployment Management**
```
🤖 "List my recent deployments and their status"
🤖 "Create a new project called 'universal-dashboard'"
🤖 "Set up environment variables for production"
🤖 "Deploy the latest version with custom domains"
```

### **Excel Data Analysis**
```
🤖 "Read the sales data from the Q4 spreadsheet"
🤖 "Create a summary table with totals and percentages"
🤖 "Add formulas to calculate year-over-year growth"
🤖 "Take a screenshot of the final dashboard"
```

---

## 📁 Repository Structure

```
📦 universal-mcp-servers/
├── 🖥️  servers/
│   ├── 📄 pymupdf4llm-mcp/     # Performance-fixed PDF processing
│   │   ├── app.py             # ⚡ 50% faster implementation
│   │   ├── pyproject.toml     # Dependencies and configuration
│   │   └── README.md          # Performance fix documentation
├── ⚙️  configs/
│   ├── 🎯 cursor/             # Cursor IDE configurations
│   └── 💬 claude-desktop/     # Claude Desktop configurations
├── 📜 scripts/
│   ├── 🛠️  setup/             # Installation and setup scripts
│   └── 🪟 windows/           # Windows-specific utilities
├── 📚 docs/
│   ├── 📖 setup-guides/       # Detailed setup instructions
│   ├── 🆘 troubleshooting/    # Problem resolution guides
│   └── 📋 api-documentation/  # Complete API reference
└── 📄 README.md              # This file
```

---

## 🔧 Server Details

### **🐙 GitHub MCP Server (50+ Tools)**

**🎯 Repository Management:**
- `create_repository`, `fork_repository`, `search_repositories`
- `get_file_contents`, `create_or_update_file`, `delete_file`, `push_files`

**📋 Issue & PR Workflows:**
- `create_issue`, `update_issue`, `add_issue_comment`
- `create_pull_request`, `merge_pull_request`, `request_copilot_review`

**🔍 Search & Discovery:**
- `search_code`, `search_issues`, `search_users`, `search_repositories`

**🔔 Notifications:**
- `list_notifications`, `mark_all_notifications_read`, `dismiss_notification`

**🔒 Security:**
- `list_code_scanning_alerts`, `list_secret_scanning_alerts`

### **🚀 Vercel MCP Server (11+ Tools)**

**📦 Deployment Management:**
- `vercel-list-all-deployments`, `vercel-get-deployment`
- `vercel-create-deployment`, `vercel-list-deployment-files`

**🏗️ Project Configuration:**
- `vercel-list-projects`, `vercel-create-project`
- `vercel-get-environments`, `vercel-create-environment-variables`

**👥 Team Management:**
- `vercel-list-all-teams`, `vercel-create-team`

### **📄 PyMuPDF4LLM MCP (Performance Fixed)**

**⚡ PDF Processing:**
- `convert_pdf_to_markdown` - **50% faster** than original
- Image extraction and referencing
- Large file support with chunking
- Reliable server startup

**🔧 Technical Improvements:**
```python
# ❌ Original (slow - duplicate processing)
content = pymupdf4llm.to_markdown(file_path)
if save_path:
    content = pymupdf4llm.to_markdown(file_path)  # DUPLICATE!

# ✅ Fixed (fast - single processing)
content = pymupdf4llm.to_markdown(file_path)
if save_path:
    # Reuse existing content - 50% faster!
    with open(save_path, "w") as f:
        f.write(content)
```

### **🌐 Browser Tools MCP (15+ Tools)**
- Web navigation and interaction
- Screenshot and content extraction
- Form automation and submission

### **📊 Excel MCP Server (6+ Tools)**
- Sheet reading and writing
- Formula and table creation
- Screen capture (Windows)

---

## 🎨 Benefits of This Collection

### **🌍 Universal Compatibility**
- ✅ **Works everywhere** - any workspace, any directory
- ✅ **No per-project setup** required
- ✅ **Consistent tool availability** across all projects

### **⚡ Performance Optimized**
- ✅ **50% faster PDF processing** (fixed duplicate bug)
- ✅ **Reliable server startup** (fixed log level validation)
- ✅ **Efficient API usage** across all servers

### **🏗️ Production Ready**
- ✅ **Based on popular packages** with proven track records
- ✅ **Comprehensive error handling** and logging
- ✅ **Security best practices** for token management

### **📚 Developer Friendly**
- ✅ **Complete documentation** and setup guides
- ✅ **Troubleshooting assistance** for common issues
- ✅ **Example configurations** for popular MCP clients

---

## 📋 Prerequisites

- **🪟 Windows 10/11** (PowerShell 7+)
- **🐍 Python 3.10+** (for PyMuPDF4LLM MCP)
- **📦 Node.js 18+** (for Vercel, Browser, Excel MCPs)
- **🔑 API Tokens**:
  - GitHub Personal Access Token (repo, read:user, notifications scopes)
  - Vercel API Token (full access)

---

## 🔧 Installation Options

### **🚀 Option 1: Quick Install (Recommended)**
```powershell
# Clone repository
git clone https://github.com/Mgabr90/universal-mcp-servers.git
cd universal-mcp-servers

# Run quick installer
.\scripts\setup\quick-install.ps1
```

### **📚 Option 2: Manual Setup**
1. Follow individual guides in `docs/setup-guides/`
2. Copy configurations from `configs/`
3. Update paths and tokens
4. Test each server individually

### **🎯 Option 3: Custom Configuration**
1. Use universal templates in `configs/`
2. Select only the servers you need
3. Customize settings for your workflow

---

## 🆘 Troubleshooting

### **Common Issues & Quick Fixes**

| Issue | Quick Fix |
|-------|----------|
| 🚨 PyMuPDF4LLM slow processing | ✅ Use our fixed version |
| 🔒 GitHub 403 permission error | Update token scopes (repo, notifications) |
| 🚫 Server not starting | Check PATH and dependencies |
| ⚙️ Config not loading | Validate JSON, restart client |
| 📂 Path errors | Use absolute paths, escape backslashes |
| 📦 NPX not found | Install Node.js |

**📖 Detailed Solutions**: See `docs/troubleshooting/COMMON_ISSUES.md`

---

## 🤝 Contributing

1. **🍴 Fork** the repository
2. **🌿 Create** a feature branch (`git checkout -b feature/amazing-feature`)
3. **💾 Commit** your changes (`git commit -m 'Add amazing feature'`)
4. **📤 Push** to the branch (`git push origin feature/amazing-feature`)
5. **🔄 Open** a Pull Request

---

## 📄 License

**MIT License** - see [LICENSE](LICENSE) file for details.

### **Third-Party Acknowledgments**
- **PyMuPDF4LLM**: Original by [pymupdf/pymupdf4llm-mcp](https://github.com/pymupdf/pymupdf4llm-mcp) (modified for performance)
- **Vercel MCP**: [nganiet/mcp-vercel](https://github.com/nganiet/mcp-vercel)
- **Browser Tools**: [@agentdeskai/browser-tools-mcp](https://www.npmjs.com/package/@agentdeskai/browser-tools-mcp)
- **Excel MCP**: [@negokaz/excel-mcp-server](https://www.npmjs.com/package/@negokaz/excel-mcp-server)

---

## 🌟 What You Get

✅ **70+ Professional Tools** ready for immediate use  
✅ **Performance Optimizations** with measurable improvements  
✅ **Universal Compatibility** across development environments  
✅ **Production-Grade Reliability** for mission-critical workflows  
✅ **Comprehensive Documentation** for quick onboarding  
✅ **Active Maintenance** with ongoing improvements  

---

## 🎯 Ready to Transform Your Workflow?

```bash
git clone https://github.com/Mgabr90/universal-mcp-servers.git
cd universal-mcp-servers
.\scripts\setup\quick-install.ps1
```

🚀 **Your AI assistant will have universal access to:**
- Complete GitHub workflow automation
- Lightning-fast PDF processing 
- Seamless Vercel deployment management
- Advanced web browser control
- Powerful Excel data manipulation

---

<div align="center">

**Made with ❤️ for the MCP community**

[⭐ Star this repo](https://github.com/Mgabr90/universal-mcp-servers) • [📖 Read the docs](docs/) • [🐛 Report issues](https://github.com/Mgabr90/universal-mcp-servers/issues) • [💬 Get support](https://github.com/Mgabr90/universal-mcp-servers/discussions)

</div>
