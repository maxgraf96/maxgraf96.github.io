---
layout: page
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
      <div class="feature-icon">🌌</div>
      <h3>Visual Sound Map</h3>
      <p>Your samples arranged in a beautiful nebula visualization. Similar sounds cluster together, making discovery intuitive.</p>
    </div>
    <div class="feature-card">
      <div class="feature-icon">🔍</div>
      <h3>Semantic Search</h3>
      <p>Search with text or audio. Our CLAP-powered AI understands what you're looking for, even without exact filenames.</p>
    </div>
    <div class="feature-card">
      <div class="feature-icon">⚡</div>
      <h3>Lightning Fast</h3>
      <p>Load 250,000+ samples in under 30 seconds. Cached embeddings mean instant startup on subsequent launches.</p>
    </div>
    <div class="feature-card">
      <div class="feature-icon">🎛️</div>
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
  background: linear-gradient(135deg, #0a0a0a 0%, #1a1a2e 50%, #16213e 100%);
  padding: 80px 20px;
  margin: -30px -20px 60px -20px;
  text-align: center;
  position: relative;
  overflow: hidden;
}

.wavnav-hero::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: 
    radial-gradient(circle at 20% 50%, rgba(34, 194, 143, 0.15) 0%, transparent 50%),
    radial-gradient(circle at 80% 20%, rgba(100, 100, 255, 0.1) 0%, transparent 40%),
    radial-gradient(circle at 40% 80%, rgba(255, 100, 200, 0.08) 0%, transparent 40%);
  pointer-events: none;
}

.hero-content {
  position: relative;
  z-index: 1;
  max-width: 800px;
  margin: 0 auto;
}

.app-icon {
  width: 120px;
  height: 120px;
  border-radius: 24px;
  margin-bottom: 24px;
  box-shadow: 0 20px 60px rgba(0, 0, 0, 0.5), 0 0 40px rgba(34, 194, 143, 0.3);
}

.app-title {
  font-size: 4rem;
  font-weight: 700;
  margin: 0 0 10px 0;
  background: linear-gradient(135deg, #fff 0%, #22c28f 100%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.tagline {
  font-size: 1.5rem;
  color: rgba(255, 255, 255, 0.7);
  margin-bottom: 20px;
  font-weight: 300;
}

.description {
  font-size: 1.1rem;
  color: rgba(255, 255, 255, 0.6);
  max-width: 600px;
  margin: 0 auto 40px;
  line-height: 1.6;
}

.cta-buttons {
  display: flex;
  gap: 16px;
  justify-content: center;
  flex-wrap: wrap;
}

.cta-primary {
  background: linear-gradient(135deg, #22c28f 0%, #1c8c60 100%);
  color: white;
  padding: 16px 32px;
  border-radius: 999px;
  text-decoration: none;
  font-weight: 600;
  font-size: 1.1rem;
  transition: all 0.3s ease;
  box-shadow: 0 4px 20px rgba(34, 194, 143, 0.4);
}

.cta-primary:hover {
  transform: translateY(-2px);
  box-shadow: 0 8px 30px rgba(34, 194, 143, 0.5);
  color: white;
  text-decoration: none;
}

.cta-secondary {
  background: rgba(255, 255, 255, 0.1);
  color: rgba(255, 255, 255, 0.9);
  padding: 16px 32px;
  border-radius: 999px;
  text-decoration: none;
  font-weight: 500;
  border: 1px solid rgba(255, 255, 255, 0.2);
  transition: all 0.3s ease;
  backdrop-filter: blur(10px);
}

.cta-secondary:hover {
  background: rgba(255, 255, 255, 0.15);
  color: white;
  text-decoration: none;
}

.features-preview {
  margin-bottom: 80px;
}

.features-preview h2 {
  text-align: center;
  font-size: 2.5rem;
  margin-bottom: 48px;
  color: rgba(255, 255, 255, 0.95);
}

.feature-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
  gap: 24px;
}

.feature-card {
  background: rgba(255, 255, 255, 0.03);
  border: 1px solid rgba(255, 255, 255, 0.08);
  border-radius: 20px;
  padding: 32px;
  transition: all 0.3s ease;
  backdrop-filter: blur(10px);
}

.feature-card:hover {
  background: rgba(255, 255, 255, 0.05);
  border-color: rgba(34, 194, 143, 0.3);
  transform: translateY(-4px);
}

.feature-icon {
  font-size: 2.5rem;
  margin-bottom: 16px;
}

.feature-card h3 {
  color: rgba(255, 255, 255, 0.95);
  margin: 0 0 12px 0;
  font-size: 1.3rem;
}

.feature-card p {
  color: rgba(255, 255, 255, 0.6);
  margin: 0;
  line-height: 1.6;
}

.screenshot-showcase {
  text-align: center;
  margin-bottom: 80px;
  padding: 60px 0;
  background: rgba(0, 0, 0, 0.3);
  border-radius: 24px;
  border: 1px solid rgba(255, 255, 255, 0.05);
}

.screenshot-showcase h2 {
  font-size: 2.5rem;
  margin-bottom: 40px;
  color: rgba(255, 255, 255, 0.95);
}

.screenshot-container {
  max-width: 1000px;
  margin: 0 auto 32px;
  padding: 0 20px;
}

.main-screenshot {
  width: 100%;
  border-radius: 12px;
  box-shadow: 0 30px 80px rgba(0, 0, 0, 0.5);
  border: 1px solid rgba(255, 255, 255, 0.1);
}

.view-all-link {
  color: #22c28f;
  text-decoration: none;
  font-weight: 500;
  font-size: 1.1rem;
  transition: color 0.2s;
}

.view-all-link:hover {
  color: #2ddfa3;
  text-decoration: underline;
}

.tech-specs {
  margin-bottom: 80px;
}

.tech-specs h2 {
  text-align: center;
  font-size: 2.5rem;
  margin-bottom: 48px;
  color: rgba(255, 255, 255, 0.95);
}

.spec-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 24px;
}

.spec-item {
  text-align: center;
  padding: 32px;
  background: rgba(255, 255, 255, 0.02);
  border-radius: 16px;
  border: 1px solid rgba(255, 255, 255, 0.05);
}

.spec-number {
  display: block;
  font-size: 2.5rem;
  font-weight: 700;
  color: #22c28f;
  margin-bottom: 8px;
}

.spec-label {
  color: rgba(255, 255, 255, 0.6);
  font-size: 0.95rem;
}

.final-cta {
  text-align: center;
  padding: 80px 20px;
  background: linear-gradient(135deg, rgba(34, 194, 143, 0.1) 0%, rgba(28, 140, 96, 0.05) 100%);
  border-radius: 24px;
  border: 1px solid rgba(34, 194, 143, 0.2);
  margin-bottom: 40px;
}

.final-cta h2 {
  font-size: 2.5rem;
  margin-bottom: 16px;
  color: rgba(255, 255, 255, 0.95);
}

.final-cta p {
  color: rgba(255, 255, 255, 0.6);
  margin-bottom: 32px;
  font-size: 1.1rem;
}

.cta-primary.large {
  padding: 18px 40px;
  font-size: 1.2rem;
}

@media (max-width: 768px) {
  .app-title {
    font-size: 2.5rem;
  }
  
  .tagline {
    font-size: 1.2rem;
  }
  
  .feature-grid {
    grid-template-columns: 1fr;
  }
  
  .spec-grid {
    grid-template-columns: repeat(2, 1fr);
  }
}
</style>