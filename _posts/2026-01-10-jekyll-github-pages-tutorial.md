---
title: "使用 Jekyll 和 GitHub Pages 搭建个人博客"
date: 2026-01-10 14:30:00 +0800
categories: 技术
tags: 
  - Jekyll
  - GitHub Pages
  - 博客
---

最近我使用 Jekyll 和 GitHub Pages 搭建了这个个人博客，整个过程非常顺利。今天来分享一下我的经验和步骤。

## 什么是 Jekyll？

Jekyll 是一个简单的、博客感知的静态网站生成器。它可以将纯文本转换成静态网站和博客。Jekyll 的特点包括：

- **静态网站**：无需数据库，纯 HTML/CSS/JS
- **Markdown 支持**：使用 Markdown 编写内容
- **免费托管**：GitHub Pages 原生支持 Jekyll
- **主题丰富**：有很多现成的主题可以使用

## 为什么选择 GitHub Pages？

GitHub Pages 是 GitHub 提供的静态网站托管服务，主要优势有：

1. **完全免费**：不需要支付任何费用
2. **自动化部署**：推送到代码库自动部署
3. **自定义域名**：支持绑定自己的域名
4. **HTTPS 支持**：自动配置 SSL 证书
5. **版本控制**：所有内容都有版本历史

## 搭建步骤

### 1. 创建 GitHub 仓库

在 GitHub 上创建一个新的仓库，仓库名可以是 `username.github.io` 或其他名称。

### 2. 配置 Jekyll

创建以下基本文件结构：

```text
my-blog/
├── _config.yml      # Jekyll 配置文件
├── _posts/          # 博客文章目录
├── _pages/          # 独立页面目录
└── index.md         # 首页
```

### 3. 编写第一篇文章

在 `_posts` 目录下创建 Markdown 文件，文件名格式为 `YYYY-MM-DD-title.md`。

### 4. 配置 GitHub Actions

创建 `.github/workflows/jekyll.yml` 文件来实现自动部署。

## 推荐主题

我使用的是 [Minimal Mistakes](https://github.com/mmistakes/minimal-mistakes) 主题，这是一个非常流行的 Jekyll 主题，具有以下特点：

- 响应式设计
- 多种配色方案
- 支持评论系统
- SEO 友好
- 易于定制

## 总结

使用 Jekyll 和 GitHub Pages 搭建博客是一个非常棒的选择，特别是对于技术人员来说。整个过程简单快捷，而且完全免费。

如果你也想搭建自己的博客，不妨试试这个方案！
