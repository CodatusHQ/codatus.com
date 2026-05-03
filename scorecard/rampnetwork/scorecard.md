# Codatus - Engineering Standards Scorecard

**Org:** rampnetwork<br>
**Scanned:** 2026-05-02 20:04 UTC<br>
**Repos:** 13 of 23 scanned (9 forks excluded, 1 archived excluded)

## Scored rules

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has branch protection | 13 | 0 | 100% |
| Has required reviewers | 0 | 13 | 0% |
| Requires status checks before merging | 0 | 13 | 0% |
| Has CODEOWNERS | 5 | 8 | 38% |
| Has CI workflow | 5 | 8 | 38% |

**Score: 35/100** (average pass rate across the scored rules above)

## Additional checks

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has README | 12 | 1 | 92% |
| Has LICENSE | 5 | 8 | 38% |
| Has repo description | 9 | 4 | 69% |
| Has activity | 4 | 9 | 30% |
| Has SECURITY.md | 0 | 13 | 0% |

## Repository details

### Moderate (40-79%)

<details>
<summary><a href="https://github.com/rampnetwork/ramp-instant-sdk">ramp-instant-sdk</a> - 60%</summary>

**Failing scored rules:**
- Has required reviewers
- Requires status checks before merging

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/rampnetwork/ramp-sdk-android">ramp-sdk-android</a> - 60%</summary>

**Failing scored rules:**
- Has required reviewers
- Requires status checks before merging

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/rampnetwork/ramp-sdk-flutter">ramp-sdk-flutter</a> - 60%</summary>

**Failing scored rules:**
- Has required reviewers
- Requires status checks before merging

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/rampnetwork/ramp-sdk-ios">ramp-sdk-ios</a> - 60%</summary>

**Failing scored rules:**
- Has required reviewers
- Requires status checks before merging

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/rampnetwork/ramp-sdk-rn">ramp-sdk-rn</a> - 60%</summary>

**Failing scored rules:**
- Has required reviewers
- Requires status checks before merging

**Additional check failures:**
- Has SECURITY.md

</details>

### Weak (≤39%)

<details>
<summary><a href="https://github.com/rampnetwork/0xHack">0xHack</a> - 20%</summary>

**Failing scored rules:**
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
<summary><a href="https://github.com/rampnetwork/0xhack-integration-workshop">0xhack-integration-workshop</a> - 20%</summary>

**Failing scored rules:**
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
<summary><a href="https://github.com/rampnetwork/GDPR">GDPR</a> - 20%</summary>

**Failing scored rules:**
- Has required reviewers
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
<summary><a href="https://github.com/rampnetwork/demo-embedded-widget">demo-embedded-widget</a> - 20%</summary>

**Failing scored rules:**
- Has required reviewers
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
<summary><a href="https://github.com/rampnetwork/integration-example-android">integration-example-android</a> - 20%</summary>

**Failing scored rules:**
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
<summary><a href="https://github.com/rampnetwork/integration-example-ios">integration-example-ios</a> - 20%</summary>

**Failing scored rules:**
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
<summary><a href="https://github.com/rampnetwork/ramp-instant-sdk-android">ramp-instant-sdk-android</a> - 20%</summary>

**Failing scored rules:**
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
<summary><a href="https://github.com/rampnetwork/whacked-blocks-2018">whacked-blocks-2018</a> - 20%</summary>

**Failing scored rules:**
- Has required reviewers
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
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
