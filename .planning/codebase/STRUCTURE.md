# Codebase Structure

**Analysis Date:** 2026-01-31

## Directory Layout

```
[project-root]/
├── _config.yml              # Jekyll configuration
├── index.md                 # Homepage entry point
├── Gemfile                  # Ruby dependencies
├── 404.html                 # Error page
├── CNAME                    # Custom domain config
├── README.md                # Project readme
├── install.sh               # Setup script
│
├── _layouts/                # HTML layout templates
│   ├── default.html         # Base layout (HTML skeleton)
│   ├── home.html            # Homepage layout (post list)
│   ├── page.html            # Static page layout (+ special page handling)
│   └── post.html            # Blog post layout
│
├── _includes/               # Reusable UI components
│   ├── head.html            # HTML head section (SEO, CSS, analytics)
│   ├── header.html          # Site navigation header
│   ├── footer.html          # Site footer with social links
│   ├── social.html          # Social media icon links
│   ├── audioexamples.html   # Audio player component
│   ├── postscreenshot.html  # Screenshot display component
│   ├── spotifyalbum.html    # Spotify embed component
│   └── music_year_span.html # Year label component
│
├── _pages/                  # Static pages (Markdown)
│   ├── about.md             # About/bio page (+ news feed)
│   ├── research.md          # Research and publications
│   ├── music.md             # Music portfolio
│   ├── code.md              # Code projects landing
│   ├── grants.md            # Grants and funding
│   └── amdemo.md            # Audio Maps demo page
│
├── _posts/                  # Blog posts (chronological)
│   ├── 2021-05-04-interactive-pop-piano-cocreation.md
│   ├── 2021-04-25-cbcs-aiml-goldsmiths.md
│   ├── 2020-08-30-interstellar-thesis.md
│   ├── 2020-06-05-karplus-strong-synth.md
│   ├── 2020-06-05-pitch-aware-granular-synth.md
│   └── 2020-04-22-e2e-piano-epiano.md
│
├── _news/                   # News items (collection)
│   ├── 20-02-2024-icure-discover.md
│   ├── 05-09-2024-icure-explore.md
│   ├── 14-11-2024-adc.md
│   └── [other news items...]
│
├── _sass/                   # SCSS stylesheets
│   ├── minima.scss          # Theme variables and imports
│   └── minima/              # Theme partials
│       ├── _base.scss       # Base element styles
│       ├── _layout.scss     # Layout component styles
│       └── _syntax-highlighting.scss
│
├── assets/                  # Static assets
│   ├── css/
│   │   ├── main.scss        # Main SCSS entry (imports minima)
│   │   ├── styles.scss      # Custom styles entry
│   │   └── social.css       # Custom component styles
│   ├── images/              # Image assets
│   │   ├── favicon/         # Favicon files
│   │   ├── profile.jpg
│   │   ├── [project screenshots...]
│   │   └── spotify.svg
│   └── sounds/              # Audio assets
│       └── interactive-pop-piano/
│
├── .github/
│   └── workflows/
│       └── jekyll.yml       # GitHub Actions deployment
│
├── _site/                   # Build output (generated)
└── .jekyll-cache/           # Build cache (generated)
```

## Directory Purposes

**`_layouts/`:**
- Purpose: HTML templates that wrap content
- Contains: 4 Liquid templates
- Key files: `default.html` (root), `page.html` (static pages), `post.html` (blog posts)

**`_includes/`:**
- Purpose: Reusable HTML fragments included in layouts
- Contains: 8 include files
- Key files: `head.html` (meta, CSS, analytics), `header.html` (nav), `social.html` (footer links)

**`_pages/`:**
- Purpose: Static site pages
- Contains: 6 Markdown files
- Key files: `about.md` (homepage via redirect), `research.md`, `music.md`

**`_posts/`:**
- Purpose: Blog posts displayed on code page
- Contains: 6 project write-ups
- Naming: `YYYY-MM-DD-title.md` (Jekyll convention)

**`_news/`:**
- Purpose: Chronological news/updates
- Contains: 11 news items
- Naming: `DD-MM-YYYY-title.md` (custom convention)
- Special: Collection with custom permalink `/news/:title/`

**`_sass/`:**
- Purpose: SCSS stylesheets
- Contains: Theme variables and partials
- Key files: `minima.scss` (config), `minima/_layout.scss` (component styles)

**`assets/`:**
- Purpose: Static files served directly
- Contains: CSS, images, audio
- Key directories: `images/` (screenshots, photos), `sounds/` (audio examples)

## Key File Locations

**Entry Points:**
- `index.md`: Site homepage (uses home layout)
- `_pages/about.md`: About page (redirected from root via `redirect_from: /`)

**Configuration:**
- `_config.yml`: Jekyll configuration, site metadata, navigation, collections
- `Gemfile`: Ruby gem dependencies

**Core Logic:**
- `_layouts/default.html`: Base HTML structure
- `_layouts/page.html`: Page layout with conditional special handling
- `_includes/head.html`: Head template with SEO and analytics

**Styling:**
- `_sass/minima.scss`: SCSS variables and imports
- `assets/css/social.css`: Custom styles for components

**CI/CD:**
- `.github/workflows/jekyll.yml`: GitHub Pages deployment workflow

## Naming Conventions

**Files:**
- Layouts: `*.html` (Liquid templates)
- Includes: `*.html` (Liquid templates)
- Pages: `*.md` (Markdown with front matter)
- Posts: `YYYY-MM-DD-descriptive-title.md` (Jekyll convention)
- News: `DD-MM-YYYY-title.md` (project convention)
- Styles: `*.scss` (Sass files)

**Directories:**
- Jekyll special: `_layouts`, `_includes`, `_sass`, `_posts`, `_news`, `_pages`
- Assets: `assets/` (Jekyll convention for static files)
- Private: `.github/`, `.jekyll-cache/`, `_site/`

**Front Matter:**
```yaml
---
layout: page|post|home|default
title: "Page Title"
permalink: /path/
[redirect_from: /old-path/]
[date: YYYY-MM-DD]
[tags: code]
[shortdescription: "..."]
[image: /assets/images/...]
---
```

## Where to Add New Code

**New Page:**
- Primary code: `_pages/newpage.md`
- Add to navigation: `_config.yml` → `header_pages` list

**New Blog Post:**
- Primary code: `_posts/YYYY-MM-DD-title.md`
- Use `layout: post`, `tags: code` for code projects
- Add `shortdescription` and `image` for grid display

**New News Item:**
- Primary code: `_news/DD-MM-YYYY-title.md`
- Include `date` in front matter
- Automatically appears on about page

**New Include Component:**
- Implementation: `_includes/componentname.html`
- Usage: `{% include componentname.html param=value %}`

**New Styles:**
- Custom CSS: `assets/css/social.css` (existing custom styles)
- SCSS variables: `_sass/minima.scss`
- Component styles: `_sass/minima/_layout.scss`

**New Assets:**
- Images: `assets/images/`
- Audio: `assets/sounds/`
- Favicons: `assets/images/favicon/`

## Special Directories

**`_site/`:**
- Purpose: Jekyll build output
- Generated: Yes (by `jekyll build`)
- Committed: No (in `.gitignore`)

**`.jekyll-cache/`:**
- Purpose: Build cache for faster rebuilds
- Generated: Yes
- Committed: No (in `.gitignore`)

**`_sass/minima/`:**
- Purpose: Theme partials (base, layout, syntax)
- Generated: No
- Committed: Yes (theme overrides)

---

*Structure analysis: 2026-01-31*
