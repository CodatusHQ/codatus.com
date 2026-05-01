# Codatus - Engineering Standards Scorecard

**Org:** acme-corp
**Scanned:** 2026-04-19 14:32 UTC
**Repos scanned:** 10
**Compliant:** 3/10 (30%) *(a repo is compliant when it passes all rules below)*
**Skipped:** 1

## Summary

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has SECURITY.md | 3 | 7 | 30% |
| Has CODEOWNERS | 3 | 7 | 30% |
| Requires status checks before merging | 4 | 6 | 40% |
| Has test directory | 5 | 5 | 50% |
| Has required reviewers | 6 | 4 | 60% |
| Has branch protection | 7 | 3 | 70% |
| Has CI workflow | 8 | 2 | 80% |
| Has activity | 8 | 2 | 80% |
| Has repo description | 9 | 1 | 90% |
| Has substantial README | 9 | 1 | 90% |
| Has LICENSE | 10 | 0 | 100% |

<details>
<summary>Rule reference - what each rule checks and how to fix it</summary>

### Has repo description

- **What it checks:** The repository has a non-empty description set in repo settings (visible at the top of the GitHub repo page).
- **How to fix:** Edit the repo and add a one-line description.

---

### Has substantial README

- **What it checks:** A README.md file exists at the repository root and is larger than 2 KB.
- **How to fix:** Expand your README to cover what the project is, how to install it, and how to use it.

---

### Has LICENSE

- **What it checks:** A LICENSE or LICENSE.md file exists at the repository root.
- **How to fix:** Pick a license at [choosealicense.com](https://choosealicense.com) and add it to your repo root.

---

### Has SECURITY.md

- **What it checks:** A SECURITY.md file exists at the repository root or in .github/.
- **How to fix:** Add a SECURITY.md describing how to report vulnerabilities. [GitHub's template](https://docs.github.com/en/code-security/getting-started/adding-a-security-policy-to-your-repository).

---

### Has CI workflow

- **What it checks:** At least one .yml or .yaml workflow file exists in .github/workflows/.
- **How to fix:** Add a YAML workflow in .github/workflows/. [GitHub Actions quickstart](https://docs.github.com/en/actions/quickstart).

---

### Has test directory

- **What it checks:** A directory named test, tests, __tests__, spec, or specs exists at the repository root.
- **How to fix:** Create a test/ or tests/ directory at the repo root and add at least one test file.

---

### Has CODEOWNERS

- **What it checks:** A CODEOWNERS file exists at the repo root, in .github/, or in docs/.
- **How to fix:** Add a CODEOWNERS file mapping paths to GitHub users or teams. [GitHub docs](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-code-owners).

---

### Has branch protection

- **What it checks:** A branch-protection rule is configured on the default branch.
- **How to fix:** In repo Settings > Branches, add a protection rule for the default branch. [GitHub docs](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches).

---

### Has required reviewers

- **What it checks:** The default branch's protection rules require at least one approving review before a PR can be merged.
- **How to fix:** In repo Settings > Branches, edit the default-branch protection rule and turn on "Require pull request reviews before merging" with at least 1 required reviewer.

---

### Requires status checks before merging

- **What it checks:** The default branch's protection rules require at least one status check to pass before a PR can be merged.
- **How to fix:** In repo Settings > Branches, edit the default-branch protection rule and turn on "Require status checks to pass before merging".

---

### Has activity

- **What it checks:** The repository has had a commit (push) within the last 12 months.
- **How to fix:** Push a commit, or archive the repository if it is no longer maintained.

</details>

## ✅ Fully compliant (3 repos)

<details>
<summary>All rules passing</summary>

[auth-service](https://github.com/acme-corp/auth-service)
[billing-service](https://github.com/acme-corp/billing-service)
[docs-site](https://github.com/acme-corp/docs-site)

</details>

## ❌ Non-compliant (7 repos)

<details open>
<summary><a href="https://github.com/acme-corp/api-gateway">api-gateway</a> - 5 failing</summary>

- Has SECURITY.md
- Has CODEOWNERS
- Has branch protection
- Has required reviewers
- Requires status checks before merging

</details>

<details>
<summary><a href="https://github.com/acme-corp/data-pipeline">data-pipeline</a> - 8 failing</summary>

- Has substantial README
- Has SECURITY.md
- Has CI workflow
- Has test directory
- Has CODEOWNERS
- Has branch protection
- Has required reviewers
- Requires status checks before merging

</details>

<details>
<summary><a href="https://github.com/acme-corp/event-queue">event-queue</a> - 4 failing</summary>

- Has SECURITY.md
- Has test directory
- Has CODEOWNERS
- Requires status checks before merging

</details>

<details>
<summary><a href="https://github.com/acme-corp/feature-flags">feature-flags</a> - 6 failing</summary>

- Has SECURITY.md
- Has test directory
- Has CODEOWNERS
- Has branch protection
- Has required reviewers
- Requires status checks before merging

</details>

<details>
<summary><a href="https://github.com/acme-corp/internal-tools">internal-tools</a> - 4 failing</summary>

- Has SECURITY.md
- Has CODEOWNERS
- Requires status checks before merging
- Has activity

</details>

<details>
<summary><a href="https://github.com/acme-corp/mobile-sdk">mobile-sdk</a> - 5 failing</summary>

- Has repo description
- Has SECURITY.md
- Has test directory
- Has CODEOWNERS
- Has activity

</details>

<details>
<summary><a href="https://github.com/acme-corp/web-frontend">web-frontend</a> - 6 failing</summary>

- Has SECURITY.md
- Has CI workflow
- Has test directory
- Has CODEOWNERS
- Has required reviewers
- Requires status checks before merging

</details>

## ⚠️ Skipped (1 repo)

- [legacy-mirror](https://github.com/acme-corp/legacy-mirror) - repository is empty
