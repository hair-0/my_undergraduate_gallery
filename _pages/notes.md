---
title: "笔记"
layout: archive
permalink: /notes/
lang: zh-CN
alt_url: /en/notes/
---

技术笔记、课程总结与学习记录。

{% assign notes = site.posts | where: "lang", "zh-CN" %}
{% if notes.size > 0 %}
<div class="entries-list">
  {% for post in notes %}
    {% include archive-single.html type="list" %}
  {% endfor %}
</div>
{% else %}
*还没有笔记。*
{% endif %}
