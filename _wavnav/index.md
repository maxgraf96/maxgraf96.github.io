---
layout: wavnav
title: WavNav
permalink: /wavnav/
---

<!-- Hero Section -->
<div class="relative overflow-hidden px-4 sm:px-6 lg:px-8 py-20 lg:py-20 -mt-4 mb-16">
  <!-- Animated gradient orbs -->
  <div class="absolute inset-0 overflow-hidden pointer-events-none">
    <div class="absolute top-1/4 left-1/5 w-96 h-96 bg-wavnav-mint/10 rounded-full blur-3xl animate-pulse-slow"></div>
    <div class="absolute top-1/5 right-1/4 w-80 h-80 bg-blue-500/10 rounded-full blur-3xl animate-pulse-slow" style="animation-delay: 1s;"></div>
    <div class="absolute bottom-1/4 left-2/5 w-72 h-72 bg-pink-500/10 rounded-full blur-3xl animate-pulse-slow" style="animation-delay: 2s;"></div>
  </div>

  <!-- Hero stars overlay -->
  <div class="hero-stars absolute inset-0 pointer-events-none z-[5]" id="heroStars"></div>
  
  <div class="relative z-10 max-w-3xl mx-auto text-center animate-slide-up">
    <img src="/assets/images/wavnav-icon-full-no-bg.png" alt="WavNav Icon" data-no-zoom class="rounded-2xl mx-auto mb-6 " style="width: 400px; border: 1px solid rgba(100, 100, 100, 0.5); user-drag: none;
    -webkit-user-drag: none;
    user-select: none;
    -moz-user-select: none;
    -webkit-user-select: none;
    -ms-user-select: none;
">
    
    <h1 class="text-5xl lg:text-6xl font-bold mb-3 tracking-tight text-white animate-slide-up font-nebulous">WavNav</h1>
    
    <p class="text-xl lg:text-2xl text-white/70 mb-5 font-light animate-slide-up" style="animation-delay: 0.1s;">Audio sample explorer</p>
    
    <p class="text-base lg:text-lg text-white/60 max-w-xl mx-auto mb-8 leading-relaxed animate-slide-up" style="animation-delay: 0.2s;">
      An easy way to explore your audio sample library.
    </p>
    
    <div class="flex flex-wrap gap-4 justify-center animate-slide-up" style="animation-delay: 0.3s;">
      <a href="/wavnav/features" class="inline-flex items-center px-8 py-4 rounded-full font-medium text-base transition-all duration-300 hover:-translate-y-0.5 backdrop-blur-lg bg-white/10 text-white/90 border border-white/20 hover:bg-white/15">
        See Features
      </a>
      <button onclick="openDownloadModal()" class="inline-flex items-center px-8 py-4 rounded-full font-medium text-base transition-all duration-300 hover:-translate-y-0.5 backdrop-blur-lg bg-white/10 text-white/90 border border-white/20 hover:bg-white/15 cursor-pointer">
        Try for free
      </button>
      <a href="https://maxgraf96.gumroad.com/l/wavnav" class="inline-flex items-center px-8 py-4 rounded-full text-base transition-all duration-300 hover:-translate-y-0.5 hover:shadow-lg text-white shadow-wavnav-mint/40" style="background: linear-gradient(135deg, #22c28f 0%, #1c8c60 100%);" target="_blank">
        Buy WavNav
      </a>
    </div>
  </div>
</div>

