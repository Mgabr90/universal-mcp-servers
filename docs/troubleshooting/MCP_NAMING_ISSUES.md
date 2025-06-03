# MCP Tool Naming Issues & Solutions

## 🚨 **Issue: Tool Name Length Limit Exceeded**

### **Problem**
```
Some tools have naming issues and may be filtered out:
github-universal: add_pull_request_review_comment_to_pending_review - Combined server and tool name length (65) exceeds 60 characters
```

### **Root Cause**
MCP has a **60-character limit** for combined server name + tool name lengths.

**Example of the issue:**
- Server name: `github-universal` (16 characters)
- Tool name: `add_pull_request_review_comment_to_pending_review` (49 characters)
- **Total: 65 characters > 60 character limit** ❌

### **✅ Solution: Shorten Server Names**

**Before (Problematic):**
```json
{
  "mcpServers": {
    "github-universal": {
      "name": "GitHub MCP (Universal)",
      "command": "github-mcp-server"
    }
  }
}
```

**After (Fixed):**
```json
{
  "mcpServers": {
    "github": {
      "name": "GitHub MCP",
      "command": "github-mcp-server"
    }
  }
}
```

### **📊 Character Count Analysis**

| Server Name | Longest Tool Name | Total Length | Status |
|-------------|------------------|--------------|--------|
| `github-universal` | `add_pull_request_review_comment_to_pending_review` | 65 chars | ❌ Too long |
| `github` | `add_pull_request_review_comment_to_pending_review` | 56 chars | ✅ Within limit |
| `vercel` | `create-environment-variables` | 35 chars | ✅ Within limit |
| `pdf` | `convert_pdf_to_markdown` | 26 chars | ✅ Within limit |

### **🛠️ Fixed Configuration Files**

Use these updated configuration files:

1. **Cursor IDE**: `configs/cursor/universal-mcp-config-fixed.json`
2. **Claude Desktop**: `configs/claude-desktop/claude_desktop_config_fixed.json`

### **🔍 How to Identify Naming Issues**

1. **Check MCP client logs** for naming warnings
2. **Test tool availability** - missing tools may be filtered
3. **Calculate character counts**:
   ```bash
   server_name="github-universal"
   tool_name="add_pull_request_review_comment_to_pending_review"
   total_length=$(( ${#server_name} + ${#tool_name} + 1 ))  # +1 for separator
   echo "Total length: $total_length characters"
   ```

### **📋 Recommended Server Names**

| Original | Recommended | Savings |
|----------|-------------|----------|
| `github-universal` | `github` | 9 chars |
| `vercel-universal` | `vercel` | 9 chars |
| `pymupdf4llm-fixed` | `pdf` | 12 chars |
| `browser-tools` | `browser` | 6 chars |
| `excel-universal` | `excel` | 9 chars |

### **🐛 Still Having Issues?**

If you're still experiencing naming issues after applying the fix:

1. **Identify problematic tools**:
   ```bash
   # Check which tools are being filtered
   # Look for warnings in MCP client logs
   ```

2. **Report to GitHub MCP Server project**:
   - Repository: https://github.com/anthropics/mcp-examples
   - Issue title: "Tool naming exceeds 60-character MCP limit"
   - Include specific tool names and character counts

### **🎯 Best Practices**

1. **Keep server names short** (under 10 characters when possible)
2. **Use descriptive but concise names**
3. **Test configuration** after changes
4. **Monitor MCP client logs** for warnings

### **🔧 Quick Fix Commands**

**Update your configuration:**
```powershell
# Backup current config
cp ~/.cursor/mcp.json ~/.cursor/mcp.json.backup

# Use fixed configuration
cp configs/cursor/universal-mcp-config-fixed.json ~/.cursor/mcp.json

# Restart Cursor IDE
```

**For Claude Desktop:**
```powershell
# Backup and update
cp "%APPDATA%\Claude\claude_desktop_config.json" "%APPDATA%\Claude\claude_desktop_config.json.backup"
cp configs/claude-desktop/claude_desktop_config_fixed.json "%APPDATA%\Claude\claude_desktop_config.json"

# Restart Claude Desktop
```

### **✅ Verification**

After applying the fix:
1. **Restart your MCP client**
2. **Test GitHub MCP tools**:
   ```
   "List my GitHub repositories"
   "Create a new issue in my repository"
   "Add a comment to pull request #1"
   ```
3. **Check for warnings** in client logs

---

**Note**: This is a known limitation in the MCP protocol. The fixes above resolve the issue by shortening server names while maintaining full functionality.
