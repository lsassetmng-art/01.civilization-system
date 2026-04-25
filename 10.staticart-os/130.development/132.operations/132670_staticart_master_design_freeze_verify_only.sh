#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"
OUT_BASE="$ROOT/920.meta/097.master_design_freeze_verify_only"
STAMP="$(date +%Y%m%d_%H%M%S)"
RUN_DIR="$OUT_BASE/run_$STAMP"

NOTE_MD="$OUT_BASE/000001_STATIC_ART_OS_MASTER_DESIGN_FREEZE_VERIFY_ONLY_NOTE.md"
FREEZE_MD="$ROOT/920.meta/096.master_design_freeze_pack/000001_STATIC_ART_OS_MASTER_DESIGN_FREEZE_MEMO.md"
MANIFEST_TXT="$ROOT/920.meta/096.master_design_freeze_pack/000002_STATIC_ART_OS_MASTER_DESIGN_FROZEN_BASELINE_MANIFEST.txt"
HANDOFF_MD="$ROOT/920.meta/096.master_design_freeze_pack/000003_STATIC_ART_OS_IMPLEMENTATION_BOUNDARY_HANDOFF_AFTER_DESIGN_FREEZE.md"

RESULT_MD="$RUN_DIR/000001_STATIC_ART_OS_MASTER_DESIGN_FREEZE_VERIFY_ONLY_RESULT.md"
CHECKLIST_TXT="$RUN_DIR/000002_STATIC_ART_OS_MASTER_DESIGN_FREEZE_VERIFY_ONLY_CHECKLIST.txt"
MISSING_TXT="$RUN_DIR/000003_STATIC_ART_OS_MASTER_DESIGN_FREEZE_VERIFY_ONLY_MISSING.txt"

mkdir -p "$RUN_DIR"

ok() {
  printf 'OK  | %s\n' "$1" >> "$CHECKLIST_TXT"
}

ng() {
  printf 'NG  | %s\n' "$1" >> "$CHECKLIST_TXT"
}

: > "$CHECKLIST_TXT"
: > "$MISSING_TXT"

file_status() {
  local file="$1"
  if [ -f "$file" ]; then
    printf 'OK'
  else
    printf 'NG'
  fi
}

MANIFEST_COUNT=0
MANIFEST_OK=0
MANIFEST_NG=0

if [ -f "$FREEZE_MD" ]; then
  ok "freeze memo exists"
else
  ng "freeze memo missing"
fi

if [ -f "$MANIFEST_TXT" ]; then
  ok "frozen baseline manifest exists"
else
  ng "frozen baseline manifest missing"
fi

if [ -f "$HANDOFF_MD" ]; then
  ok "implementation boundary handoff exists"
else
  ng "implementation boundary handoff missing"
fi

if [ -f "$NOTE_MD" ]; then
  ok "verify-only note exists"
else
  ng "verify-only note missing"
fi

if [ ! -f "$MANIFEST_TXT" ]; then
  echo "ERROR: missing manifest -> $MANIFEST_TXT" > "$MISSING_TXT"
else
  while IFS= read -r rel; do
    [ -z "$rel" ] && continue
    MANIFEST_COUNT=$((MANIFEST_COUNT + 1))
    ABS="$ROOT/$rel"
    if [ -f "$ABS" ]; then
      ok "manifest file exists -> $rel"
      MANIFEST_OK=$((MANIFEST_OK + 1))
    else
      ng "manifest file missing -> $rel"
      printf '%s\n' "$rel" >> "$MISSING_TXT"
      MANIFEST_NG=$((MANIFEST_NG + 1))
    fi
  done < "$MANIFEST_TXT"
fi

PERSONA_RULE="$ROOT/080.policy/080160_STATIC_ART_OS_PERSONA_NON_DUPLICATION_AND_SNAPSHOT_CONSUMPTION_RULE.md"
LANDING="$ROOT/000004_STATIC_ART_OS_FINAL_LANDING_PORTAL.md"
DASHBOARD="$ROOT/000002_STATIC_ART_OS_STATUS_DASHBOARD.md"
MASTER_ROADMAP="$ROOT/131.implementation-roadmap/131390_STATIC_ART_OS_MASTER_DESIGN_ROADMAP_FINAL.md"
MASTER_MATRIX="$ROOT/131.implementation-roadmap/131391_STATIC_ART_OS_MASTER_DESIGN_STATUS_MATRIX.md"

for f in \
  "$PERSONA_RULE" \
  "$LANDING" \
  "$DASHBOARD" \
  "$MASTER_ROADMAP" \
  "$MASTER_MATRIX"
do
  if [ -f "$f" ]; then
    ok "critical frozen anchor exists -> $f"
  else
    ng "critical frozen anchor missing -> $f"
    printf '%s\n' "$f" >> "$MISSING_TXT"
  fi
done

OK_COUNT="$(grep -c '^OK  |' "$CHECKLIST_TXT" || true)"
NG_COUNT="$(grep -c '^NG  |' "$CHECKLIST_TXT" || true)"

cat > "$RESULT_MD" <<EOF2
# ============================================================
# STATIC ART OS MASTER DESIGN FREEZE VERIFY ONLY RESULT
# ============================================================

status: generated
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

run_dir:
- $RUN_DIR

inputs:
- freeze_md: $FREEZE_MD
- manifest_txt: $MANIFEST_TXT
- handoff_md: $HANDOFF_MD

summary:
| Metric | Value |
|---|---:|
| manifest_line_count | $MANIFEST_COUNT |
| manifest_existing_count | $MANIFEST_OK |
| manifest_missing_count | $MANIFEST_NG |
| ok_count | $OK_COUNT |
| ng_count | $NG_COUNT |

critical_anchor_status:
| Item | Status |
|---|---|
| persona_rule | $(file_status "$PERSONA_RULE") |
| final_landing_portal | $(file_status "$LANDING") |
| dashboard | $(file_status "$DASHBOARD") |
| master_design_roadmap | $(file_status "$MASTER_ROADMAP") |
| master_design_matrix | $(file_status "$MASTER_MATRIX") |

artifacts:
- result_md: $RESULT_MD
- checklist_txt: $CHECKLIST_TXT
- missing_txt: $MISSING_TXT

judgement_rule:
- ng_count should be 0
- manifest_missing_count should be 0
- verify-only means no DB writes and no runtime implementation execution

final_judgement:
- master_design_freeze_verify_only_completed: yes
EOF2

printf '\n============================================================\n'
printf 'STATIC ART OS MASTER DESIGN FREEZE VERIFY-ONLY DONE\n'
printf '============================================================\n'
printf 'RUN_DIR : %s\n' "$RUN_DIR"
printf 'RESULT  : %s\n' "$RESULT_MD"
printf 'CHECKLIST: %s\n' "$CHECKLIST_TXT"
printf 'MISSING : %s\n' "$MISSING_TXT"
printf '\n[RESULT HEAD]\n'
sed -n '1,160p' "$RESULT_MD"
