# Codatus - Repo Standards Scorecard

**Org:** lokalise<br>
**Scanned:** 2026-05-04 14:31 UTC<br>
**Repos:** 51 of 77 scanned (21 forks excluded, 5 archived excluded)

## Scored rules

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has branch protection | 13 | 38 | 25% |
| Requires status checks before merging | 2 | 49 | 3% |
| Has CODEOWNERS | 10 | 41 | 19% |
| Has CI workflow | 25 | 26 | 49% |

**Score: 24/100** (average pass rate across the scored rules above)

## Additional checks

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has README | 50 | 1 | 98% |
| Has LICENSE | 34 | 17 | 66% |
| Has repo description | 38 | 13 | 74% |
| Has activity | 24 | 27 | 47% |
| Has SECURITY.md | 0 | 51 | 0% |

## Rule reference

<details>
<summary>How each rule works and how to fix failures</summary>

### Scored rules

#### Has branch protection

Checks that the default branch has a protection rule in place. Detected via any of three GitHub APIs: the modern repository rulesets (Settings > Rules > Rulesets), the legacy classic branch-protection rules (Settings > Branches > Branch protection rules), or the `protected` flag on the public branch endpoint. To fix: add a rule for the default branch via either Rulesets or classic Branch protection rules. [GitHub docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches).

---

#### Requires status checks before merging

Checks that the default branch's protection requires at least one status check to pass before a PR can be merged. Detected from any of three sources: modern repository rulesets (a `required_status_checks` rule), legacy classic branch protection (`required_status_checks.contexts`), or the public branch endpoint's `protection.required_status_checks.contexts` field. To fix: edit the default-branch rule (or ruleset), enable "Require status checks to pass before merging", and select at least one check.

---

#### Has CODEOWNERS

Checks for a CODEOWNERS file in any of the three locations GitHub honors: the repo root, `.github/`, or `docs/`. To fix: add a CODEOWNERS file in one of those locations mapping paths to GitHub users or teams. [GitHub docs](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-code-owners).

---

#### Has CI workflow

