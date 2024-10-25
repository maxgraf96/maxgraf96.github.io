---
layout: page
title: "about"
permalink: /about/
redirect_from: /
---
<div class="mainContainer">
    <div style="margin-right: 24px;">
        <img src="/assets/images/IMG_6045_cop.jpg" style="max-width: none; width: 300px;" />
    </div>
    <br />
    <div style="text-align: justify; justify-text: auto;">
        I am a PhD researcher in AI & Music at the Centre for Digital Music at Queen Mary University of London (QMUL).
        My research, supervised by Mathieu Barthet and Andrew McPherson, is located at the intersection of 
artificial intelligence, mixed reality technology and human-computer interaction.<br />
        I hold a BSc in Media Informatics and Visual Computing from the Vienna University of Technology and an MSc in 
Sound and Music Computing from QMUL.
        <br /><br />
        Drop me a message at <a href="mailto:max.graf@qmul.ac.uk">max.graf@qmul.ac.uk</a>.
    </div>
</div>

<br />
## News

<ul class="no-bullets newsContainer">
  {% for news in site.news reversed %}
    <li>
      <h3 style="margin-bottom: 0;">{{ news.title }}</h3>
      <p style="font-size:16px; color: gray;">{{ news.date | date: "%d %B %Y" }}</p>
      <p style="margin-bottom: 0;">{{ news.excerpt }}</p>
      <div style="border-bottom: 0.5px solid lightgrey; margin: 28px 0;"></div>
    </li>
  {% endfor %}
</ul>