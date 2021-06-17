---
layout: post
title:  "Pitch-Aware Granular Synthesizer"
date:   2020-06-05 19:02:52 +0100
categories: code
tags: code
shortdescription: Real-time audio synthesis algorithm based on granular synthesis.
image: /assets/images/pitch-aware-granular-synth.png
---
# Pitch-aware granular synthesis algorithm on the Bela platform

This work shows a real-time audio synthesis algorithm based on granular synthesis. 
Instead of creating grains from the raw input signal, we dynamically mask the audio data in the 
frequency domain in order to create sub-signals, from which grains are created. 
This process enables any audio signal with sufficient content to be used as a basis for synthesis and 
results in a large variety of possible timbral characteristics. 
We integrate the algorithm into a digital musical instrument on the Bela platform to demonstrate its capabilities. 
We evaluate the system on three different types of source data and discuss the results.

A video explaining and demonstrating the system is available via YouTube.\
For an audio demo, skip to 6:19.
<iframe width="560" height="315" src="https://www.youtube.com/embed/rtKI67ztNYo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
\
<a href="https://github.com/maxgraf96/pitch-aware-granular-synth/blob/master/Report.pdf" target="_blank">Report (PDF)</a> •
<a href="https://github.com/maxgraf96/pitch-aware-granular-synth/" target="_blank">Code</a>