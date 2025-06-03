# PyMuPDF4LLM MCP Server (Performance Optimized)

🚀 **Performance-optimized version** of the PyMuPDF4LLM MCP server with critical bug fixes.

## 🔧 Fixes Applied

### ⚡ Performance Fix: Eliminated Duplicate Processing
- **Issue**: PDF was processed twice when using `save_path` parameter
- **Impact**: 50% performance improvement for file save operations
- **Solution**: Removed redundant `pymupdf4llm.to_markdown()` call

### 🛠️ Server Startup Fix: Log Level Validation
- **Issue**: `ValueError: Invalid log level: info` preventing server startup
- **Solution**: Added explicit environment variable and log level configuration

## 📋 Features

- ✅ **PDF to Markdown conversion** with image extraction
- ✅ **Performance optimized** - no duplicate processing
- ✅ **Large file support** with chunked processing
- ✅ **Flexible output options** - direct content or file save
- ✅ **Image extraction** and proper referencing

## 🚀 Installation

1. **Install dependencies**:
   ```bash
   pip install mcp[cli] pydantic pymupdf4llm typer
   ```

2. **Run the server**:
   ```bash
   python app.py
   ```

## 📖 Usage

The server provides one main tool:

### `convert_pdf_to_markdown`

**Parameters:**
- `file_path` (required): Absolute path to PDF file
- `image_path` (optional): Directory to save extracted images
- `save_path` (optional): Path to save markdown file

**Examples:**

```python
# Convert and return content directly
result = convert_pdf_to_markdown(
    file_path="/path/to/document.pdf"
)

# Convert and save to file (recommended for large PDFs)
result = convert_pdf_to_markdown(
    file_path="/path/to/document.pdf",
    save_path="/path/to/output.md",
    image_path="/path/to/images/"
)
```

## 🎯 Integration

### Cursor IDE Configuration

Add to your MCP settings:

```json
{
  "name": "PyMuPDF4LLM MCP (Fixed)",
  "command": "python",
  "arguments": ["/path/to/universal-mcp-servers/servers/pymupdf4llm-mcp/app.py"],
  "env": {
    "LOG_LEVEL": "INFO"
  }
}
```

### Claude Desktop Configuration

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

## 📊 Performance Comparison

| Operation | Before Fix | After Fix | Improvement |
|-----------|------------|-----------|-------------|
| Direct content | ✅ Normal | ✅ Normal | No change |
| File save | 🐌 2x processing | ⚡ 1x processing | **50% faster** |
| Large PDFs | 🐌 Very slow | ⚡ Optimized | **Significant** |

## 🔄 Migration from Original

If you're using the original pymupdf4llm-mcp server:

1. **Backup your configuration**
2. **Replace the app.py file** with this fixed version
3. **Update your MCP client configuration** to use the new path
4. **Restart your MCP client**

## 📝 Changes Made

```python
# BEFORE (Original - had duplicate processing)
content = pymupdf4llm.to_markdown(file_path, write_images=True, image_path=image_path.as_posix())
if save_path:
    save_path: Path = Path(save_path).expanduser().resolve()
    save_path.parent.mkdir(parents=True, exist_ok=True)
    content = pymupdf4llm.to_markdown(file_path, write_images=True, image_path=image_path.as_posix())  # DUPLICATE!
    with open(save_path, "w", encoding="utf-8") as f:
        f.write(content)

# AFTER (Fixed - reuses content)
content = pymupdf4llm.to_markdown(file_path, write_images=True, image_path=image_path.as_posix())
if save_path:
    save_path: Path = Path(save_path).expanduser().resolve()
    save_path.parent.mkdir(parents=True, exist_ok=True)
    # Fixed: Remove duplicate processing - reuse existing content
    with open(save_path, "w", encoding="utf-8") as f:
        f.write(content)
```

## 🐛 Original Issues

1. **Duplicate Processing Bug**: 
   - PDF processed twice in save_path mode
   - Caused 2x processing time
   - Fixed by reusing content variable

2. **Log Level Validation Error**:
   - Server failed to start with log level validation error
   - Fixed with explicit environment setup

## 📞 Support

- **Original Project**: [pymupdf/pymupdf4llm-mcp](https://github.com/pymupdf/pymupdf4llm-mcp)
- **PyMuPDF4LLM Documentation**: [pymupdf.readthedocs.io](https://pymupdf.readthedocs.io/en/latest/pymupdf4llm/)
- **This Fixed Version**: [universal-mcp-servers](https://github.com/Mgabr90/universal-mcp-servers)

---

**Note**: This is a performance-optimized fork of the original pymupdf4llm-mcp server with critical bug fixes applied.
