# 本科作品集 · Undergraduate Gallery

机械工程本科生申请计算机科学硕士（具身智能 / VLA / VLM 方向）的作品集网站，中英双语、支持亮/暗主题，基于 Jekyll + [Minimal Mistakes](https://github.com/mmistakes/minimal-mistakes) 主题构建，通过 GitHub Actions 部署到 GitHub Pages。

线上地址：https://hair-0.github.io/my_undergraduate_gallery/

## 站点结构

| 路径 | 内容 |
| --- | --- |
| `/` | 首页：精选作品 + 简介 |
| `/profile/` | 个人简介（教育背景、研究兴趣、技能、经历、CV PDF） |
| `/works/` | 作品列表（`_portfolio` 集合） |
| `/en/...` | 以上页面的英文版本 |

导航顺序为「简介 → 作品」（Profile → Works）。

## 如何添加一个作品

1. 复制 `_templates/portfolio-cn.md` 为 `_portfolio/你的项目.md`（文件名即 URL，如 `vla-navigation.md` → `/works/vla-navigation/`）。
2. 填写 front matter：
   - `title`：项目名称
   - `header.teaser`：卡片封面图（建议 800×420，放到 `assets/images/works/`）
   - `excerpt`：一句话概括
   - `sidebar`：角色、时间、技术栈、链接
   - `gallery`：项目图集（可删）
   - `alt_url`：对应英文页面的 URL
3. 按「背景与问题 → 我的角色 → 方法与技术 → 结果与指标 → 链接」撰写正文。
4. 复制 `_templates/portfolio-en.md` 创建英文版本，并把两个文件的 `alt_url` 互相指向对方。
5. 建议每个项目保留 3–6 条可验证的结果（指标、截图、视频、代码/报告链接）。团队项目请注明自己的具体分工。

## 需要填写的占位内容

- `_config.yml`：`author.email`、GitHub 之外的社交链接、`cv_pdf`（上传 PDF 到 `assets/files/` 后填写路径）
- `assets/images/avatar.svg`：替换为个人照片（`_config.yml` 中 `author.avatar` 指向它）
- `_pages/profile.md` 与 `_pages/en/profile.md` 中所有 `【待填写】`
- 作品条目（见上）以及 `assets/images/works/` 下的占位封面

## 亮/暗主题

- `assets/css/main.css`（`air` 亮色皮肤）与 `assets/css/dark.css`（`dark` 暗色皮肤）分别编译，页面同时引入，通过切换 `media` 生效。
- 导航栏右侧的月亮/太阳按钮切换主题，选择保存在 `localStorage`；首次访问跟随系统 `prefers-color-scheme`。
- 主题脚本与样式位于 `_includes/head.html`、`_sass/_custom.scss`。

## 本地预览与部署

```bash
bundle install
bundle exec jekyll serve
```

推送到 `master` 后由 `.github/workflows/jekyll.yml` 自动构建并部署到 GitHub Pages。

仓库地址与站点 URL 在 `_config.yml` 中配置（`url`、`baseurl`、`repository`）。

## 说明

- 中英文页面通过 `_pages/` 与 `_pages/en/`、`_portfolio/` 与 `_portfolio_en/` 目录镜像实现，语言切换按钮读取每个页面的 `alt_url`。
- `_plugins/i18n_locale.rb` 根据页面 `lang` 切换主题界面文案（`zh-CN` / `en-US`）。
- `_templates/` 下的项目模板不会被构建，仅作复制模板使用。
- 主题版权归 [Minimal Mistakes](https://github.com/mmistakes/minimal-mistakes)（MIT License）所有，详见 `LICENSE`。
