# Codebase Concerns

**Analysis Date:** 2026-01-31

## Tech Debt

### Sass Deprecation Warnings (Critical)
- **Issue:** Multiple Sass deprecation warnings during build that will become breaking errors in future Dart Sass versions
- **Files:**
  - `_sass/minima.scss` (lines 18-19, 47-49)
  - `_sass/minima/_base.scss` (lines 40, 110, 115, 127, 134, 235, 240, 244, 247-248, 252)
  - `_sass/minima/_layout.scss` (lines 7, 52, 115, 127, 128, 139, 144, 149, 156, 161, 169, 189-190)
- **Impact:** Build will fail when Dart Sass 3.0.0 is released. Currently generates 12+ deprecation warnings per build.
- **Fix approach:** 
  1. Replace `@import` with `@use` and `@forward`
  2. Replace `lighten()`/`darken()` with `color.scale()` or `color.adjust()`
  3. Replace `/` division with `math.div()` or `calc()`
  4. Use automated migrator: `sass-migrator module **/*.scss`

### Legacy Ruby Dependencies
- **Issue:** Gems `csv` and `base64` explicitly added to Gemfile for Ruby 3.4+ compatibility
- **Files:** `Gemfile` (lines 37-39), `install.sh`
- **Impact:** These were moved from Ruby stdlib to gems in Ruby 3.4. Current workaround works but adds maintenance overhead.
- **Fix approach:** Keep current workaround or upgrade to Jekyll 4.4+ which handles this natively.

### Unused Include File
- **Issue:** `spotifyalbum.html` include exists but is not used anywhere in the site
- **Files:** `_includes/spotifyalbum.html`
- **Impact:** Dead code, potential confusion for maintenance
- **Fix approach:** Remove file or integrate into music page if needed

## Known Bugs

### Typo in Homepage Layout
- **Issue:** Typo "homepagee" in welcome message
- **Files:** `_layouts/home.html` (line 10)
- **Symptoms:** Displays "Welcome to beautiful homepagee!" on homepage
- **Trigger:** Always visible on homepage
- **Workaround:** None needed - cosmetic issue

### Empty URL Configuration
- **Issue:** `url` field in `_config.yml` is empty
- **Files:** `_config.yml` (line 15)
- **Impact:** May cause issues with RSS feeds, SEO, and absolute URLs
- **Fix approach:** Set to production domain: `url: "https://maxgraf96.github.io"`

### Commented Out Navigation Item
- **Issue:** Grants page is commented out in header navigation
- **Files:** `_config.yml` (line 33)
- **Impact:** Page exists (`_pages/grants.md`) but is inaccessible from navigation
- **Fix approach:** Either uncomment line or remove grants page if not needed

## Security Considerations

### Hardcoded Google Analytics ID
- **Issue:** Google Analytics tracking ID is hardcoded in template
- **Files:** `_includes/head.html` (lines 13-21)
- **Risk:** If site is forked or reused, analytics data will pollute original account
- **Current mitigation:** None
- **Recommendations:** Move GA ID to `_config.yml` and reference via `{{ site.google_analytics }}`

### Missing Content Security Policy
- **Issue:** No CSP headers or meta tags
- **Risk:** XSS vulnerabilities from external embeds (Spotify iframes, etc.)
- **Current mitigation:** None
- **Recommendations:** Add CSP meta tag to head.html allowing necessary external domains

### External Iframe Embeds
- **Issue:** Multiple Spotify embed iframes on music page
- **Files:** `_pages/music.md`
- **Risk:** Third-party content injection, tracking
- **Current mitigation:** `loading="lazy"` attribute present
- **Recommendations:** Consider privacy-friendly alternatives or add sandbox attributes

## Performance Bottlenecks

### Large Image Assets
- **Issue:** No image optimization pipeline detected
- **Files:** `assets/images/` directory
- **Problem:** Images served at original size, no responsive srcset
- **Impact:** Slow page loads on mobile/constrained connections
- **Improvement path:** 
  1. Add Jekyll responsive image plugin
  2. Implement lazy loading for below-fold images
  3. Convert to WebP/AVIF formats

