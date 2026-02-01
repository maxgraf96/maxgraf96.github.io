---
layout: wavnav
title: Features
permalink: /wavnav/features/
---

<style>
  /* /wavnav/features/ only: show dashes for feature lists (Tailwind base removes default markers). */
  .wavnav-features ul {
    list-style: none;
    padding-left: 0;
  }

  .wavnav-features ul > li > span.text-wavnav-mint {
    flex: 0 0 1ch;
    display: inline-block;
    text-align: center;
  }

  .wavnav-features ul > li > span.text-wavnav-mint::before {
    content: "-";
  }
</style>

<div class="wavnav-features">
<!-- Hero -->
<div class="text-center px-4 pt-16 pb-10 mb-10">
  <h1 class="text-4xl lg:text-6xl font-bold mb-4 bg-gradient-to-r from-white to-wavnav-mint bg-clip-text text-transparent">Features</h1>
  <p class="text-lg lg:text-xl text-white/60">What WavNav can do</p>
</div>

<!-- Feature 1: Visual Sound Map -->
<div class="py-16 lg:py-20 border-b border-white/5">
  <div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="grid lg:grid-cols-2 gap-10 lg:gap-16 items-center">
      <div class="order-2 lg:order-1">
        <h2 class="text-3xl lg:text-4xl font-semibold mb-5 text-white/95"> Visual Browser</h2>
        <p class="text-white/70 text-base lg:text-lg leading-relaxed mb-6">
          Your samples appear as dots on a map. Similar sounds cluster together based on their audio characteristics, 
          so you can explore the map instead of scrolling through folder lists.
        </p>
        <ul class="space-y-3">
          <li class="flex items-start text-white/60">
            <span class="text-wavnav-mint font-bold mr-3"></span>
            GPU-accelerated OpenGL/Metal rendering
          </li>
          <li class="flex items-start text-white/60">
            <span class="text-wavnav-mint font-bold mr-3"></span>
            Smooth pan and zoom navigation
          </li>
          <li class="flex items-start text-white/60">
            <span class="text-wavnav-mint font-bold mr-3"></span>
            Colors show different sound types
          </li>
          <li class="flex items-start text-white/60">
            <span class="text-wavnav-mint font-bold mr-3"></span>
            Adjustable glow and point size
          </li>
        </ul>
      </div>
      <div class="order-1 lg:order-2">
        <img src="/assets/images/wavnav-main.png" alt="Visual Sound Map" class="w-full rounded-xl shadow-2xl shadow-black/50 border border-white/10">
      </div>
    </div>
  </div>
</div>

<!-- Feature 2: Semantic Search -->
<div class="py-16 lg:py-20 bg-black/20 border-b border-white/5">
  <div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="grid lg:grid-cols-2 gap-10 lg:gap-16 items-center">
      <div>
        <img src="/assets/images/wavnav-main.png" alt="Semantic Search" class="w-full rounded-xl shadow-2xl shadow-black/50 border border-white/10">
      </div>
      <div>
        <h2 class="text-3xl lg:text-4xl font-semibold mb-5 text-white/95"> Search by Sound</h2>
        <p class="text-white/70 text-base lg:text-lg leading-relaxed mb-6">
          Describe what you want ("bright pluck", "dark pad") to find similar sounds. 
          Uses semantic matching to understand audio content, not just filenames.
        </p>
        <ul class="space-y-3">
          <li class="flex items-start text-white/60">
            <span class="text-wavnav-mint font-bold mr-3"></span>
            Text-to-audio matching
          </li>
          <li class="flex items-start text-white/60">
            <span class="text-wavnav-mint font-bold mr-3"></span>
            Similar sample search
          </li>
          <li class="flex items-start text-white/60">
            <span class="text-wavnav-mint font-bold mr-3"></span>
            Adjustable similarity threshold
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>

