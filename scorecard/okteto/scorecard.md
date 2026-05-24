# Codatus - Repo Standards Scorecard

**Org:** okteto<br>
**Scanned:** 2026-05-19 08:43 UTC (scanner v0.9.4)<br>
**Repos:** 178 of 212 scanned (16 forks excluded, 15 archived excluded, 3 skipped)

## Scored rules

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has branch protection | 26 | 152 | 14% |
| Has required checks | 1 | 177 | 0% |
| Has CODEOWNERS | 10 | 168 | 5% |
| Has CI workflow | 35 | 143 | 19% |

**Score: 9/100** (average pass rate across the scored rules above)

## Additional checks

| Rule | Passing | Failing | Pass rate |
|------|---------|---------|----------|
| Has README | 172 | 6 | 96% |
| Has LICENSE | 128 | 50 | 71% |
| Has repo description | 130 | 48 | 73% |
| Has activity | 54 | 124 | 30% |
| Has SECURITY.md | 1 | 177 | 0% |

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

### Moderate (30-79%)

<details>
<summary><a href="https://github.com/okteto/bin-image">bin-image</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/cert-manager-webhook-civo">cert-manager-webhook-civo</a> - 50%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/deploy-preview">deploy-preview</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/devenv">devenv</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/docs">docs</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CI workflow

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/external-resources-aws">external-resources-aws</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/external-resources-gcp">external-resources-gcp</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/external-resources-tf-aws">external-resources-tf-aws</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/kubernetes-context">kubernetes-context</a> - 50%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/launchdarkly">launchdarkly</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/movies">movies</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/okteto">okteto</a> - 75%</summary>

**Failing scored rules:**
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/pipeline-runner">pipeline-runner</a> - 50%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/remote-kubernetes">remote-kubernetes</a> - 75%</summary>

**Failing scored rules:**
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/samples">samples</a> - 50%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/test">test</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/voting-app-with-external-resources">voting-app-with-external-resources</a> - 50%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

### Weak (≤29%)

<details>
<summary><a href="https://github.com/okteto/.github">.github</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
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
<summary><a href="https://github.com/okteto/actions">actions</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/aspnetcore-getting-started">aspnetcore-getting-started</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/aws-lambda">aws-lambda</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/blog-proposals">blog-proposals</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/build">build</a> - 25%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/c-getting-started">c-getting-started</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/catalog">catalog</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/chat">chat</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/cindy-test">cindy-test</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has README
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/civogo">civogo</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/clojure-shadowcljs">clojure-shadowcljs</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/compose-getting-started">compose-getting-started</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/context">context</a> - 25%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/cplusplus-getting-started">cplusplus-getting-started</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/create-namespace">create-namespace</a> - 25%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/crossplane-dev-envs-demo">crossplane-dev-envs-demo</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has README
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/customer-redis-example">customer-redis-example</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/dagger-module">dagger-module</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/delete-namespace">delete-namespace</a> - 25%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/deno-getting-started">deno-getting-started</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/deploy-a-cronjob">deploy-a-cronjob</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/desk">desk</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/destroy-pipeline">destroy-pipeline</a> - 25%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/destroy-preview">destroy-preview</a> - 25%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/develop-with-node-selector">develop-with-node-selector</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/diagnostics">diagnostics</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/divert">divert</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/divert-e2e-test">divert-e2e-test</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/divert-with-istio-sample">divert-with-istio-sample</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/docker-desktop-extension">docker-desktop-extension</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/docker-secret-test">docker-secret-test</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
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
<summary><a href="https://github.com/okteto/doppler-injector">doppler-injector</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/dynamic-configurations-sample">dynamic-configurations-sample</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/eleventy-getting-started">eleventy-getting-started</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/error-k8s-manifests">error-k8s-manifests</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/external-resources-launchdarkly">external-resources-launchdarkly</a> - 25%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/external-resources-tf-localstack">external-resources-tf-localstack</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/fastapi-crud">fastapi-crud</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/fastapi-snapshot-app">fastapi-snapshot-app</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/flask-producer-consumer">flask-producer-consumer</a> - 25%</summary>

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
<summary><a href="https://github.com/okteto/flask-react-app">flask-react-app</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/flux-getting-started">flux-getting-started</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/getting-started">getting-started</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/go-api-docker-compose">go-api-docker-compose</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/go-autoscale">go-autoscale</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/go-getting-started">go-getting-started</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/go-guestbook">go-guestbook</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/go-non-root-container">go-non-root-container</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/go-postgres">go-postgres</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/go-prometheus-monitoring">go-prometheus-monitoring</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/go-todo-list">go-todo-list</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/go-vault-secrets">go-vault-secrets</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/go-with-ko">go-with-ko</a> - 25%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/grpc-in-okteto-cloud">grpc-in-okteto-cloud</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/guestbook-api">guestbook-api</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/hello-okteto-chart">hello-okteto-chart</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/helm-ci">helm-ci</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/helm-oci">helm-oci</a> - 25%</summary>

