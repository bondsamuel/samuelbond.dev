---
title: "Powering my Portfolio with Hugo"
date: 2026-02-10
tags: ["Hugo", "Web Development", "Open Source"]
showauthor: true
authors:
  - "Samuel Bond"
---

{{< github repo="bondsamuel/samuelbond.dev" showThumbnail=false >}}

## Why this project?

This portfolio was born from a desire to document my journey at **ÉTS** (École de technologie supérieure).

More than just a simple CV, it is a laboratory where I centralize my technical projects and my reflections as an engineering student.

## Choosing the Tech: Hugo 🚀

Since I am developing this site in my spare time, I was looking for a tool that was educational yet easy to use. \
That is how I discovered [Hugo](https://gohugo.io/), a static site generator (SSG) written in Go.

### Advantages

* **Simplicity**: Hugo’s workflow is very intuitive. I was able to install a community-created theme in less than 5 minutes.
* **Rapid Execution**: Although several configurations were necessary to get a functional site, it was up and running within 3 days!
* **"Docs-as-Code" Architecture**: I write my articles in Markdown, which saves me a significant amount of time on HTML page creation.
* **Security and Performance**: No database, no vulnerable PHP scripts. Just HTML, CSS, and JavaScript.

## CI/CD

Thanks to **Cloudflare Pages**, I set up a worker that automatically triggers a build and updates the site in real-time whenever a commit is pushed to the **main** branch of the repository.

> While this is possible with GitHub Pages, since my domain is hosted on Cloudflare, the integration is much more seamless.

**Build script:**

```bash
main() {
    HUGO_VERSION="0.155.3"

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