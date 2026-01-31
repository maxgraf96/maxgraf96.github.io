# Architecture

**Analysis Date:** 2026-01-31

## Pattern Overview

**Overall:** Static Site Generator (Jekyll) with Theme Extension Pattern

**Key Characteristics:**
- Jekyll 4.3.3 with minima theme as base
- Custom layouts override theme defaults
- Modular include components for reusable UI elements
- Collections for structured content (news, posts)
- GitHub Pages deployment via GitHub Actions

## Layers

**Configuration Layer:**
- Purpose: Site-wide settings, metadata, and build configuration
- Location: `_config.yml`
- Contains: Site title, author info, social links, header navigation, plugin configuration, collections
- Depends on: Jekyll core, minima theme
- Used by: All layouts and includes

**Layout Layer:**
- Purpose: HTML page structure and inheritance
- Location: `_layouts/`
- Contains: 4 layout templates (default, home, page, post)
- Depends on: Includes (head, header, footer)
- Used by: All content files (pages, posts, news)

**Include Layer:**
- Purpose: Reusable UI components and partials
- Location: `_includes/`
- Contains: 8 include files (head, header, footer, social, audioexamples, postscreenshot, spotifyalbum, music_year_span)
- Depends on: Site configuration variables
- Used by: Layouts and content files

**Content Layer:**
- Purpose: Markdown content for pages, posts, and news
- Location: `_pages/`, `_posts/`, `_news/`
- Contains: Static pages, blog posts, news items
- Depends on: Layouts (page, post)
- Used by: Jekyll build process

**Style Layer:**
- Purpose: CSS/SCSS styling with theme customization
- Location: `_sass/`, `assets/css/`
- Contains: SCSS variables, mixins, component styles
- Depends on: minima theme base styles
- Used by: All layouts via `head.html`

**Asset Layer:**
- Purpose: Static files (images, sounds, icons)
- Location: `assets/`
- Contains: Images, audio files, favicons, custom CSS
- Depends on: None
- Used by: Content files and includes

## Data Flow

**Build Flow:**

1. **Configuration Loading**
   - Jekyll reads `_config.yml`
   - Loads minima theme defaults
   - Processes collections (news, posts)

2. **Content Processing**
   - Markdown files in `_pages/`, `_posts/`, `_news/` processed
   - Front matter parsed for layout assignment
   - Permalinks generated based on configuration

3. **Layout Application**
   - Content injected into `{{ content }}` placeholder
   - Layout inheritance: post → default, page → default, home → default
   - Includes rendered at include tags

4. **Asset Pipeline**
   - SCSS compiled to CSS (`assets/main.scss` → `assets/main.css`)
   - Static assets copied to `_site/`

5. **Output Generation**
   - Static HTML files written to `_site/`
   - RSS feed generated via jekyll-feed

**Request Flow (Runtime):**

1. Static files served from `_site/` directory
2. No server-side processing (pure static site)

## Key Abstractions

**Layout Inheritance:**
- Purpose: Consistent page structure with content-specific variations
- Examples: `_layouts/default.html`, `_layouts/page.html`, `_layouts/post.html`
- Pattern: Base layout (`default`) provides HTML skeleton; child layouts extend via `layout: default` front matter

**Include Components:**
- Purpose: Reusable UI fragments
- Examples: `_includes/audioexamples.html`, `_includes/postscreenshot.html`, `_includes/spotifyalbum.html`
- Pattern: Parameterized includes using `include.param_name` syntax

**Collections:**
- Purpose: Group related content with custom permalinks
- Examples: `_news/` collection
- Pattern: Defined in `_config.yml` with `output: true` and custom `permalink`

**Page-Specific Styling:**
- Purpose: Custom CSS injection per page
- Examples: Music page color animation in `_layouts/page.html`
- Pattern: Conditional `{% if page.title == "music" %}` blocks with inline `<style>`

## Entry Points

**Home Page:**
- Location: `index.md`
- Triggers: Root URL access
- Responsibilities: Delegates to home layout, displays post list

**Static Pages:**
- Location: `_pages/about.md`, `_pages/research.md`, `_pages/music.md`, `_pages/code.md`, `_pages/grants.md`
- Triggers: Navigation links from header
- Responsibilities: Display static content, some include dynamic content (news loop, post grids)

**Blog Posts:**
- Location: `_posts/*.md`
- Triggers: Direct URL or links from code page
- Responsibilities: Display project write-ups with audio examples, screenshots

**News Items:**
- Location: `_news/*.md`
- Triggers: Rendered in about page news section
- Responsibilities: Display chronological updates

**404 Page:**
- Location: `404.html`
- Triggers: Non-existent URLs
- Responsibilities: Display error message

## Error Handling

**Strategy:** Static error pages with Jekyll fallbacks

**Patterns:**
- 404 page defined at `404.html` with `permalink: /404.html`
- Jekyll build errors fail the GitHub Actions deployment
- Missing includes fail silently (empty output)

## Cross-Cutting Concerns

**SEO:**
- Approach: jekyll-seo-tag plugin via `{% seo %}` in `head.html`
- Schema.org microdata in post layout
- Open Graph and Twitter card meta tags auto-generated

**Analytics:**
- Approach: Google Analytics 4 via inline script in `head.html`
- Tracking ID: G-0L66G8EX5T

**Social Integration:**
- Approach: Social links in footer via `_includes/social.html`
- SVG icons from minima-social-icons.svg
- Custom Spotify and Google Scholar icons

**Responsive Design:**
- Approach: Mobile-first SCSS with media queries
- Breakpoints: `$on-palm` (600px), `$on-laptop` (800px)
- Hamburger menu for mobile navigation

---

*Architecture analysis: 2026-01-31*
