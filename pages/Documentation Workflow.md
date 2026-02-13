---
uuid: 6fd8fd03-d5a0-48cb-9fa9-9d3c63631e86
title: Documentation Workflow
type: page
dateCreated: 2026-02-13T06:06:52.353Z
dateUpdated: 2026-02-13T06:25:47.893Z
nav_order: 5
---
# How This Documentation Is Made

This documentation is written, managed, and published using Nocturne Writer itself. The entire workflow, from drafting to a live website, runs through the same tools the application provides to any writer.

## The book

This user guide exists as a Nocturne Writer book. Each page in the sidebar on this site corresponds to a page in the book. The content is written in Markdown, and each page carries YAML front matter for metadata, the same front matter that Nocturne Writer supports through its metadata editor.

The book is stored locally on disk as a folder of Markdown files under a `pages/` directory, alongside a `.nocturne` configuration folder that the application uses to manage the book structure. There is nothing proprietary about the format. Every page is a plain text file that can be opened in any editor.

## Version control

Nocturne Writer has integrated Git support. Changes to the documentation are committed from within the application and pushed (currently from the command line). The book's repository is public on GitHub, which means the Markdown source for every page is available alongside the published site.

[Documentation on GitHub](https://github.com/liminalfield/nocturne-user-documentation)

## Publishing

The repository is configured with Jekyll and GitHub Pages. When changes are pushed to the main branch, a GitHub Actions workflow builds the site automatically and deploys it to this domain. The build typically completes in under two minutes.

Jekyll was chosen because it works natively with GitHub Pages, requires minimal configuration, and treats Markdown files as first-class content. The `just-the-docs` theme provides the navigation, search, and layout without requiring any custom HTML.

## Bridging the formats

Nocturne Writer's Markdown output includes a few conventions that Jekyll does not handle natively — wiki-style internal links, underline syntax, and image paths relative to the page's location in the book. Rather than compromise either the authoring experience or the published output, a small set of Jekyll plugins handle the conversion at build time:

* **Internal links** — Nocturne Writer links between pages using `[[path|Display Text]]` syntax. A plugin converts these to standard HTML links during the build.

* **Underline** — The `++text++` syntax is converted to HTML underline elements.

* **Image paths** — Images referenced relative to the page's location in the book are rewritten to resolve correctly from the site root.

These plugins run during the Jekyll build and do not modify the source files. The Markdown remains clean and readable both inside Nocturne Writer and on GitHub.

## Publishing configuration

A small number of files were added to the repository specifically for publishing. These are not part of the book itself and are not managed through Nocturne Writer:

* **`_config.yml`** — Jekyll site configuration, including theme, navigation settings, and metadata defaults for pages.

* **`Gemfile`** — Declares the Jekyll theme dependency used during the build.

* **`CNAME`** — Tells GitHub Pages to serve the site at a custom domain.

* **`index.md`** — The landing page for the documentation site.

* **`.github/workflows/pages.yml`** — The GitHub Actions workflow that builds and deploys the site on each push.

* **`_plugins/`** — The Jekyll plugins described above for converting internal links, underline syntax, and image paths.

These files sit in the repository root alongside the book and do not interfere with the authoring workflow. Nocturne Writer is unaware of them.


## The workflow

The day-to-day process for updating this documentation is:

1. Open the user guide book in Nocturne Writer

2. Write or edit a page

3. Set navigation metadata (title, order, parent section) using the metadata editor

4. Commit and push (currently from the command line)

5. The site updates automatically

No external tools or build steps are involved beyond what the application already provides. The entire process stays inside Nocturne Writer.