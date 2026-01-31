---
layout: page
title: Screenshots
permalink: /wavnav/screenshots/
---

<div class="screenshots-hero">
  <h1>Screenshots</h1>
  <p class="subtitle">See WavNav in action</p>
</div>

<div class="gallery-grid">
  <div class="gallery-item featured">
    <img src="/assets/images/wavnav-main.png" alt="Main Interface" class="gallery-image">
    <div class="gallery-caption">
      <h3>Main Interface</h3>
      <p>The stunning nebula visualization with your entire sample library mapped as interactive points. Pan, zoom, and explore your sounds spatially.</p>
    </div>
  </div>

  <div class="gallery-item">
    <img src="/assets/images/wavnav-folders.png" alt="Folder Management" class="gallery-image">
    <div class="gallery-caption">
      <h3>Folder Management</h3>
      <p>Easily manage multiple sample libraries. Toggle folders on/off to control which collections appear in your map.</p>
    </div>
  </div>

  <div class="gallery-item featured">
    <img src="/assets/images/wavnav-scale.png" alt="Large Scale Library" class="gallery-image">
    <div class="gallery-caption">
      <h3>Scale Performance</h3>
      <p>WavNav handles massive libraries with ease—shown here with ~50,000 audio samples rendered smoothly at 60fps.</p>
    </div>
  </div>
</div>

<div class="feature-highlights">
  <h2>Interface Highlights</h2>
  
  <div class="highlight-grid">
    <div class="highlight-card">
      <div class="highlight-icon">🔍</div>
      <h4>Smart Search Bar</h4>
      <p>Centered search with text input, key filtering dropdown, and BPM range slider—all in one elegant control bar.</p>
    </div>
    
    <div class="highlight-card">
      <div class="highlight-icon">🎚️</div>
      <h4>Audio Panel</h4>
      <p>Bottom-mounted audio controls with real-time FFT visualization, volume slider, and currently playing sample name.</p>
    </div>
    
    <div class="highlight-card">
      <div class="highlight-icon">📍</div>
      <h4>Hex Menu</h4>
      <p>Contextual radial menu appears when you click a sample—copy path, find similar, or view detailed info.</p>
    </div>
    
    <div class="highlight-card">
      <div class="highlight-icon">🌐</div>
      <h4>Glassmorphic UI>/h4>
      <p>Translucent panels with backdrop blur create depth while keeping the beautiful nebula visualization visible.</p>
    </div>
  </div>
</div>

<div class="workflow-section">
  <h2>Typical Workflow</h2>
  
  <div class="workflow-steps">
    <div class="workflow-step">
      <div class="step-number">1</div>
      <h4>Add Folders</h4>
      <p>Drag-and-drop your sample folders or click the folder button to browse. WavNav will scan and analyze all audio files.</p>
    </div>
    
    <div class="workflow-step">
      <div class="step-number">2</div>
      <h4>Wait for Analysis</h4>
      <p>The app extracts audio features and creates CLAP embeddings. First load takes ~30 seconds for 250k samples; cached loads are instant.</p>
    </div>
    
    <div class="workflow-step">
      <div class="step-number">3</div>
      <h4>Explore the Map</h4>
      <p>Navigate the nebula visualization. Similar sounds cluster together. Hover to preview, click to select, right-click for options.</p>
    </div>
    
    <div class="workflow-step">
      <div class="step-number">4</div>
      <h4>Search or Filter</h4>
      <p>Use semantic search to describe what you want, or filter by key/BPM. Combine both for precise results.</p>
    </div>
    
    <div class="workflow-step">
      <div class="step-number">5</div>
      <h4>Export to DAW</h4>
      <p>Copy the file path with one click and paste it directly into your DAW or sampler of choice.</p>
    </div>
  </div>
</div>

<div class="video-section">
  <h2>Video Demo</h2>
  <p>Coming soon! Check back for a video walkthrough of WavNav in action.</p>
</div>

<div class="cta-section">
  <h2>Experience it yourself</h2>
  <a href="https://gumroad.com" class="cta-button" target="_blank">Get WavNav</a>
</div>

<style>
.screenshots-hero {
  text-align: center;
  padding: 60px 20px 40px;
  margin-bottom: 40px;
}

