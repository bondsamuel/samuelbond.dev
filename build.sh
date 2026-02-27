main() {
    HUGO_VERSION="0.155.2"

    echo "🚀 Starting Hugo build process..."

    # Verify installations
    echo "✅ Verifying installations..."
    echo "Hugo: $(hugo version)"

    # Build the site
    echo "🔨 Building Hugo site..."
    hugo --gc --minify

    echo "✨ Build completed successfully!"
}

main "$@"