<!-- UMAP Visualization Banner -->
<div class="mb-12">
  <div class="relative overflow-hidden scroll-video-container" style="clip-path: inset(0 2px 0 0);" id="umapVideoContainer">
    <!-- Scroll-controlled video (shown on desktop, or mobile after tap) -->
    <video 
      class="w-full fadeTB scroll-controlled-video"
      muted 
      playsinline
      preload="auto"
      poster="/assets/images/wavnav_umap_poster.jpg"
      style="user-drag: none; -webkit-user-drag: none; user-select: none;">
      <source src="/assets/images/wavnav_umap.mp4" type="video/mp4">
    </video>
    <!-- Mobile default: looping autoplay video -->
    <video 
      class="w-full fadeTB mobile-video"
      muted 
      playsinline
      autoplay
      loop
      preload="auto"
      poster="/assets/images/wavnav_umap_poster.jpg"
      style="user-drag: none; -webkit-user-drag: none; user-select: none;">
      <source src="/assets/images/wavnav_umap.mp4" type="video/mp4">
    </video>
    <!-- Tap hint for mobile -->
    <div class="tap-hint" id="tapHint">
      <span>Tap to explore</span>
    </div>
  </div>
</div>

<style>
  .scroll-video-container {
    position: relative;
  }
  
  .scroll-controlled-video,
  .mobile-video {
    width: 100%;
    height: auto;
    background: #0a0a0f;
  }
  
  /* Default: show scroll-controlled, hide mobile */
  .scroll-controlled-video { display: block; }
  .mobile-video { display: none; }
  
  /* Desktop with mouse: always scroll-controlled */
  @media (hover: hover) and (pointer: fine) {
    .scroll-controlled-video { display: block !important; }
    .mobile-video { display: none !important; }
    .tap-hint { display: none !important; }
  }
  
  /* Touch devices: show mobile looping video + tap hint */
  @media (hover: none) and (pointer: coarse) {
    .scroll-controlled-video:not(.active) { display: none; }
    .mobile-video:not(.hidden) { display: block; }
    .tap-hint:not(.hidden) { display: flex; }
  }
  
  /* Tap hint styling */
  .tap-hint {
    position: absolute;
    bottom: 16px;
    left: 50%;
    transform: translateX(-50%);
    background: rgba(0, 0, 0, 0.6);
    backdrop-filter: blur(8px);
    -webkit-backdrop-filter: blur(8px);
    padding: 8px 16px;
    border-radius: 20px;
    border: 1px solid rgba(255, 255, 255, 0.2);
    display: none;
    align-items: center;
    justify-content: center;
    pointer-events: none;
  }
  
  .tap-hint span {
    color: rgba(255, 255, 255, 0.8);
    font-size: 13px;
    font-weight: 500;
  }
  
  /* When scroll control is active on mobile */
  .scroll-controlled-video.active {
    display: block !important;
  }
  
  .mobile-video.hidden {
    display: none !important;
  }
  
  .tap-hint.hidden {
    display: none !important;
  }
</style>

