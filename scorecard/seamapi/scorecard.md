# Codatus - Repo Standards Scorecard

**Org:** seamapi<br>
**Scanned:** 2026-05-19 09:56 UTC (scanner v0.9.4)<br>
**Repos:** 38 of 94 scanned (2 forks excluded, 52 archived excluded, 2 skipped)

## Scored rules

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has branch protection | 20 | 18 | 52% |
| Has required checks | 13 | 25 | 34% |
| Has CODEOWNERS | 25 | 13 | 65% |
| Has CI workflow | 28 | 10 | 73% |

**Score: 56/100** (average pass rate across the scored rules above)

## Additional checks

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has README | 36 | 2 | 94% |
| Has LICENSE | 24 | 14 | 63% |
| Has repo description | 34 | 4 | 89% |
| Has activity | 27 | 11 | 71% |
| Has SECURITY.md | 0 | 38 | 0% |

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
<summary><a href="https://github.com/seamapi/csharp">csharp</a> - 100%</summary>

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/seamapi/fake-seam-connect">fake-seam-connect</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/seamapi/fake-template">fake-template</a> - 100%</summary>

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/seamapi/javascript">javascript</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/seamapi/javascript-http">javascript-http</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/seamapi/javascript-webhook">javascript-webhook</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/seamapi/php">php</a> - 100%</summary>

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/seamapi/python">python</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/seamapi/react">react</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/seamapi/ruby">ruby</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/seamapi/types">types</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/seamapi/url-search-params-serializer">url-search-params-serializer</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/seamapi/zoned-time">zoned-time</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

### Moderate (30-79%)

<details>
<summary><a href="https://github.com/seamapi/ava-postgres">ava-postgres</a> - 50%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/seamapi/blueprint">blueprint</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/seamapi/dbtypr">dbtypr</a> - 50%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/seamapi/edgespec">edgespec</a> - 50%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/seamapi/nextlove">nextlove</a> - 50%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/seamapi/react-query">react-query</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/seamapi/seam-bridge">seam-bridge</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/seamapi/seam-cli">seam-cli</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/seamapi/seam-pgm">seam-pgm</a> - 50%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks

**Additional check failures:**
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/seamapi/smith">smith</a> - 50%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/seamapi/url-search-params-parser">url-search-params-parser</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/seamapi/zustand-hoist">zustand-hoist</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

### Weak (≤29%)

<details>
<summary><a href="https://github.com/seamapi/.github">.github</a> - 0%</summary>

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
<summary><a href="https://github.com/seamapi/android">android</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/seamapi/connect-webview-metrics">connect-webview-metrics</a> - 0%</summary>

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
<summary><a href="https://github.com/seamapi/go">go</a> - 25%</summary>

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
<summary><a href="https://github.com/seamapi/homebrew-seam">homebrew-seam</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has README
- Has LICENSE
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/seamapi/iOS">iOS</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/seamapi/ios-alfred-library">ios-alfred-library</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has README
- Has LICENSE
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/seamapi/java">java</a> - 25%</summary>

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
<summary><a href="https://github.com/seamapi/nextjs-server-modules">nextjs-server-modules</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/seamapi/prefixed-api-key">prefixed-api-key</a> - 0%</summary>

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
<summary><a href="https://github.com/seamapi/seam-components-sample-apps">seam-components-sample-apps</a> - 25%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/seamapi/seam-plugin">seam-plugin</a> - 0%</summary>

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
<summary><a href="https://github.com/seamapi/typed-axios">typed-axios</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

### Skipped (2 repos)

- [node-tbls](https://github.com/seamapi/node-tbls) - repository is empty
- [stringify-zod-error](https://github.com/seamapi/stringify-zod-error) - repository is empty
