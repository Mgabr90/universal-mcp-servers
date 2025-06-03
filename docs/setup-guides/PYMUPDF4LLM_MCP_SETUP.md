# PyMuPDF4LLM MCP Server Setup Guide (Performance Fixed)

🚀 **Performance-optimized version** with critical bug fixes applied.

## 🚨 What Was Fixed

### ⚡ **Performance Bug: Duplicate PDF Processing**
- **Issue**: PDF was processed **twice** when using `save_path` parameter
- **Impact**: 50% performance penalty for file save operations
- **Solution**: Eliminated redundant `pymupdf4llm.to_markdown()` call
- **Result**: Up to **50% faster** processing for large PDFs

### 🛠️ **Server Startup Bug: Log Level Validation**
- **Issue**: `ValueError: Invalid log level: info` preventing server startup
- **Root Cause**: FastMCP expected uppercase log levels
- **Solution**: Added explicit environment variable and log level configuration
- **Result**: ✅ Server starts reliably

## 📦 Installation

### **Prerequisites**
- Python 3.10+
- pip package manager

### **Install Dependencies**
```bash
pip install mcp[cli] pydantic pymupdf4llm typer
```

### **Download Fixed Version**
```bash
git clone https://github.com/Mgabr90/universal-mcp-servers.git
cd universal-mcp-servers/servers/pymupdf4llm-mcp
```

## 🔧 Configuration

### **Cursor IDE Integration**

Add to your MCP settings (`.cursor/mcp.json`):

```json
{
  "mcpServers": {
    "pymupdf4llm-fixed": {
      "name": "PyMuPDF4LLM MCP (Performance Fixed)",
      "description": "PDF processing with performance optimizations",
      "command": "python",
      "args": ["C:/path/to/universal-mcp-servers/servers/pymupdf4llm-mcp/app.py"],
      "env": {
        "LOG_LEVEL": "INFO"
      },
      "transport": "stdio",
      "enabled": true
    }
  }
}
```

### **Claude Desktop Integration**

Add to `claude_desktop_config.json`:

```json
{
  "mcpServers": {
    "pymupdf4llm-fixed": {
      "command": "python",
      "args": ["/path/to/universal-mcp-servers/servers/pymupdf4llm-mcp/app.py"],
      "env": {
        "LOG_LEVEL": "INFO"
      }
    }
  }
}
```

## 🎯 Available Tools

### `convert_pdf_to_markdown`

Converts PDF files to markdown format with image extraction.

**Parameters:**
- `file_path` (required): Absolute path to PDF file
- `image_path` (optional): Directory to save extracted images
- `save_path` (optional): Path to save markdown file

**Returns:**
- Direct content (if no `save_path`)
- File path (if `save_path` provided)
- Success/error status

## 💡 Usage Examples

### **Basic Conversion**
```
"Convert the aviation manual PDF to markdown"
"Process this regulatory document and extract the text"
```

### **Advanced Usage with File Save**
```
"Convert the large technical manual PDF and save it as a markdown file"
"Process this PDF, extract images to a folder, and save the markdown"
```

### **Large Document Processing**
```
"Process this 100-page PDF and save it to avoid truncation"
"Convert the entire regulation document with all images"
```

## 📊 Performance Comparison

| Operation Type | Original Version | Fixed Version | Improvement |
|----------------|------------------|---------------|-------------|
| **Direct Content** | ✅ Fast | ✅ Fast | No change |
| **File Save** | 🐌 2x processing | ⚡ 1x processing | **50% faster** |
| **Large PDFs** | 🐌 Very slow | ⚡ Optimized | **Significant** |
| **Server Startup** | ❌ Failed | ✅ Reliable | **Fixed** |

## 🔍 Technical Details

### **Bug Fix Implementation**

**Before (Buggy):**
```python
# PDF processed twice - performance bug!
content = pymupdf4llm.to_markdown(file_path, write_images=True, image_path=image_path.as_posix())
if save_path:
    save_path: Path = Path(save_path).expanduser().resolve()
    save_path.parent.mkdir(parents=True, exist_ok=True)
    content = pymupdf4llm.to_markdown(file_path, write_images=True, image_path=image_path.as_posix())  # DUPLICATE!
    with open(save_path, "w", encoding="utf-8") as f:
        f.write(content)
```

**After (Fixed):**
```python
# Process PDF once and reuse content - performance optimized!
content = pymupdf4llm.to_markdown(file_path, write_images=True, image_path=image_path.as_posix())
if save_path:
    save_path: Path = Path(save_path).expanduser().resolve()
    save_path.parent.mkdir(parents=True, exist_ok=True)
    # Fixed: Remove duplicate processing - reuse existing content
    with open(save_path, "w", encoding="utf-8") as f:
        f.write(content)
```

### **Environment Configuration**
```python
# Fixed log level validation
os.environ.setdefault('LOG_LEVEL', 'INFO')
mcp = FastMCP("pymupdf4llm-mcp", log_level='INFO')
```

## 🧪 Testing

### **Test Server Startup**
```bash
python app.py
# Should start without errors
```

### **Test PDF Processing**
```python
# Via MCP client
result = convert_pdf_to_markdown(
    file_path="/path/to/test.pdf",
    save_path="/path/to/output.md"
)
```

### **Performance Test**
```bash
# Time the processing
time python -c "import pymupdf4llm; pymupdf4llm.to_markdown('large_file.pdf')"
```

## 🔄 Migration from Original

If you're using the original pymupdf4llm-mcp:

1. **Backup Current Setup**
   ```bash
   cp ~/.cursor/mcp.json ~/.cursor/mcp.json.backup
   ```

2. **Update Configuration**
   - Replace `app.py` path with fixed version
   - Add `LOG_LEVEL` environment variable

3. **Test the Migration**
   ```bash
   # Verify no duplicate processing
   tail -f mcp.log | grep "to_markdown"
   ```

4. **Restart MCP Client**
   - Restart Cursor or Claude Desktop
   - Test with a sample PDF

## 🐛 Troubleshooting

### **Common Issues**

1. **"Invalid log level" Error**
   ```bash
   # Solution: Ensure LOG_LEVEL is set
   export LOG_LEVEL=INFO
   ```

2. **"File not found" Error**
   ```bash
   # Verify path exists and is absolute
   python -c "from pathlib import Path; print(Path('/your/path').exists())"
   ```

3. **Performance Still Slow**
   ```bash
   # Verify you're using the fixed version
   grep -n "duplicate processing" app.py
   # Should find the fix comment
   ```

4. **Import Errors**
   ```bash
   # Reinstall dependencies
   pip install --upgrade mcp[cli] pydantic pymupdf4llm typer
   ```

### **Debug Mode**
```bash
# Run with debug logging
LOG_LEVEL=DEBUG python app.py
```

## 📚 Additional Resources

- **Original Project**: [pymupdf/pymupdf4llm-mcp](https://github.com/pymupdf/pymupdf4llm-mcp)
- **PyMuPDF4LLM Docs**: [pymupdf.readthedocs.io](https://pymupdf.readthedocs.io/en/latest/pymupdf4llm/)
- **MCP Protocol**: [modelcontextprotocol.io](https://modelcontextprotocol.io/)
- **Performance Fixes**: See `CHANGELOG.md` in this repository

## ✅ Verification

After setup, verify everything works:

1. **Server Starts**: ✅ No log level errors
2. **PDF Processing**: ✅ Fast conversion
3. **File Save**: ✅ No duplicate processing
4. **Large Files**: ✅ Efficient handling

🎉 **Your PyMuPDF4LLM MCP server is now performance-optimized and ready!**
