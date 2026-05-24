# Codatus - Repo Standards Scorecard

**Org:** airbytehq<br>
**Scanned:** 2026-05-18 20:11 UTC (scanner v0.9.4)<br>
**Repos:** 27 of 64 scanned (13 forks excluded, 23 archived excluded, 1 skipped)

## Scored rules

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has branch protection | 13 | 14 | 48% |
| Has required checks | 5 | 22 | 18% |
| Has CODEOWNERS | 4 | 23 | 14% |
| Has CI workflow | 13 | 14 | 48% |

**Score: 32/100** (average pass rate across the scored rules above)

## Additional checks

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has README | 27 | 0 | 100% |
| Has LICENSE | 20 | 7 | 74% |
| Has repo description | 24 | 3 | 88% |
| Has activity | 20 | 7 | 74% |
| Has SECURITY.md | 0 | 27 | 0% |

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
<summary><a href="https://github.com/airbytehq/airbyte">airbyte</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

### Moderate (30-79%)

<details>
<summary><a href="https://github.com/airbytehq/PyAirbyte">PyAirbyte</a> - 75%</summary>

**Failing scored rules:**
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/airbytehq/abctl">abctl</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/airbytehq/airbyte-api-java-sdk">airbyte-api-java-sdk</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/airbytehq/airbyte-api-python-sdk">airbyte-api-python-sdk</a> - 50%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/airbytehq/airbyte-cli">airbyte-cli</a> - 75%</summary>

**Failing scored rules:**
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/airbytehq/airbyte-embedded-widget">airbyte-embedded-widget</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/airbytehq/airbyte-platform">airbyte-platform</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/airbytehq/airbyte-protocol">airbyte-protocol</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/airbytehq/airbyte-python-cdk">airbyte-python-cdk</a> - 75%</summary>

**Failing scored rules:**
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/airbytehq/fastmcp-extensions">fastmcp-extensions</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/airbytehq/terraform-provider-airbyte">terraform-provider-airbyte</a> - 75%</summary>

**Failing scored rules:**
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

### Weak (≤29%)

<details>
<summary><a href="https://github.com/airbytehq/.github">.github</a> - 0%</summary>

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
<summary><a href="https://github.com/airbytehq/SQL-Levels-Explained">SQL-Levels-Explained</a> - 0%</summary>

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
<summary><a href="https://github.com/airbytehq/airbyte-agent-sdk">airbyte-agent-sdk</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/airbytehq/airbyte-agents-benchmarks">airbyte-agents-benchmarks</a> - 0%</summary>

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
<summary><a href="https://github.com/airbytehq/airbyte-dbt-models">airbyte-dbt-models</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/airbytehq/charts">charts</a> - 0%</summary>

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
<summary><a href="https://github.com/airbytehq/connector-archive">connector-archive</a> - 0%</summary>

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
<summary><a href="https://github.com/airbytehq/cursor-plugin">cursor-plugin</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/airbytehq/dagster-langchain">dagster-langchain</a> - 0%</summary>

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
<summary><a href="https://github.com/airbytehq/helm-charts">helm-charts</a> - 0%</summary>

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
<summary><a href="https://github.com/airbytehq/homebrew-tap">homebrew-tap</a> - 25%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/airbytehq/open-data-stack">open-data-stack</a> - 0%</summary>

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
<summary><a href="https://github.com/airbytehq/quickstarts">quickstarts</a> - 25%</summary>

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
<summary><a href="https://github.com/airbytehq/tutorial-connector-dev-bot">tutorial-connector-dev-bot</a> - 0%</summary>

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
<summary><a href="https://github.com/airbytehq/upload-logs-action">upload-logs-action</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

### Skipped (1 repo)

- [airbyte-claude-skills](https://github.com/airbytehq/airbyte-claude-skills) - unexpected error: get tree for airbytehq/airbyte-claude-skills: GET https://api.github.com/repos/airbytehq/airbyte-claude-skills/git/trees/main?recursive=1: 404 Not Found []
