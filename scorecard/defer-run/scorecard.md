# Codatus - Engineering Standards Scorecard

**Org:** defer-run<br>
**Scanned:** 2026-05-02 20:02 UTC<br>
**Repos:** 5 of 11 scanned (5 forks excluded, 1 skipped)

## Scored rules

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has branch protection | 0 | 5 | 0% |
| Has required reviewers | 0 | 5 | 0% |
| Requires status checks before merging | 0 | 5 | 0% |
| Has CODEOWNERS | 0 | 5 | 0% |
| Has CI workflow | 2 | 3 | 40% |

**Score: 8/100** (average pass rate across the scored rules above)

## Additional checks

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has README | 4 | 1 | 80% |
| Has LICENSE | 2 | 3 | 40% |
| Has repo description | 4 | 1 | 80% |
| Has activity | 0 | 5 | 0% |
| Has SECURITY.md | 0 | 5 | 0% |

## Repository details

### Weak (≤39%)

<details>
<summary><a href="https://github.com/defer-run/defer-openai-github-profile">defer-openai-github-profile</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required reviewers
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/defer-run/defer-redwoodjs">defer-redwoodjs</a> - 20%</summary>

**Failing scored rules:**
- Has branch protection
- Has required reviewers
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/defer-run/defer.client">defer.client</a> - 20%</summary>

**Failing scored rules:**
- Has branch protection
- Has required reviewers
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
- Has required reviewers
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
- Has required reviewers
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