<script>
(function() {
  const scrollVideo = document.querySelector('.scroll-controlled-video');
  const mobileVideo = document.querySelector('.mobile-video');
  const container = document.querySelector('.scroll-video-container');
  const tapHint = document.getElementById('tapHint');
  
  if (!scrollVideo || !container) return;
  
  let duration = 0;
  let isMobileScrollMode = false;
  let metadataLoaded = false;
  let rafId = null;
  let isActive = false;
  let pendingStart = false;

  function markMetadataReady() {
    if (metadataLoaded) return;
    if (!Number.isFinite(scrollVideo.duration) || scrollVideo.duration <= 0) return;

    duration = scrollVideo.duration;
    metadataLoaded = true;

    // If we already wanted to start (desktop observer triggered), start now
    if (pendingStart) {
      enableScrollControl();
      pendingStart = false;
    }
  }
  
  // Load metadata for scroll video - this must happen before scroll control works
  scrollVideo.addEventListener('loadedmetadata', markMetadataReady);
  scrollVideo.addEventListener('durationchange', markMetadataReady);
  
  // On refresh, metadata may already be available before listeners run.
  if (scrollVideo.readyState >= 1) {
    markMetadataReady();
  }
  
  // Force load on mobile when needed
  function ensureScrollVideoLoaded() {
    if (scrollVideo.readyState < 1) {
      scrollVideo.load();
    }
  }
  
  // Check if touch device
  const isTouchDevice = window.matchMedia('(hover: none) and (pointer: coarse)').matches;
  
  // Desktop: enable scroll control when visible
  if (!isTouchDevice) {
    const observer = new IntersectionObserver((entries) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          if (metadataLoaded) {
            enableScrollControl();
          } else {
            pendingStart = true;
            ensureScrollVideoLoaded();
          }
        } else {
          disableScrollControl();
          pendingStart = false;
        }
      });
    }, { threshold: 0, rootMargin: '100px' });
    
    observer.observe(container);
    ensureScrollVideoLoaded();
  }
  
  // Mobile: tap to enable scroll control
  if (isTouchDevice && container && mobileVideo && tapHint) {
    container.addEventListener('click', function() {
      if (!isMobileScrollMode) {
        isMobileScrollMode = true;
        
        // Ensure scroll video is loaded
        ensureScrollVideoLoaded();
        
        // Sync and switch when ready
        function activateScrollMode() {
          scrollVideo.currentTime = mobileVideo.currentTime;
          scrollVideo.classList.add('active');
          mobileVideo.classList.add('hidden');
          tapHint.classList.add('hidden');
          mobileVideo.pause();
          enableScrollControl();
        }
        
        if (metadataLoaded) {
          activateScrollMode();
        } else {
          scrollVideo.addEventListener('loadedmetadata', activateScrollMode, { once: true });
        }
      }
    });
  }
  
  function enableScrollControl() {
    if (isActive || !metadataLoaded) return;
    isActive = true;
    
    function updateFrame() {
      if (!isActive) return;
      
      const rect = container.getBoundingClientRect();
      const windowHeight = window.innerHeight;
      
      const elementBottom = rect.bottom;
      const startOffset = 300;
      const start = windowHeight + startOffset;
      const end = 0;
      let progress = (start - elementBottom) / (start - end);
      progress = Math.max(0, Math.min(1, progress));
      
      const time = progress * duration;
      
      if (scrollVideo.readyState >= 2) {
        scrollVideo.currentTime = time;
      }
      
      rafId = requestAnimationFrame(updateFrame);
    }
    
    updateFrame();
  }
  
  function disableScrollControl() {
    isActive = false;
    if (rafId) {
      cancelAnimationFrame(rafId);
      rafId = null;
    }
  }
  
  document.addEventListener('visibilitychange', function() {
    if (document.hidden) {
      disableScrollControl();
    }
  });
})();
</script>

