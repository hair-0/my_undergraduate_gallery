---
layout: splash
permalink: /en/
title: "Undergraduate Gallery"
excerpt: "Mechanical Engineering → Computer Science · Embodied AI / VLA / VLM"
header:
  overlay_color: "#16324f"
  actions:
    - label: "View Works"
      url: /en/works/
    - label: "About Me"
      url: /en/about/
    - label: "CV"
      url: /en/cv/
lang: en-US
alt_url: /
---

## Featured Works

{% if site.portfolio_en.size > 0 %}
<div class="entries-grid">
  {% for post in site.portfolio_en limit:3 %}
    {% include archive-single.html type="grid" %}
  {% endfor %}
</div>

<p><a href="{{ '/en/works/' | relative_url }}" class="btn btn--primary">All Works</a></p>
{% else %}
*Works are being organized and will be published soon.*
{% endif %}

## About Me

I am a Mechanical Engineering undergraduate applying for a Computer Science master's, with research interests in embodied intelligence, vision-language-action models (VLA) and vision-language models (VLM).
I want to combine mechanical systems and control with machine learning so that agents can perceive, reason and act in the real world.

[Learn more →]({{ '/en/about/' | relative_url }})

{% if site.posts.size > 0 %}
## Recent Notes

<ul>
  {% for post in site.posts limit:3 %}
    <li><a href="{{ post.url | relative_url }}">{{ post.title }}</a> <small>{{ post.date | date: "%Y-%m-%d" }}</small></li>
  {% endfor %}
</ul>
{% endif %}
