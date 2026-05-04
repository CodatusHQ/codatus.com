# Codatus - Repo Standards Scorecard

**Org:** knocklabs<br>
**Scanned:** 2026-05-04 14:34 UTC<br>
**Repos:** 42 of 73 scanned (26 forks excluded, 5 archived excluded)

## Scored rules

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has branch protection | 40 | 2 | 95% |
| Requires status checks before merging | 3 | 39 | 7% |
| Has CODEOWNERS | 15 | 27 | 35% |
| Has CI workflow | 26 | 16 | 61% |

**Score: 49/100** (average pass rate across the scored rules above)

## Additional checks

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has README | 42 | 0 | 100% |
| Has LICENSE | 29 | 13 | 69% |
| Has repo description | 29 | 13 | 69% |
| Has activity | 29 | 13 | 69% |
| Has SECURITY.md | 8 | 34 | 19% |

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
<summary><a href="https://github.com/knocklabs/javascript">javascript</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/knocklabs/telegraph">telegraph</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

### Moderate (30-79%)

<details>
<summary><a href="https://github.com/knocklabs/agent-toolkit">agent-toolkit</a> - 50%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/knocklabs/css_inline">css_inline</a> - 50%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/knocklabs/docs">docs</a> - 50%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/knocklabs/homebrew-tap">homebrew-tap</a> - 50%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/knocklabs/in-app-notifications-example-nextjs">in-app-notifications-example-nextjs</a> - 75%</summary>

**Failing scored rules:**
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/knocklabs/knock-android">knock-android</a> - 75%</summary>

**Failing scored rules:**
- Requires status checks before merging

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/knocklabs/knock-cli">knock-cli</a> - 50%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/knocklabs/knock-dotnet">knock-dotnet</a> - 75%</summary>

**Failing scored rules:**
- Requires status checks before merging

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/knocklabs/knock-elixir">knock-elixir</a> - 75%</summary>

**Failing scored rules:**
- Requires status checks before merging

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/knocklabs/knock-flutter">knock-flutter</a> - 75%</summary>

**Failing scored rules:**
- Requires status checks before merging

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/knocklabs/knock-go">knock-go</a> - 75%</summary>

**Failing scored rules:**
- Requires status checks before merging

</details>

<details>
<summary><a href="https://github.com/knocklabs/knock-groot">knock-groot</a> - 50%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/knocklabs/knock-java">knock-java</a> - 75%</summary>

**Failing scored rules:**
- Requires status checks before merging

**Additional check failures:**
- Has repo description

</details>

<details>
<summary><a href="https://github.com/knocklabs/knock-mgmt-go">knock-mgmt-go</a> - 50%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS

</details>

<details>
<summary><a href="https://github.com/knocklabs/knock-mgmt-node">knock-mgmt-node</a> - 75%</summary>

**Failing scored rules:**
- Requires status checks before merging

</details>

<details>
<summary><a href="https://github.com/knocklabs/knock-mgmt-python">knock-mgmt-python</a> - 50%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS

</details>

<details>
<summary><a href="https://github.com/knocklabs/knock-node">knock-node</a> - 75%</summary>

**Failing scored rules:**
- Requires status checks before merging

</details>

<details>
<summary><a href="https://github.com/knocklabs/knock-php">knock-php</a> - 75%</summary>

**Failing scored rules:**
- Requires status checks before merging

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/knocklabs/knock-python">knock-python</a> - 75%</summary>

**Failing scored rules:**
- Requires status checks before merging

</details>

<details>
<summary><a href="https://github.com/knocklabs/knock-ruby">knock-ruby</a> - 75%</summary>

**Failing scored rules:**
- Requires status checks before merging

</details>

<details>
<summary><a href="https://github.com/knocklabs/knock-swift">knock-swift</a> - 75%</summary>

**Failing scored rules:**
- Requires status checks before merging

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/knocklabs/marketplace-example">marketplace-example</a> - 50%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/knocklabs/one_and_done">one_and_done</a> - 50%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/knocklabs/todo-check">todo-check</a> - 50%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

### Weak (≤29%)

<details>
<summary><a href="https://github.com/knocklabs/KnockSampleRNApp">KnockSampleRNApp</a> - 25%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/knocklabs/ai-agent-examples">ai-agent-examples</a> - 25%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/knocklabs/alerting-example">alerting-example</a> - 25%</summary>

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
<summary><a href="https://github.com/knocklabs/angular-in-app-feed-example">angular-in-app-feed-example</a> - 25%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/knocklabs/collab.io">collab.io</a> - 25%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/knocklabs/customer-facing-webhooks-example">customer-facing-webhooks-example</a> - 25%</summary>

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
<summary><a href="https://github.com/knocklabs/inbox-example-app">inbox-example-app</a> - 25%</summary>

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
<summary><a href="https://github.com/knocklabs/ios-example-app">ios-example-app</a> - 25%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/knocklabs/knock-mcp">knock-mcp</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/knocklabs/notion-feed-example">notion-feed-example</a> - 25%</summary>

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
<summary><a href="https://github.com/knocklabs/nuxt-feed-example">nuxt-feed-example</a> - 25%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/knocklabs/oban_met_fork">oban_met_fork</a> - 25%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/knocklabs/skills">skills</a> - 25%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/knocklabs/slack-kit-example">slack-kit-example</a> - 25%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/knocklabs/templates">templates</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/knocklabs/workflow-templates">workflow-templates</a> - 25%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>