<!-- Features Section -->
<div class="px-4 sm:px-6 lg:px-8 max-w-6xl mx-auto mb-24">
  <h2 class="text-3xl lg:text-4xl font-semibold text-center mb-12 text-white/95">Feature Summary</h2>
  
  <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
    <div class="group bg-white/[0.03] border border-white/[0.08] rounded-2xl p-8 transition-all duration-300 hover:bg-white/5 hover:border-wavnav-mint/30 hover:-translate-y-1" style="backdrop-filter: blur(3px)">
      <div class="text-4xl mb-4"></div>
      <h3 class="text-xl font-semibold mb-3 text-white/95">Visual Browser</h3>
      <p class="text-white/60 leading-relaxed">See your samples as dots on a map. Similar sounds appear close together, so you can find what you need by looking around. Ideal for exploring large folders of sounds.</p>
    </div>
    
    <div class="group bg-white/[0.03] border border-white/[0.08] rounded-2xl p-8 transition-all duration-300 hover:bg-white/5 hover:border-wavnav-mint/30 hover:-translate-y-1" style="backdrop-filter: blur(3px)">
      <div class="text-4xl mb-4"></div>
      <h3 class="text-xl font-semibold mb-3 text-white/95">Semantic Search</h3>
      <p class="text-white/60 leading-relaxed">Search by sample type ("snare", "synth", "guitar").</p>
    </div>

    <div class="group bg-white/[0.03] border border-white/[0.08] rounded-2xl p-8 transition-all duration-300 hover:bg-white/5 hover:border-wavnav-mint/30 hover:-translate-y-1" style="backdrop-filter: blur(3px)">
      <div class="text-4xl mb-4"></div>
      <h3 class="text-xl font-semibold mb-3 text-white/95">Search by sound</h3>
      <p class="text-white/60 leading-relaxed">Drop a sample on the map and quickly find similar sounds.</p>
    </div>
    
    <div class="group bg-white/[0.03] border border-white/[0.08] rounded-2xl p-8 transition-all duration-300 hover:bg-white/5 hover:border-wavnav-mint/30 hover:-translate-y-1" style="backdrop-filter: blur(3px)">
      <div class="text-4xl mb-4"></div>
      <h3 class="text-xl font-semibold mb-3 text-white/95">Filter by Key & BPM</h3>
      <p class="text-white/60 leading-relaxed">Narrow down results by musical key or tempo.</p>
    </div>

    <div class="group bg-white/[0.03] border border-white/[0.08] rounded-2xl p-8 transition-all duration-300 hover:bg-white/5 hover:border-wavnav-mint/30 hover:-translate-y-1" style="backdrop-filter: blur(3px)">
      <div class="text-4xl mb-4"></div>
      <h3 class="text-xl font-semibold mb-3 text-white/95">Fast Loading (macOS only)</h3>
      <p class="text-white/60 leading-relaxed">Handles large libraries (50k+ samples) without slowing down. First load takes about a minute, then starts instantly.</p>
    </div>
    
    <div class="group bg-white/[0.03] border border-white/[0.08] rounded-2xl p-8 transition-all duration-300 hover:bg-white/5 hover:border-wavnav-mint/30 hover:-translate-y-1" style="backdrop-filter: blur(3px)">
      <div class="text-4xl mb-4"></div>
      <h3 class="text-xl font-semibold mb-3 text-white/95">100% Local</h3>
      <p class="text-white/60 leading-relaxed">All ML models and audio processing run entirely on your computer. Your samples are never uploaded to the cloud.</p>
    </div>
  </div>
</div>

<!-- Screenshot Showcase -->
<div class="px-4 sm:px-6 lg:px-8 max-w-6xl mx-auto mb-24">
  <div class="bg-black/30 rounded-3xl border border-white/5 p-8 lg:p-12 text-center" style="backdrop-filter: blur(3px)">
    <h2 class="text-3xl lg:text-4xl font-semibold mb-10 text-white/95">Screenshots!</h2>
    
    <div class="max-w-4xl mx-auto mb-8">
      <img src="/assets/images/wavnav-main.png" alt="WavNav Main Interface" class="w-full rounded-xl shadow-2xl shadow-black/50 border border-white/10">
    </div>
    
    <a href="/wavnav/screenshots" class="inline-flex items-center text-wavnav-mint font-medium text-lg transition-colors duration-200 hover:text-wavnav-mint-hover hover:underline">
      More Screenshots 
    </a>
  </div>
</div>

