# Technology Stack

**Analysis Date:** 2026-01-31

## Languages

**Primary:**
- Ruby 3.4.1 (local), 3.1 (CI) - Jekyll static site generator
- SCSS/Sass - Stylesheet preprocessing
- HTML - Templates and layouts
- Markdown - Content (posts, pages, news)

**Secondary:**
- CSS - Custom styles (`assets/css/social.css`)
- Liquid - Jekyll templating language
- JavaScript - Minimal (Google Analytics tracking only)

## Runtime

**Environment:**
- Ruby 3.4.1 (local development)
- Ruby 3.1 (GitHub Actions CI)

**Package Manager:**
- Bundler 2.6.2
- Lockfile: `Gemfile.lock` present

## Frameworks

**Core:**
- Jekyll 4.3.4 - Static site generator
- Minima 2.5.2 - Jekyll theme

**Build/Dev:**
- Sass-embedded 1.97.3 - SCSS compilation
- Jekyll Sass Converter 3.1.0 - Sass integration

**Plugins:**
- jekyll-feed 0.17.0 - RSS/Atom feed generation
- jekyll-redirect-from 0.16.0 - URL redirects
- jekyll-seo-tag 2.8.0 - SEO meta tags (via minima)

## Key Dependencies

**Critical:**
- `jekyll (~> 4.3.3)` - Core static site generator
- `minima (~> 2.5)` - Default Jekyll theme
- `jekyll-feed (~> 0.12)` - RSS feed generation
- `jekyll-redirect-from` - URL redirect support

**Infrastructure:**
- `webrick (~> 1.8)` - Development server (Ruby 3+ requirement)
- `csv (~> 3.3)` - Ruby 3.4+ stdlib compatibility
- `base64 (~> 0.3.0)` - Ruby 3.4+ stdlib compatibility
- `tzinfo (~> 1.2)` / `tzinfo-data` - Timezone support (Windows/JRuby)

**Build Chain:**
- `sass-embedded (~> 1.75)` - Sass compilation
- `google-protobuf (~> 4.31)` - Sass dependency
- `kramdown (~> 2.3)` - Markdown parser
- `rouge (>= 3.0, < 5.0)` - Syntax highlighting

## Configuration

**Environment:**
- Jekyll environment: `JEKYLL_ENV=production` (CI), default (local)
- No `.env` files or environment-specific configs detected

**Build:**
- Main config: `_config.yml`
- Theme: `minima`
- Output directory: `_site` (default)
- Plugins configured in `_config.yml`:
  - `jekyll-feed`
  - `jekyll-redirect-from`

**Collections:**
- `_news` - News items with permalink `/news/:title/`
- `_posts` - Blog posts (Jekyll default)
- `_pages` - Static pages (custom include)

## Platform Requirements

**Development:**
- Ruby 3.1+ (3.4.1 recommended for local)
- Bundler 2.6+
- Run: `bundle exec jekyll serve`

**Production:**
- GitHub Pages (via GitHub Actions)
- Custom domain: `maxgraf.space` (via `CNAME` file)
- Build command: `bundle exec jekyll build --baseurl "${base_path}"`

---

*Stack analysis: 2026-01-31*
