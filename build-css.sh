#!/bin/bash
# Build Tailwind CSS for Jekyll

# Development build
if [ "$JEKYLL_ENV" != "production" ]; then
  npx tailwindcss -i ./src/styles.css -o ./assets/css/main.css --watch
else
  # Production build
  npx tailwindcss -i ./src/styles.css -o ./assets/css/main.css --minify
fi
