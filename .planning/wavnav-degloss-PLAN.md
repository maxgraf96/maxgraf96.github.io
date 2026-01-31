# WavNav De-Glossification Plan

## Current Problems (ChatGPT-generated look)
1. Glassmorphism header (blur + transparency) - too trendy
2. Mint green (#22c28f) accent - screams "AI startup"
3. Perfect symmetry everywhere - feels template-y
4. Emoji icons (🌌 🔍 ⚡ 🎛️) - generic
5. Smooth gradients - too polished
6. Inter font - safe but boring

## Desired Changes

### 1. Kill Glassmorphism (Idea 1)
- Replace `backdrop-filter: blur(20px)` with solid dark background
- Remove transparency effects
- Make header solid #0a0a0a or slightly lighter #111

### 2. Typography Refresh (Idea 3)
- Replace Inter with something more distinctive
- Options: Space Grotesk, DM Sans, or even system fonts with character
- Add slight letter-spacing to headings
- Consider monospace for some UI elements

### 3. Add Texture (Idea 4)
- Subtle noise/grain overlay
- Or very subtle geometric pattern
- Keep it dark and understated

### 4. Break Symmetry (Idea 5)
- Offset hero content (not perfectly centered)
- Asymmetric feature cards layout
- Vary section padding intentionally

### 5. Replace Emojis (Idea 6)
- Simple line icons or no icons at all
- Or use text-only feature headings
- More minimalist approach

## Files to Modify
1. `_layouts/wavnav.html` - Header, fonts
2. `_wavnav/index.md` - Hero layout, feature cards
3. `_wavnav/features.md` - Layout changes
4. `_wavnav/screenshots.md` - Layout changes

## New Color Direction
- Primary: Burnt orange (#e85d04) or deep purple (#7c3aed)
- Or stay dark but shift to warm grays
- Avoid the mint green entirely
