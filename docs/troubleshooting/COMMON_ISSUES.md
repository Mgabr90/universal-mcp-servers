# Common Issues & Solutions

## 🚨 Most Common Issues

### 1. **Server Startup Failures**

#### PyMuPDF4LLM: "Invalid log level" Error
```
ValueError: Invalid log level: info. Expected one of: ['DEBUG', 'INFO', 'WARNING', 'ERROR', 'CRITICAL']
```

**Solution:**
- ✅ **Fixed in this repository** - use our performance-optimized version
- Ensure `LOG_LEVEL=INFO` environment variable is set
- Use the fixed app.py from `servers/pymupdf4llm-mcp/`

#### GitHub MCP: "Command not found"
```
Error: github-mcp-server: command not found
```

**Solutions:**
1. **Download binary**: Get from GitHub releases
2. **Add to PATH**: Ensure binary location is in system PATH
3. **Use full path**: Specify absolute path in configuration

#### Vercel MCP: "Command not found"
```
Error: vercel-mcp: command not found
```

**Solution:**
```bash
npm install -g vercel-mcp
# or use npx
npx vercel-mcp
```

### 2. **Authentication Issues**

#### GitHub: "403 Resource not accessible by personal access token"
```
{"error": {"code": -32603, "message": "failed to create issue: POST https://api.github.com/repos/user/repo/issues: 403 Resource not accessible by personal access token"}}
```

**Solution:**
1. Update GitHub token permissions:
   - Go to https://github.com/settings/tokens
   - Add scopes: `repo`, `read:user`, `notifications`, `public_repo`
   - Regenerate token if needed

2. Update environment variable:
   ```bash
   export GITHUB_PERSONAL_ACCESS_TOKEN="your_new_token"
   ```

#### Vercel: "Invalid API token"
```
Error: Invalid Vercel API token
```

**Solution:**
1. Generate new token at: https://vercel.com/account/tokens
2. Ensure full access scope
3. Update environment variable:
   ```bash
   export VERCEL_API_TOKEN="your_new_token"
   ```

### 3. **Performance Issues**

#### PyMuPDF4LLM: Slow PDF Processing
**Symptoms:**
- PDFs take 2x longer than expected
- Large files are very slow

**Solution:**
- ✅ **Fixed in this repository** - use our performance-optimized version
- Original bug: PDF processed twice in save_path mode
- Our fix: Eliminated duplicate processing (50% faster)

#### Excel MCP: Slow Operations
**Solution:**
- Increase paging limit:
  ```json
  "env": {
    "EXCEL_MCP_PAGING_CELLS_LIMIT": "4000"
  }
  ```

### 4. **Path Issues**

#### Windows Path Problems
```
Error: File not found: /c/path/to/file
```

**Solutions:**
1. Use absolute Windows paths:
   ```
   C:\\Users\\Username\\file.pdf
   ```

2. Use forward slashes:
   ```
   C:/Users/Username/file.pdf
   ```

3. Escape backslashes in JSON:
   ```json
   "args": ["C:\\path\\to\\app.py"]
   ```

#### Linux/Mac Path Issues
```
Error: Permission denied
```

**Solution:**
```bash
chmod +x /path/to/mcp-server
```

### 5. **Configuration Issues**

#### Cursor: MCP Server Not Loading
**Symptoms:**
- Server appears in settings but tools not available
- No error messages

**Solutions:**
1. Check configuration syntax:
   ```bash
   # Validate JSON
   python -m json.tool ~/.cursor/mcp.json
   ```

2. Restart Cursor completely

3. Check server logs:
   ```bash
   # Add logging to troubleshoot
   "env": {
     "LOG_LEVEL": "DEBUG"
   }
   ```

#### Claude Desktop: Config Not Working
**Common mistakes:**
- Wrong config file location
- Invalid JSON syntax
- Missing environment variables

**Solutions:**
1. Verify config location:
   - **Windows**: `%APPDATA%\Claude\claude_desktop_config.json`
   - **Mac**: `~/Library/Application Support/Claude/claude_desktop_config.json`
   - **Linux**: `~/.config/Claude/claude_desktop_config.json`

2. Validate JSON syntax
3. Restart Claude Desktop

### 6. **Node.js/NPM Issues**

#### "npx not found"
```
Error: npx: command not found
```

**Solution:**
```bash
# Install Node.js (includes npx)
# Windows: Download from nodejs.org
# Mac: brew install node
# Linux: sudo apt install nodejs npm
```

#### Package Installation Failures
```
Error: Failed to install @agentdeskai/browser-tools-mcp
```

**Solutions:**
1. Clear npm cache:
   ```bash
   npm cache clean --force
   ```

2. Try global installation:
   ```bash
   npm install -g @agentdeskai/browser-tools-mcp
   ```

3. Use yarn instead:
   ```bash
   yarn global add @agentdeskai/browser-tools-mcp
   ```

### 7. **Python Dependencies**

#### Missing Dependencies
```
ModuleNotFoundError: No module named 'mcp'
```

**Solution:**
```bash
pip install mcp[cli] pydantic pymupdf4llm typer
```

#### Version Conflicts
```
Error: Incompatible package versions
```

**Solution:**
```bash
# Create virtual environment
python -m venv mcp-env
source mcp-env/bin/activate  # Linux/Mac
# or
mcp-env\Scripts\activate     # Windows

pip install -r requirements.txt
```

## 🔧 Debug Tools

### Test Server Connectivity
```bash
# Test if server responds
echo '{"jsonrpc": "2.0", "id": 1, "method": "tools/list", "params": {}}' | your-mcp-server
```

### Check Environment Variables
```bash
# Windows
echo $env:GITHUB_PERSONAL_ACCESS_TOKEN
echo $env:VERCEL_API_TOKEN

# Linux/Mac
echo $GITHUB_PERSONAL_ACCESS_TOKEN
echo $VERCEL_API_TOKEN
```

### Validate Configuration
```bash
# Validate JSON configuration
python -m json.tool ~/.cursor/mcp.json
python -m json.tool "%APPDATA%\Claude\claude_desktop_config.json"
```

## ℹ️ Getting Help

1. **Check server logs** for specific error messages
2. **Verify environment variables** are set correctly
3. **Test individual components** (Python, Node.js, tokens)
4. **Use debug mode** with `LOG_LEVEL=DEBUG`
5. **Check GitHub issues** in respective repositories

## 🎆 Quick Fixes Summary

| Issue | Quick Fix |
|-------|----------|
| PyMuPDF4LLM slow | ✅ Use our fixed version |
| GitHub 403 error | Update token permissions |
| Server not starting | Check PATH and dependencies |
| Config not loading | Validate JSON, restart client |
| Path errors | Use absolute paths, escape backslashes |
| NPX not found | Install Node.js |
| Python modules missing | `pip install mcp[cli]` |

---

📞 **Still having issues?** Create an issue on GitHub with:
- Your operating system
- MCP client (Cursor/Claude Desktop)
- Error messages
- Configuration file (with tokens removed)
