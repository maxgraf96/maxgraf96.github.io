---
layout: wavnav
title: Features
permalink: /wavnav/features/
---

<div class="features-hero">
  <h1>Features</h1>
  <p class="subtitle">Everything you need to navigate your sound library</p>
</div>

<div class="feature-section">
  <div class="feature-row">
    <div class="feature-text">
      <h2>🌌 Visual Sound Map</h2>
      <p>
        WavNav transforms your audio library into a stunning nebula visualization. 
        Using advanced UMAP dimensionality reduction, similar sounds naturally cluster together, 
        creating an intuitive spatial map of your entire collection.
      </p>
      <ul>
        <li>GPU-accelerated OpenGL/Metal rendering</li>
        <li>Smooth pan and zoom navigation</li>
        <li>Color-coded clustering by similarity</li>
        <li>Configurable nebula glow effects</li>
      </ul>
    </div>
    <div class="feature-image">
      <img src="/assets/images/wavnav-visual.png" alt="Visual Sound Map" class="screenshot">
    </div>
  </div>
</div>

<div class="feature-section alt">
  <div class="feature-row reverse">
    <div class="feature-text">
      <h2>🔍 Semantic Search</h2>
      <p>
        Find sounds by describing them. Our CLAP-powered AI understands both text queries 
        and audio references, delivering results that match what you're looking for—not just 
        what your files are named.
      </p>
      <ul>
        <li>Text-to-audio semantic matching</li>
        <li>Audio similarity search (drag-and-drop)</li>
        <li>Adjustable similarity thresholds</li>
        <li>Filename matching fallback</li>
      </ul>
    </div>
    <div class="feature-image">
      <img src="/assets/images/wavnav-search.png" alt="Semantic Search" class="screenshot">
    </div>
  </div>
</div>

<div class="feature-section">
  <div class="feature-row">
    <div class="feature-text">
      <h2>📁 Folder Management</h2>
      <p>
        Organize multiple sample libraries with ease. Activate or deactivate folders on the fly, 
        and WavNav will update the visualization instantly—no re-scanning required.
      </p>
      <ul>
        <li>Multiple folder support</li>
        <li>Toggle folders on/off dynamically</li>
        <li>Persistent folder configuration</li>
        <li>Drag-and-drop folder addition</li>
      </ul>
    </div>
    <div class="feature-image">
      <img src="/assets/images/wavnav-folders.png" alt="Folder Management" class="screenshot">
    </div>
  </div>
</div>

<div class="feature-section alt">
  <div class="feature-row reverse">
    <div class="feature-text">
      <h2>🎛️ Smart Filters</h2>
      <p>
        Narrow down your search with intelligent filtering. Filter by musical key, BPM range, 
        or combine multiple criteria to find exactly what you need.
      </p>
      <ul>
        <li>12-key musical key detection</li>
        <li>BPM range slider (20-200+)</li>
        <li>Real-time filter updates</li>
        <li>Combined search + filter queries</li>
      </ul>
    </div>
    <div class="feature-image">
      <img src="/assets/images/wavnav-filters.png" alt="Smart Filters" class="screenshot">
    </div>
  </div>
</div>

<div class="feature-section">
  <div class="feature-row">
    <div class="feature-text">
      <h2>⚡ High Performance</h2>
      <p>
        Built for professionals with massive libraries. WavNav handles 250,000+ samples 
        with sub-30-second initial load times and instant cached startup.
      </p>
      <ul>
        <li>UMAP + DBSCAN clustering optimized for audio</li>
        <li>SQLite caching with BLOB storage</li>
        <li>Async background processing</li>
        <li>Responsive UI with progress tracking</li>
      </ul>
    </div>
    <div class="feature-image">
      <div class="performance-stats">
        <div class="stat">
          <span class="stat-number">&lt;30s</span>
          <span class="stat-label">First load (250k samples)</span>
        </div>
        <div class="stat">
          <span class="stat-number">&lt;3s</span>
          <span class="stat-label">Cached startup</span>
        </div>
        <div class="stat">
          <span class="stat-number">60fps</span>
          <span class="stat-label">Smooth navigation</span>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="feature-grid-section">
  <h2>Additional Features</h2>  <div class="mini-feature-grid">
    <div class="mini-feature">
      <h4>🔊 Instant Preview</h4>
      <p>Hover over any sample to hear it instantly. No clicking required.</p>
    </div>
    <div class="mini-feature">
      <h4>📋 Copy Path</h4>
      <p>One-click copy file path to clipboard for quick DAW import.</p>
    </div>
    <div class="mini-feature">
      <h4>📂 Reveal in Finder</h4>
      <p>Open the containing folder directly from the app.</p>
    </div>
    <div class="mini-feature">
      <h4>🔎 Find Similar</h4>
      <p>Discover variations and alternatives with one click.</p>
    </div>
    <div class="mini-feature">
      <h4>💾 Auto-Save</h4>
      <p>Your configuration and cache persist between sessions.</p>
    </div>
    <div class="mini-feature">
      <h4>🎨 Dark UI</h4>
      <p>Easy on the eyes during long studio sessions.</p>
    </div>
  </div>
