main() {
    HUGO_VERSION="0.155.3"
    export TZ=UTC

    echo "🚀 Starting Hugo build process..."

    # Install Hugo
    echo "📦 Installing Hugo v${HUGO_VERSION}..."
    curl -LJO "https://github.com/gohugoio/hugo/releases/download/v$%7BHUGO_VERSION%7D/hugo_extended_$%7BHUGO_VERSION%7D_linux-amd64.tar.gz"
    tar -xf "hugoextended${HUGO_VERSION}_linux-amd64.tar.gz"
    cp hugo /opt/buildhome/
    rm LICENSE README.md "hugoextended${HUGO_VERSION}_linux-amd64.tar.gz"

    # Verify installations
    echo "✅ Verifying installations..."
    echo "Hugo: $(hugo version)"
    echo "Node.js: $(node --version  echo 'Not available')"
    echo "Go: $(go version 
    echo 'Not available')"

    # Initialize submodules (for themes)
    echo "🎨 Setting up themes..."
    git submodule update --init --recursive
    git config core.quotepath false


    # Build the site
    echo "🔨 Building Hugo site..."
    hugo --gc --minify

    echo "✨ Build completed successfully!"
}

main "$@"