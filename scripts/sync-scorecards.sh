#!/usr/bin/env bash
# Refresh the per-org scorecard pages from a bulk-scan output folder.
#
# Usage:
#   scripts/sync-scorecards.sh [/path/to/bulk-scan-output]
#
# Defaults to /tmp/bulk-scan-out. Expects each subfolder to follow the
# scanner repo's bulk-scan layout:
#   <SRC>/<Org>/scorecard.md   - rendered markdown report
#   <SRC>/<Org>/stats.json     - structured metadata (score, totals, buckets)
#
# For each <Org> the script writes two files inside codatus.com. The folder
# name is lowercased so the URL is /scorecard/<lower>/ - the original casing
# is kept inside index.html's frontmatter (`org: <Original>`) and used
# everywhere the org name is rendered (h1, og: tags, etc.).
#   scorecard/<lower>/scorecard.md   - copy of the source .md (served raw at
#                                       /scorecard/<lower>/scorecard.md)
#   scorecard/<lower>/index.html     - 4-line Jekyll stub: layout, org (with
#                                       original casing); layout fetches the
#                                       sibling .md and renders via marked.js
#
# Re-running is idempotent: existing per-org files are overwritten.
# Stale orgs (present in scorecard/ but missing from <SRC>) are NOT removed
# automatically - the script doesn't know if they were intentionally kept.
# Delete them by hand if you've dropped an org from the scan list.

set -euo pipefail

SRC="${1:-/tmp/bulk-scan-out}"

if [[ ! -d "$SRC" ]]; then
    echo "error: source directory not found: $SRC" >&2
    exit 1
fi

# All paths below are relative to the codatus.com repo root, which is
# this script's parent directory.
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

count=0
for org_dir in "$SRC"/*/; do
    [[ -d "$org_dir" ]] || continue
    name="$(basename "$org_dir")"
    slug="$(echo "$name" | tr '[:upper:]' '[:lower:]')"

    md="$org_dir/scorecard.md"

    if [[ ! -f "$md" ]]; then
        echo "skip: $name (no scorecard.md)" >&2
        continue
    fi

    mkdir -p "scorecard/$slug"
    cp "$md" "scorecard/$slug/scorecard.md"

    cat > "scorecard/$slug/index.html" <<EOF
---
layout: scorecard
org: $name
---
EOF

    count=$((count + 1))
done

echo "synced $count scorecard(s) from $SRC"
