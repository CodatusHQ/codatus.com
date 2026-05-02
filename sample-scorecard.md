# Codatus - Engineering Standards Scorecard

**Org:** acme-corp
**Scanned:** 2026-05-01 10:30 UTC
**Total repos:** 15
**Forks excluded:** 3
**Archived excluded:** 1
**Repos scanned:** 10
**Skipped:** 1

## Scored rules

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has branch protection | 7 | 3 | 70% |
| Has required reviewers | 5 | 5 | 50% |
| Requires status checks before merging | 3 | 7 | 30% |
| Has CODEOWNERS | 3 | 7 | 30% |
| Has CI workflow | 10 | 0 | 100% |

**Score: 56/100** (average pass rate across the scored rules above)

## Additional checks

| Check | Passing | Failing | Coverage |
|------|---------|---------|----------|
| Has README | 9 | 1 | 90% |
| Has LICENSE | 7 | 3 | 70% |
| Has repo description | 8 | 2 | 80% |
| Has activity | 7 | 3 | 70% |
| Has SECURITY.md | 3 | 7 | 30% |

## Repository details

### Strong (≥80%)

<details>
<summary><a href="https://github.com/acme-corp/acme-api">acme-api</a> - 100% (5/5 scored rules passing)</summary>

</details>

<details>
<summary><a href="https://github.com/acme-corp/acme-platform">acme-platform</a> - 100% (5/5 scored rules passing)</summary>

</details>

### Moderate (40-79%)

<details>
<summary><a href="https://github.com/acme-corp/acme-analytics">acme-analytics</a> - 60% (3/5 scored rules passing)</summary>

**Failing scored rules:**
- Has required reviewers
- Requires status checks before merging

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/acme-corp/acme-billing">acme-billing</a> - 60% (3/5 scored rules passing)</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS

</details>

<details>
<summary><a href="https://github.com/acme-corp/acme-dashboard">acme-dashboard</a> - 60% (3/5 scored rules passing)</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/acme-corp/acme-mobile">acme-mobile</a> - 60% (3/5 scored rules passing)</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/acme-corp/acme-search">acme-search</a> - 60% (3/5 scored rules passing)</summary>

**Failing scored rules:**
- Has required reviewers
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

### Weak (≤39%)

<details>
<summary><a href="https://github.com/acme-corp/acme-internal-tools">acme-internal-tools</a> - 20% (1/5 scored rules passing)</summary>

**Failing scored rules:**
- Has branch protection
- Has required reviewers
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/acme-corp/acme-legacy">acme-legacy</a> - 20% (1/5 scored rules passing)</summary>

**Failing scored rules:**
- Has branch protection
- Has required reviewers
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/acme-corp/acme-prototype">acme-prototype</a> - 20% (1/5 scored rules passing)</summary>

**Failing scored rules:**
- Has branch protection
- Has required reviewers
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has README
- Has LICENSE
- Has repo description
- Has activity
- Has SECURITY.md

</details>

## Rule reference

<details>
<summary>What each rule checks and how to fix it</summary>

### Scored rules

#### Has branch protection

- **What it checks:** A branch-protection rule is configured on the default branch.
- **How to fix:** In repo Settings > Branches, add a protection rule for the default branch. [GitHub docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches).

---

#### Has required reviewers

- **What it checks:** The default branch's protection rules require at least one approving review before a PR can be merged.
- **How to fix:** In repo Settings > Branches, edit the default-branch protection rule and turn on "Require pull request reviews before merging" with at least 1 required reviewer.

---

#### Requires status checks before merging

- **What it checks:** The default branch's protection rules require at least one status check to pass before a PR can be merged.
- **How to fix:** In repo Settings > Branches, edit the default-branch protection rule and turn on "Require status checks to pass before merging".

---

#### Has CODEOWNERS

- **What it checks:** A CODEOWNERS file exists at the repo root, in .github/, or in docs/.
- **How to fix:** Add a CODEOWNERS file mapping paths to GitHub users or teams. [GitHub docs](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-code-owners).

---

#### Has CI workflow

- **What it checks:** At least one .yml or .yaml workflow file exists in .github/workflows/.
- **How to fix:** Add a YAML workflow in .github/workflows/. [GitHub Actions quickstart](https://docs.github.com/en/actions/quickstart).

### Additional checks

#### Has README

- **What it checks:** A README.md or README file exists at the repository root.
- **How to fix:** Add a README that explains what the project is, how to install it, and how to use it.

---

#### Has LICENSE

- **What it checks:** A LICENSE.md or LICENSE file exists at the repository root.
- **How to fix:** Pick a license at [choosealicense.com](https://choosealicense.com) and add it to your repo root.

---

#### Has repo description

- **What it checks:** The repository has a non-empty description set in repo settings (visible at the top of the GitHub repo page).
- **How to fix:** Edit the repo and add a one-line description.

---

#### Has activity

- **What it checks:** The repository has had a commit (push) within the last 12 months.
- **How to fix:** Push a commit, or archive the repository if it is no longer maintained.

---

#### Has SECURITY.md

- **What it checks:** A SECURITY.md file exists at the repository root or in .github/.
- **How to fix:** Add a SECURITY.md describing how to report vulnerabilities. [GitHub's template](https://docs.github.com/en/code-security/getting-started/adding-a-security-policy-to-your-repository).

</details>

## ⚠️ Skipped (1 repo)

- [acme-empty](https://github.com/acme-corp/acme-empty) - repository is empty
