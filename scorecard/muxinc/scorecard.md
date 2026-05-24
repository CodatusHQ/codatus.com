# Codatus - Repo Standards Scorecard

**Org:** muxinc<br>
**Scanned:** 2026-05-19 08:39 UTC (scanner v0.9.4)<br>
**Repos:** 82 of 207 scanned (54 forks excluded, 71 archived excluded)

## Scored rules

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has branch protection | 31 | 51 | 37% |
| Has required checks | 2 | 80 | 2% |
| Has CODEOWNERS | 32 | 50 | 39% |
| Has CI workflow | 45 | 37 | 54% |

**Score: 33/100** (average pass rate across the scored rules above)

## Additional checks

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has README | 81 | 1 | 98% |
| Has LICENSE | 47 | 35 | 57% |
| Has repo description | 46 | 36 | 56% |
| Has activity | 56 | 26 | 68% |
| Has SECURITY.md | 2 | 80 | 2% |

## Rule reference

<details>
<summary>How each rule works and how to fix failures</summary>

### Scored rules

#### Has branch protection

Checks that the default branch enforces pull-request flow: direct pushes are blocked and merges go through a PR. On public scans the require-PR sub-setting of classic protection isn't visible (it's admin-gated), so an enabled classic protection passes this rule whether or not it actually requires a PR; the rulesets `pull_request` rule is the precise public signal. To fix: add a `pull_request` ruleset rule on the default branch, or enable "Require a pull request before merging" in classic branch protection. [GitHub docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches).

#### Has required checks

Checks that the default branch requires at least one programmatic check (CI status check, workflow run, code scan, deployment, etc.) to pass before merging. To fix: add a check requirement on the default branch via Rulesets or classic branch protection.

#### Has CODEOWNERS

Checks for a CODEOWNERS file in any of the three locations GitHub honors: the repo root, `.github/`, or `docs/`. To fix: add a CODEOWNERS file in one of those locations mapping paths to GitHub users or teams. [GitHub docs](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-code-owners).

#### Has CI workflow

