#!/bin/bash
# Build Tailwind CSS v4 for Jekyll

# Development build
if [ "$JEKYLL_ENV" != "production" ]; then
  npx @tailwindcss/cli -i ./src/styles.css -o ./assets/css/main.css --watch
else
  # Production build
  npx @tailwindcss/cli -i ./src/styles.css -o ./assets/css/main.css --minify
fi
