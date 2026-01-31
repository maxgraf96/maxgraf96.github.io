#!/usr/bin/env bash
set -euo pipefail

# Run from the repo root (where Gemfile lives)
if [[ ! -f "Gemfile" ]]; then
  echo "Error: Gemfile not found. Run this from your Jekyll project root."
  exit 1
fi

# Add missing stdlib-now-gems for Ruby 3.4+ (idempotent)
bundle add csv --skip-install >/dev/null 2>&1 || true
bundle add base64 --skip-install >/dev/null 2>&1 || true

# Install gems (including the ones just added) and verify Jekyll runs
bundle install
bundle exec jekyll -v >/dev/null

echo "✅ Installed gems. Start the site with: bundle exec jekyll serve"
