# Testing Patterns

**Analysis Date:** 2026-01-31

## Overview

This Jekyll-based personal website has **no automated testing framework** configured. Testing is performed manually through local development and visual inspection.

## Current Testing Approach

**Manual Testing Only:**
- Local development server: `bundle exec jekyll serve`
- Visual inspection of rendered pages
- Link checking by navigation
- Mobile responsiveness testing via browser dev tools

## Build Verification

**Local Build:**
```bash
bundle exec jekyll build
```

**Build Output Location:**
- Generated site: `_site/` directory
- Build artifacts: `.jekyll-cache/` directory

**Build Success Indicators:**
- No Liquid syntax errors in console
- No missing include warnings
- No YAML parsing errors

## CI/CD Testing

**GitHub Actions Workflow:** `.github/workflows/jekyll.yml`

The deployment pipeline performs implicit testing through the build process:

```yaml
- name: Build with Jekyll
  run: bundle exec jekyll build --baseurl "${{ steps.pages.outputs.base_path }}"
  env:
    JEKYLL_ENV: production
```

**What the CI validates:**
- Jekyll can successfully build the site
- No Liquid syntax errors
- No missing dependencies
- Production build completes

**What the CI does NOT validate:**
- HTML validity
- CSS correctness
- Link functionality
- Accessibility compliance
- Mobile responsiveness

## Content Testing Patterns

**Manual Content Review Checklist:**

1. **Frontmatter Validation:**
   - All posts have required fields: `layout`, `title`, `date`, `tags`
   - All news items have: `title`, `date`
   - All pages have: `layout`, `title`, `permalink`

2. **Asset Verification:**
   - Images referenced exist in `/assets/images/`
   - Audio files exist in `/assets/sounds/`
   - No broken image links

3. **Link Testing:**
   - External links use `target="_blank"`
   - Internal links use `relative_url` filter
   - Social media profile links are current

4. **Responsive Testing:**
   - Test at breakpoints: 600px, 800px, 1200px
   - Mobile menu functionality
   - Image scaling behavior

## Recommended Testing Additions

**HTML Proofer (Recommended):**
```ruby
# Gemfile
group :test do
  gem 'html-proofer'
end
```

```bash
# Test command
bundle exec htmlproofer ./_site \
  --disable-external \
  --ignore-urls "/#.*/"
```

**Link Checking:**
```bash
# Check for broken internal links
bundle exec jekyll build
# Manually verify all links in _site/
```

**Accessibility Testing:**
- Use browser extensions (axe, WAVE)
- Check color contrast ratios
- Verify alt text on images

## Test File Organization

**Current State:** No test files exist

**If Adding Tests:**
```
project-root/
├── test/                    # Test directory (not present)
│   ├── test_helper.rb      # Test setup
│   ├── integration/        # Integration tests
│   └── unit/              # Unit tests
└── Rakefile               # Test runner tasks
```

## Common Issues to Check

**Build-Time Issues:**
- Missing `layout` in frontmatter
- Invalid YAML syntax (unclosed quotes, bad indentation)
- Missing include files
- Undefined Liquid variables

**Runtime Issues:**
- Broken image paths
- External link rot
- CSS specificity conflicts
- Mobile layout overflow

**Content Issues:**
- Inconsistent date formatting
- Missing `shortdescription` on posts
- Missing `image` for post listings

## Pre-Deployment Checklist

1. Build succeeds locally: `bundle exec jekyll build`
2. All posts display correctly
3. Navigation works on all pages
4. Images load properly
5. External links open in new tabs
6. Mobile menu functions
7. No console errors in browser

## Testing Commands Summary

```bash
# Local development with auto-reload
bundle exec jekyll serve

# Production build test
JEKYLL_ENV=production bundle exec jekyll build

# Clean build (remove cache)
bundle exec jekyll clean && bundle exec jekyll build
```

---

*Testing analysis: 2026-01-31*
