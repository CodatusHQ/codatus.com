# Codatus - Repo Standards Scorecard

**Org:** workos<br>
**Scanned:** 2026-05-04 14:33 UTC<br>
**Repos:** 59 of 104 scanned (3 forks excluded, 42 archived excluded)

## Scored rules

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has branch protection | 33 | 26 | 55% |
| Requires status checks before merging | 15 | 44 | 25% |
| Has CODEOWNERS | 18 | 41 | 30% |
| Has CI workflow | 33 | 26 | 55% |

**Score: 41/100** (average pass rate across the scored rules above)

## Additional checks

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has README | 59 | 0 | 100% |
| Has LICENSE | 39 | 20 | 66% |
| Has repo description | 47 | 12 | 79% |
| Has activity | 58 | 1 | 98% |
| Has SECURITY.md | 3 | 56 | 5% |

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
<summary><a href="https://github.com/workos/authkit-nextjs">authkit-nextjs</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/authkit-session">authkit-session</a> - 100%</summary>

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/workos-dotnet">workos-dotnet</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/workos-go">workos-go</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/workos-kotlin">workos-kotlin</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/workos-node">workos-node</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/workos-php">workos-php</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/workos-php-laravel">workos-php-laravel</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/workos-python">workos-python</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/workos-ruby">workos-ruby</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

### Moderate (30-79%)

<details>
<summary><a href="https://github.com/workos/authkit">authkit</a> - 50%</summary>

**Failing scored rules:**
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/authkit-react">authkit-react</a> - 50%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/authkit-react-router">authkit-react-router</a> - 75%</summary>

**Failing scored rules:**
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/authkit-remix">authkit-remix</a> - 75%</summary>

**Failing scored rules:**
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/authkit-sveltekit">authkit-sveltekit</a> - 75%</summary>

**Failing scored rules:**
- Requires status checks before merging

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/authkit-tanstack-start">authkit-tanstack-start</a> - 75%</summary>

**Failing scored rules:**
- Requires status checks before merging

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/cli-action">cli-action</a> - 50%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/dotnet-example-applications">dotnet-example-applications</a> - 50%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/edge-agent">edge-agent</a> - 50%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/fga-row-level-access-control-postgres">fga-row-level-access-control-postgres</a> - 50%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/go-example-applications">go-example-applications</a> - 50%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/oagen">oagen</a> - 75%</summary>

**Failing scored rules:**
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/oagen-emitters">oagen-emitters</a> - 75%</summary>

**Failing scored rules:**
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/openapi-spec">openapi-spec</a> - 75%</summary>

**Failing scored rules:**
- Requires status checks before merging

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/php-example-applications">php-example-applications</a> - 50%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/pipes-mcp">pipes-mcp</a> - 75%</summary>

**Failing scored rules:**
- Requires status checks before merging

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/vercel-mcp-example">vercel-mcp-example</a> - 75%</summary>

**Failing scored rules:**
- Requires status checks before merging

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/workos-elixir">workos-elixir</a> - 75%</summary>

**Failing scored rules:**
- Requires status checks before merging

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/workos-migrations">workos-migrations</a> - 75%</summary>

**Failing scored rules:**
- Requires status checks before merging

**Additional check failures:**
- Has repo description

</details>

### Weak (≤29%)

<details>
<summary><a href="https://github.com/workos/aie-europe-skills-at-scale">aie-europe-skills-at-scale</a> - 0%</summary>

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
<summary><a href="https://github.com/workos/authkit-js">authkit-js</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/authkit-xmcp">authkit-xmcp</a> - 0%</summary>

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
<summary><a href="https://github.com/workos/case">case</a> - 0%</summary>

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
<summary><a href="https://github.com/workos/cli">cli</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/electron-authkit-example">electron-authkit-example</a> - 0%</summary>

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
<summary><a href="https://github.com/workos/expo-authkit-example">expo-authkit-example</a> - 0%</summary>

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
<summary><a href="https://github.com/workos/frontend-take-home">frontend-take-home</a> - 0%</summary>

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
<summary><a href="https://github.com/workos/homebrew-tap">homebrew-tap</a> - 0%</summary>

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
<summary><a href="https://github.com/workos/mastra-agents-meme-generator">mastra-agents-meme-generator</a> - 0%</summary>

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
<summary><a href="https://github.com/workos/mcp-shop-cloudflare">mcp-shop-cloudflare</a> - 0%</summary>

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
<summary><a href="https://github.com/workos/mcp.shop">mcp.shop</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

</details>

<details>
<summary><a href="https://github.com/workos/migrate-auth0-users">migrate-auth0-users</a> - 25%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/migrate-clerk-users">migrate-clerk-users</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/next-authkit-example">next-authkit-example</a> - 0%</summary>

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
<summary><a href="https://github.com/workos/next-b2b-starter-kit">next-b2b-starter-kit</a> - 25%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

</details>

<details>
<summary><a href="https://github.com/workos/python-authkit-example">python-authkit-example</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/python-django-example-applications">python-django-example-applications</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/react-authkit-example">react-authkit-example</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/react-native-expo-example-app">react-native-expo-example-app</a> - 0%</summary>

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
<summary><a href="https://github.com/workos/react-router-authkit-example">react-router-authkit-example</a> - 25%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/remix-authkit-example">remix-authkit-example</a> - 0%</summary>

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
<summary><a href="https://github.com/workos/render-atl-netlify">render-atl-netlify</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/ruby-authkit-example">ruby-authkit-example</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/se-interview-nextjs-app">se-interview-nextjs-app</a> - 0%</summary>

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
<summary><a href="https://github.com/workos/skills">skills</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/ueberauth_workos_authkit">ueberauth_workos_authkit</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/widgets-examples">widgets-examples</a> - 0%</summary>

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
<summary><a href="https://github.com/workos/workos-custom-ui-authkit-example">workos-custom-ui-authkit-example</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Requires status checks before merging
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/workos/workos-demo">workos-demo</a> - 25%</summary>

**Failing scored rules:**
- Requires status checks before merging
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>
