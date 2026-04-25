#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"
RUN_BASE="$ROOT/920.meta/085.execution_runs"

SESSION_TEMPLATE="$ROOT/920.meta/084.execution_logbook_pack/000001_STATIC_ART_OS_EXECUTION_SESSION_LOG_TEMPLATE.md"
POSTRUN_TEMPLATE="$ROOT/920.meta/084.execution_logbook_pack/000002_STATIC_ART_OS_POST_RUN_SUMMARY_TEMPLATE.md"
EVIDENCE_NOTE="$ROOT/920.meta/084.execution_logbook_pack/000003_STATIC_ART_OS_EXECUTION_EVIDENCE_CAPTURE_NOTE.md"

MODE="${1:-prepare}"
STAMP="${2:-$(date +%Y%m%d_%H%M%S)}"
RUN_DIR="$RUN_BASE/$STAMP"

RUN_README="$RUN_DIR/000001_RUN_README.md"
SESSION_MD="$RUN_DIR/000010_EXECUTION_SESSION_LOG.md"
POSTRUN_MD="$RUN_DIR/000020_POST_RUN_SUMMARY.md"
BLOCKERS_MD="$RUN_DIR/000030_BLOCKERS.md"
WARNINGS_MD="$RUN_DIR/000040_WARNINGS.md"
RAW_LOG="$RUN_DIR/000050_RAW_COMMAND_LOG.txt"
NOTES_MD="$RUN_DIR/000060_NOTES.md"
REPORT_MD="$RUN_DIR/000070_RUN_WORKSPACE_PREP_REPORT.md"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PREPARE EXECUTION RUN
============================================================

Usage:
  bash 132.operations/132540_staticart_prepare_execution_run.sh help
  bash 132.operations/132540_staticart_prepare_execution_run.sh prepare
  bash 132.operations/132540_staticart_prepare_execution_run.sh prepare 20260418_123000

Modes:
  help     : show help
  prepare  : create a timestamped run workspace under 920.meta/085.execution_runs
TEXT
}

prepare_run() {
  mkdir -p "$RUN_DIR"

  cat > "$RUN_README" <<EOF2
# ============================================================
# STATIC ART OS EXECUTION RUN README
# ============================================================

status: run-workspace
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

run_stamp:
- $STAMP

run_dir:
- $RUN_DIR

recommended_order:
- fill execution session log
- capture raw command output if execution starts
- fill blockers/warnings as needed
- fill post-run summary
- keep Persona boundary confirmation visible if Persona-linked work is touched
EOF2

  if [ -f "$SESSION_TEMPLATE" ]; then
    cp "$SESSION_TEMPLATE" "$SESSION_MD"
  else
    cat > "$SESSION_MD" <<'EOF2'
# missing session template
EOF2
  fi

  if [ -f "$POSTRUN_TEMPLATE" ]; then
    cp "$POSTRUN_TEMPLATE" "$POSTRUN_MD"
  else
    cat > "$POSTRUN_MD" <<'EOF2'
# missing post-run template
EOF2
  fi

  cat > "$BLOCKERS_MD" <<'EOF2'
# ============================================================
# BLOCKERS
# ============================================================

- none yet
EOF2

  cat > "$WARNINGS_MD" <<'EOF2'
# ============================================================
# WARNINGS
# ============================================================

- none yet
EOF2

  : > "$RAW_LOG"

  cat > "$NOTES_MD" <<EOF2
# ============================================================
# NOTES
# ============================================================

evidence_note_source:
- $EVIDENCE_NOTE

persona_boundary_reminder:
- no Persona core duplication
- no direct Persona canonical mutation
- signed snapshot basis remains the display rule
EOF2

  cat > "$REPORT_MD" <<EOF2
# ============================================================
# STATIC ART OS RUN WORKSPACE PREP REPORT
# ============================================================

status: generated
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

run_dir:
- $RUN_DIR

created:
- $RUN_README
- $SESSION_MD
- $POSTRUN_MD
- $BLOCKERS_MD
- $WARNINGS_MD
- $RAW_LOG
- $NOTES_MD
- $REPORT_MD

rule:
- this workspace is execution-evidence oriented
- it does not perform DB writes by itself
EOF2

  printf '\n============================================================\n'
  printf 'STATICART EXECUTION RUN WORKSPACE PREP DONE\n'
  printf '============================================================\n'
  printf 'RUN_DIR : %s\n' "$RUN_DIR"
  printf 'README  : %s\n' "$RUN_README"
  printf 'SESSION : %s\n' "$SESSION_MD"
  printf 'POSTRUN : %s\n' "$POSTRUN_MD"
  printf 'REPORT  : %s\n' "$REPORT_MD"
  printf '\n[REPORT HEAD]\n'
  sed -n '1,140p' "$REPORT_MD"
}

case "$MODE" in
  help|--help|-h)
    show_help
    ;;
  prepare)
    prepare_run
    ;;
  *)
    echo "ERROR: unknown mode -> $MODE"
    show_help
    exit 1
    ;;
esac
