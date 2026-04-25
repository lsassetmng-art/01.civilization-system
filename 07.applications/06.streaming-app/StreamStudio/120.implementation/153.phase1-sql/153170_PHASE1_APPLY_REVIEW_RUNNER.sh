#!/data/data/com.termux/files/usr/bin/bash
set -eu

# ============================================================
# STREAM STUDIO PHASE 1 APPLY REVIEW RUNNER
# ============================================================
# Persona-side DB work uses PERSONA_DATABASE_URL
# Review by 佐藤（DB担当） is required before real apply.
# This runner renders __STREAM_STUDIO_SCHEMA__ placeholders
# into temp files under $HOME/.tmp and then applies them by Method A.
# Default schema is stream_studio, but you may override:
#   export STREAM_STUDIO_SCHEMA=your_schema_name
# ============================================================

ROOT="$HOME/01.civilization-system/07.applications/06.streaming-app/StreamStudio/120.implementation/153.phase1-sql"
WORK="$HOME/.tmp/stream_studio_phase1_sql_apply"
SCHEMA_NAME="${STREAM_STUDIO_SCHEMA:-stream_studio}"

mkdir -p "$WORK"

if [ -z "${PERSONA_DATABASE_URL:-}" ]; then
  echo "ERROR: PERSONA_DATABASE_URL is not exported"
  exit 1
fi

render_sql() {
  src="$1"
  dst="$2"
  sed "s/__STREAM_STUDIO_SCHEMA__/$SCHEMA_NAME/g" "$src" > "$dst"
}

render_sql "$ROOT/153100_PHASE1_01_creator_project_and_member.sql" "$WORK/153100.sql"
render_sql "$ROOT/153110_PHASE1_02_upload_job.sql" "$WORK/153110.sql"
render_sql "$ROOT/153120_PHASE1_03_video_draft_marker_subtitle.sql" "$WORK/153120.sql"
render_sql "$ROOT/153130_PHASE1_04_publish_setting_and_request.sql" "$WORK/153130.sql"
render_sql "$ROOT/153140_PHASE1_05_runtime_and_dead_letter.sql" "$WORK/153140.sql"
render_sql "$ROOT/153150_PHASE1_06_audit_event.sql" "$WORK/153150.sql"
render_sql "$ROOT/153160_PHASE1_07_indexes_and_constraints.sql" "$WORK/153160.sql"

echo "============================================================"
echo "STREAM STUDIO PHASE 1 APPLY REVIEW RUNNER"
echo "============================================================"
echo "SCHEMA_NAME : $SCHEMA_NAME"
echo "ROOT        : $ROOT"
echo "WORK        : $WORK"
echo "DB TARGET   : PERSONA_DATABASE_URL"
echo "------------------------------------------------------------"
echo "REVIEW REQUIRED: 佐藤（DB担当）"
echo "------------------------------------------------------------"
echo "[RENDERED FILES]"
find "$WORK" -maxdepth 1 -type f | sort

echo "------------------------------------------------------------"
echo "[APPLY COMMAND PREVIEW]"
cat <<SQLPREVIEW
psql "\$PERSONA_DATABASE_URL" -v ON_ERROR_STOP=1 <<'SQL'
\\i $WORK/153100.sql
\\i $WORK/153110.sql
\\i $WORK/153120.sql
\\i $WORK/153130.sql
\\i $WORK/153140.sql
\\i $WORK/153150.sql
\\i $WORK/153160.sql
SQL
SQLPREVIEW

# Uncomment only after review:
# psql "$PERSONA_DATABASE_URL" -v ON_ERROR_STOP=1 <<SQL
# \i $WORK/153100.sql
# \i $WORK/153110.sql
# \i $WORK/153120.sql
# \i $WORK/153130.sql
# \i $WORK/153140.sql
# \i $WORK/153150.sql
# \i $WORK/153160.sql
# SQL
