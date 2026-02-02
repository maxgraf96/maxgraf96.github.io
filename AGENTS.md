# AGENTS.md - AI Coding Agent Reference

This file contains essential information for AI coding agents working on this project.

## Project Overview

This is a **personal academic website** for Max Graf, a PhD researcher in AI & Music at the Centre for Digital Music at Queen Mary University of London. The site is built with **Jekyll** (a static site generator) and deployed to **GitHub Pages**.

The website consists of:
- A main personal/academic site with research publications, news, and projects
- A product microsite for **WavNav** — an audio sample discovery application

**Live URL:** https://maxgraf.space

## Technology Stack

### Core Technologies
- **Jekyll** 4.3.3 (Ruby-based static site generator)
- **Theme:** Minima 2.5 (with custom overrides)
- **Ruby:** 3.1+ (with bundler for dependency management)

### Frontend Build Pipeline
- **Tailwind CSS** 4.1.18 (utility-first CSS framework)
- **PostCSS** with Autoprefixer
- **CSSNano** (for production minification)

### Key Dependencies
| Category | Package |
|----------|---------|
| Jekyll Plugins | `jekyll-feed`, `jekyll-redirect-from` |
| Node Build Tools | `@tailwindcss/cli`, `postcss-cli` |
| Ruby Gems | `webrick`, `csv`, `base64` (Ruby 3.4+ compat) |

## Project Structure

```
├── _config.yml           # Jekyll configuration
├── _layouts/             # HTML layouts
│   ├── default.html      # Base layout (header, footer, main content)
│   ├── home.html         # Homepage layout (blog post listing)
│   ├── page.html         # Standard page layout
│   ├── post.html         # Blog post layout
│   └── wavnav.html       # Special dark-themed layout for WavNav pages
├── _includes/            # Reusable HTML components
│   ├── head.html         # HTML head with meta, CSS, favicon
│   ├── header.html       # Site navigation header
│   ├── footer.html       # Site footer with social links
│   ├── social.html       # Social media icon links
│   └── image-lightbox.html  # Image zoom/lightbox functionality
├── _pages/               # Static pages (about, research, etc.)
├── _posts/               # Blog posts (YYYY-MM-DD-title.md format)
├── _news/                # News items (chronological updates)
├── _wavnav/              # WavNav product microsite pages
├── _sass/                # Sass partials (minima theme overrides)
├── src/                  # Source files for build pipeline
│   └── styles.css        # Tailwind CSS entry point
├── assets/               # Static assets
│   ├── css/              # Compiled CSS output
│   ├── fonts/            # Custom fonts (Atkinson Hyperlegible, Pretendard, Nebulous)
│   ├── images/           # Images and favicons
│   └── sounds/           # Audio files for interactive demos
└── .github/workflows/    # CI/CD automation
```

### Content Collections

Jekyll collections defined in `_config.yml`:

| Collection | Output | Permalink Pattern |
|------------|--------|-------------------|
| `news` | Yes | `/news/:title/` |
| `wavnav` | Yes | `/wavnav/:title/` |

### Header Navigation

Pages in the top navigation are defined in `_config.yml` under `header_pages`:
- Music (`_pages/music.md`)
- Research (`_pages/research.md`)
- Code (`_pages/code.md`)
- WavNav (`_wavnav/index.md`)
- About (`_pages/about.md`)

## Build Commands

### Initial Setup

```bash
# Install Ruby dependencies
bundle install

# Install Node.js dependencies
npm install

# Or use the install script (handles Ruby 3.4+ compatibility)
./install.sh
```

### Development

```bash
# Build Tailwind CSS in watch mode (auto-rebuild on changes)
./build-css.sh

# In another terminal, serve Jekyll site with live reload
bundle exec jekyll serve --livereload

# Or serve without CSS watching
bundle exec jekyll serve
```

The site will be available at `http://localhost:4000`

### Production Build

```bash
# Set production environment (enables CSS minification)
export JEKYLL_ENV=production

# Build Tailwind CSS (minified)
npx @tailwindcss/cli -i ./src/styles.css -o ./assets/css/main.css --minify

# Build Jekyll site
bundle exec jekyll build

# Output is in ./_site directory
```

## CSS Architecture

### Two CSS Systems

1. **Main Site** (`assets/main.css` - from minima theme)
   - Default Jekyll/Minima styling
   - Atkinson Hyperlegible font (accessibility-focused)