<!-- Feature 3: Folder Management -->
<div class="py-16 lg:py-20 border-b border-white/5">
  <div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="grid lg:grid-cols-2 gap-10 lg:gap-16 items-center">
      <div class="order-2 lg:order-1">
        <h2 class="text-3xl lg:text-4xl font-semibold mb-5 text-white/95"> Folder Management</h2>
        <p class="text-white/70 text-base lg:text-lg leading-relaxed mb-6">
          Add multiple sample folders and turn them on or off as needed. The map updates instantly 
          without needing to rescan everything.
        </p>
        <ul class="space-y-3">
          <li class="flex items-start text-white/60">
            <span class="text-wavnav-mint font-bold mr-3"></span>
            Multiple folder support
          </li>
          <li class="flex items-start text-white/60">
            <span class="text-wavnav-mint font-bold mr-3"></span>
            Toggle folders on/off dynamically
          </li>
          <li class="flex items-start text-white/60">
            <span class="text-wavnav-mint font-bold mr-3"></span>
            Settings saved between sessions
          </li>
          <!-- <li class="flex items-start text-white/60">
            <span class="text-wavnav-mint font-bold mr-3"></span>
            Drag-and-drop to add folders
          </li> -->
        </ul>
      </div>
      <div class="order-1 lg:order-2">
        <img src="/assets/images/wavnav-folders.png" alt="Folder Management" class="w-full rounded-xl shadow-2xl shadow-black/50 border border-white/10">
      </div>
    </div>
  </div>
</div>

<!-- Feature 4: Smart Filters -->
<div class="py-16 lg:py-20 bg-black/20 border-b border-white/5">
  <div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="grid lg:grid-cols-2 gap-10 lg:gap-16 items-center">
      <div>
        <img src="/assets/images/wavnav-filters.png" alt="Smart Filters" class="w-full rounded-xl shadow-2xl shadow-black/50 border border-white/10">
      </div>
      <div>
        <h2 class="text-3xl lg:text-4xl font-semibold mb-5 text-white/95"> Key & BPM Filters</h2>
        <p class="text-white/70 text-base lg:text-lg leading-relaxed mb-6">
          Filter by musical key, BPM range, or both combined. Find samples that fit your project 
          without auditioning everything.
        </p>
        <ul class="space-y-3">
          <li class="flex items-start text-white/60">
            <span class="text-wavnav-mint font-bold mr-3"></span>
            BPM range slider (20-200+)
          </li>
          <li class="flex items-start text-white/60">
            <span class="text-wavnav-mint font-bold mr-3"></span>
            Updates in real time
          </li>
          <li class="flex items-start text-white/60">
            <span class="text-wavnav-mint font-bold mr-3"></span>
            Combine with text search
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>

<!-- Feature 5: High Performance -->
<div class="py-16 lg:py-20 border-b border-white/5">
  <div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="grid lg:grid-cols-2 gap-10 lg:gap-16 items-center">
      <div class="order-2 lg:order-1">
        <h2 class="text-3xl lg:text-4xl font-semibold mb-5 text-white/95"> Handles Big Libraries</h2>
        <p class="text-white/70 text-base lg:text-lg leading-relaxed mb-6">
          Built for producers with large sample collections. Processes 50,000+ samples in about a minute 
          on modern hardware, then starts instantly from cache.
        </p>
        <ul class="space-y-3">
          <li class="flex items-start text-white/60">
            <span class="text-wavnav-mint font-bold mr-3"></span>
            UMAP clustering for audio
          </li>
          <li class="flex items-start text-white/60">
            <span class="text-wavnav-mint font-bold mr-3"></span>
            Cache for folder configurations
          </li>
          <li class="flex items-start text-white/60">
            <span class="text-wavnav-mint font-bold mr-3"></span>
            Background processing
          </li>
        </ul>
      </div>
      <div class="order-1 lg:order-2">
        <div class="grid grid-cols-1 sm:grid-cols-3 gap-4">
          <div class="bg-wavnav-mint/10 border border-wavnav-mint/30 rounded-2xl p-6 text-center" style="backdrop-filter: blur(3px)">
            <span class="block text-3xl lg:text-4xl font-bold text-wavnav-mint mb-2">~1 min</span>
            <span class="text-white/70 text-sm">First load (50k samples)</span>
          </div>
          <div class="bg-wavnav-mint/10 border border-wavnav-mint/30 rounded-2xl p-6 text-center" style="backdrop-filter: blur(3px)">
            <span class="block text-3xl lg:text-4xl font-bold text-wavnav-mint mb-2">&lt;3s</span>
            <span class="text-white/70 text-sm">Cached startup</span>
          </div>
          <div class="bg-wavnav-mint/10 border border-wavnav-mint/30 rounded-2xl p-6 text-center" style="backdrop-filter: blur(3px)">
            <span class="block text-3xl lg:text-4xl font-bold text-wavnav-mint mb-2">60fps</span>
            <span class="text-white/70 text-sm">Smooth navigation</span>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Additional Features Grid -->