.screenshots-hero h1 {
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

.gallery-grid {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 32px;
  margin-bottom: 80px;
}

.gallery-item {
  background: rgba(255, 255, 255, 0.03);
  border: 1px solid rgba(255, 255, 255, 0.08);
  border-radius: 20px;
  overflow: hidden;
  transition: all 0.3s ease;
}

.gallery-item:hover {
  border-color: rgba(34, 194, 143, 0.3);
  transform: translateY(-4px);
  box-shadow: 0 20px 60px rgba(0, 0, 0, 0.4);
}

.gallery-item.featured {
  grid-column: span 2;
}

.gallery-image {
  width: 100%;
  height: auto;
  display: block;
  border-bottom: 1px solid rgba(255, 255, 255, 0.08);
}

.gallery-caption {
  padding: 28px;
}

.gallery-caption h3 {
  color: rgba(255, 255, 255, 0.95);
  margin: 0 0 12px 0;
  font-size: 1.4rem;
}

.gallery-caption p {
  color: rgba(255, 255, 255, 0.6);
  margin: 0;
  line-height: 1.6;
}

.feature-highlights {
  padding: 60px 0;
  margin-bottom: 60px;
}

.feature-highlights h2 {
  text-align: center;
  font-size: 2.5rem;
  margin-bottom: 48px;
  color: rgba(255, 255, 255, 0.95);
}

.highlight-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
  gap: 24px;
}

.highlight-card {
  background: rgba(255, 255, 255, 0.02);
  border: 1px solid rgba(255, 255, 255, 0.06);
  border-radius: 16px;
  padding: 28px;
  text-align: center;
  transition: all 0.3s ease;
}

.highlight-card:hover {
  background: rgba(255, 255, 255, 0.04);
  border-color: rgba(34, 194, 143, 0.2);
}

.highlight-icon {
  font-size: 2rem;
  margin-bottom: 16px;
}

.highlight-card h4 {
  color: rgba(255, 255, 255, 0.95);
  margin: 0 0 12px 0;
  font-size: 1.1rem;
}

.highlight-card p {
  color: rgba(255, 255, 255, 0.6);
  margin: 0;
  font-size: 0.95rem;
  line-height: 1.6;
}

.workflow-section {
  padding: 60px 0;
  margin-bottom: 60px;
}

.workflow-section h2 {
  text-align: center;
  font-size: 2.5rem;
  margin-bottom: 48px;
  color: rgba(255, 255, 255, 0.95);
}

.workflow-steps {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
  gap: 24px;
}

.workflow-step {
  text-align: center;
  padding: 32px 24px;
  background: rgba(255, 255, 255, 0.02);
  border-radius: 16px;
  border: 1px solid rgba(255, 255, 255, 0.06);
  position: relative;
}

.step-number {
  width: 48px;
  height: 48px;
  background: linear-gradient(135deg, #22c28f 0%, #1c8c60 100%);
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  color: white;
  font-weight: 700;
  font-size: 1.3rem;
  margin: 0 auto 20px;
}

.workflow-step h4 {
  color: rgba(255, 255, 255, 0.95);
  margin: 0 0 12px 0;
  font-size: 1.1rem;
}

.workflow-step p {
  color: rgba(255, 255, 255, 0.6);
  margin: 0;
  font-size: 0.95rem;
  line-height: 1.6;
}

.video-section {
  text-align: center;
  padding: 80px 20px;
  background: rgba(0, 0, 0, 0.3);
  border-radius: 24px;
  margin-bottom: 60px;
  border: 1px solid rgba(255, 255, 255, 0.05);
}

.video-section h2 {
  font-size: 2rem;
  margin-bottom: 16px;
  color: rgba(255, 255, 255, 0.95);
}

.video-section p {
  color: rgba(255, 255, 255, 0.6);
  font-size: 1.1rem;
}

.cta-section {
  text-align: center;
  padding: 80px 20px;
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
  .gallery-grid {
    grid-template-columns: 1fr;
  }
  
  .gallery-item.featured {
    grid-column: span 1;
  }
  
  .screenshots-hero h1 {
    font-size: 2.5rem;
  }
}
</style>