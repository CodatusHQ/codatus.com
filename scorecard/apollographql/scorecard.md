# Codatus - Repo Standards Scorecard

**Org:** apollographql<br>
**Scanned:** 2026-05-18 20:18 UTC (scanner v0.9.4)<br>
**Repos:** 137 of 237 scanned (23 forks excluded, 76 archived excluded, 1 skipped)

## Scored rules

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has branch protection | 102 | 35 | 74% |
| Has required checks | 80 | 57 | 58% |
| Has CODEOWNERS | 92 | 45 | 67% |
| Has CI workflow | 118 | 19 | 86% |

**Score: 71/100** (average pass rate across the scored rules above)

## Additional checks

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has README | 135 | 2 | 98% |
| Has LICENSE | 97 | 40 | 70% |
| Has repo description | 107 | 30 | 78% |
| Has activity | 114 | 23 | 83% |
| Has SECURITY.md | 1 | 136 | 0% |

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
<summary><a href="https://github.com/apollographql/.github">.github</a> - 100%</summary>

**Additional check failures:**
- Has LICENSE

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-client">apollo-client</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-client-ai-apps">apollo-client-ai-apps</a> - 100%</summary>

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-client-devtools">apollo-client-devtools</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-client-integrations">apollo-client-integrations</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-feature-requests">apollo-feature-requests</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-federation-subgraph-compatibility">apollo-federation-subgraph-compatibility</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-ios">apollo-ios</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-ios-codegen">apollo-ios-codegen</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-ios-pagination">apollo-ios-pagination</a> - 100%</summary>

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-ios-xcframework">apollo-ios-xcframework</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-json-schemas">apollo-json-schemas</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-rs">apollo-rs</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-server">apollo-server</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-studio-community">apollo-studio-community</a> - 100%</summary>

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-utils">apollo-utils</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/ci-utility-docker-images">ci-utility-docker-images</a> - 100%</summary>

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/circleci-orb-oss-ci-cd-tooling">circleci-orb-oss-ci-cd-tooling</a> - 100%</summary>

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/client-router-e2e-tests">client-router-e2e-tests</a> - 100%</summary>

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/datasource-rest">datasource-rest</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/devhub">devhub</a> - 100%</summary>

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/diagnose-endpoint">diagnose-endpoint</a> - 100%</summary>

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/embeddable-explorer">embeddable-explorer</a> - 100%</summary>

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/environment-detector">environment-detector</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/federation">federation</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/federation-jvm">federation-jvm</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/federation-jvm-spring-example">federation-jvm-spring-example</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/federation-rs">federation-rs</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/federation-subgraph-compatibility">federation-subgraph-compatibility</a> - 100%</summary>

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/gatsby-plugin-apollo-onetrust">gatsby-plugin-apollo-onetrust</a> - 100%</summary>

**Additional check failures:**
- Has README
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/graphql-subscriptions">graphql-subscriptions</a> - 100%</summary>

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/graphql-tag">graphql-tag</a> - 100%</summary>

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/hack-the-supergraph">hack-the-supergraph</a> - 100%</summary>

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/iOSTutorial">iOSTutorial</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/internal-platform-orb">internal-platform-orb</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/odyssey-lift-off-lab">odyssey-lift-off-lab</a> - 100%</summary>

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/odyssey-lift-off-part1">odyssey-lift-off-part1</a> - 100%</summary>

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/odyssey-lift-off-part2">odyssey-lift-off-part2</a> - 100%</summary>

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/odyssey-lift-off-part3">odyssey-lift-off-part3</a> - 100%</summary>

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/odyssey-lift-off-part4">odyssey-lift-off-part4</a> - 100%</summary>

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/odyssey-voyage-I">odyssey-voyage-I</a> - 100%</summary>

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/odyssey-voyage-II-client">odyssey-voyage-II-client</a> - 100%</summary>

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/odyssey-voyage-II-server">odyssey-voyage-II-server</a> - 100%</summary>

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/principled-graphql">principled-graphql</a> - 100%</summary>

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/react-apollo-error-template">react-apollo-error-template</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/renovate-config-apollo-open-source">renovate-config-apollo-open-source</a> - 100%</summary>

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/router">router</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/rover">rover</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/rover-init-starters">rover-init-starters</a> - 100%</summary>

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/serde_json_bytes">serde_json_bytes</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/server-v4-integration-demos">server-v4-integration-demos</a> - 100%</summary>

**Additional check failures:**
- Has README
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/skills">skills</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/spacex">spacex</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/spotify-showcase">spotify-showcase</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/starstuff">starstuff</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/studio-landing-page">studio-landing-page</a> - 100%</summary>

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/supergraph-demo-pandas">supergraph-demo-pandas</a> - 100%</summary>

**Additional check failures:**
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/supergraph-demo-products">supergraph-demo-products</a> - 100%</summary>

**Additional check failures:**
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/supergraph-demo-users">supergraph-demo-users</a> - 100%</summary>

**Additional check failures:**
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/tap-statuspage">tap-statuspage</a> - 100%</summary>

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/templates">templates</a> - 100%</summary>

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/typescript-repo-template">typescript-repo-template</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/update-graphql-schema">update-graphql-schema</a> - 100%</summary>

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/vscode-graphql">vscode-graphql</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/xcode-graphql">xcode-graphql</a> - 100%</summary>

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/zen-observable-ts">zen-observable-ts</a> - 100%</summary>

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

### Moderate (30-79%)

<details>
<summary><a href="https://github.com/apollographql/Space-Devs">Space-Devs</a> - 75%</summary>

**Failing scored rules:**
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apm-templates">apm-templates</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-cache-persist">apollo-cache-persist</a> - 75%</summary>

