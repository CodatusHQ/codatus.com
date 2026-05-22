---
layout: post
title: Measuring repo standards on GitHub
description: How Codatus scores GitHub repos against four standards rules in public-scan mode, plus a fifth that runs only when the scanner is installed on the org.
og_image: /og/measuring-repo-standards-on-github.png
---

GitHub exposes a lot of configuration through its public APIs: branch protection (classic and rulesets), CODEOWNERS files, CI workflow definitions, all visible to anyone willing to make a few API calls. A GitHub App installed on an organization can read more still, including private repos and configuration the public APIs hold back.

Codatus is a scanner built around both. It runs in two modes. Installed on your own GitHub organization, it scores each repo against five repository-level rules. Run against an org that hasn't installed it, it scores against four; the fifth rule needs data that's only available once Codatus is installed on the org.

This post is what each rule measures and where the public-scan mode hits its limits. The next post is what one such scan produces across 126 YC-backed dev tools companies.

## The four scored rules

### Branch protection

Branch protection passes when the default branch requires a pull request before changes can land. The rule reads from two GitHub mechanisms that can enforce this and unions the signals. The first is [rulesets](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/about-rulesets), the newer of the two, where an active ruleset targeting the default branch must include a `pull_request` rule. The second is [classic branch protection](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches), the older mechanism with the "Require a pull request before merging" setting.

Classic protection's full configuration is only available in installed mode. A public scan instead reads the [public branches endpoint](https://docs.github.com/en/rest/branches/branches#get-a-branch), which exposes whether classic protection is enabled (`protected: true` and `protection.enabled: true`) but not the require-PR setting itself. A repo whose default branch is unprotected, or whose only protection is a shape-rule ruleset (signed commits, linear history), does not pass. One edge case: classic protection that's enabled but only enforces shape rules can still pass a public scan, since the missing require-PR setting isn't visible.

### Required checks

Required checks passes when something must succeed before a merge. The rule recognizes any of these merge-gating types from GitHub's [available ruleset rules](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets): status checks, workflows, code scanning, code quality, or required deployments. Both rulesets and classic protection are checked.

Inert configuration doesn't count. A `workflows` rule with no workflows listed, or a `required_status_checks` rule with no contexts listed, is treated the same as no rule at all. Disabled classic-protection records are dropped entirely, even when they still carry context data from when the protection was active.

### CODEOWNERS

CODEOWNERS passes when a `CODEOWNERS` file exists at any of the three locations [GitHub recognizes](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-code-owners): `.github/CODEOWNERS`, the repo root, or `docs/CODEOWNERS`. Presence only. We do not validate the file's contents or check whether the listed owners are still in the organization.

The rule measures whether code ownership is documented. It doesn't check whether the documentation is current.

### CI workflow

CI workflow passes when the repo has a recognized CI configuration committed to source: `.github/workflows` for [GitHub Actions](https://docs.github.com/en/actions), `.circleci/config.yml` for CircleCI, `.gitlab-ci.yml` for GitLab CI, `.travis.yml` for Travis CI, any file under `.buildkite/` for Buildkite, `azure-pipelines.yml` for Azure Pipelines, or `Jenkinsfile` for Jenkins. We don't run the workflows or verify they pass. We check whether the configuration is there. CI configured entirely server-side, like CircleCI set up through its own UI without a file in the repo, isn't visible in either mode.

## The fifth rule, and why it's skipped

The scanner also implements a fifth rule, required reviewer counts. It passes when the default branch's protection requires at least one approving review before a PR can merge. [Rulesets](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/about-rulesets) expose this count through the `pull_request` rule's `required_approving_review_count` parameter. Classic branch protection exposes the corresponding setting (`required_pull_request_reviews.required_approving_review_count`) only through the [branch protection endpoint](https://docs.github.com/en/rest/branches/branch-protection), which only installed scans can read.

To keep scoring consistent across orgs, the fifth rule sits out of public scans entirely. In installed mode, Codatus authenticates against the organization and scores all five rules.

## What the scan produces

A repository passes or fails each rule, and lands in one of three buckets: Strong if it passes all four, Moderate if it passes two or three, Weak otherwise. At the organization level, the scan reports a pass rate per rule, the average of those four rates as the overall score, and how many repos sit in each bucket.

The scan also reports five additional checks per repo that don't affect the score: whether a README exists, whether a license is declared, whether the repo has a description, whether it's been pushed to in the last year, and whether a SECURITY.md file is present. These appear on the per-repo scorecard for context.

The next post takes a scan across 126 YC-backed dev tools companies, on Codatus v0.9.4, and walks through what falls out.
