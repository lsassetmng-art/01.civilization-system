#!/data/data/com.termux/files/usr/bin/bash
set -eu

RUN_DB_VERIFY="${RUN_DB_VERIFY:-0}"
SCHEMA_NAME="${STREAM_STUDIO_SCHEMA:-stream_studio}"

ROOT="$HOME/01.civilization-system/07.applications/06.streaming-app/StreamStudio/120.implementation/153.phase1-sql"
WORK="$HOME/.tmp/stream_studio_phase1_post_apply_verify"
REPORT="$HOME/.tmp/stream_studio_phase1_post_apply_verify_report.txt"

mkdir -p "$WORK" "$HOME/.tmp"
: > "$REPORT"

render_sql() {
  src="$1"
  dst="$2"
  sed "s/__STREAM_STUDIO_SCHEMA__/$SCHEMA_NAME/g" "$src" > "$dst"
}

need_file() {
  if [ ! -f "$1" ]; then
    echo "FAIL: missing file -> $1" | tee -a "$REPORT"
    exit 1
  fi
}

echo "============================================================" | tee -a "$REPORT"
echo "STREAM STUDIO PHASE 1 POST-APPLY VERIFY RUNNER" | tee -a "$REPORT"
echo "============================================================" | tee -a "$REPORT"
echo "ROOT         : $ROOT" | tee -a "$REPORT"
echo "WORK         : $WORK" | tee -a "$REPORT"
echo "SCHEMA_NAME  : $SCHEMA_NAME" | tee -a "$REPORT"
echo "RUN_DB_VERIFY: $RUN_DB_VERIFY" | tee -a "$REPORT"
echo "DB TARGET    : PERSONA_DATABASE_URL" | tee -a "$REPORT"
echo "------------------------------------------------------------" | tee -a "$REPORT"

need_file "$ROOT/153210_PHASE1_VERIFY_TABLE_PRESENCE.sql"
need_file "$ROOT/153220_PHASE1_VERIFY_COLUMN_SHAPE.sql"
need_file "$ROOT/153230_PHASE1_VERIFY_INDEX_AND_FK.sql"
need_file "$ROOT/153240_PHASE1_VERIFY_AUDIT_RUNTIME.sql"

render_sql "$ROOT/153210_PHASE1_VERIFY_TABLE_PRESENCE.sql" "$WORK/153210.sql"
render_sql "$ROOT/153220_PHASE1_VERIFY_COLUMN_SHAPE.sql" "$WORK/153220.sql"
render_sql "$ROOT/153230_PHASE1_VERIFY_INDEX_AND_FK.sql" "$WORK/153230.sql"
render_sql "$ROOT/153240_PHASE1_VERIFY_AUDIT_RUNTIME.sql" "$WORK/153240.sql"

echo "[RENDERED FILES]" | tee -a "$REPORT"
find "$WORK" -maxdepth 1 -type f | sort | tee -a "$REPORT"

if [ "$RUN_DB_VERIFY" = "1" ]; then
  if [ -z "${PERSONA_DATABASE_URL:-}" ]; then
    echo "FAIL: PERSONA_DATABASE_URL is not exported" | tee -a "$REPORT"
    exit 1
  fi

  echo "------------------------------------------------------------" | tee -a "$REPORT"
  echo "[TABLE PRESENCE]" | tee -a "$REPORT"
  psql "$PERSONA_DATABASE_URL" -v ON_ERROR_STOP=1 -f "$WORK/153210.sql" | tee -a "$REPORT"

  echo "------------------------------------------------------------" | tee -a "$REPORT"
  echo "[COLUMN SHAPE]" | tee -a "$REPORT"
  psql "$PERSONA_DATABASE_URL" -v ON_ERROR_STOP=1 -f "$WORK/153220.sql" | tee -a "$REPORT"

  echo "------------------------------------------------------------" | tee -a "$REPORT"
  echo "[INDEX AND FK]" | tee -a "$REPORT"
  psql "$PERSONA_DATABASE_URL" -v ON_ERROR_STOP=1 -f "$WORK/153230.sql" | tee -a "$REPORT"

  echo "------------------------------------------------------------" | tee -a "$REPORT"
  echo "[AUDIT AND RUNTIME COUNTS]" | tee -a "$REPORT"
  psql "$PERSONA_DATABASE_URL" -v ON_ERROR_STOP=1 -f "$WORK/153240.sql" | tee -a "$REPORT"
else
  echo "------------------------------------------------------------" | tee -a "$REPORT"
  echo "[REVIEW MODE ONLY]" | tee -a "$REPORT"
  echo "Set RUN_DB_VERIFY=1 after real SQL apply." | tee -a "$REPORT"
fi

echo "------------------------------------------------------------" | tee -a "$REPORT"
echo "REPORT: $REPORT" | tee -a "$REPORT"
