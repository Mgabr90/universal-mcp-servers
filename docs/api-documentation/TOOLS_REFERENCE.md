# MCP Tools Reference

Complete reference for all tools available in the Universal MCP Servers collection.

## 🐙 GitHub MCP Server (50+ Tools)

### Repository Management
- `create_repository` - Create new GitHub repository
- `fork_repository` - Fork repository to your account
- `search_repositories` - Search for repositories
- `get_file_contents` - Read file contents from repository
- `create_or_update_file` - Create or update files
- `delete_file` - Delete files from repository
- `push_files` - Push multiple files in single commit

### Branch Management
- `create_branch` - Create new branch
- `list_branches` - List repository branches
- `get_commit` - Get commit details
- `list_commits` - List commits in branch

### Issue Management
- `create_issue` - Create new issue
- `get_issue` - Get issue details
- `list_issues` - List repository issues
- `update_issue` - Update existing issue
- `add_issue_comment` - Add comment to issue
- `get_issue_comments` - Get issue comments
- `assign_copilot_to_issue` - Assign Copilot to issue

### Pull Request Management
- `create_pull_request` - Create new pull request
- `get_pull_request` - Get PR details
- `list_pull_requests` - List repository PRs
- `update_pull_request` - Update existing PR
- `merge_pull_request` - Merge pull request
- `get_pull_request_files` - Get changed files
- `get_pull_request_diff` - Get PR diff
- `get_pull_request_comments` - Get PR comments
- `get_pull_request_reviews` - Get PR reviews
- `get_pull_request_status` - Get PR status
- `update_pull_request_branch` - Update PR branch

### Review Management
- `create_pending_pull_request_review` - Create pending review
- `create_and_submit_pull_request_review` - Create and submit review
- `submit_pending_pull_request_review` - Submit pending review
- `delete_pending_pull_request_review` - Delete pending review
- `request_copilot_review` - Request Copilot review

### Search & Discovery
- `search_code` - Search code across repositories
- `search_issues` - Search for issues
- `search_users` - Search for users

### Notifications
- `list_notifications` - List GitHub notifications
- `get_notification_details` - Get notification details
- `mark_all_notifications_read` - Mark notifications as read
- `dismiss_notification` - Dismiss notification
- `manage_notification_subscription` - Manage subscriptions

### Security
- `list_code_scanning_alerts` - List code scanning alerts
- `get_code_scanning_alert` - Get code scanning alert details
- `list_secret_scanning_alerts` - List secret scanning alerts
- `get_secret_scanning_alert` - Get secret scanning alert details

### Tags & Releases
- `list_tags` - List repository tags
- `get_tag` - Get tag details

### User Management
- `get_me` - Get authenticated user details

## 🚀 Vercel MCP Server (11+ Tools)

### Deployment Management
- `vercel-list-all-deployments` - List deployments with filtering
  - Parameters: `app`, `limit`, `projectId`, `state`, `target`
  - Returns: Array of deployment objects

- `vercel-get-deployment` - Get specific deployment details
  - Parameters: `idOrUrl`, `teamId` (optional)
  - Returns: Detailed deployment object

- `vercel-list-deployment-files` - List files in deployment
  - Parameters: `id`, `slug` (optional), `teamId` (optional)
  - Returns: Array of file objects

- `vercel-create-deployment` - Create new deployment
  - Parameters: Multiple deployment configuration options
  - Returns: New deployment object

### Project Management
- `vercel-list-projects` - List all projects
  - Parameters: `from`, `gitForkProtection`, `limit`, `repoUrl`, `search`, `teamId`
  - Returns: Array of project objects

- `vercel-create-project` - Create new project
  - Parameters: `name`, configuration options
  - Returns: New project object

### Environment Management
- `vercel-get-environments` - Get environment variables
  - Parameters: `idOrName` (project ID or name)
  - Returns: Environment variables object

- `vercel-create-environment-variables` - Create environment variables
  - Parameters: `projectId`, `environmentVariables` array
  - Returns: Created variables

- `vercel-create-custom-environment` - Create custom environment
  - Parameters: `idOrName`, `name`, `description`, `branchMatcher`
  - Returns: New environment object

