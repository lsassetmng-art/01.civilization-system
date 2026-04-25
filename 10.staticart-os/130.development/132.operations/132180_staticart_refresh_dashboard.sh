#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"
DASHBOARD_MD="$ROOT/000002_STATIC_ART_OS_STATUS_DASHBOARD.md"

file_status() {
  local file="$1"
  if [ -f "$file" ]; then
    printf 'OK'
  else
    printf 'NG'
  fi
}

count_lines_if_exists() {
  local file="$1"
  if [ -f "$file" ]; then
    wc -l < "$file" | tr -d ' '
  else
    printf '0'
  fi
}

ROOT_INDEX="$ROOT/000_STATIC_ART_OS_INDEX.md"
ROOT_OVERVIEW="$ROOT/000_STATIC_ART_OS_OVERVIEW.md"
ROOT_ROADMAP="$ROOT/000_STATIC_ART_OS_ROADMAP.md"
PORTAL="$ROOT/000001_STATIC_ART_OS_PORTAL.md"
DASHBOARD="$ROOT/000002_STATIC_ART_OS_STATUS_DASHBOARD.md"
INTEGRATED="$ROOT/000000_STATIC_ART_OS_STANDALONE_IMPLEMENTATION_READY_INTEGRATED.md"

PHASE1="$ROOT/121.db-implementation-prep/verification/990_staticart_phase1_full_verify.sh"
PHASE2="$ROOT/122.api-implementation-prep/phase2-checks/990_staticart_phase2_full_check.sh"
PHASE3="$ROOT/122.api-implementation-prep/phase3-checks/990_staticart_phase3_full_check.sh"
PHASE45="$ROOT/122.api-implementation-prep/phase4-5-checks/990_staticart_phase4_5_full_check.sh"
PHASE67="$ROOT/124.test-implementation-prep/phase6-7-checks/990_staticart_phase6_7_full_check.sh"
FINAL="$ROOT/124.test-implementation-prep/final-standalone-checks/999_staticart_standalone_full_check.sh"

FREEZE_NOTE="$ROOT/920.meta/047.standalone_freeze/000003_STATIC_ART_OS_STANDALONE_FREEZE_NOTE.md"
HANDOFF="$ROOT/132.operations/132120_STATIC_ART_OS_IMPLEMENTATION_START_HANDOFF.md"
CHECKLIST="$ROOT/131.implementation-roadmap/131330_STATIC_ART_OS_IMPLEMENTATION_READY_FINAL_CHECKLIST.md"
COMPLETION_MEMO="$ROOT/131.implementation-roadmap/131360_STATIC_ART_OS_STANDALONE_IMPLEMENTATION_READY_COMPLETION_MEMO_TEMPLATE.md"
CLOSEOUT="$ROOT/920.meta/050.standalone_closeout/000001_STATIC_ART_OS_STANDALONE_CLOSEOUT_SUMMARY.md"
NAMING_TRIAGE="$ROOT/920.meta/053.naming_triage/000001_STATIC_ART_OS_NAMING_TRIAGE_REPORT.md"

ROOT_DIR_COUNT="$(find "$ROOT" -mindepth 1 -maxdepth 1 -type d ! -name '.git' | wc -l | tr -d ' ')"
TOPLEVEL_IO_OK_COUNT="$(
  ok=0
  while IFS= read -r dir; do
    idx=0
    ovr=0
    if find "$dir" -maxdepth 1 -type f -iname '*index*.md' | grep -q .; then idx=1; fi
    if find "$dir" -maxdepth 1 -type f -iname '*overview*.md' | grep -q .; then ovr=1; fi
    if [ "$idx" -eq 1 ] && [ "$ovr" -eq 1 ]; then
      ok=$((ok + 1))
    fi
  done < <(find "$ROOT" -mindepth 1 -maxdepth 1 -type d ! -name '920.meta' ! -name '.git' | sort)
  printf '%s' "$ok"
)"

INTEGRATED_BEGIN_COUNT="$(grep -c '<!-- BEGIN FILE:' "$INTEGRATED" 2>/dev/null || true)"
FREEZE_SHA_COUNT="$(count_lines_if_exists "$ROOT/920.meta/047.standalone_freeze/000002_STATIC_ART_OS_STANDALONE_FREEZE_SHA256.txt")"

ENV_STATUS="NG"
if [ -n "${PERSONA_DATABASE_URL:-}" ]; then
  ENV_STATUS="OK"
fi

cat > "$DASHBOARD_MD" <<EOF2
# ============================================================
# STATIC ART OS STATUS DASHBOARD
# ============================================================

status: active
system: StaticArtOS
mode: standalone
owner: Boss
prepared_by: Zero

summary:
- This dashboard summarizes the current standalone implementation-prep state.
- It is refreshable and read-only.
- Persona-side DB rule remains PERSONA_DATABASE_URL.

## Environment

| Item | Status |
|---|---|
| PERSONA_DATABASE_URL exported now | $ENV_STATUS |

## Root navigation

| Item | Status | File |
|---|---|---|
| INDEX | $(file_status "$ROOT_INDEX") | $ROOT_INDEX |
| OVERVIEW | $(file_status "$ROOT_OVERVIEW") | $ROOT_OVERVIEW |
| ROADMAP | $(file_status "$ROOT_ROADMAP") | $ROOT_ROADMAP |
| PORTAL | $(file_status "$PORTAL") | $PORTAL |
| DASHBOARD | OK | $DASHBOARD |

## Phase runner presence

| Phase | Status | Runner |
|---|---|---|
| Phase 1 | $(file_status "$PHASE1") | $PHASE1 |
| Phase 2 | $(file_status "$PHASE2") | $PHASE2 |
| Phase 3 | $(file_status "$PHASE3") | $PHASE3 |
| Phase 4-5 | $(file_status "$PHASE45") | $PHASE45 |
| Phase 6-7 | $(file_status "$PHASE67") | $PHASE67 |
| Final | $(file_status "$FINAL") | $FINAL |

## Standalone pack presence

| Item | Status | File |
|---|---|---|
| Integrated review | $(file_status "$INTEGRATED") | $INTEGRATED |
| Freeze note | $(file_status "$FREEZE_NOTE") | $FREEZE_NOTE |
| Handoff | $(file_status "$HANDOFF") | $HANDOFF |
| Final checklist | $(file_status "$CHECKLIST") | $CHECKLIST |
| Completion memo template | $(file_status "$COMPLETION_MEMO") | $COMPLETION_MEMO |
| Closeout summary | $(file_status "$CLOSEOUT") | $CLOSEOUT |
| Naming triage report | $(file_status "$NAMING_TRIAGE") | $NAMING_TRIAGE |

## Structure summary

| Metric | Value |
|---|---|
| top_level_directories_total | $ROOT_DIR_COUNT |
| top_level_directories_with_index_and_overview | $TOPLEVEL_IO_OK_COUNT |
| integrated_begin_marker_count | $INTEGRATED_BEGIN_COUNT |
| freeze_sha256_line_count | $FREEZE_SHA_COUNT |

## Judgement

- Structure is considered healthy when root navigation exists and top-level folders have INDEX/OVERVIEW coverage.
- Standalone pack is considered reviewable when integrated review, handoff, checklist, and freeze note exist.
- This dashboard does not replace phase execution or final judgement.
EOF2

printf '\n============================================================\n'
printf 'STATICART DASHBOARD REFRESH DONE\n'
printf '============================================================\n'
printf 'DASHBOARD: %s\n' "$DASHBOARD_MD"