<!-- Tech Specs -->
<div class="px-4 sm:px-6 lg:px-8 max-w-6xl mx-auto mb-24">
  <h2 class="text-3xl lg:text-4xl font-semibold text-center mb-12 text-white/95">Specs</h2>
  
  <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
    <div class="text-center p-6 sm:p-8 bg-white/[0.02] rounded-2xl border border-white/5 transition-all duration-300 hover:border-wavnav-mint/20" style="backdrop-filter: blur(3px)">
      <span class="block text-3xl sm:text-4xl lg:text-5xl font-bold text-wavnav-mint mb-2">50k+</span>
      <span class="text-white/60 text-sm">Samples Supported</span>
    </div>
    
    <div class="text-center p-6 sm:p-8 bg-white/[0.02] rounded-2xl border border-white/5 transition-all duration-300 hover:border-wavnav-mint/20" style="backdrop-filter: blur(3px)">
      <span class="block text-3xl sm:text-4xl lg:text-5xl font-bold text-wavnav-mint mb-2">~1 min</span>
      <span class="text-white/60 text-sm">First Load (50k samples)</span>
    </div>
    
    <div class="text-center p-6 sm:p-8 bg-white/[0.02] rounded-2xl border border-white/5 transition-all duration-300 hover:border-wavnav-mint/20" style="backdrop-filter: blur(3px)">
      <span class="block text-2xl sm:text-3xl lg:text-3xl font-bold text-wavnav-mint mb-2">High performance rendering</span>
      <span class="text-white/60 text-sm">GPU-accelerated via OpenGL/Metal</span>
    </div>
    
    <div class="text-center p-6 sm:p-8 bg-white/[0.02] rounded-2xl border border-white/5 transition-all duration-300 hover:border-wavnav-mint/20" style="backdrop-filter: blur(3px)">
      <span class="block text-3xl sm:text-4xl lg:text-4xl font-bold text-wavnav-mint mb-2">Semantic Search</span>
      <span class="text-white/60 text-sm">Using joint music-text embeddings</span>
    </div>
    
    <div class="text-center p-6 sm:p-8 bg-white/[0.02] rounded-2xl border border-white/5 transition-all duration-300 hover:border-wavnav-mint/20" style="backdrop-filter: blur(3px)">
      <span class="block text-3xl sm:text-4xl lg:text-5xl font-bold text-wavnav-mint mb-2">Fully local</span>
      <span class="text-white/60 text-sm">All processing happens on your device</span>
    </div>
  </div>
</div>

<!-- Requirements -->
<div class="px-4 sm:px-6 lg:px-8 max-w-4xl mx-auto mb-24">
  <h2 class="text-3xl lg:text-4xl font-semibold text-center mb-12 text-white/95">Platforms</h2>
  
  <div class="grid grid-cols-1 sm:grid-cols-2 gap-6 max-w-4xl mx-auto">
    <div class="text-center p-6 sm:p-8 bg-white/[0.02] rounded-2xl border border-white/5 transition-all duration-300 hover:border-wavnav-mint/20" style="backdrop-filter: blur(3px)">
      <span class="block text-3xl sm:text-4xl lg:text-5xl font-bold text-wavnav-mint mb-2">macOS</span>
      <span class="text-white/60 text-sm">Supported (Intel & Apple Silicon)</span>
    <p style="color: rgba(255, 255, 255, 0.5); font-size: 12px; line-height: 1.5; margin: 0;">
            Requires macOS 13.0 or higher
          </p>
    </div>
    
    <div class="text-center p-6 sm:p-8 bg-white/[0.02] rounded-2xl border border-white/5 transition-all duration-300 hover:border-wavnav-mint/20" style="backdrop-filter: blur(3px)">
      <span class="block text-3xl sm:text-4xl lg:text-5xl font-bold text-wavnav-mint mb-2">Windows <span style="background: rgba(255,255,255,0.15); color: rgba(255,255,255,0.7); font-size: 0.35em; padding: 4px 10px; border-radius: 12px; vertical-align: middle; margin-left: 8px;">Beta</span></span>
      <span class="text-white/60 text-sm">Supported (x86 only)</span>
      <p style="color: rgba(255, 255, 255, 0.5); font-size: 12px; line-height: 1.5; margin: 0;">
            Requires Windows 10 version 1803 or higher
          </p>
          <br>
        <div class="text-white/60 text-sm flex gap-4 items-start flex-row">
            <img src="/assets/images/warning.svg" alt="Warning" style="flex-shrink: 0; margin-top: 2px; width: 28px; height: 32px;">

            <span style="text-align: left;">Currently, GPU-acceleration for machine learning models is not supported on Windows - expect slower analysis performance. GPU acceleration coming soon.</span>
        </div>
    </div>
  </div>
