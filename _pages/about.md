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
        I hold a BSc in media informatics and visual computing from the Vienna University of Technology and an MSc in 
sound and music computing from QMUL.
        <br /><br />
        Drop me a message at <a href="mailto:max.graf@qmul.ac.uk">max.graf@qmul.ac.uk</a> :)
    </div>
</div>

<br />
## News

<ul class="no-bullets">
  {% for news in site.news reversed %}
    <li>
      <h3>{{ news.title }}<span style="font-size:16px; color: gray;">&nbsp;&nbsp;&nbsp;{{ news.date | date: "%d. %B %Y" }}</span></h3>
      <p></p>
      <p>{{ news.excerpt }}</p>
    </li>
  {% endfor %}
</ul>