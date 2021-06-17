---
layout: post
title:  "Interactive Musical Co-Creation in the Style of Pop Piano"
date:   2021-05-04 19:02:52 +0100
categories: code
tags: code
shortdescription: Interactive Musical Co-Creation in the Style of Pop Piano.
image: /assets/images/cc-project.png
---

Computer-generated music can provide interesting insights into the structure of music and serve as inspiration for
novice and professional composers alike. I investigate the use of the Transformer-XL neural network architecture for
interactive co-creation of symbolic music in the style of pop piano. I present a modular system consisting of two
software components: backend (music generation engine) and frontend (user interaction). I evaluate the neural network
architecture and discuss the overall system with regard to higher-level issues in the field of computational creativity.
Based on musical prompts, the system can be used to iteratively generate musical pieces of several bars length. However,
it does not generalise well to new data, hindering interaction with complex user prompts.

### Audio examples
Music generated from scratch:
{%- include audioexamples.html paths='/assets/sounds/interactive-pop-piano/FS1.mp3
/assets/sounds/interactive-pop-piano/FS2.mp3 /assets/sounds/interactive-pop-piano/FS3.mp3' -%}

Music generated from prompts:
{%- include audioexamples.html paths='/assets/sounds/interactive-pop-piano/UG1.mp3
/assets/sounds/interactive-pop-piano/UG2.mp3 /assets/sounds/interactive-pop-piano/UG3.mp3' -%}

<div>{%- include postscreenshot.html path="/assets/images/cc-project.png" -%}</div>

<a href="https://github.com/maxgraf96/pop-music-transformer-xl-python/blob/master/Report.pdf" target="_blank">Report (PDF)</a> •
<a href="https://github.com/maxgraf96/pop-music-transformer-xl-python" target="_blank">Code</a>