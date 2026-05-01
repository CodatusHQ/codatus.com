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
_config.yml          # Jekyll config (site title, URL, exclude list)
_layouts/
  default.html       # the only layout - wraps every page with <head>, <body>, footer
_includes/
  head.html          # <head> contents (meta, fonts, GoatCounter, stylesheet)
  topbar.html        # the dark top bar with nav links - one source of truth
  footer.html        # the page footer - one source of truth
index.html           # home page (uses dark hero band)
about/index.html     # /about/
privacy/index.html   # /privacy/
terms/index.html     # /terms/
style.css            # all CSS for the site
favicon.png
CNAME                # codatus.com (GitHub Pages custom domain)
```

## How to update the nav

Edit `_includes/topbar.html`. Every page picks up the change automatically.

The footer works the same way: edit `_includes/footer.html`.

## How to add a new page

1. Create `newpage/index.html` with front matter at the top:

   ```html
   ---
   layout: default
   title: New Page - Codatus
   description: One-sentence description for SEO.
   ---
   {% include topbar.html %}

   <div class="container">
       <article class="content">
           <h1>Page heading</h1>
           <p>Page content...</p>
       </article>
   </div>
   ```

2. Push to `main`. GitHub Pages builds and deploys.

The page is reachable at `/newpage/`. Add a link to it in `_includes/topbar.html` and/or `_includes/footer.html` if it should be in the global nav.

## Why `{% include topbar.html %}` is in the page, not the layout

The home page wraps the topbar in `<div class="dark-block">` together with the hero, so the dark grid+glow background extends behind both. Subpages call the topbar standalone. Having each page place its own `{% include topbar.html %}` keeps the layout minimal and lets the home page handle its dark band without a special-case layout. The topbar HTML still lives in one file - the include line is the only repetition.

## Deploy

Push to `main`. GitHub Pages runs Jekyll automatically and publishes within ~1 minute. Check the Actions tab on the repo for build status.

The custom domain (`codatus.com`) is set via `CNAME`. GitHub auto-issues the Let's Encrypt certificate.

## Analytics

[GoatCounter](https://www.goatcounter.com/) is wired up in `_includes/head.html`. Cookieless, no GDPR banner needed. Click events on the install + sample buttons use `data-goatcounter-click` attributes (see [index.html](index.html)).