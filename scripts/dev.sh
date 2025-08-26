#!/bin/bash

# Hugo Development Scripts
# Usage: ./scripts/dev.sh [command]

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"
EXAMPLE_SITE_DIR="$PROJECT_ROOT/exampleSite"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

print_usage() {
    echo -e "${BLUE}Hugo Theme Development Scripts${NC}"
    echo ""
    echo "Usage: $0 [command]"
    echo ""
    echo "Commands:"
    echo "  serve     Start Hugo development server"
    echo "  build     Build the example site"
    echo "  clean     Clean generated files"
    echo "  test      Test the theme (build + serve)"
    echo "  help      Show this help message"
    echo ""
}

serve_site() {
    echo -e "${GREEN}Starting Hugo development server...${NC}"
    cd "$EXAMPLE_SITE_DIR"
    
    # Create themes directory and symlink if it doesn't exist
    if [ ! -d "themes/mainroad" ]; then
        echo -e "${YELLOW}Setting up theme symlink...${NC}"
        mkdir -p themes
        ln -sf ../../ themes/mainroad
    fi
    
    echo -e "${BLUE}Server will be available at: http://localhost:1313${NC}"
    hugo server --bind 0.0.0.0 --port 1313 --baseURL http://localhost:1313 --buildDrafts --buildFuture
}

build_site() {
    echo -e "${GREEN}Building example site...${NC}"
    cd "$EXAMPLE_SITE_DIR"
    
    # Create themes directory and symlink if it doesn't exist
    if [ ! -d "themes/mainroad" ]; then
        echo -e "${YELLOW}Setting up theme symlink...${NC}"
        mkdir -p themes
        ln -sf ../../ themes/mainroad
    fi
    
    hugo --destination ../public
    echo -e "${GREEN}Site built successfully in public/ directory${NC}"
}

clean_site() {
    echo -e "${YELLOW}Cleaning generated files...${NC}"
    rm -rf "$PROJECT_ROOT/public"
    rm -rf "$EXAMPLE_SITE_DIR/public"
    rm -rf "$EXAMPLE_SITE_DIR/resources"
    echo -e "${GREEN}Clean completed${NC}"
}

test_theme() {
    echo -e "${GREEN}Testing theme...${NC}"
    build_site
    echo -e "${GREEN}Build test passed! Starting server...${NC}"
    serve_site
}

# Main script logic
case "${1:-help}" in
    "serve")
        serve_site
        ;;
    "build")
        build_site
        ;;
    "clean")
        clean_site
        ;;
    "test")
        test_theme
        ;;
    "help"|*)
        print_usage
        ;;
esac