**Failing scored rules:**
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
<summary><a href="https://github.com/okteto/helm-skeleton">helm-skeleton</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/homebrew-cli">homebrew-cli</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/icons">icons</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/insights-dashboards">insights-dashboards</a> - 25%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/integrated-development-experience">integrated-development-experience</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/java-gradle-fitnesse">java-gradle-fitnesse</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/java-gradle-fitnesse-manifests">java-gradle-fitnesse-manifests</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/java-gradle-getting-started">java-gradle-getting-started</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/java-gradle-webpack-react">java-gradle-webpack-react</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/java-maven-getting-started">java-maven-getting-started</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/java-maven-spring-redis">java-maven-spring-redis</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/k8s-for-devs">k8s-for-devs</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/kafka-stack">kafka-stack</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/katacoda-scenarios">katacoda-scenarios</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/kubernetes-preview-environment">kubernetes-preview-environment</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/litmus-on-okteto">litmus-on-okteto</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/litmus-portal">litmus-portal</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/math">math</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/mesh">mesh</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/mesh-backend-1">mesh-backend-1</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/mesh-backend-2">mesh-backend-2</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/microservices-demo">microservices-demo</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/microservices-demo-compose">microservices-demo-compose</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/microservices-multi">microservices-multi</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/microservices-result">microservices-result</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/microservices-vote">microservices-vote</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/microservices-worker">microservices-worker</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/mongodb">mongodb</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/movies-api">movies-api</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/movies-catalog">movies-catalog</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/movies-charts">movies-charts</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/movies-cloudide">movies-cloudide</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/movies-frontend">movies-frontend</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/movies-frontend-with-divert">movies-frontend-with-divert</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/movies-multi-repo">movies-multi-repo</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/movies-preview-environments">movies-preview-environments</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/movies-rentals">movies-rentals</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/movies-with-compose">movies-with-compose</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/movies-with-helm">movies-with-helm</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/movies-with-vanilla-k8s">movies-with-vanilla-k8s</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/multirepo-demo">multirepo-demo</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/namespace">namespace</a> - 25%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/nextjs-docker-compose">nextjs-docker-compose</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/node-codespaces">node-codespaces</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/node-compose-getting-started">node-compose-getting-started</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/node-getting-started">node-getting-started</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/node-getting-started-with-compose">node-getting-started-with-compose</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/node-graphql-server">node-graphql-server</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/node-openfaas">node-openfaas</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/node-websocket">node-websocket</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/notify-pr">notify-pr</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/oauth2-callback-proxy">oauth2-callback-proxy</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/okteto-claude-plugins">okteto-claude-plugins</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/oktetodo">oktetodo</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/oktetodo-terraform-s3">oktetodo-terraform-s3</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/openfaas-nodejs">openfaas-nodejs</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/php-getting-started">php-getting-started</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/php-with-nginx">php-with-nginx</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/pipeline">pipeline</a> - 25%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/pipeline-getting-started">pipeline-getting-started</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/pipeline-with-terraform">pipeline-with-terraform</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/polling">polling</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/preview-operator">preview-operator</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/pull-first-sample">pull-first-sample</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/python-docker-compose">python-docker-compose</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/python-fastapi-celery">python-fastapi-celery</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/python-flask-cockroachdb">python-flask-cockroachdb</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/python-getting-started">python-getting-started</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/python-job-launcher">python-job-launcher</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/python-kubeless">python-kubeless</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/python-openfaas">python-openfaas</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/react-express">react-express</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/react-getting-started">react-getting-started</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/react-oauth2-login">react-oauth2-login</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/recipe-app">recipe-app</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has repo description
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/ruby-getting-started">ruby-getting-started</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/ruby-remote-development">ruby-remote-development</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/rust-getting-started">rust-getting-started</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/scala-play-getting-started">scala-play-getting-started</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/secrets-from-doppler">secrets-from-doppler</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/self-signed-certificates">self-signed-certificates</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/spring-microservices">spring-microservices</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/stats">stats</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/supervisor-nginx">supervisor-nginx</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/syncthing">syncthing</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/syncthing-generated">syncthing-generated</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CI workflow

**Additional check failures:**
- Has activity

</details>

<details>
<summary><a href="https://github.com/okteto/tensorflow-notebook-getting-started">tensorflow-notebook-getting-started</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/terminal">terminal</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/terrascan-okteto-get-started">terrascan-okteto-get-started</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/todolist-gitops-code">todolist-gitops-code</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has LICENSE
- Has activity
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/todolist-gitops-manifests">todolist-gitops-manifests</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/todolist-pulumi-s3">todolist-pulumi-s3</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/todolist-with-neon">todolist-with-neon</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/traefik-sample">traefik-sample</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/tutorials">tutorials</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/update-variables-sample">update-variables-sample</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
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
<summary><a href="https://github.com/okteto/validate">validate</a> - 25%</summary>

**Failing scored rules:**
- Has required checks
- Has CODEOWNERS
- Has CI workflow

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/volume-snapshots-sample">volume-snapshots-sample</a> - 0%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
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
<summary><a href="https://github.com/okteto/vote">vote</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/voting-app">voting-app</a> - 25%</summary>

**Failing scored rules:**
- Has branch protection
- Has required checks
- Has CODEOWNERS

**Additional check failures:**
- Has SECURITY.md

</details>

<details>
<summary><a href="https://github.com/okteto/vscode-remote-go">vscode-remote-go</a> - 0%</summary>

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
<summary><a href="https://github.com/okteto/welcome">welcome</a> - 0%</summary>

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

### Skipped (3 repos)

- [IDEx-OkIDE-](https://github.com/okteto/IDEx-OkIDE-) - repository is empty
- [IDEx-Theia](https://github.com/okteto/IDEx-Theia) - repository is empty
- [tmp-test](https://github.com/okteto/tmp-test) - repository is empty
