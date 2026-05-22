# codatus.com

Landing page for [Codatus](https://codatus.com) - a GitHub repo scorecard for platform teams. Built as a static site rendered by [Jekyll](https://jekyllrb.com), deployed automatically by GitHub Pages on push to `main`.

## Local development

Prerequisites: Ruby 3.0+ and [Bundler](https://bundler.io/) (`gem install bundler`).

```sh
bundle install              # one-time, installs the github-pages gem and dependencies
bundle exec jekyll serve    # serves at http://localhost:4000 with live reload
```

The Gemfile pins to GitHub's `github-pages` meta-gem, so what you see locally matches what GitHub Pages renders in production.

## File structure

```
_config.yml          # Jekyll config (site title, URL, permalink, exclude list)
_layouts/
  default.html      # base shell - <head>, <body>, footer. Everything extends this.
  content.html     # extends default, adds topbar + .container wrapper.
  post.html       # extends content, renders blog-post chrome (back-link, masthead, body)
  scorecard.html # extends default, renders per-org scorecard page
_includes/
  head.html        # <head> contents (meta + OG tags, fonts, GoatCounter, stylesheet)
  topbar.html     # the dark top bar with nav - one source of truth
  footer.html    # the page footer - one source of truth
_posts/
  YYYY-MM-DD-slug.md   # blog posts (markdown body + frontmatter); URL is /blog/<slug>/
_og-source/
  og-image.html       # HTML template for the default site OG image
  post-template.html # HTML template for per-post OG images
og-image.png         # default Open Graph share image (1200x630)
og/
  <post-slug>.png   # per-post Open Graph images, used via og_image: frontmatter
index.html            # home page (uses dark hero band; custom layout: default)
about/index.html     # /about/    (layout: content)
privacy/index.html  # /privacy/  (layout: content)
terms/index.html   # /terms/    (layout: content)
blog/index.html   # /blog/     (layout: content; iterates site.posts)
scorecard/<org>/
  index.html        # the page Jekyll renders (frontmatter: layout, org, title, description)
  scorecard.md     # raw markdown body fetched at page-load and rendered with marked.js
sample-scorecard.md # consumed by the home page sample-band
style.css           # all CSS for the site
favicon.png
CNAME              # codatus.com (GitHub Pages custom domain)
```

## Layouts

There are four layouts; child layouts extend their parent (Jekyll's `layout:` chain):

- **`default.html`** is the base shell. `<head>`, `<body>`, footer.
- **`content.html`** extends `default`, includes the topbar, wraps content in `<div class="container">`. Use this for static pages (about, privacy, terms) and the blog index.
- **`post.html`** extends `content`. Adds the blog-post chrome: back-link pill, masthead with title + date + orange underline, body article wrapper. Blog posts in `_posts/` use this.
- **`scorecard.html`** extends `default`. Custom layout for `/scorecard/<org>/` pages. Fetches the org-specific `scorecard.md` client-side and renders with marked.js.

The home page (`index.html`) uses `layout: default` directly because it needs a custom `dark-block` wrapper that extends behind both the topbar and the hero - other pages don't need that.

## How to update the nav

Edit `_includes/topbar.html`. Every page picks up the change automatically.

The footer works the same way: edit `_includes/footer.html`.

## How to add a new content page (about-style)

1. Create `newpage/index.html` with frontmatter:

   ```html
   ---
   layout: content
   title: New Page
   description: One-sentence description for SEO and Open Graph.
   ---
   <article class="content">
     <h1>Page heading</h1>
     <p>Page content...</p>
   </article>
   ```

2. Push to `main`. GitHub Pages builds and deploys.

The page is reachable at `/newpage/`. Add a link in `_includes/topbar.html` and/or `_includes/footer.html` if it should be in the global nav.

Notes:
- `title:` in frontmatter is the short page name. `head.html` appends ` - Codatus` automatically (unless the title already contains "Codatus").
- `description:` is required - it powers both `<meta name="description">` and `og:description`.
- The orange-underlined `h1` styling is inherited from `.content h1`. Just write a normal `<h1>`.

## How to add a new blog post

1. Create a markdown file in `_posts/` named `YYYY-MM-DD-<slug>.md`. The date prefix is mandatory (Jekyll uses it to recognise the file as a post); the slug becomes the URL.

   ```yaml
   ---
   layout: post
   title: Measuring repo standards on GitHub
   description: One-sentence summary used in the blog index card and as og:description.
   ---

   Body of the post in **markdown**. Headings like `## Section` and `### Sub-section`
   render through the standard `.blog-post-content` styles.
   ```

2. (Optional) Create a custom Open Graph image for the post - see [OG images](#og-images) below.

3. Push to `main`.

The post will be reachable at `/blog/<slug>/` (e.g. `/blog/measuring-repo-standards-on-github/`). The slug-only URL is configured via `permalink: /blog/:title/` in `_config.yml`.

The blog index (`/blog/`) updates automatically - it iterates `site.posts`, renders the newest as a featured callout, and any older posts as plain rows beneath under an "Earlier posts" label. With one post, only the callout renders.

Notes:
- Date comes from the filename - you don't need to (and shouldn't) duplicate it in frontmatter.
- `head.html` auto-derives `og:type` from `page.layout`. Posts get `og:type: "article"`, everything else gets `"website"`.

## How to add a new scorecard

Scorecard pages are static pages per organisation at `/scorecard/<org>/`. The page chrome is the layout; the actual scorecard data (markdown table) is fetched client-side from a sibling `.md` file.

1. Create the directory `scorecard/<org>/` (lowercase org name matching how it appears in the URL).

2. Create `scorecard/<org>/index.html` with frontmatter:

   ```html
   ---
   layout: scorecard
   org: <org>
   title: Codatus scorecard - <org>
   description: Repo standards scorecard for the <org> GitHub organization. Branch protection, code ownership, CI, and documentation across all public repos.
   ---
   ```

3. Drop the scanner output at `scorecard/<org>/scorecard.md` (raw markdown, no frontmatter). The scorecard layout fetches this file at page-load and renders it with marked.js.

4. Push to `main`.

The page will be reachable at `/scorecard/<org>/`. Scanner-generated scorecards: whatever produces them should emit both `title:` and `description:` alongside `org:` so the page lands complete.

## OG images

The default share image is `/og-image.png` at the repo root (1200x630, dark brand image with the Codatus wordmark). Every page on the site uses it unless overridden.

### Per-page override

In a page's frontmatter:

```yaml
og_image: /og/<slug>.png
```

`head.html` reads `page.og_image` and falls back to `/og-image.png` when absent. The expected location for custom images is `/og/<slug>.png` matching the page slug.

### Regenerating an OG image

The HTML templates that produced the existing PNGs live under `_og-source/`:

- `_og-source/og-image.html` - the site-wide default. Screenshot the `.og` div at 1200x630, save over `og-image.png`.
- `_og-source/post-template.html` - per-post template. Edit `.title` text inside the markup, screenshot the `.og` div at 1200x630, save at `og/<post-slug>.png`.

To screenshot: open the file in Chrome, DevTools → device-mode → set viewport to 1200 x 630 → right-click the `.og` element in the elements panel → "Capture node screenshot".

The `_og-source/` directory has an underscore prefix so Jekyll ignores it; templates are committed for reference but never served.

Twitter / LinkedIn cache share-card previews aggressively. After updating an OG image, use the platform's card debugger to flush the cache: [LinkedIn Post Inspector](https://www.linkedin.com/post-inspector/), [Twitter Card Validator](https://cards-dev.twitter.com/validator), or [opengraph.xyz](https://www.opengraph.xyz/) for a vendor-neutral preview.

## Why `{% include topbar.html %}` lives in the page (for some layouts)

Most layouts now include the topbar themselves (see `_layouts/content.html` and `_layouts/scorecard.html`). The home page is the exception - it manually wraps `{% include topbar.html %}` inside `<div class="dark-block">` so the dark grid+glow background extends behind both the topbar and the hero. Keeping the topbar include at the page level for the home page avoids a one-off layout just for that effect.

## Deploy

Push to `main`. GitHub Pages runs Jekyll automatically and publishes within ~1 minute. Check the Actions tab on the repo for build status.

The custom domain (`codatus.com`) is set via `CNAME`. GitHub auto-issues the Let's Encrypt certificate.

## Refreshing the sample scorecard

`sample-scorecard.md` is consumed by `index.html` (fetched at page load and rendered with marked.js). It's a verbatim copy of the canonical sample produced by [the scanner repo's fixture](https://github.com/CodatusHQ/scanner/blob/main/samples/fixture.go). When the scanner's report format or the fixture changes, refresh the local copy and commit it:

```sh
go run github.com/CodatusHQ/scanner/cmd/generate-sample@v0.9.4 > sample-scorecard.md
```

(Bump the version pin to whatever scanner release you want to track.) Don't hand-edit `sample-scorecard.md` - the scanner's fixture is the single source of truth, and any local edits will be overwritten by the next regen. If the intro paragraph in [index.html](index.html) references specific numbers (repo count, exclusions), update those by hand to match the new fixture.

## Analytics

[GoatCounter](https://www.goatcounter.com/) is wired up in `_includes/head.html`. Cookieless, no GDPR banner needed. Click events on the install + sample buttons use `data-goatcounter-click` attributes (see [index.html](index.html)).
