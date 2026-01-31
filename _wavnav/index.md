---
layout: wavnav
title: WavNav
permalink: /wavnav/
---

<div class="wavnav-hero">
  <div class="hero-content">
    <img src="/assets/images/wavnav-icon.png" alt="WavNav Icon" class="app-icon">
    <h1 class="app-title">WavNav</h1>
    <p class="tagline">Navigate your sound universe</p>
    <p class="description">
      An intelligent audio sample browser that maps your entire library into an interactive, 
      searchable galaxy. Find the perfect sound in seconds.
    </p>
    <div class="cta-buttons">
      <a href="https://gumroad.com" class="cta-primary" target="_blank">Get WavNav</a>
      <a href="/wavnav/features" class="cta-secondary">Explore Features</a>
    </div>
  </div>
</div>

<div class="features-preview">
  <h2>Why WavNav?</h2>
  <div class="feature-grid">
    <div class="feature-card">
      <div class="feature-number">01</div>
      <h3>Visual Sound Map</h3>
      <p>Your samples arranged in a spatial visualization. Similar sounds cluster together, making discovery intuitive.</p>
    </div>
    <div class="feature-card">
      <div class="feature-number">02</div>
      <h3>Semantic Search</h3>
      <p>Search with text or audio. CLAP-powered AI understands what you're looking for, even without exact filenames.</p>
    </div>
    <div class="feature-card">
      <div class="feature-number">03</div>
      <h3>Lightning Fast</h3>
      <p>Load 250,000+ samples in under 30 seconds. Cached embeddings mean instant startup on subsequent launches.</p>
    </div>
    <div class="feature-card">
      <div class="feature-number">04</div>
      <h3>Smart Filtering</h3>
      <p>Filter by key, BPM, or custom tags. Find exactly what you need without endless scrolling through folders.</p>
    </div>
  </div>
</div>

<div class="screenshot-showcase">
  <h2>See It In Action</h2>
  <div class="screenshot-container">
    <img src="/assets/images/wavnav-main.png" alt="WavNav Main Interface" class="main-screenshot">
  </div>
  <a href="/wavnav/screenshots" class="view-all-link">View All Screenshots →</a>
</div>

<div class="tech-specs">
  <h2>Built for Performance</h2>
  <div class="spec-grid">
    <div class="spec-item">
      <span class="spec-number">250k+</span>
      <span class="spec-label">Samples Handled</span>
    </div>
    <div class="spec-item">
      <span class="spec-number">&lt;30s</span>
      <span class="spec-label">First Load Time</span>
    </div>
    <div class="spec-item">
      <span class="spec-number">OpenGL</span>
      <span class="spec-label">GPU Accelerated</span>
    </div>
    <div class="spec-item">
      <span class="spec-number">CLAP</span>
      <span class="spec-label">AI-Powered Search</span>
    </div>
  </div>
</div>

<div class="final-cta">
  <h2>Ready to explore your sound library?</h2>
  <p>Join producers and sound designers who navigate their samples with WavNav.</p>
  <a href="https://gumroad.com" class="cta-primary large" target="_blank">Get WavNav Now</a>
</div>

<style>
.wavnav-hero {
  background: #0a0a0a;
  padding: 120px 20px 100px 20px;
  margin: -30px -20px 60px -20px;
  position: relative;
  overflow: hidden;
}

/* Asymmetric hero layout */
.hero-content {
  position: relative;
  z-index: 1;
  max-width: 800px;
  margin: 0 0 0 10%;
  text-align: left;
}

.hero-content {
  position: relative;
  z-index: 1;
  max-width: 800px;
  margin: 0 auto;
}

.app-icon {
  width: 80px;
  height: 80px;
  border-radius: 16px;
  margin-bottom: 32px;
  opacity: 0.9;
}

.app-title {
  font-size: 5rem;
  font-weight: 700;
  margin: 0 0 16px 0;
  color: #fff;
  letter-spacing: -0.04em;
  line-height: 1;
}

.tagline {
  font-size: 1.25rem;
  color: #e85d04;
  margin-bottom: 24px;
  font-weight: 500;
  text-transform: uppercase;
  letter-spacing: 0.1em;
}

.description {
  font-size: 1.1rem;
  color: #888;
  max-width: 500px;
  margin: 0 0 40px 0;
  line-height: 1.7;
}

.cta-buttons {
  display: flex;
  gap: 16px;
  flex-wrap: wrap;
}