2. **WavNav Pages** (`assets/css/main.css` - Tailwind-built)
   - Dark-themed, modern UI
   - Tailwind CSS v4 utility classes
   - Custom color palette (`wavnav-*` colors)
   - Pretendard font for UI, Nebulous for logo

### Tailwind Configuration

Configuration in `tailwind.config.js`:
- **Content paths:** All HTML, Markdown, and template files
- **Custom colors:** `wavnav-dark`, `wavnav-mint`, etc.
- **Custom fonts:** Helvetica Neue, Atkinson Hyperlegible
- **Animations:** fade-in, slide-up, pulse-slow

### Source CSS

Entry point: `src/styles.css`
```css
@import "tailwindcss";

/* Font face declarations for Atkinson Hyperlegible */
/* Theme configuration with custom colors */
```

## Content Guidelines

### Creating a New Blog Post

1. Create file: `_posts/YYYY-MM-DD-title.md`
2. Front matter template:
```yaml
---
layout: post
title: "Post Title"
date: YYYY-MM-DD HH:MM:SS +0000
categories: category
tags: tag1 tag2
shortdescription: Brief description for listings
image: /assets/images/image-name.png
---
```

### Creating a News Item

1. Create file: `_news/MM-DD-YYYY-title.md`
2. Front matter template:
```yaml
---
title: "News Headline"
date: YYYY-MM-DD
---

HTML content here...
```

News items appear chronologically on the about page.

### Creating a WavNav Page

Use the `wavnav` layout for consistent dark theming:
```yaml
---
layout: wavnav
title: Page Title
permalink: /wavnav/page-name/
---
```

## Special Features

### Image Lightbox

All images (except those with `data-no-zoom` attribute) automatically get zoom-on-click functionality via `_includes/image-lightbox.html`. Features:
- Smooth animated zoom transition
- Backdrop blur effect
- ESC key to close
- Click outside to close
- Respects `prefers-reduced-motion`

### WavNav Layout Features

The `wavnav.html` layout includes:
- Space-themed animated background with starfield
- Glass-morphism header with blur
- Responsive mobile navigation
- Custom font loading (Pretendard, Nebulous)
- Dynamic star generation via JavaScript

### Social Links

Social media links are configured in `_config.yml` and rendered via `_includes/social.html`. Supports: GitHub, Instagram, Spotify, Facebook, LinkedIn, Twitter, YouTube.

## Deployment

### GitHub Actions Workflow

File: `.github/workflows/github-pages.yml`

Triggered on pushes to `main` branch:
1. Checkout code
2. Setup Ruby 3.1 and Node 20
3. Install dependencies (`bundle install`, `npm ci`)
4. Build Tailwind CSS (minified)
5. Build Jekyll site
6. Deploy to GitHub Pages

**Note:** The `jekyll.yml` workflow is present but the active deployment uses `github-pages.yml` with the peaceiris/actions-gh-pages action.

### Custom Domain

- CNAME file contains: `maxgraf.space`
- DNS configured for GitHub Pages

## Development Conventions

### File Naming
- Posts: `YYYY-MM-DD-descriptive-title.md`
- News: `MM-DD-YYYY-short-title.md`
- Pages: `lowercase-with-dashes.md`

### Image Assets
- Store in `assets/images/`
- Use descriptive filenames
- Favicons: `assets/images/favicon/` (main site), `assets/images/wavnav_favicon/` (WavNav)

### HTML in Markdown
- Raw HTML is allowed and commonly used for layouts
- Use inline styles sparingly; prefer Tailwind classes for WavNav pages

## Troubleshooting

### Common Issues

**CSS not updating:**
- Ensure `build-css.sh` is running in watch mode
- Check that `assets/css/main.css` is being generated

**Jekyll build errors:**
- Run `bundle install` to ensure gems are up to date
- Check front matter formatting (must be valid YAML)

**Ruby 3.4+ warnings:**
- Use `./install.sh` which adds required gems (`csv`, `base64`)

### Excluded from Build

These files are excluded in `_config.yml`:
- `node_modules/`, `vendor/`
- `package*.json`, `Gemfile*`
- `src/` (source files, not output)
- Config files (postcss, tailwind)

## Security Considerations

- No sensitive data in repository
- Google Analytics ID is public (G-0L66G8EX5T)
- No server-side processing (static site)
- All external links use `target="_blank"` with `rel="me"` where appropriate
