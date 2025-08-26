# Hugo Theme Development Container

This repository includes a complete development container setup for working with Hugo themes.

## Quick Start

1. **Open in Dev Container**: If you have VS Code with the Dev Containers extension, simply open this repository and VS Code will prompt you to reopen in a container.

2. **Alternative**: Use the Command Palette (`Ctrl+Shift+P`) and run "Dev Containers: Reopen in Container"

## What's Included

### Software
- **Hugo Extended** (latest version) - For building static sites with SCSS support
- **Node.js** (LTS) - For any npm dependencies
- **Git** - Version control
- **GitHub CLI** - For GitHub integration

### VS Code Extensions
- **Better TOML** - TOML file support for Hugo config
- **Markdown Lint** - Linting for markdown files
- **JSON** - Enhanced JSON support
- **Code Spell Checker** - Spell checking for content
- **Tailwind CSS** - CSS framework support
- **Auto Rename Tag** - HTML tag editing
- **Path Intellisense** - File path completion
- **Live Server** - For static file serving

### Development Scripts

The container includes convenient aliases for development tasks:

#### Primary Command
```bash
# Use the dev command for all tasks
dev serve     # Start Hugo development server
dev build     # Build the example site
dev clean     # Clean generated files
dev test      # Test theme (build + serve)
dev help      # Show help message
```

#### Quick Aliases
```bash
# Short aliases for common tasks
hugo-serve    # Same as 'dev serve'
hugo-build    # Same as 'dev build'
hugo-clean    # Same as 'dev clean'
hugo-test     # Same as 'dev test'
```

#### Original Script (if needed)
```bash
# Full path (also works)
./scripts/dev.sh serve
```

## Testing Your Theme

### Method 1: Using the Dev Command (Recommended)
```bash
dev serve
```

### Method 2: Using Quick Aliases
```bash
hugo-serve    # Start development server
hugo-build    # Build the site
hugo-clean    # Clean generated files
```

### Method 3: Manual Hugo Commands
```bash
cd exampleSite
hugo server --bind 0.0.0.0 --port 1313 --baseURL http://localhost:1313
```

The development server will be available at `http://localhost:1313`

## Port Forwarding

The dev container is configured to automatically forward port 1313 (Hugo's default port) so you can access your site from your host machine's browser.

## File Structure

```
.devcontainer/
├── devcontainer.json    # Dev container configuration
└── Dockerfile          # Custom container setup

scripts/
└── dev.sh              # Development helper script

exampleSite/            # Hugo example site for testing
├── config.toml         # Site configuration
├── content/            # Content files
└── themes/             # Theme symlink (auto-created)
```

## Customization

### Hugo Version
To use a different Hugo version, edit the `HUGO_VERSION` argument in `.devcontainer/Dockerfile`:

```dockerfile
ARG HUGO_VERSION=0.128.2
```

### Additional Extensions
Add more VS Code extensions in `.devcontainer/devcontainer.json`:

```json
"extensions": [
  "existing.extension",
  "new.extension"
]
```

### Additional Tools
Install additional tools by modifying the Dockerfile:

```dockerfile
RUN apt-get update && apt-get install -y \
    your-tool \
    another-tool
```

## Troubleshooting

### Theme Not Found Error
If you get a "theme not found" error, the symlink might not be created. Run:
```bash
./scripts/dev.sh serve
```
This will automatically create the necessary symlink.

### Port Already in Use
If port 1313 is already in use, you can specify a different port:
```bash
hugo server --port 1314
```

### Container Rebuild
If you make changes to the Dockerfile or devcontainer.json, rebuild the container:
1. Open Command Palette (`Ctrl+Shift+P`)
2. Run "Dev Containers: Rebuild Container"

## Features Testing

### Mermaid Diagrams
The theme includes Mermaid diagram support. Test it by:
1. Creating a post with `mermaid: true` in the front matter
2. Using the `{{</* mermaid */>}}` shortcode
3. Adding any Mermaid diagram syntax

### Example Posts
Check the `exampleSite/content/post/` directory for example posts demonstrating various features including Mermaid diagrams.