### Team Management
- `vercel-list-all-teams` - List all teams
  - Parameters: `limit`, `since`, `teamId`, `until`
  - Returns: Array of team objects

- `vercel-create-team` - Create new team
  - Parameters: `slug`, `name` (optional)
  - Returns: New team object

## 📄 PyMuPDF4LLM MCP Server (Performance Fixed)

### PDF Processing
- `convert_pdf_to_markdown` - Convert PDF to markdown with image extraction
  - **Parameters:**
    - `file_path` (required): Absolute path to PDF file
    - `image_path` (optional): Directory to save extracted images
    - `save_path` (optional): Path to save markdown file
  - **Returns:**
    - `success`: Boolean indicating success/failure
    - `markdown_content`: Direct markdown content (if no save_path)
    - `markdown_path`: Path to saved file (if save_path provided)
    - `tips`: Usage tips and information
    - `error`: Error message (if failed)
  - **Performance:** 50% faster than original (fixed duplicate processing)

## 🌐 Browser Tools MCP

### Navigation
- `navigate` - Navigate to URL
- `go_back` - Navigate back
- `go_forward` - Navigate forward
- `refresh` - Refresh page

### Interaction
- `click` - Click element
- `type` - Type text into element
- `scroll` - Scroll page
- `hover` - Hover over element

### Content Extraction
- `screenshot` - Take page screenshot
- `get_page_content` - Extract page text content
- `get_element_text` - Get specific element text
- `get_page_title` - Get page title

### Form Interaction
- `fill_form` - Fill form fields
- `submit_form` - Submit form
- `select_option` - Select dropdown option

## 📊 Excel MCP Server

### Sheet Management
- `excel_describe_sheets` - List sheet information
  - Parameters: `file_path`
  - Returns: Array of sheet details

- `excel_read_sheet` - Read sheet values with pagination
  - Parameters: `file_path`, `sheet_name`, `start_row`, `end_row`
  - Returns: Cell values and formulas

- `excel_write_to_sheet` - Write values/formulas to sheet
  - Parameters: `file_path`, `sheet_name`, `data`, `start_cell`
  - Returns: Success confirmation

### Table Operations
- `excel_create_table` - Create Excel table
  - Parameters: `file_path`, `sheet_name`, `range`, `table_name`
  - Returns: Table creation confirmation

- `excel_copy_sheet` - Copy sheet within workbook
  - Parameters: `file_path`, `source_sheet`, `target_sheet`
  - Returns: Copy confirmation

### Visualization
- `excel_screen_capture` - Screenshot Excel sheet (Windows only)
  - Parameters: `file_path`, `sheet_name`, `output_path`
  - Returns: Screenshot file path

## 🎯 Usage Patterns

### GitHub Workflow Example
```
1. "Search for Python repositories with machine learning"
2. "Fork the most popular one"
3. "Create a new branch called 'feature-improvement'"
4. "Create an issue about adding documentation"
5. "Create a pull request for the documentation"
```

### Vercel Deployment Example
```
1. "List my recent deployments"
2. "Create a new project called 'my-nextjs-app'"
3. "Set up environment variables for production"
4. "Deploy the latest version"
```

### PDF Processing Example
```
1. "Convert this technical manual PDF to markdown"
2. "Extract images and save them to a separate folder"
3. "Save the complete markdown file for large documents"
```

### Excel Automation Example
```
1. "Read the sales data from the first sheet"
2. "Create a summary table with totals"
3. "Add formulas to calculate percentages"
4. "Take a screenshot of the final result"
```

## ⚡ Performance Notes

### PyMuPDF4LLM Optimizations
- **Original Issue**: PDF processed twice in save_path mode
- **Fix Applied**: Eliminated duplicate processing
- **Performance Gain**: 50% faster file operations
- **Memory Usage**: Reduced by avoiding duplicate content

### Recommended Usage
- **Large PDFs**: Always use `save_path` parameter
- **GitHub Operations**: Use search before creating to avoid duplicates
- **Vercel Deployments**: Check existing deployments before creating new ones
- **Excel Files**: Use pagination for large sheets

---

📚 **For detailed parameter descriptions and examples, see individual server documentation in the `docs/` directory.**
