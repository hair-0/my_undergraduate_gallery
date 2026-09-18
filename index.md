---
layout: splash
permalink: /
title: "本科作品集"
excerpt: "机械工程 → 计算机科学 · 具身智能 / VLA / VLM"
header:
  overlay_color: "#16324f"
  actions:
    - label: "查看作品"
      url: /works/
    - label: "关于我"
      url: /about/
    - label: "简历"
      url: /cv/
lang: zh-CN
alt_url: /en/
---

## 精选作品

{% if site.portfolio.size > 0 %}
<div class="entries-grid">
  {% for post in site.portfolio limit:3 %}
    {% include archive-single.html type="grid" %}
  {% endfor %}
</div>

<p><a href="{{ '/works/' | relative_url }}" class="btn btn--primary">查看全部作品</a></p>
{% else %}
*作品正在整理中，敬请期待。*
{% endif %}

## 关于我

机械工程本科生，正在申请计算机科学硕士，研究兴趣包括具身智能、视觉-语言-动作模型（VLA）与视觉-语言模型（VLM）。
我希望把机械系统、控制与机器学习结合起来，让智能体在真实世界中感知、决策与行动。

[了解更多 →]({{ '/about/' | relative_url }})

{% if site.posts.size > 0 %}
## 最近笔记

<ul>
  {% for post in site.posts limit:3 %}
    <li><a href="{{ post.url | relative_url }}">{{ post.title }}</a> <small>{{ post.date | date: "%Y-%m-%d" }}</small></li>
  {% endfor %}
</ul>
{% endif %}
