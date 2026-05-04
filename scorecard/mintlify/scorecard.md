# Codatus - Repo Standards Scorecard

**Org:** mintlify<br>
**Scanned:** 2026-05-04 14:40 UTC<br>
**Repos:** 25 of 30 scanned (3 forks excluded, 2 archived excluded)

## Scored rules

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has branch protection | 17 | 8 | 68% |
| Requires status checks before merging | 1 | 24 | 4% |
| Has CODEOWNERS | 1 | 24 | 4% |
| Has CI workflow | 3 | 22 | 12% |

**Score: 22/100** (average pass rate across the scored rules above)

## Additional checks

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has README | 19 | 6 | 76% |
| Has LICENSE | 16 | 9 | 64% |
| Has repo description | 12 | 13 | 48% |
| Has activity | 24 | 1 | 96% |
| Has SECURITY.md | 0 | 25 | 0% |

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

### Moderate (30-79%)

<details>
<summary><a href="https://github.com/mintlify/components">components</a> - 75%</summary>

**Failing scored rules:**
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/mintlify/config">config</a> - 50%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/mintlify/docs">docs</a> - 50%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/mintlify/writer">writer</a> - 50%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

### Weak (≤29%)

<details>
<summary><a href="https://github.com/mintlify/assistant-embed-example">assistant-embed-example</a> - 25%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/mintlify/astro">astro</a> - 25%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/mintlify/docs-hermine">docs-hermine</a> - 25%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/mintlify/docs-leylandcompany915-22607c5a">docs-leylandcompany915-22607c5a</a> - 25%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/mintlify/docs-starter">docs-starter</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/mintlify/documentation">documentation</a> - 25%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/mintlify/empty-starter">empty-starter</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has README
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/mintlify/guides">guides</a> - 25%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has README
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/mintlify/help-center-starter">help-center-starter</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has README
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/mintlify/install-md">install-md</a> - 25%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/mintlify/knowledge-base-starter">knowledge-base-starter</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has README
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/mintlify/mdx">mdx</a> - 25%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/mintlify/mintlify-astro-starter">mintlify-astro-starter</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/mintlify/mintlify-claude-plugin">mintlify-claude-plugin</a> - 25%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/mintlify/mintlify-docs">mintlify-docs</a> - 25%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/mintlify/mintlify-starter">mintlify-starter</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/mintlify/multirepo-action">multirepo-action</a> - 25%</summary>

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
<summary><a href="https://github.com/mintlify/product-guide-starter">product-guide-starter</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has README
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/mintlify/starter">starter</a> - 25%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/mintlify/templates">templates</a> - 0%</summary>

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
<summary><a href="https://github.com/mintlify/themes">themes</a> - 25%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has README
- Has LICENSE
- Has SECURITY.md

</details>
