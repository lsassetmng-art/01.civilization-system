#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="/data/data/com.termux/files/home/01.civilization-system/10.staticart-os"
OUT_BASE="$ROOT/920.meta/119.persona_reference_final_design_closure_pack"

SOURCE_LIST="$OUT_BASE/000003_STATIC_ART_OS_PERSONA_REFERENCE_FINAL_DESIGN_CLOSURE_INTEGRATED_SOURCE_LIST.txt"
ROOT_INTEGRATED_MD="$ROOT/00_STATIC_ART_OS_PERSONA_REFERENCE_FINAL_DESIGN_CLOSURE_INTEGRATED.md"
OLD_META_INTEGRATED_MD="$OUT_BASE/000004_STATIC_ART_OS_PERSONA_REFERENCE_FINAL_DESIGN_CLOSURE_INTEGRATED.md"
REPORT_MD="$OUT_BASE/000005_STATIC_ART_OS_PERSONA_REFERENCE_FINAL_DESIGN_CLOSURE_INTEGRATED_REGEN_REPORT.md"
MISSING_TXT="$OUT_BASE/000006_STATIC_ART_OS_PERSONA_REFERENCE_FINAL_DESIGN_CLOSURE_INTEGRATED_MISSING.txt"

mkdir -p "$OUT_BASE"

: > "$MISSING_TXT"

TOTAL=0
FOUND=0
MISSING=0

while IFS= read -r file; do
  [ -z "$file" ] && continue
  TOTAL=$((TOTAL + 1))
  if [ -f "$file" ]; then
    FOUND=$((FOUND + 1))
  else
    printf '%s\n' "$file" >> "$MISSING_TXT"
    MISSING=$((MISSING + 1))
  fi
done < "$SOURCE_LIST"

if [ "$MISSING" -ne 0 ]; then
  cat > "$REPORT_MD" <<EOF2
# ============================================================
# STATIC ART OS PERSONA REFERENCE FINAL DESIGN CLOSURE INTEGRATED REGEN REPORT
# ============================================================

status: failed
system: StaticArtOS
owner: Boss
prepared_by: Zero

summary:
| Metric | Value |
|---|---:|
| total_sources | $TOTAL |
| found_sources | $FOUND |
| missing_sources | $MISSING |

artifacts:
- source_list: $SOURCE_LIST
- missing_txt: $MISSING_TXT
- root_integrated_md: $ROOT_INTEGRATED_MD

result:
- integrated regeneration aborted because some source files are missing
EOF2

  printf '\n============================================================\n'
  printf 'INTEGRATED REGEN ABORTED\n'
  printf '============================================================\n'
  printf 'REPORT  : %s\n' "$REPORT_MD"
  printf 'MISSING : %s\n' "$MISSING_TXT"
  printf '\n[MISSING HEAD]\n'
  sed -n '1,80p' "$MISSING_TXT"
  exit 1
fi

STAMP="$(date +%Y-%m-%dT%H:%M:%S%z)"

if [ -f "$OLD_META_INTEGRATED_MD" ]; then
  rm -f "$OLD_META_INTEGRATED_MD"
fi

cat > "$ROOT_INTEGRATED_MD" <<EOF2
# ============================================================
# STATIC ART OS PERSONA REFERENCE FINAL DESIGN CLOSURE INTEGRATED
# ============================================================

status: integrated
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero
generated_at: $STAMP

purpose:
Integrates the Persona reference final design closure bundle for
StaticArtOS into one readable document.

summary:
- This integrated file is generated from the canonical source list.
- It does not replace the original canonical per-file artifacts.
- It is placed directly under 10.staticart-os by storage rule.
- It is for consolidated reading, review, and transfer.

source_metrics:
| Metric | Value |
|---|---:|
| total_sources | $TOTAL |
| found_sources | $FOUND |
| missing_sources | $MISSING |

source_list_file:
- $SOURCE_LIST

EOF2

while IFS= read -r file; do
  [ -z "$file" ] && continue
  printf '\n\n<!-- BEGIN FILE: %s -->\n\n' "$file" >> "$ROOT_INTEGRATED_MD"
  cat "$file" >> "$ROOT_INTEGRATED_MD"
  printf '\n\n<!-- END FILE: %s -->\n' "$file" >> "$ROOT_INTEGRATED_MD"
done < "$SOURCE_LIST"

cat > "$REPORT_MD" <<EOF2
# ============================================================
# STATIC ART OS PERSONA REFERENCE FINAL DESIGN CLOSURE INTEGRATED REGEN REPORT
# ============================================================

status: generated
system: StaticArtOS
owner: Boss
prepared_by: Zero

summary:
| Metric | Value |
|---|---:|
| total_sources | $TOTAL |
| found_sources | $FOUND |
| missing_sources | $MISSING |

artifacts:
- source_list: $SOURCE_LIST
- root_integrated_md: $ROOT_INTEGRATED_MD
- report_md: $REPORT_MD

cleanup:
- removed_old_meta_integrated_if_present: yes

result:
- Persona reference final design closure integrated document regenerated successfully
- integrated document is stored directly under 10.staticart-os
EOF2

printf '\n============================================================\n'
printf 'STATIC ART OS PERSONA REFERENCE FINAL DESIGN CLOSURE INTEGRATED REGEN DONE\n'
printf '============================================================\n'
printf 'SOURCE  : %s\n' "$SOURCE_LIST"
printf 'OUTPUT  : %s\n' "$ROOT_INTEGRATED_MD"
printf 'REPORT  : %s\n' "$REPORT_MD"
printf '\n[REPORT HEAD]\n'
sed -n '1,120p' "$REPORT_MD"