<div class="py-16 lg:py-20 px-4 sm:px-6 lg:px-8">
  <div class="max-w-6xl mx-auto">
    <h2 class="text-3xl lg:text-4xl font-semibold text-center mb-12 text-white/95">Little bits</h2>
    
    <div class="grid sm:grid-cols-2 lg:grid-cols-3 gap-6">
      <div class="bg-white/[0.03] border border-white/[0.08] rounded-2xl p-7 transition-all duration-300 hover:bg-white/5 hover:border-wavnav-mint/30" style="backdrop-filter: blur(3px)">
        <h4 class="text-white/95 font-semibold mb-3"> Hover to Preview</h4>
        <p class="text-white/60 text-sm leading-relaxed">Hold your mouse over any sample to hear it.</p>
      </div>
      
      <div class="bg-white/[0.03] border border-white/[0.08] rounded-2xl p-7 transition-all duration-300 hover:bg-white/5 hover:border-wavnav-mint/30" style="backdrop-filter: blur(3px)">
        <h4 class="text-white/95 font-semibold mb-3"> Copy Path</h4>
        <p class="text-white/60 text-sm leading-relaxed">One-click copy to clipboard for importing into your DAW.</p>
      </div>
      
      <div class="bg-white/[0.03] border border-white/[0.08] rounded-2xl p-7 transition-all duration-300 hover:bg-white/5 hover:border-wavnav-mint/30" style="backdrop-filter: blur(3px)">
        <h4 class="text-white/95 font-semibold mb-3"> Show in Finder</h4>
        <p class="text-white/60 text-sm leading-relaxed">Open the containing folder right from the app.</p>
      </div>
      
      <div class="bg-white/[0.03] border border-white/[0.08] rounded-2xl p-7 transition-all duration-300 hover:bg-white/5 hover:border-wavnav-mint/30" style="backdrop-filter: blur(3px)">
        <h4 class="text-white/95 font-semibold mb-3"> Find Similar</h4>
        <p class="text-white/60 text-sm leading-relaxed">Right-click any sample to find variations.</p>
      </div>
      
      <div class="bg-white/[0.03] border border-white/[0.08] rounded-2xl p-7 transition-all duration-300 hover:bg-white/5 hover:border-wavnav-mint/30" style="backdrop-filter: blur(3px)">
        <h4 class="text-white/95 font-semibold mb-3"> Auto-Save</h4>
        <p class="text-white/60 text-sm leading-relaxed">Your folders and settings are remembered.</p>
      </div>
      
    </div>
  </div>
</div>

<!-- CTA -->
<div class="text-center px-4 py-16 mt-10">
  <h2 class="text-2xl lg:text-3xl font-semibold mb-6 text-white/95">Try it out</h2>
  <a href="https://gumroad.com" class="inline-flex items-center px-10 py-5 rounded-full text-lg transition-all duration-300 hover:-translate-y-0.5 hover:shadow-xl text-white" style="background: linear-gradient(135deg, #22c28f 0%, #1c8c60 100%);" target="_blank">
    Get WavNav
  </a>
</div>

</div>
