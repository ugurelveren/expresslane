#!/bin/bash

# Post-create setup script for Hugo development container

echo "🚀 Setting up Hugo development environment..."

# Check Hugo version
echo "📦 Hugo version:"
hugo version

# Add dev script alias to bashrc
echo "🔧 Adding 'dev' alias..."
echo 'alias dev="/workspaces/expresslane/scripts/dev.sh"' >> ~/.bashrc

# Add helpful aliases for common tasks
echo 'alias hugo-serve="dev serve"' >> ~/.bashrc
echo 'alias hugo-build="dev build"' >> ~/.bashrc
echo 'alias hugo-clean="dev clean"' >> ~/.bashrc
echo 'alias hugo-test="dev test"' >> ~/.bashrc

# Make the dev script executable (just in case)
chmod +x /workspaces/expresslane/scripts/dev.sh 2>/dev/null || true

echo "✅ Development environment ready!"
echo ""
echo "🎯 Quick commands:"
echo "  dev serve    - Start development server"
echo "  dev build    - Build the site"
echo "  dev clean    - Clean generated files"
echo "  dev test     - Test the theme"
echo ""
echo "🚀 Short aliases:"
echo "  hugo-serve   - Same as 'dev serve'"
echo "  hugo-build   - Same as 'dev build'"
echo "  hugo-clean   - Same as 'dev clean'"
echo "  hugo-test    - Same as 'dev test'"
echo ""
echo "💡 Tip: Restart your terminal or run 'source ~/.bashrc' to use the aliases"
