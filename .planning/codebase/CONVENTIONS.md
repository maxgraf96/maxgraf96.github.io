# Coding Conventions

**Analysis Date:** 2026-01-31

## Overview

This is a Jekyll-based personal website using the Minima theme. The codebase follows Jekyll conventions and uses Liquid templating, SCSS for styling, and Markdown for content.

## File Naming Patterns

**Markdown Content Files:**
- Blog posts: `YYYY-MM-DD-kebab-case-title.md` (e.g., `2021-05-04-interactive-pop-piano-cocreation.md`)
- News items: `DD-MM-YYYY-kebab-case-title.md` (e.g., `20-02-2024-icure-discover.md`)
- Pages: `kebab-case.md` (e.g., `about.md`, `amdemo.md`)

**Layout Files:**
- HTML templates: `snake_case.html` (e.g., `default.html`, `home.html`)

**Include Files:**
- HTML partials: `snake_case.html` (e.g., `header.html`, `social.html`)
- Multi-word includes: `snake_case.html` (e.g., `spotifyalbum.html`, `music_year_span.html`, `postscreenshot.html`, `audioexamples.html`)

**Stylesheet Files:**
- SCSS main files: `snake_case.scss` (e.g., `main.scss`, `styles.scss`)
- SCSS partials: underscore prefix + `snake_case.scss` (e.g., `_base.scss`, `_layout.scss`, `_syntax-highlighting.scss`)
- Plain CSS: `snake_case.css` (e.g., `social.css`)

## Frontmatter Conventions

**Standard Frontmatter Variables:**

All content files use YAML frontmatter between triple dashes:

```yaml
---
layout: post|page|home|default
title: "String Title"
---
```

**Posts (`_posts/*.md`):**
```yaml
---
layout: post
title: "Human Readable Title"
date: YYYY-MM-DD HH:MM:SS +0100
categories: code
tags: code
shortdescription: Brief description for listings
image: /assets/images/filename.png
---
```

**News (`_news/*.md`):**
```yaml
---
title: "News Item Title"
date: YYYY-MM-DD
---
```

**Pages (`_pages/*.md`):**
```yaml
---
layout: page
title: lowercase|"Title Case"
permalink: /slug/
redirect_from: /old-path/  # optional
---
```

**Special Page Patterns:**
- About page uses `title: "about"` (lowercase) with special handling in `page.html`
- Code page uses `title: code` to trigger project listing display
- Music page uses `title: music` to trigger animated background

## Liquid Template Conventions

**Tag Delimiters:**
- Output: `{{ variable }}` (always spaced)
- Logic: `{% command %}` (always spaced)

**Control Flow Style:**
```liquid
{%- if condition -%}
  content
{%- endif -%}
```

Use hyphen-minus (`-`) to strip whitespace: `{%-` and `-%}`

**Variable Naming:**
- Use camelCase for custom variables: `shortdescription`, `modified_date`
- Use snake_case for Jekyll variables: `site.title`, `page.date`, `paginator.posts`

**Filters:**
- Chain filters with `|`: `{{ page.title | escape }}`
- Common filters used: `escape`, `date`, `date_to_xmlschema`, `relative_url`, `default`, `cgi_escape`

**Date Formatting:**
```liquid
{%- assign date_format = site.minima.date_format | default: "%b %-d, %Y" -%}
{{ post.date | date: date_format }}
```

## HTML Conventions

**Indentation:**
- 2 spaces for HTML/Liquid templates
- Consistent nesting within Jekyll tags

**Attribute Ordering:**
```html
<tag attribute="value" style="css" target="_blank">
```

**External Links:**
- Always use `target="_blank"` for external links
- Always use `rel="me"` for social profile links

**Self-Closing Tags:**
```html
<link rel="stylesheet" href="...">
<meta name="..." content="...">
```

## CSS/SCSS Conventions

**File Organization:**
- Main entry: `assets/css/main.scss` (imports Minima theme)
- Custom styles: `assets/css/social.css` (imported separately)
- Theme overrides: `_sass/minima/` directory

**SCSS Variable Naming:**
```scss
$base-font-family: ... !default;
$base-font-size: 16px !default;
$grey-color-light: lighten($grey-color, 40%) !default;
```

**Comment Style:**
```scss
/**
 * Section header
 */
.element {
  // inline comment
}
```

**CSS Class Naming:**
- BEM-like naming: `.site-header`, `.site-title`, `.post-content`
- Utility classes: `.wrapper`, `.mainContainer`, `.newsContainer`

**Responsive Breakpoints:**
```scss
$on-palm: 600px;
$on-laptop: 800px;

@include media-query($on-palm) {
  // mobile styles
}
```

## Markdown Conventions

**Headers:**
- Use `##` for main sections
- Use `###` for subsections

**Line Breaks:**
- Use `<br />` for explicit line breaks in paragraphs
- Use `\` at end of line for soft breaks

**Images:**
```markdown
![Alt text](/assets/images/filename.png)
```

**Links:**
```markdown
[Text](url)
<a href="url" target="_blank">Text</a>  <!-- for external links -->
```

**Comments:**
```markdown
[comment]: <> (This is a comment)
```

## Include Usage Patterns

**spotifyalbum.html:**
```liquid
{% include spotifyalbum.html id="ALBUM_ID" height="152" %}
```

**music_year_span.html:**
```liquid
{% include music_year_span.html year='2022' %}
```

**postscreenshot.html:**
```liquid
{%- include postscreenshot.html path="/assets/images/filename.png" -%}
```

**audioexamples.html:**
```liquid
{%- include audioexamples.html paths='/path/to/file1.mp3 /path/to/file2.mp3' -%}
```

## Configuration Conventions

**_config.yml Structure:**
```yaml
# Site settings
title: Site Title
email: email@example.com
description: >-  # folded style for multi-line
  Description text

# Build settings
theme: minima
plugins:
  - jekyll-feed
  - jekyll-redirect-from

# Custom collections
collections:
  news:
    output: true
    permalink: /news/:title/

# Navigation
header_pages:
  - _pages/page.md
```

## Error Handling

**No explicit error handling** - Jekyll fails at build time for:
- Missing layouts
- Invalid YAML frontmatter
- Missing include files

**Defensive Template Patterns:**
```liquid
{%- if page.title -%}
  {{ page.title | escape }}
{%- endif -%}

{{ site.minima.date_format | default: "%b %-d, %Y" }}
```

## Code Organization Principles

1. **Separation of Concerns:**
   - Layouts in `_layouts/`
   - Reusable components in `_includes/`
   - Content in `_posts/`, `_news/`, `_pages/`
   - Styles in `assets/css/` and `_sass/`

2. **DRY Principle:**
   - Use includes for repeated HTML patterns
   - Use layouts for page structure
   - Use SCSS variables for theming

3. **Naming Consistency:**
   - Kebab-case for URLs and file names
   - snake_case for Liquid variables and includes
   - camelCase for custom frontmatter

---

*Convention analysis: 2026-01-31*
