# External Integrations

**Analysis Date:** 2026-01-31

## APIs & External Services

**Analytics:**
- Google Analytics 4 (gtag.js)
  - Tracking ID: `G-0L66G8EX5T`
  - Implementation: Hardcoded in `_includes/head.html`
  - Always loads (not conditional on environment in current config)

**Music/Content:**
- Spotify Embed
  - Implementation: `_includes/spotifyalbum.html`
  - URL: `https://open.spotify.com/embed/album/{album_id}`
  - Used for embedding music albums on pages

**Academic:**
- Google Scholar
  - Profile link in social footer
  - URL: `https://scholar.google.com/citations?hl=en&user=Dq57Fx4AAAAJ`

## Data Storage

**Databases:**
- Not applicable - Static site with no database

**File Storage:**
- Local filesystem only
- Assets stored in `assets/` directory
- Images in `assets/images/`

**Caching:**
- None - Static site served directly

## Authentication & Identity

**Auth Provider:**
- Not applicable - No authentication required

**Social Links:**
- GitHub: `maxgraf96`
- Instagram: `_maxgraf`
- LinkedIn: `max-graf-3265171a9`
- Twitter: `maxgraf__`
- YouTube: `UC8B_BlQEDOehnXvGmYPjPDQ`
- Facebook: `maxgraf1996`
- Spotify: `4P18zJpH8WSmt5tWlACK4s`

All configured in `_config.yml`

## Monitoring & Observability

**Error Tracking:**
- None detected

**Logs:**
- Jekyll build logs (local and CI)
- GitHub Actions workflow logs

## CI/CD & Deployment

**Hosting:**
- GitHub Pages
- Custom domain: `maxgraf.space`
- CNAME file: `CNAME` (contains `maxgraf.space`)

**CI Pipeline:**
- GitHub Actions workflow: `.github/workflows/jekyll.yml`
- Triggers: Push to `main` branch, manual dispatch
- Build steps:
  1. Checkout code
  2. Setup Ruby 3.1 with Bundler cache
  3. Configure Pages
  4. Build with Jekyll (`JEKYLL_ENV=production`)
  5. Upload artifact
  6. Deploy to GitHub Pages

**Build Environment:**
- Ubuntu latest
- Ruby 3.1
- Bundler with gem caching

## Environment Configuration

**Required env vars:**
- None - No secrets or API keys required

**Secrets location:**
- Not applicable - No secrets used

**Build-time variables:**
- `JEKYLL_ENV=production` - Set in CI workflow
- `steps.pages.outputs.base_path` - GitHub Pages base URL

## Webhooks & Callbacks

**Incoming:**
- None

**Outgoing:**
- None

## Third-Party Assets

**External Scripts:**
- Google Tag Manager (gtag.js) - Analytics tracking

**External Styles:**
- None (all CSS is local)

**External Fonts:**
- System fonts only (via Minima theme)

**Icons:**
- SVG icons from Minima theme (`assets/minima-social-icons.svg`)
- Custom images for Spotify, Google Scholar

---

*Integration audit: 2026-01-31*
