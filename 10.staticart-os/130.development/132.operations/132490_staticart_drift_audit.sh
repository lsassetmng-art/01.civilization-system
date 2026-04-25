#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"
OUT_BASE="$ROOT/920.meta/080.maintenance_guard_pack"
STAMP="$(date +%Y%m%d_%H%M%S)"
RUN_DIR="$OUT_BASE/drift_$STAMP"
REPORT="$RUN_DIR/000001_STATIC_ART_OS_DRIFT_AUDIT_REPORT.md"

mkdir -p "$RUN_DIR"

file_status() {
  local file="$1"
  if [ -f "$file" ]; then
    printf 'OK'
  else
    printf 'NG'
  fi
}

ROOT_INDEX="$ROOT/000_STATIC_ART_OS_INDEX.md"
ROOT_OVERVIEW="$ROOT/000_STATIC_ART_OS_OVERVIEW.md"
ROOT_ROADMAP="$ROOT/000_STATIC_ART_OS_ROADMAP.md"
LANDING="$ROOT/000004_STATIC_ART_OS_FINAL_LANDING_PORTAL.md"
DASHBOARD="$ROOT/000002_STATIC_ART_OS_STATUS_DASHBOARD.md"
MASTER_BUNDLE="$ROOT/132.operations/132390_staticart_master_final_bundle.sh"
SWEEP="$ROOT/132.operations/132410_staticart_master_readonly_sweep.sh"
HANDOFF="$ROOT/920.meta/074.next_chat_handoff/000001_STATIC_ART_OS_NEXT_CHAT_HANDOFF_MEMO.md"
EXPORT_NOTE="$ROOT/920.meta/075.export_and_resume_pack/000003_STATIC_ART_OS_RESUME_NOTE.md"
TRACE="$ROOT/920.meta/076.traceability_pack/000001_STATIC_ART_OS_TRACEABILITY_MATRIX.md"
EVIDENCE="$ROOT/920.meta/079.evidence_pack/000001_STATIC_ART_OS_EVIDENCE_INDEX.md"
REGISTRY="$ROOT/920.meta/078.launcher_registry_and_smokecheck/000001_STATIC_ART_OS_LAUNCHER_REGISTRY.md"
PERSONA_RULE="$ROOT/080.policy/080160_STATIC_ART_OS_PERSONA_NON_DUPLICATION_AND_SNAPSHOT_CONSUMPTION_RULE.md"
PERSONA_RECHECK="$ROOT/132.operations/132290_staticart_persona_final_recheck.sh"

ROOT_IO_OK=0
while IFS= read -r dir; do
  idx=0
  ovr=0
  if find "$dir" -maxdepth 1 -type f -iname '*index*.md' | grep -q .; then idx=1; fi
  if find "$dir" -maxdepth 1 -type f -iname '*overview*.md' | grep -q .; then ovr=1; fi
  if [ "$idx" -eq 1 ] && [ "$ovr" -eq 1 ]; then
    ROOT_IO_OK=$((ROOT_IO_OK + 1))
  fi
done < <(find "$ROOT" -mindepth 1 -maxdepth 1 -type d ! -name '920.meta' ! -name '.git' | sort)

PERSONA_MARKER_TOTAL=0
for f in \
  "$ROOT/000_STATIC_ART_OS_OVERVIEW.md" \
  "$ROOT/000_STATIC_ART_OS_ROADMAP.md" \
  "$ROOT/131.implementation-roadmap/131330_STATIC_ART_OS_IMPLEMENTATION_READY_FINAL_CHECKLIST.md" \
  "$ROOT/132.operations/132220_STATIC_ART_OS_PRE_IMPLEMENTATION_GATE_MATRIX.md" \
  "$ROOT/920.meta/056.signoff_pack/000001_STATIC_ART_OS_PRE_IMPLEMENTATION_SIGNOFF_MEMO_TEMPLATE.md" \
  "$ROOT/000002_STATIC_ART_OS_STATUS_DASHBOARD.md"
do
  if [ -f "$f" ]; then
    c="$(grep -Ec 'PERSONA_REFERENCE_' "$f" || true)"
    PERSONA_MARKER_TOTAL=$((PERSONA_MARKER_TOTAL + c))
  fi
done

REPORT_STYLE_COUNT="$(find "$ROOT/920.meta" -type f \( -name '*REPORT.md' -o -name '*RESULT.md' -o -name '*SUMMARY.md' \) | wc -l | tr -d ' ')"

cat > "$REPORT" <<EOF2
# ============================================================
# STATIC ART OS DRIFT AUDIT REPORT
# ============================================================

status: generated
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

run_dir:
- $RUN_DIR

core_presence:

| Item | Status | File |
|---|---|---|
| root index | $(file_status "$ROOT_INDEX") | $ROOT_INDEX |
| root overview | $(file_status "$ROOT_OVERVIEW") | $ROOT_OVERVIEW |
| root roadmap | $(file_status "$ROOT_ROADMAP") | $ROOT_ROADMAP |
| final landing portal | $(file_status "$LANDING") | $LANDING |
| dashboard | $(file_status "$DASHBOARD") | $DASHBOARD |
| master final bundle | $(file_status "$MASTER_BUNDLE") | $MASTER_BUNDLE |
| readonly sweep | $(file_status "$SWEEP") | $SWEEP |
| next-chat handoff | $(file_status "$HANDOFF") | $HANDOFF |
| export/resume note | $(file_status "$EXPORT_NOTE") | $EXPORT_NOTE |
| traceability matrix | $(file_status "$TRACE") | $TRACE |
| evidence index | $(file_status "$EVIDENCE") | $EVIDENCE |
| launcher registry | $(file_status "$REGISTRY") | $REGISTRY |
| persona rule anchor | $(file_status "$PERSONA_RULE") | $PERSONA_RULE |
| persona final recheck | $(file_status "$PERSONA_RECHECK") | $PERSONA_RECHECK |

summary_metrics:

| Metric | Value |
|---|---:|
| top_level_dirs_with_index_overview | $ROOT_IO_OK |
| persona_reference_marker_hits | $PERSONA_MARKER_TOTAL |
| report_style_outputs_under_920_meta | $REPORT_STYLE_COUNT |

guard_rule:
- Missing core files are maintenance drift signals.
- Loss of Persona rule anchor or Persona recheck is a boundary drift signal.
- This audit is read-only and structural.
EOF2

printf '\n============================================================\n'
printf 'STATICART DRIFT AUDIT DONE\n'
printf '============================================================\n'
printf 'RUN_DIR: %s\n' "$RUN_DIR"
printf 'REPORT : %s\n' "$REPORT"
printf '\n[REPORT HEAD]\n'
sed -n '1,180p' "$REPORT"
