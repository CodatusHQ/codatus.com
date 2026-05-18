# Codatus - Repo Standards Scorecard

**Org:** acme-corp<br>
**Scanned:** 2026-05-01 10:30 UTC (scanner v0.9.2)<br>
**Repos:** 10 of 15 scanned (3 forks excluded, 1 archived excluded, 1 skipped)

## Scored rules

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has branch protection | 7 | 3 | 70% |
| Has required reviewers | 5 | 5 | 50% |
| Has required checks | 3 | 7 | 30% |
| Has CODEOWNERS | 3 | 7 | 30% |
| Has CI workflow | 10 | 0 | 100% |

**Score: 56/100** (average pass rate across the scored rules above)

## Additional checks

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has README | 9 | 1 | 90% |
| Has LICENSE | 7 | 3 | 70% |
| Has repo description | 8 | 2 | 80% |
| Has activity | 7 | 3 | 70% |
| Has SECURITY.md | 3 | 7 | 30% |

## Rule reference

<details>
<summary>How each rule works and how to fix failures</summary>

### Scored rules

#### Has branch protection

Checks that the default branch enforces pull-request flow: direct pushes are blocked and merges go through a PR. To fix: add a `pull_request` ruleset rule on the default branch, or enable "Require a pull request before merging" in classic branch protection. [GitHub docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches).

---

#### Has required reviewers

Checks that the default branch requires at least one approving review before merging. Runs only on admin scans: the reviewer count on classic branch protection is admin-only, so non-admin scans skip the rule entirely to avoid misleading partial coverage. To fix: set the required reviewer count to 1 or more on the default-branch rule.

---

#### Has required checks

Checks that the default branch requires at least one programmatic check (CI status check, workflow run, code scan, deployment, etc.) to pass before merging. To fix: add a check requirement on the default branch via Rulesets or classic branch protection.

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
<summary><a href="https://github.com/acme-corp/acme-api">acme-api</a> - 100%</summary>

</details>

<details>
<summary><a href="https://github.com/acme-corp/acme-platform">acme-platform</a> - 100%</summary>

</details>

### Moderate (30-79%)

<details>
<summary><a href="https://github.com/acme-corp/acme-analytics">acme-analytics</a> - 60%</summary>

**Failing scored rules:**
- Has required reviewers
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/acme-corp/acme-billing">acme-billing</a> - 60%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

</details>

<details>
<summary><a href="https://github.com/acme-corp/acme-dashboard">acme-dashboard</a> - 60%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/acme-corp/acme-mobile">acme-mobile</a> - 60%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/acme-corp/acme-search">acme-search</a> - 60%</summary>

**Failing scored rules:**
- Has required reviewers
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

### Weak (≤29%)

<details>
<summary><a href="https://github.com/acme-corp/acme-internal-tools">acme-internal-tools</a> - 20%</summary>

**Failing scored rules:**
- Has branch protection
- Has required reviewers
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/acme-corp/acme-legacy">acme-legacy</a> - 20%</summary>

**Failing scored rules:**
- Has branch protection
- Has required reviewers
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/acme-corp/acme-prototype">acme-prototype</a> - 20%</summary>

**Failing scored rules:**
- Has branch protection
- Has required reviewers
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has README
- Has LICENSE
- Has repo description
- Has activity
- Has SECURITY.md

</details>

### Skipped (1 repo)

- [acme-empty](https://github.com/acme-corp/acme-empty) - repository is empty
