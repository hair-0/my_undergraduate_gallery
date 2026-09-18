---
layout: splash
permalink: /en/
title: "Undergraduate Gallery"
excerpt: "Mechanical Engineering → Computer Science · Embodied AI / VLA / VLM"
header:
  overlay_color: "#16324f"
  actions:
    - label: "Profile"
      url: /en/profile/
    - label: "Works"
      url: /en/works/
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

[View full profile →]({{ '/en/profile/' | relative_url }})
