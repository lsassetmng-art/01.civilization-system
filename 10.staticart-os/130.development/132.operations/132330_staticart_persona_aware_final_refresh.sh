#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"
META="$ROOT/920.meta/067.persona_aware_final_refresh"

OUT_MD="$ROOT/000003_STATIC_ART_OS_PERSONA_AWARE_FINAL_REVIEW.md"
OUT_ORDER="$META/000001_STATIC_ART_OS_PERSONA_AWARE_FINAL_FILE_ORDER.txt"
OUT_REPORT="$META/000002_STATIC_ART_OS_PERSONA_AWARE_FINAL_REFRESH_REPORT.md"
TMP_LIST="$HOME/.tmp/staticart_persona_aware_final_refresh_list.txt"

mkdir -p "$META" "$HOME/.tmp"

find "$ROOT" -type f \
  \( -name "*.md" -o -name "*.yaml" -o -name "*.yml" -o -name "*.ts" -o -name "*.tsx" -o -name "*.sh" -o -name "*.sql" \) \
  ! -path "$ROOT/920.meta/*" \
  ! -path "$OUT_MD" \
  ! -path "$OUT_ORDER" \
  ! -path "$OUT_REPORT" \
  | sort > "$TMP_LIST"

cp "$TMP_LIST" "$OUT_ORDER"

{
  cat <<EOF2
# ============================================================
# STATIC ART OS PERSONA AWARE FINAL REVIEW
# ============================================================

status: integrated-canonical
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
- Persona-aware integrated review document for StaticArtOS standalone implementation-prep assets
- Includes base standalone pack plus Persona non-duplication and signed-snapshot rule layers
- Does not replace canonical source files

root: $ROOT
included_file_count: $(wc -l < "$TMP_LIST" | tr -d ' ')
file_order_source: $OUT_ORDER

persona_rule_summary:
- StaticArtOS consumes Persona signed snapshot references only
- StaticArtOS does not own Persona mutable canonical state
- StaticArtOS must not directly mutate Persona canonical state
- Public / external / exhibition display uses signed snapshot basis

EOF2

  while IFS= read -r file; do
    printf '\n<!-- BEGIN FILE: %s -->\n\n' "$file"
    printf '## FILE: %s\n\n' "$file"
    cat "$file"
    printf '\n\n<!-- END FILE: %s -->\n' "$file"
  done < "$TMP_LIST"
} > "$OUT_MD"

TOTAL_FILES="$(wc -l < "$TMP_LIST" | tr -d ' ')"
MD_COUNT="$(grep -c '\.md$' "$TMP_LIST" || true)"
YAML_COUNT="$(grep -Ec '\.(yaml|yml)$' "$TMP_LIST" || true)"
TS_COUNT="$(grep -Ec '\.(ts|tsx)$' "$TMP_LIST" || true)"
SH_COUNT="$(grep -c '\.sh$' "$TMP_LIST" || true)"
SQL_COUNT="$(grep -c '\.sql$' "$TMP_LIST" || true)"
BEGIN_COUNT="$(grep -c '<!-- BEGIN FILE:' "$OUT_MD" || true)"
END_COUNT="$(grep -c '<!-- END FILE:' "$OUT_MD" || true)"

cat > "$OUT_REPORT" <<EOF2
# ============================================================
# STATIC ART OS PERSONA AWARE FINAL REFRESH REPORT
# ============================================================

status: generated
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

outputs:
- integrated_md: $OUT_MD
- file_order: $OUT_ORDER
- report: $OUT_REPORT

counts:
- total_files: $TOTAL_FILES
- md_files: $MD_COUNT
- yaml_files: $YAML_COUNT
- ts_tsx_files: $TS_COUNT
- sh_files: $SH_COUNT
- sql_files: $SQL_COUNT
- begin_markers: $BEGIN_COUNT
- end_markers: $END_COUNT

notes:
- 920.meta contents were excluded from the integrated body source selection.
- The persona-aware integrated review excludes its own output files.
- Canonical source remains each original file under the StaticArtOS tree.

result:
- persona-aware final integrated refresh completed
EOF2

rm -f "$TMP_LIST"

printf '\n============================================================\n'
printf 'STATICART PERSONA AWARE FINAL REFRESH DONE\n'
printf '============================================================\n'
printf 'INTEGRATED: %s\n' "$OUT_MD"
printf 'FILE_ORDER: %s\n' "$OUT_ORDER"
printf 'REPORT    : %s\n' "$OUT_REPORT"
