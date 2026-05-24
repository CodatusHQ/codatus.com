# Codatus - Repo Standards Scorecard

**Org:** trycourier<br>
**Scanned:** 2026-05-19 07:26 UTC (scanner v0.9.4)<br>
**Repos:** 51 of 72 scanned (8 forks excluded, 13 archived excluded)

## Scored rules

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has branch protection | 14 | 37 | 27% |
| Has required checks | 2 | 49 | 3% |
| Has CODEOWNERS | 1 | 50 | 1% |
| Has CI workflow | 18 | 33 | 35% |

**Score: 16/100** (average pass rate across the scored rules above)

## Additional checks

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has README | 49 | 2 | 96% |
| Has LICENSE | 30 | 21 | 58% |
| Has repo description | 34 | 17 | 66% |
| Has activity | 25 | 26 | 49% |
| Has SECURITY.md | 8 | 43 | 15% |

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
<summary><a href="https://github.com/trycourier/courier-designer">courier-designer</a> - 100%</summary>

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

### Moderate (30-79%)

<details>
<summary><a href="https://github.com/trycourier/courier-android">courier-android</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/trycourier/courier-flutter">courier-flutter</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/trycourier/courier-ios">courier-ios</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/trycourier/courier-js">courier-js</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/trycourier/courier-mcp">courier-mcp</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/trycourier/courier-react">courier-react</a> - 75%</summary>

**Failing scored rules:**
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/trycourier/courier-ruby-rails">courier-ruby-rails</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/trycourier/courier-web">courier-web</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

### Weak (≤29%)

<details>
<summary><a href="https://github.com/trycourier/.github">.github</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has README
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/trycourier/alert-center">alert-center</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/trycourier/aws-node-notifications">aws-node-notifications</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
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
<summary><a href="https://github.com/trycourier/aws-notification-service">aws-notification-service</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
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
<summary><a href="https://github.com/trycourier/basic-demo">basic-demo</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/trycourier/community-projects">community-projects</a> - 25%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/trycourier/courier-cli">courier-cli</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

</details>

<details>
<summary><a href="https://github.com/trycourier/courier-csharp">courier-csharp</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description

</details>

<details>
<summary><a href="https://github.com/trycourier/courier-go">courier-go</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

</details>

<details>
<summary><a href="https://github.com/trycourier/courier-java">courier-java</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

</details>

<details>
<summary><a href="https://github.com/trycourier/courier-mobile-expo">courier-mobile-expo</a> - 25%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/trycourier/courier-netlify-msteams">courier-netlify-msteams</a> - 25%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/trycourier/courier-nextjs-password-reset">courier-nextjs-password-reset</a> - 0%</summary>

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
<summary><a href="https://github.com/trycourier/courier-nextjs-puppygram">courier-nextjs-puppygram</a> - 0%</summary>

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
<summary><a href="https://github.com/trycourier/courier-node">courier-node</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

</details>

<details>
<summary><a href="https://github.com/trycourier/courier-notification-service-extension-template">courier-notification-service-extension-template</a> - 0%</summary>

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
<summary><a href="https://github.com/trycourier/courier-php">courier-php</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

</details>

<details>
<summary><a href="https://github.com/trycourier/courier-python">courier-python</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

</details>

<details>
<summary><a href="https://github.com/trycourier/courier-raffle">courier-raffle</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
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
<summary><a href="https://github.com/trycourier/courier-react-native">courier-react-native</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/trycourier/courier-redwoodjs-raffle">courier-redwoodjs-raffle</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
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
<summary><a href="https://github.com/trycourier/courier-ruby">courier-ruby</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

</details>

<details>
<summary><a href="https://github.com/trycourier/courier-samples">courier-samples</a> - 0%</summary>

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
<summary><a href="https://github.com/trycourier/courier-skills">courier-skills</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/trycourier/decode-ep1">decode-ep1</a> - 0%</summary>

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
<summary><a href="https://github.com/trycourier/decode-ep3">decode-ep3</a> - 0%</summary>

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
<summary><a href="https://github.com/trycourier/decode-ep4">decode-ep4</a> - 0%</summary>

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
<summary><a href="https://github.com/trycourier/decode-ep5">decode-ep5</a> - 0%</summary>

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
<summary><a href="https://github.com/trycourier/decode-ep6">decode-ep6</a> - 0%</summary>

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
<summary><a href="https://github.com/trycourier/decode-ep7">decode-ep7</a> - 0%</summary>

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
<summary><a href="https://github.com/trycourier/decode-ep8">decode-ep8</a> - 0%</summary>

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
<summary><a href="https://github.com/trycourier/demo-nodejs-send">demo-nodejs-send</a> - 0%</summary>

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
<summary><a href="https://github.com/trycourier/dual-inbox-demo">dual-inbox-demo</a> - 0%</summary>

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
<summary><a href="https://github.com/trycourier/fcm_to_token_sample">fcm_to_token_sample</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has README
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/trycourier/gatsby-netlify-form-starter">gatsby-netlify-form-starter</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
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
<summary><a href="https://github.com/trycourier/homebrew-courier">homebrew-courier</a> - 25%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/trycourier/next-js-inbox-toast-preferences">next-js-inbox-toast-preferences</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/trycourier/react-in-app-example">react-in-app-example</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
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
<summary><a href="https://github.com/trycourier/registration-handler-slack">registration-handler-slack</a> - 25%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/trycourier/startup-guide-to-notification-systems">startup-guide-to-notification-systems</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
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
<summary><a href="https://github.com/trycourier/tutorial-ios-firebase-fcm">tutorial-ios-firebase-fcm</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
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
<summary><a href="https://github.com/trycourier/user-preference-tester">user-preference-tester</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has activity
- Has SECURITY.md

</details>