**Failing scored rules:**
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-intellij-plugin">apollo-intellij-plugin</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-ios-dev">apollo-ios-dev</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-ios-spotify-showcase">apollo-ios-spotify-showcase</a> - 75%</summary>

**Failing scored rules:**
- Has CODEOWNERS

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-kotlin">apollo-kotlin</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-kotlin-adapters">apollo-kotlin-adapters</a> - 50%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-kotlin-cli">apollo-kotlin-cli</a> - 50%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-kotlin-compose">apollo-kotlin-compose</a> - 50%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-kotlin-execution">apollo-kotlin-execution</a> - 50%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-kotlin-faker">apollo-kotlin-faker</a> - 50%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-kotlin-java-support">apollo-kotlin-java-support</a> - 50%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-kotlin-ktor-support">apollo-kotlin-ktor-support</a> - 50%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-kotlin-mockserver">apollo-kotlin-mockserver</a> - 50%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-kotlin-normalized-cache">apollo-kotlin-normalized-cache</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-kotlin-samples">apollo-kotlin-samples</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-link-rest">apollo-link-rest</a> - 75%</summary>

**Failing scored rules:**
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-mcp-server">apollo-mcp-server</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-runtime">apollo-runtime</a> - 75%</summary>

**Failing scored rules:**
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-tooling">apollo-tooling</a> - 75%</summary>

**Failing scored rules:**
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/argocd-config-updater">argocd-config-updater</a> - 75%</summary>

**Failing scored rules:**
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/artillery-engine-gcp-pubsub">artillery-engine-gcp-pubsub</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/fullstack-tutorial">fullstack-tutorial</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/graphql-standard-schema">graphql-standard-schema</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/graphql-testing-library">graphql-testing-library</a> - 75%</summary>

**Failing scored rules:**
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/invariant-packages">invariant-packages</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/mcp-impostor-host">mcp-impostor-host</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/next-apollo-example">next-apollo-example</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/oss-repo-health-cron">oss-repo-health-cron</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/release-tooling">release-tooling</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/router-template">router-template</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/rust-best-practices">rust-best-practices</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/server-plugin-operation-registry">server-plugin-operation-registry</a> - 75%</summary>

**Failing scored rules:**
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/specs">specs</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/subgraph-csharp-hotchocolate-annotation">subgraph-csharp-hotchocolate-annotation</a> - 75%</summary>

**Failing scored rules:**
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/subgraph-mock">subgraph-mock</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/subgraph-template-go-gqlgen-boilerplate">subgraph-template-go-gqlgen-boilerplate</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/subgraph-template-graphql-kotlin-boilerplate">subgraph-template-graphql-kotlin-boilerplate</a> - 75%</summary>

**Failing scored rules:**
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/subgraph-template-java-spring-graphql-boilerplate">subgraph-template-java-spring-graphql-boilerplate</a> - 75%</summary>

**Failing scored rules:**
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/subgraph-template-javascript-apollo-server-boilerplate">subgraph-template-javascript-apollo-server-boilerplate</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/subgraph-template-rust-async-graphql">subgraph-template-rust-async-graphql</a> - 75%</summary>

**Failing scored rules:**
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/subgraph-template-typescript-apollo-server-boilerplate">subgraph-template-typescript-apollo-server-boilerplate</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/terraform-graphos-aws">terraform-graphos-aws</a> - 75%</summary>

**Failing scored rules:**
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/terraform-provider-apollo">terraform-provider-apollo</a> - 50%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

### Weak (≤29%)

<details>
<summary><a href="https://github.com/apollographql/Hackathon-Summit-2025">Hackathon-Summit-2025</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/ageing">ageing</a> - 0%</summary>

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
<summary><a href="https://github.com/apollographql/ai-apps-template">ai-apps-template</a> - 0%</summary>

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
<summary><a href="https://github.com/apollographql/apollo-discourse-theme">apollo-discourse-theme</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-kotlin-compiler-plugin">apollo-kotlin-compiler-plugin</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-kotlin-ffs">apollo-kotlin-ffs</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/apollo-kotlin-merge-engine">apollo-kotlin-merge-engine</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/connectors-community">connectors-community</a> - 0%</summary>

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
<summary><a href="https://github.com/apollographql/dale-test">dale-test</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/docs-examples">docs-examples</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/eslint-plugin-graphql">eslint-plugin-graphql</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/graphchat">graphchat</a> - 0%</summary>

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
<summary><a href="https://github.com/apollographql/graphql-compare">graphql-compare</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/graphql_websocket_client">graphql_websocket_client</a> - 0%</summary>

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
<summary><a href="https://github.com/apollographql/graphqlconf-app">graphqlconf-app</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/make-your-first-federated-graph">make-your-first-federated-graph</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/mcp-server-template">mcp-server-template</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/operator-summit-workshop-template">operator-summit-workshop-template</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/qp-analyzer">qp-analyzer</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/qp-compare">qp-compare</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/rn-apollo-client-testbed">rn-apollo-client-testbed</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/summit-2025-connectors-workshop">summit-2025-connectors-workshop</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/supergraph-auth-checker">supergraph-auth-checker</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/support-workshop-public">support-workshop-public</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/suspense-talk-2023">suspense-talk-2023</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/apollographql/workshop-connectors-intro-rest">workshop-connectors-intro-rest</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has LICENSE
- Has SECURITY.md

</details>

### Skipped (1 repo)

- [subgraph-template-graphql-dotnet-schema-first-boilerplate](https://github.com/apollographql/subgraph-template-graphql-dotnet-schema-first-boilerplate) - repository is empty
