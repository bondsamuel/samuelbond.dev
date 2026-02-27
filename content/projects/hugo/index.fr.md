---
title: "Propulser mon portfolio avec Hugo"
date: 2026-02-10
tags: ["Hugo", "Développement Web", "Open Source"]
showauthor: true
authors:
  - "Samuel Bond"
---

{{< github repo="bondsamuel/samuelbond.dev" showThumbnail=false >}}

## Pourquoi ce projet ?

Ce portfolio est né d'une volonté de documenter mon parcours à l'**ÉTS** (École de Technologie Supérieure). 

Au-delà d'un simple CV, c'est un laboratoire où je centralise mes projets techniques et mes réflexions d'étudiant en ingénierie.

## Le choix de la technologie : Hugo 🚀

Étant donné que je développe ce site à temps perdu, je cherchais un outil formateur, mais simple d'utilisation. \
C'est ainsi que j'ai découvert sur [Hugo](https://gohugo.io/). Un générateur de sites statiques (SSG) écrit en Go.

### Ces avantages

* **La simplicité** : Le fonctionnement de Hugo est très intuitif. J'ai pu installer un thème créé par la communauté en moins de 5 minutes.
* **Rapidité d'exécution** : Bien que plusieurs configurations aient été nécessaires pour obtenir un site fonctionnel, celui-ci était opérationnel en l'espace de 3 jours !
* **Architecture "Docs-as-Code"** : Je rédige mes articles en Markdown, ce qui me permet d'avoir une économie de temps sur la création des pages HTML.
* **Sécurité et Légèreté** : Pas de base de données, pas de scripts PHP vulnérables. Juste du HTML, du CSS et du JavaScript.

## CD/CI
Grâce à **Cloudflare Pages**, j'ai mis en place un worker qui, lorsqu'un commit est effectué dans la branche **main** du repo, déclenche automatiquement le build et la mise à jour du site en temps réel.

>Il est possible de le faire avec GitHub Pages, mais comme mon nom de domaine est hébergé sur Cloudflare, l'intégration est plus fluide.

Script du build :
```
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
```

## Structure et Objectifs

L'objectif de ce site est simple :
1.  **Démontrer** mes compétences en développement et en intégration.
2.  **Expliquer** le "pourquoi" derrière mes projets académiques.
3.  **Partager** mes apprentissages avec la communauté open-source.

> "L'ingénierie, ce n'est pas seulement construire des choses, c'est savoir expliquer comment elles fonctionnent."