.cta-primary {
  background: #e85d04;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
  font-weight: 600;
  font-size: 0.95rem;
  transition: all 0.15s ease;
  text-transform: uppercase;
  letter-spacing: 0.08em;
}

.cta-primary:hover {
  background: #f48c06;
  color: white;
  text-decoration: none;
}

.cta-secondary {
  background: transparent;
  color: #888;
  padding: 16px 32px;
  text-decoration: none;
  font-weight: 500;
  border: 1px solid #333;
  transition: all 0.15s ease;
  font-size: 0.95rem;
  text-transform: uppercase;
  letter-spacing: 0.08em;
}

.cta-secondary:hover {
  border-color: #e85d04;
  color: #e85d04;
  text-decoration: none;
}

.features-preview {
  margin-bottom: 120px;
  padding: 0 20px;
  max-width: 1200px;
  margin-left: auto;
  margin-right: auto;
}

.features-preview h2 {
  font-size: 2rem;
  margin-bottom: 64px;
  color: #fff;
  text-transform: uppercase;
  letter-spacing: 0.05em;
}

.feature-grid {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 1px;
  background: #1a1a1a;
}

@media (max-width: 768px) {
  .feature-grid {
    grid-template-columns: 1fr;
  }
}

.feature-card {
  background: #0a0a0a;
  padding: 48px;
  transition: all 0.15s ease;
}

.feature-card:hover {
  background: #0f0f0f;
}

.feature-number {
  font-size: 0.85rem;
  color: #e85d04;
  margin-bottom: 24px;
  font-weight: 600;
  letter-spacing: 0.1em;
}

.feature-card h3 {
  color: #fff;
  margin: 0 0 16px 0;
  font-size: 1.5rem;
  font-weight: 600;
}

.feature-card p {
  color: #666;
  margin: 0;
  line-height: 1.7;
  font-size: 0.95rem;
}

.screenshot-showcase {
  margin-bottom: 120px;
  padding: 0 20px;
  max-width: 1200px;
  margin-left: auto;
  margin-right: auto;
}

.screenshot-showcase h2 {
  font-size: 2rem;
  margin-bottom: 48px;
  color: #fff;
  text-transform: uppercase;
  letter-spacing: 0.05em;
}

.screenshot-container {
  margin: 0 0 24px 0;
}

.main-screenshot {
  width: 100%;
  border: 1px solid #1a1a1a;
}

.view-all-link {
  color: #666;
  text-decoration: none;
  font-weight: 500;
  font-size: 0.9rem;
  transition: color 0.15s;
  text-transform: uppercase;
  letter-spacing: 0.08em;
}

.view-all-link:hover {
  color: #e85d04;
}

.tech-specs {
  margin-bottom: 120px;
  padding: 0 20px;
  max-width: 1200px;
  margin-left: auto;
  margin-right: auto;
}

.tech-specs h2 {
  font-size: 2rem;
  margin-bottom: 64px;
  color: #fff;
  text-transform: uppercase;
  letter-spacing: 0.05em;
}

.spec-grid {
  display: flex;
  flex-wrap: wrap;
  gap: 48px;
}

.spec-item {
  padding: 0;
}

.spec-number {
  display: block;
  font-size: 3rem;
  font-weight: 700;
  color: #fff;
  margin-bottom: 8px;
  letter-spacing: -0.02em;
}

.spec-label {
  color: #666;
  font-size: 0.85rem;
  text-transform: uppercase;
  letter-spacing: 0.1em;
}

.final-cta {
  padding: 80px 20px;
  background: #0f0f0f;
  border: 1px solid #1a1a1a;
  margin-bottom: 40px;
  max-width: 800px;
  margin-left: 20px;
}

.final-cta h2 {
  font-size: 2rem;
  margin-bottom: 16px;
  color: #fff;
  text-transform: uppercase;
  letter-spacing: 0.05em;
}

.final-cta p {
  color: #666;
  margin-bottom: 32px;
  font-size: 1rem;
  max-width: 400px;
}

.cta-primary.large {
  padding: 18px 40px;
  font-size: 1rem;
}

@media (max-width: 768px) {
  .wavnav-hero {
    padding: 80px 20px;
  }
  
  .hero-content {
    margin: 0;
    text-align: left;
  }
  
  .app-title {
    font-size: 3rem;
  }
  
  .tagline {
    font-size: 1rem;
  }
  
  .feature-grid {
    grid-template-columns: 1fr;
  }
  
  .feature-card {
    padding: 32px;
  }
  
  .spec-grid {
    gap: 32px;
  }
  
  .final-cta {
    margin-left: 0;
  }
}
</style>