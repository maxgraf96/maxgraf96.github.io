---
layout: post
title:  "Karplus-Strong Synthesizer with Dynamic Source Material"
date:   2020-06-05 19:02:52 +0100
categories: code
tags: code
shortdescription: Real-time, sample-based audio synthesis algorithm using the Karplus-Strong (string) synthesis model.
image: /assets/images/karplus-strong-synth.png
---
# A Sample-based Karplus-Strong (String) Synthesis Algorithm

We present a real time synthesis algorithm based on the Karplus-Strong string synthesis method. 
Instead of a short burst of noise used to initially excite the string as specified in the original algorithm, 
we define a windowed section of a pre-existing audio recording as source material for excitation. 
This method offers a wide range of possible spectral combinations which allows for accurate control over the 
timbral characteristics of the synthesised sound. 
We evaluate and discuss the sonic qualities of the results achieved through variation of the source sample, 
window position and length.

![image](/assets/images/karplus-strong-synth.png)

<a href="https://github.com/maxgraf96/DAFX_Assignment_2/blob/master/Report.pdf" target="_blank">Report (PDF)</a> •
<a href="https://github.com/maxgraf96/DAFX_Assignment_2" target="_blank">Code</a>