</div>

<div class="cta-section">
  <h2>Ready to transform your workflow?</h2>
  <a href="https://gumroad.com" class="cta-button" target="_blank">Get WavNav</a>
</div>

<style>
.features-hero {
  text-align: center;
  padding: 60px 20px 40px;
  margin-bottom: 40px;
}

.features-hero h1 {
  font-size: 3.5rem;
  margin-bottom: 16px;
  background: linear-gradient(135deg, #fff 0%, #22c28f 100%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.subtitle {
  font-size: 1.3rem;
  color: rgba(255, 255, 255, 0.6);
}

.feature-section {
  padding: 80px 0;
  border-bottom: 1px solid rgba(255, 255, 255, 0.05);
}

.feature-section.alt {
  background: rgba(0, 0, 0, 0.2);
  margin: 0 -20px;
  padding: 80px 20px;
}

.feature-row {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 60px;
  align-items: center;
  max-width: 1200px;
  margin: 0 auto;
}

.feature-row.reverse {
  direction: rtl;
}

.feature-row.reverse > * {
  direction: ltr;
}

.feature-text h2 {
  font-size: 2.2rem;
  margin-bottom: 20px;
  color: rgba(255, 255, 255, 0.95);
}

.feature-text p {
  color: rgba(255, 255, 255, 0.7);
  font-size: 1.1rem;
  line-height: 1.7;
  margin-bottom: 24px;
}

.feature-text ul {
  list-style: none;
  padding: 0;
}

.feature-text li {
  color: rgba(255, 255, 255, 0.6);
  padding: 8px 0;
  padding-left: 28px;
  position: relative;
}

.feature-text li::before {
  content: '✓';
  position: absolute;
  left: 0;
  color: #22c28f;
  font-weight: bold;
}

.feature-image {
  display: flex;
  justify-content: center;
  align-items: center;
}

.screenshot {
  width: 100%;
  border-radius: 12px;
  box-shadow: 0 20px 60px rgba(0, 0, 0, 0.5);
  border: 1px solid rgba(255, 255, 255, 0.1);
}

.performance-stats {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 24px;
  width: 100%;
}

@media (max-width: 768px) {
  .performance-stats {
    grid-template-columns: 1fr;
  }
}

.stat {
  background: rgba(34, 194, 143, 0.1);
  border: 1px solid rgba(34, 194, 143, 0.3);
  border-radius: 16px;
  padding: 32px;
  text-align: center;
}

.stat-number {
  display: block;
  font-size: 2.5rem;
  font-weight: 700;
  color: #22c28f;
  margin-bottom: 8px;
}

.stat-label {
  color: rgba(255, 255, 255, 0.7);
  font-size: 1rem;
}

.feature-grid-section {
  padding: 80px 0;
}

.feature-grid-section h2 {
  text-align: center;
  font-size: 2.5rem;
  margin-bottom: 48px;
  color: rgba(255, 255, 255, 0.95);
}

.mini-feature-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 24px;
}

.mini-feature {
  background: rgba(255, 255, 255, 0.03);
  border: 1px solid rgba(255, 255, 255, 0.08);
  border-radius: 16px;
  padding: 28px;
  transition: all 0.3s ease;
}

.mini-feature:hover {
  background: rgba(255, 255, 255, 0.05);
  border-color: rgba(34, 194, 143, 0.3);
}

.mini-feature h4 {
  color: rgba(255, 255, 255, 0.95);
  margin: 0 0 12px 0;
  font-size: 1.1rem;
}

.mini-feature p {
  color: rgba(255, 255, 255, 0.6);
  margin: 0;
  font-size: 0.95rem;
  line-height: 1.6;
}

.cta-section {
  text-align: center;
  padding: 80px 20px;
  margin-top: 40px;
}

.cta-section h2 {
  font-size: 2rem;
  margin-bottom: 24px;
  color: rgba(255, 255, 255, 0.95);
}

.cta-button {
  display: inline-block;
  background: linear-gradient(135deg, #22c28f 0%, #1c8c60 100%);
  color: white;
  padding: 18px 40px;
  border-radius: 999px;
  text-decoration: none;
  font-weight: 600;
  font-size: 1.2rem;
  transition: all 0.3s ease;
  box-shadow: 0 4px 20px rgba(34, 194, 143, 0.4);
}

.cta-button:hover {
  transform: translateY(-2px);
  box-shadow: 0 8px 30px rgba(34, 194, 143, 0.5);
  color: white;
  text-decoration: none;
}

@media (max-width: 900px) {
  .feature-row {
    grid-template-columns: 1fr;
    gap: 40px;
  }
  
  .feature-row.reverse {
    direction: ltr;
  }
  
  .features-hero h1 {
    font-size: 2.5rem;
  }
  
  .feature-text h2 {
    font-size: 1.8rem;
  }
}
</style>