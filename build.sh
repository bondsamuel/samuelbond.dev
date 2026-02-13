main() {
    HUGO_VERSION="0.155.3"
    export TZ=UTC

    echo "🚀 Starting Hugo build process..."

    # Verify installations
    echo "✅ Verifying installations..."
    echo "Hugo: $(hugo version)"


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