Checks for a checked-in CI configuration file from any of the major providers: GitHub Actions (any `.yml` or `.yaml` file under `.github/workflows/`), CircleCI (`.circleci/config.yml`), GitLab CI (`.gitlab-ci.yml`), Travis (`.travis.yml`), Buildkite (any file under `.buildkite/`), Azure Pipelines (`azure-pipelines.yml`), or Jenkins (`Jenkinsfile`). Setups whose configuration lives entirely server-side (no checked-in file) are not detected. To fix: add a workflow file for the provider you use. The simplest path on GitHub is a YAML workflow under `.github/workflows/`. [GitHub Actions quickstart](https://docs.github.com/en/actions/quickstart).

### Additional checks

#### Has README

Checks for a README file at the repository root. The match is case-insensitive and accepts any extension or none, so `README.md`, `README.rst`, `README.txt`, `Readme`, `readme.markdown` all pass. READMEs in subdirectories don't count. To fix: add a top-level README that explains what the project is, how to install it, and how to use it.

---

#### Has LICENSE

Checks GitHub's auto-detected license field, which GitHub populates by running the Licensee gem against the repo and recognizing conventionally-named license files: `LICENSE`, `LICENSE.md`, `LICENSE.txt`, `LICENCE`, `COPYING`, `MIT-LICENSE`, and similar variants. Custom-text licenses Licensee can't classify won't pass even if a file is present. To fix: pick a license at [choosealicense.com](https://choosealicense.com) and add it to your repo root using one of the recognized filenames. GitHub will detect it automatically.

---

#### Has repo description

Checks that the repository's description field (set via the About panel, shown at the top of the GitHub repo page) is non-empty. To fix: edit the repo's About panel and add a one-line description.

---

#### Has activity

Checks that the repository has had a commit (push) within the last 12 months, based on GitHub's `pushed_at` timestamp on the repo. To fix: push a commit, or archive the repository if it's no longer maintained.

---

#### Has SECURITY.md

Checks for a SECURITY.md file in any of the three locations GitHub recognizes for security policies: the repo root, `.github/`, or `docs/`. To fix: add a SECURITY.md describing how to report vulnerabilities. [GitHub's template](https://docs.github.com/en/code-security/getting-started/adding-a-security-policy-to-your-repository).

</details>

## Repository details

### Strong (≥80%)

<details>
<summary><a href="https://github.com/lokalise/npm-package-template">npm-package-template</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/styled">styled</a> - 100%</summary>

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

### Moderate (30-79%)

<details>
<summary><a href="https://github.com/lokalise/ce-connector-template-node">ce-connector-template-node</a> - 50%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/common-sloth-sli-plugins">common-sloth-sli-plugins</a> - 50%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/fastify-extras">fastify-extras</a> - 75%</summary>

**Failing scored rules:**
- Requires status checks before merging

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/frontegg-oauth-client">frontegg-oauth-client</a> - 75%</summary>

**Failing scored rules:**
- Requires status checks before merging

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/i18n-ally">i18n-ally</a> - 75%</summary>

**Failing scored rules:**
- Requires status checks before merging

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/lokalise-cli-2-go">lokalise-cli-2-go</a> - 50%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/node-core">node-core</a> - 75%</summary>

**Failing scored rules:**
- Requires status checks before merging

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/node-service-template">node-service-template</a> - 75%</summary>

**Failing scored rules:**
- Requires status checks before merging

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/python-service-template">python-service-template</a> - 50%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/shared-ts-libs">shared-ts-libs</a> - 75%</summary>

**Failing scored rules:**
- Requires status checks before merging

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/zod-extras">zod-extras</a> - 75%</summary>

**Failing scored rules:**
- Requires status checks before merging

**Additional check failures:**
- Has SECURITY.md

</details>

### Weak (≤29%)

<details>
<summary><a href="https://github.com/lokalise/Blog-Authors-Info">Blog-Authors-Info</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/ai-emporium-lokalise-demo-app">ai-emporium-lokalise-demo-app</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/apps">apps</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/backend-http-client">backend-http-client</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has README
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/baselib">baselib</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/ce-connector-api">ce-connector-api</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/ce-connector-template-php">ce-connector-template-php</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/create-repository-action">create-repository-action</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/custom-processors-boilerplate-server">custom-processors-boilerplate-server</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/delete-repository-action">delete-repository-action</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/demo-translation-files">demo-translation-files</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/docker-webpack">docker-webpack</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/elixir-lokalise-api">elixir-lokalise-api</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/go-lokalise-api">go-lokalise-api</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/homebrew-cli-2">homebrew-cli-2</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/http">http</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/i18n-ally-jetbrains-docs">i18n-ally-jetbrains-docs</a> - 25%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/install-lokalise-cli-v2">install-lokalise-cli-v2</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/lokalise-android-sdk">lokalise-android-sdk</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/lokalise-cli">lokalise-cli</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/lokalise-cli-2">lokalise-cli-2</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/lokalise-fastlane-actions">lokalise-fastlane-actions</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/lokalise-ios-framework">lokalise-ios-framework</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/lokalise-postman-collection">lokalise-postman-collection</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/lokalise-pull-action">lokalise-pull-action</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/lokalise-push-action">lokalise-push-action</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/lokalise-sketchplugin">lokalise-sketchplugin</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/lokalise-tutorials">lokalise-tutorials</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/meekrodb">meekrodb</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/node-lokalise-api">node-lokalise-api</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/node-utils">node-utils</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/oauth2-asana">oauth2-asana</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/php-lokalise-api">php-lokalise-api</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/python-lokalise-api">python-lokalise-api</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/ruby-lokalise-api">ruby-lokalise-api</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/sql">sql</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/xlsx">xlsx</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/lokalise/xml">xml</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has activity
- Has SECURITY.md

</details>
