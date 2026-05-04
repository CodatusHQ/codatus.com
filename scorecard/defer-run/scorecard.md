# Codatus - Repo Standards Scorecard

**Org:** defer-run<br>
**Scanned:** 2026-05-04 14:41 UTC<br>
**Repos:** 5 of 11 scanned (5 forks excluded, 1 skipped)

## Scored rules

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has branch protection | 0 | 5 | 0% |
| Requires status checks before merging | 0 | 5 | 0% |
| Has CODEOWNERS | 0 | 5 | 0% |
| Has CI workflow | 2 | 3 | 40% |

**Score: 10/100** (average pass rate across the scored rules above)

## Additional checks

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has README | 4 | 1 | 80% |
| Has LICENSE | 2 | 3 | 40% |
| Has repo description | 4 | 1 | 80% |
| Has activity | 0 | 5 | 0% |
| Has SECURITY.md | 0 | 5 | 0% |

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

### Weak (≤29%)

<details>
<summary><a href="https://github.com/defer-run/defer-openai-github-profile">defer-openai-github-profile</a> - 0%</summary>

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
<summary><a href="https://github.com/defer-run/defer-redwoodjs">defer-redwoodjs</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/defer-run/defer.client">defer.client</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/defer-run/defer.demo">defer.demo</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
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
<summary><a href="https://github.com/defer-run/documentation">documentation</a> - 0%</summary>

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

### Skipped (1 repo)

- [nextjs](https://github.com/defer-run/nextjs) - repository is empty