### Unoptimized CSS Output
- **Issue:** Generated CSS is 650 lines with potential redundancy
- **Files:** `_site/assets/main.css`
- **Problem:** No CSS minification in development, unused selectors may exist
- **Impact:** Larger download size than necessary
- **Improvement path:** Enable CSS compression in `_config.yml`

### Synchronous Google Analytics Loading
- **Issue:** GA script loaded synchronously in head
- **Files:** `_includes/head.html` (line 13)
- **Impact:** Blocks rendering, affects Core Web Vitals
- **Improvement path:** Add `async` or `defer` attributes, or move to end of body

## Fragile Areas

### Manual News Management
- **Issue:** News items are manually created markdown files in `_news/` collection
- **Files:** `_news/*.md`
- **Why fragile:** Requires manual file creation with specific date prefix format
- **Safe modification:** Follow existing naming convention: `DD-MM-YYYY-slug.md`
- **Test coverage:** No automated validation of news format

### Inline Styles in Content
- **Issue:** Heavy use of inline styles in markdown content
- **Files:** `_pages/about.md`, `_pages/music.md`, `_pages/research.md`
- **Why fragile:** Difficult to maintain consistency, breaks separation of concerns
- **Safe modification:** Move styles to `_sass/minima/_layout.scss` or `assets/css/social.css`
- **Test coverage:** None

### Hardcoded Asset Paths
- **Issue:** Absolute paths used for assets (`/assets/images/...`)
- **Files:** `_pages/about.md`, `_includes/head.html`
- **Why fragile:** Breaks if site is deployed to subdirectory
- **Safe modification:** Use `{{ "/path" | relative_url }}` filter

## Scaling Limits

### Jekyll Build Time
- **Current capacity:** ~0.08 seconds for current content volume
- **Limit:** Will slow as content grows (posts, news items, images)
- **Scaling path:** 
  1. Enable incremental builds (`--incremental`)
  2. Add build caching in GitHub Actions
  3. Consider migration to 11ty or Next.js if content grows significantly

### GitHub Pages Build Limits
- **Current usage:** Well within limits
- **Limit:** 1GB site size, 10GB bandwidth/month on free tier
- **Scaling path:** Monitor usage, consider CDN (Cloudflare) if needed

## Dependencies at Risk

### Minima Theme (Pinned)
- **Risk:** Using vendored/customized Minima theme files instead of gem
- **Impact:** Theme updates require manual file synchronization
- **Migration plan:** 
  1. Document all customizations
  2. Consider switching to gem-based theme with `_sass` overrides only

### Jekyll 4.3.3
- **Risk:** Not latest version (4.4.1 available)
- **Impact:** Missing bug fixes and features
- **Migration plan:** Test upgrade in branch: `bundle update jekyll`

## Missing Critical Features

### No Automated Testing
- **Problem:** No HTML validation, link checking, or visual regression tests
- **Blocks:** Confidence in deployments
- **Priority:** Medium

### No Image Optimization
- **Problem:** No automatic resizing, format conversion, or lazy loading
- **Blocks:** Performance optimization
- **Priority:** Medium

### No SEO Meta Tags
- **Problem:** Missing Open Graph, Twitter Card meta tags
- **Blocks:** Social sharing optimization
- **Priority:** Low

### No Dark Mode Support
- **Problem:** Site only supports light theme
- **Blocks:** User preference accommodation
- **Priority:** Low

## Test Coverage Gaps

### No HTML Validation
- **What's not tested:** Generated HTML structure, accessibility
- **Files:** All `_site/*.html`
- **Risk:** Invalid HTML, accessibility violations
- **Priority:** Medium

### No Link Checking
- **What's not tested:** External links in publications, social profiles
- **Files:** `_pages/research.md`, `_config.yml`
- **Risk:** Broken links to papers, profiles
- **Priority:** Medium

### No Responsive Testing
- **What's not tested:** Layout on various screen sizes
- **Risk:** Mobile layout issues
- **Priority:** Low

---

*Concerns audit: 2026-01-31*