Checks for a checked-in CI configuration file from any of the major providers: GitHub Actions (any `.yml` or `.yaml` file under `.github/workflows/`), CircleCI (`.circleci/config.yml`), GitLab CI (`.gitlab-ci.yml`), Travis (`.travis.yml`), Buildkite (any file under `.buildkite/`), Azure Pipelines (`azure-pipelines.yml`), or Jenkins (`Jenkinsfile`). Setups whose configuration lives entirely server-side (no checked-in file) are not detected. To fix: add a workflow file for the provider you use. The simplest path on GitHub is a YAML workflow under `.github/workflows/`. [GitHub Actions quickstart](https://docs.github.com/en/actions/quickstart).

---

### Additional checks

#### Has README

Checks for a README file at the repository root. The match is case-insensitive and accepts any extension or none, so `README.md`, `README.rst`, `README.txt`, `Readme`, `readme.markdown` all pass. READMEs in subdirectories don't count. To fix: add a top-level README that explains what the project is, how to install it, and how to use it.

#### Has LICENSE

Checks GitHub's auto-detected license field, which GitHub populates by running the Licensee gem against the repo and recognizing conventionally-named license files: `LICENSE`, `LICENSE.md`, `LICENSE.txt`, `LICENCE`, `COPYING`, `MIT-LICENSE`, and similar variants. Custom-text licenses Licensee can't classify won't pass even if a file is present. To fix: pick a license at [choosealicense.com](https://choosealicense.com) and add it to your repo root using one of the recognized filenames. GitHub will detect it automatically.

#### Has repo description

Checks that the repository's description field (set via the About panel, shown at the top of the GitHub repo page) is non-empty. To fix: edit the repo's About panel and add a one-line description.

#### Has activity

Checks that the repository has had a commit (push) within the last 12 months, based on GitHub's `pushed_at` timestamp on the repo. To fix: push a commit, or archive the repository if it's no longer maintained.

#### Has SECURITY.md

Checks for a SECURITY.md file in any of the three locations GitHub recognizes for security policies: the repo root, `.github/`, or `docs/`. To fix: add a SECURITY.md describing how to report vulnerabilities. [GitHub's template](https://docs.github.com/en/code-security/getting-started/adding-a-security-policy-to-your-repository).

</details>

## Repository details

### Strong (≥80%)

<details>
<summary><a href="https://github.com/muxinc/elements">elements</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/videojs-mux-kit">videojs-mux-kit</a> - 100%</summary>

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

### Moderate (30-79%)

<details>
<summary><a href="https://github.com/muxinc/ai">ai</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

</details>

<details>
<summary><a href="https://github.com/muxinc/android-upload-sdk">android-upload-sdk</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/guestbook">guestbook</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has README
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/media-chrome">media-chrome</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/media-elements">media-elements</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/media-group">media-group</a> - 50%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/mux-csharp">mux-csharp</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/mux-elixir">mux-elixir</a> - 50%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/mux-go">mux-go</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/mux-java">mux-java</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/mux-node-sdk">mux-node-sdk</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

</details>

<details>
<summary><a href="https://github.com/muxinc/mux-php">mux-php</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/mux-player-android">mux-player-android</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/mux-player-swift">mux-player-swift</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/mux-protobuf">mux-protobuf</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/mux-python">mux-python</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/mux-ruby">mux-ruby</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/mux-stats-google-ima">mux-stats-google-ima</a> - 50%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/mux-stats-google-ima-kaltura-ios">mux-stats-google-ima-kaltura-ios</a> - 50%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks

**Additional check failures:**
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/mux-stats-sdk-avplayer">mux-stats-sdk-avplayer</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/mux-stats-sdk-bitmovin-android">mux-stats-sdk-bitmovin-android</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/mux-stats-sdk-exoplayer">mux-stats-sdk-exoplayer</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/mux-stats-sdk-kaltura-ios">mux-stats-sdk-kaltura-ios</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/mux-stats-sdk-media3">mux-stats-sdk-media3</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/mux-stats-sdk-theoplayer-ios">mux-stats-sdk-theoplayer-ios</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/player.style">player.style</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/stats-sdk-android">stats-sdk-android</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/stats-sdk-objc">stats-sdk-objc</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/strapi-plugin-mux-video-uploader">strapi-plugin-mux-video-uploader</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/swift-upload-sdk">swift-upload-sdk</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/upchunk">upchunk</a> - 50%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

### Weak (≤29%)

<details>
<summary><a href="https://github.com/muxinc/Mux-Convex-Example">Mux-Convex-Example</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/Mux-Fal">Mux-Fal</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/Mux-React-Activity">Mux-React-Activity</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/Slop-Social">Slop-Social</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/VideoJS-Theater">VideoJS-Theater</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/agent-video">agent-video</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/blur-up-thumbs">blur-up-thumbs</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/blurup">blurup</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/ce-la-react">ce-la-react</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/certificate-expiry-monitor">certificate-expiry-monitor</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/cli">cli</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/content-moderation-dashboard">content-moderation-dashboard</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/examples">examples</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/hlstools">hlstools</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/media-offset">media-offset</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/media-playlist">media-playlist</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CI workflow

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/media-woofer">media-woofer</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/mux-background-video">mux-background-video</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/mux-convex-component">mux-convex-component</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/mux-delete-all-assets">mux-delete-all-assets</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/mux-overshoot">mux-overshoot</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/mux-stats-sdk-bitmovin-ios">mux-stats-sdk-bitmovin-ios</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/mux-stats-sdk-jwplayer-ios">mux-stats-sdk-jwplayer-ios</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CI workflow

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/mux-stats-sdk-kaltura-android">mux-stats-sdk-kaltura-android</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/mux-stats-sdk-mediaplayer">mux-stats-sdk-mediaplayer</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/mux-stats-sdk-shared-ios">mux-stats-sdk-shared-ios</a> - 25%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/mux-stats-sdk-theoplayer-android">mux-stats-sdk-theoplayer-android</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/next-video">next-video</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/next-video-site">next-video-site</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/next-video-starter">next-video-starter</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/nextjs-backend-example">nextjs-backend-example</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/nextjs-video-ai-workflows">nextjs-video-ai-workflows</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/responsive-video-element">responsive-video-element</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/robotube">robotube</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/roku-mux">roku-mux</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/shaaaare-my-screeeen">shaaaare-my-screeeen</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/simple-local-video-test-server">simple-local-video-test-server</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/simple-vjs-10-tests-html">simple-vjs-10-tests-html</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/skills">skills</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/stream.new">stream.new</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/supabase">supabase</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/supasearch">supasearch</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/tap">tap</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/templates">templates</a> - 25%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/truckload">truckload</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/video-course-starter-kit">video-course-starter-kit</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/vmaf_analyzer">vmaf_analyzer</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/web-player-framework">web-player-framework</a> - 25%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/muxinc/worst.player.style">worst.player.style</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has activity
- Has SECURITY.md

</details>
