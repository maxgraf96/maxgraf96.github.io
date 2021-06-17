---
layout: post
title:  "End-To-End Raw Audio Based Instrument Resynthesis"
date:   2020-04-22 19:02:52 +0100
categories: code
tags: code
shortdescription: End-To-End Raw Audio Resynthesis System for Piano -> E-Piano.
image: /assets/images/e2e-resynthesis.png
---
# End-To-End Raw Audio Resynthesis System for Piano -> E-Piano

This project focused on research and implementation of an end-to-end raw audio instrument re-synthesis system on 
the PyTorch platform. The aim of the project is to accurately model mappings from one set of instrument’s timbral 
characteristics to another. In this case the two instruments are a sampled Steinway piano and an electronic instrument 
that imitates the sound of the Yamaha DX7 synthesizer (an electronic piano sound). 
Audio files for both instruments were automatically synthesised from MIDI data and subsequently used to 
train two separate models. A convolutional autoencoder is used to find the mappings, which are cleared of noise 
in the second step, using a modified U-Net structure.

[comment]: <> (![image]&#40;/assets/images/e2e-resynthesis.png&#41;)

<a href="https://github.com/maxgraf96/DLAM_Assignment/blob/master/Report.pdf" target="_blank">Report (PDF)</a> •
<a href="https://github.com/maxgraf96/DLAM_Assignment" target="_blank">Code</a>