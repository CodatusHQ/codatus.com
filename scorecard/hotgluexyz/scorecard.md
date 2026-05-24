# Codatus - Repo Standards Scorecard

**Org:** hotgluexyz<br>
**Scanned:** 2026-05-19 08:21 UTC (scanner v0.9.4)<br>
**Repos:** 198 of 288 scanned (81 forks excluded, 9 archived excluded)

## Scored rules

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has branch protection | 1 | 197 | 0% |
| Has required checks | 0 | 198 | 0% |
| Has CODEOWNERS | 0 | 198 | 0% |
| Has CI workflow | 101 | 97 | 51% |

**Score: 12/100** (average pass rate across the scored rules above)

## Additional checks

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has README | 172 | 26 | 86% |
| Has LICENSE | 59 | 139 | 29% |
| Has repo description | 75 | 123 | 37% |
| Has activity | 146 | 52 | 73% |
| Has SECURITY.md | 1 | 197 | 0% |

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

### Moderate (30-79%)

<details>
<summary><a href="https://github.com/hotgluexyz/gluestick">gluestick</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

### Weak (≤29%)

<details>
<summary><a href="https://github.com/hotgluexyz/airbyte-yaml-taps">airbyte-yaml-taps</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has README
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/bigquery-compare">bigquery-compare</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/etl-scripts-ts">etl-scripts-ts</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has README
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/gluestick-ts">gluestick-ts</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/hg-interview">hg-interview</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/hotglue-etl-exceptions">hotglue-etl-exceptions</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/hotglue-mcp">hotglue-mcp</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/hotglue-shopify-app">hotglue-shopify-app</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has activity

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/hotglue-tap-cookiecutter">hotglue-tap-cookiecutter</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/hotglue-target-cookiecutter">hotglue-target-cookiecutter</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/jsonwebtoken-generator">jsonwebtoken-generator</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/postgres-compare">postgres-compare</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/recipe-app">recipe-app</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/recipes">recipes</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/sequences-encyclopedia">sequences-encyclopedia</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/spreadsheets">spreadsheets</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-7shifts">tap-7shifts</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/tap-actionkit">tap-actionkit</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-actionnetwork">tap-actionnetwork</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-activedirectory">tap-activedirectory</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/tap-airwallex">tap-airwallex</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-amazon-seller">tap-amazon-seller</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-bigcommerce-v2">tap-bigcommerce-v2</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-bigquery">tap-bigquery</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/tap-blackbaud">tap-blackbaud</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-blob-storage">tap-blob-storage</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has README
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/tap-canny">tap-canny</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-canvas-career">tap-canvas-career</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-canvas-catalog">tap-canvas-catalog</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-cbx1">tap-cbx1</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-cloud-storage">tap-cloud-storage</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has README
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/tap-coupa">tap-coupa</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-csv">tap-csv</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/tap-dynamics-bc">tap-dynamics-bc</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-easyecom">tap-easyecom</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-ebay">tap-ebay</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-etsy">tap-etsy</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/tap-everyaction">tap-everyaction</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-exact">tap-exact</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-excel">tap-excel</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-flowcode">tap-flowcode</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-flowpay-universal">tap-flowpay-universal</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/tap-ftp-files">tap-ftp-files</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-github">tap-github</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/tap-gocardless">tap-gocardless</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-gong">tap-gong</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-google-ads">tap-google-ads</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-google-drive">tap-google-drive</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-hotglue">tap-hotglue</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-hubspot-beta">tap-hubspot-beta</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-imis">tap-imis</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-inriver">tap-inriver</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-instagram">tap-instagram</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-intacct">tap-intacct</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/tap-intercom">tap-intercom</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/tap-jsonl">tap-jsonl</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has README
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/tap-klaviyo-v2">tap-klaviyo-v2</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-kort">tap-kort</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-kpa">tap-kpa</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-lightspeed">tap-lightspeed</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-linnworks">tap-linnworks</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-logic4">tap-logic4</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-magento">tap-magento</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-marketman">tap-marketman</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/tap-marketo">tap-marketo</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-medusa">tap-medusa</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-medusa-v2">tap-medusa-v2</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-mock">tap-mock</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/tap-nationbuilder">tap-nationbuilder</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-netsuite">tap-netsuite</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/tap-netsuite-rest">tap-netsuite-rest</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-newstore">tap-newstore</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-notion">tap-notion</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-ongoing">tap-ongoing</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-orderful">tap-orderful</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-pipedrive">tap-pipedrive</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/tap-precoro">tap-precoro</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-procore">tap-procore</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-quickbooks">tap-quickbooks</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/tap-ramp">tap-ramp</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/tap-redash">tap-redash</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/tap-refersion">tap-refersion</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/tap-restaurant365">tap-restaurant365</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-reviewsio">tap-reviewsio</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-rillet">tap-rillet</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/tap-salesforce-commerce">tap-salesforce-commerce</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-sap-b1">tap-sap-b1</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-sellercloud">tap-sellercloud</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-sendinblue">tap-sendinblue</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-sftp-files">tap-sftp-files</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-sharepoint">tap-sharepoint</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/tap-shopify-partner">tap-shopify-partner</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-shopify-v2">tap-shopify-v2</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-snowflake">tap-snowflake</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/tap-spoton">tap-spoton</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-statflo">tap-statflo</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-stella-connect">tap-stella-connect</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-stripe-v2">tap-stripe-v2</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-syncro">tap-syncro</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-tradogram">tap-tradogram</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/tap-unanet">tap-unanet</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-woocommerce">tap-woocommerce</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/tap-zendesk">tap-zendesk</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/tap-zoho-inventory">tap-zoho-inventory</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/tap-zohobooks">tap-zohobooks</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-actionkit">target-actionkit</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-actionnetwork">target-actionnetwork</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-activecampaign">target-activecampaign</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-airbase">target-airbase</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-airtable">target-airtable</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-airwallex">target-airwallex</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-api">target-api</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-appsflyer">target-appsflyer</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-bird">target-bird</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-blob-storage">target-blob-storage</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has README
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-brainial">target-brainial</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-canvas-career">target-canvas-career</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-chargebee">target-chargebee</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-cloud-storage">target-cloud-storage</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has README
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-cmic">target-cmic</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-constrafor">target-constrafor</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has README
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-databox">target-databox</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has README
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-dearsystems">target-dearsystems</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has README
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-donorperfect">target-donorperfect</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-drip">target-drip</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-dualentry">target-dualentry</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-dynamics-bc">target-dynamics-bc</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-dynamics-finance">target-dynamics-finance</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-dynamicsonprem">target-dynamicsonprem</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-easyecom">target-easyecom</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-easypost">target-easypost</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-everyaction">target-everyaction</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has README
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-exact">target-exact</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-excel">target-excel</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-fishbowl-online">target-fishbowl-online</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-freshbooks">target-freshbooks</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-hubspot">target-hubspot</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-hubspot-v4">target-hubspot-v4</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-hyphen">target-hyphen</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has README
- Has LICENSE
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-imis">target-imis</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-inflow">target-inflow</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has README
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-inriver">target-inriver</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-instantly">target-instantly</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-intacct">target-intacct</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-intacct-v2">target-intacct-v2</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-intacct-v3">target-intacct-v3</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-intercom">target-intercom</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-ispolitical">target-ispolitical</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has README
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-kafka">target-kafka</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-klaviyo">target-klaviyo</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-kort">target-kort</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-lightspeed">target-lightspeed</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-logic4">target-logic4</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-mailchimp-v2">target-mailchimp-v2</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-mailgun">target-mailgun</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has README
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-marketo">target-marketo</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-mock">target-mock</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-mongodb">target-mongodb</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-montapacking">target-montapacking</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-montapacking-v2">target-montapacking-v2</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-mysql-v2">target-mysql-v2</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-nationbuilder">target-nationbuilder</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-netsuite">target-netsuite</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-netsuite-v2">target-netsuite-v2</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-newstore">target-newstore</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-notion">target-notion</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-odoo-v3">target-odoo-v3</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-omnisend">target-omnisend</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has README
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-orderful">target-orderful</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-parquet">target-parquet</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-precoro">target-precoro</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-qlsv2">target-qlsv2</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-queue-storage">target-queue-storage</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-quickbooks">target-quickbooks</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has README
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-quickbooks-v2">target-quickbooks-v2</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-rillet">target-rillet</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-s3">target-s3</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has README
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-salesforce">target-salesforce</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has README
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-salesforce-marketing">target-salesforce-marketing</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-salesforce-v3">target-salesforce-v3</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-sendgrid">target-sendgrid</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-sftp">target-sftp</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-shipstation">target-shipstation</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has README
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-shopify">target-shopify</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has README
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-shopify-v2">target-shopify-v2</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-singer">target-singer</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has README
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-snowflake">target-snowflake</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-sqs">target-sqs</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-triplewhale">target-triplewhale</a> - 0%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-virtuous">target-virtuous</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-whatagraph">target-whatagraph</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has README
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-woocommerce">target-woocommerce</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has README
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-woocommerce-v2">target-woocommerce-v2</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-xero">target-xero</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has README
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/hotgluexyz/target-zoho-inventory">target-zoho-inventory</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/target-zohobooks">target-zohobooks</a> - 25%</summary>

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
<summary><a href="https://github.com/hotgluexyz/widget-boilerplate">widget-boilerplate</a> - 0%</summary>

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
