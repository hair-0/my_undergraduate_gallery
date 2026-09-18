---
title: "Notes"
layout: archive
permalink: /en/notes/
lang: en-US
alt_url: /notes/
---

Technical notes, coursework summaries and learning logs.

{% assign notes = site.posts | where: "lang", "en-US" %}
{% if notes.size > 0 %}
<div class="entries-list">
  {% for post in notes %}
    {% include archive-single.html type="list" %}
  {% endfor %}
</div>
{% else %}
*No notes yet.*
{% endif %}
