#!/data/data/com.termux/files/usr/bin/bash
set -euo pipefail

BASE="$HOME/01.civilization-system/07.applications/04.life-app/InheritanceSupport"
TMP="$HOME/.tmp/inheritance_support_regen_check"
OUT="$BASE/000_INHERITANCE_SUPPORT_INTEGRATED_CANONICAL.md"
LIST="$TMP/source_md_list.txt"

mkdir -p "$TMP"
: > "$LIST"

find "$BASE" -type f \( -iname "*.md" \) \
  ! -name "000_INHERITANCE_SUPPORT_INTEGRATED_CANONICAL.md" \
  ! -name "999_REGENERATE_INHERITANCE_SUPPORT_INTEGRATED_CANONICAL.sh" \
  ! -path "*/.git/*" \
  | LC_ALL=C sort > "$LIST"

echo "============================================================"
echo "BASE"
echo "============================================================"
echo "$BASE"
echo
echo "============================================================"
echo "FOUND MD FILES"
echo "============================================================"
wc -l "$LIST"
echo
cat "$LIST" || true
echo

COUNT="$(wc -l < "$LIST" | tr -d ' ')"

if [ "$COUNT" = "0" ]; then
  echo "ERROR: no markdown files found under $BASE" >&2
  echo "HINT: create md files inside 010-080 folders first, or check BASE path." >&2
  exit 1
fi

{
  echo "# INHERITANCE SUPPORT INTEGRATED CANONICAL"
  echo
  echo "- app: InheritanceSupport"
  echo "- domain: 04.life-app"
  echo "- status: regenerated-integrated-canonical"
  echo "- source_root: $BASE"
  echo "- source_count: $COUNT"
  echo
  echo "## SOURCE FILES"
  echo
  while IFS= read -r f; do
    rel="${f#$BASE/}"
    echo "- \`$rel\`"
  done < "$LIST"
  echo
  echo "---"
  echo
} > "$OUT"

while IFS= read -r f; do
  rel="${f#$BASE/}"
  {
    echo "## FILE: $rel"
    echo
    cat "$f"
    echo
    echo "---"
    echo
  } >> "$OUT"
done < "$LIST"

echo "============================================================"
echo "DONE"
echo "============================================================"
ls -lh "$OUT"
echo
echo "OUTPUT: $OUT"