</div>

<!-- Final CTA -->
<div class="px-4 sm:px-6 lg:px-8 max-w-4xl mx-auto mb-16">
  <div class="text-center p-12 lg:p-16 rounded-3xl border border-wavnav-mint/20" style="background: linear-gradient(135deg, rgba(34, 194, 143, 0.1) 0%, rgba(28, 140, 96, 0.05) 100%);" style="backdrop-filter: blur(3px)">
    <h2 class="text-3xl lg:text-4xl font-semibold mb-4 text-white/95">Get WavNav.</h2>
    <br>
    <!-- <p class="text-white/60 mb-8 text-lg max-w-xl mx-auto">Rediscover the joy of digging.</p> -->
    <div class="flex flex-wrap gap-4 justify-center">
      <button onclick="openDownloadModal()" class="inline-flex items-center px-10 py-5 rounded-full font-medium text-lg transition-all duration-300 hover:-translate-y-0.5 backdrop-blur-lg bg-white/10 text-white/90 border border-white/20 hover:bg-white/15 cursor-pointer">
        Try for free
      </button>
      <a href="https://maxgraf96.gumroad.com/l/wavnav" class="inline-flex items-center px-10 py-5 rounded-full text-lg transition-all duration-300 hover:-translate-y-0.5 hover:shadow-xl text-white" style="background: linear-gradient(135deg, #22c28f 0%, #1c8c60 100%);" target="_blank">
        Buy WavNav
      </a>
    </div>
  </div>
</div>

<style>
  @keyframes slideUp {
    from { transform: translateY(20px); opacity: 0; }
    to { transform: translateY(0); opacity: 1; }
  }
  
  .animate-slide-up {
    animation: slideUp 0.6s ease-out forwards;
    opacity: 0;
  }
  
  .animate-pulse-slow {
    animation: pulse 3s cubic-bezier(0.4, 0, 0.6, 1) infinite;
  }
  
  @keyframes pulse {
    0%, 100% { opacity: 0.5; }
    50% { opacity: 0.8; }
  }

  /* Hero stars */
  .hero-stars {
    background-image:
      /* radial-gradient(circle, rgba(255, 255, 255, 0.8) 1px, transparent 1px), */
      radial-gradient(circle, rgba(34, 194, 143, 0.6) 1px, transparent 1px),
      radial-gradient(circle, rgba(59, 130, 246, 0.5) 1px, transparent 1px),
      radial-gradient(circle, rgba(168, 85, 247, 0.5) 1px, transparent 1px);
    background-size:
      /* 120px 120px, */
      180px 180px,
      220px 220px,
      280px 280px;
    background-position:
      /* 0 0, */
      40px 60px,
      120px 30px,
      80px 120px;
    opacity: 0.7;
  }
</style>

<script>
  // Generate hero stars
  (function() {
    const heroStars = document.getElementById('heroStars');
    if (!heroStars) return;

    const colors = ['#ffffff', '#22c28f', '#3b82f6', '#a855f7'];
    const starCount = 30;

    for (let i = 0; i < starCount; i++) {
      const star = document.createElement('div');
      const color = colors[Math.floor(Math.random() * colors.length)];
      star.style.cssText = `
        position: absolute;
        width: ${1.5 + Math.random() * 1.5}px;
        height: ${1.5 + Math.random() * 1.5}px;
        background: ${color};
        border-radius: 50%;
        left: ${Math.random() * 100}%;
        top: ${Math.random() * 100}%;
        opacity: ${0.4 + Math.random() * 0.4};
        box-shadow: 0 0 ${3 + Math.random() * 3}px ${color};
        animation: twinkle ${3 + Math.random() * 3}s ease-in-out infinite;
        animation-delay: ${Math.random() * 5}s;
      `;
      heroStars.appendChild(star);
    }
  })();
</script>

{% include download-modal.html %}
