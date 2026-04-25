#!/data/data/com.termux/files/usr/bin/bash
set -e

BASE="/data/data/com.termux/files/home/01.civilization-system/02.persona-os"
OUT="$BASE/PERSONA_OS_CANONICAL_FULL.md"
TMPDIR="$HOME/.tmp/personaos_binding"

mkdir -p "$TMPDIR"
: > "$OUT"

append_file() {
  f="$1"
  [ ! -f "$f" ] && return 0
  printf '\n\n' >> "$OUT"
  printf '%s\n' "<!-- BEGIN FILE: $f -->" >> "$OUT"
  cat "$f" >> "$OUT"
  printf '\n%s\n' "<!-- END FILE: $f -->" >> "$OUT"
}

append_dir_files() {
  dir="$1"
  [ ! -d "$dir" ] && return 0

  find "$dir" -maxdepth 1 -type f \
    ! -name "*.moved.bak" \
    | sed 's#//*#/#g' | sort > "$TMPDIR/all.txt"

  grep '/.*INDEX\.md$' "$TMPDIR/all.txt" > "$TMPDIR/index.txt" || true
  grep '/.*OVERVIEW\.md$' "$TMPDIR/all.txt" > "$TMPDIR/overview.txt" || true
  grep -v '/.*INDEX\.md$' "$TMPDIR/all.txt" | grep -v '/.*OVERVIEW\.md$' > "$TMPDIR/rest.txt" || true

  while IFS= read -r f; do
    [ -n "$f" ] && append_file "$f"
  done < "$TMPDIR/index.txt"

  while IFS= read -r f; do
    [ -n "$f" ] && append_file "$f"
  done < "$TMPDIR/overview.txt"

  while IFS= read -r f; do
    [ -n "$f" ] && append_file "$f"
  done < "$TMPDIR/rest.txt"
}

# top-level layer files
append_dir_files "$BASE/000.rules"
append_dir_files "$BASE/010.constitution"
append_dir_files "$BASE/020.architecture"
append_dir_files "$BASE/030.model"
append_dir_files "$BASE/040.runtime"
append_dir_files "$BASE/050.flow"
append_dir_files "$BASE/060.integration"
append_dir_files "$BASE/070.operations"
append_dir_files "$BASE/080.policy"
append_dir_files "$BASE/090.interface"
append_dir_files "$BASE/100.security"
append_dir_files "$BASE/110.infrastructure"
append_dir_files "$BASE/120.implementation"
append_dir_files "$BASE/130.development"

# fixed layer/domain order
for LAYER in \
  "000.rules" \
  "010.constitution" \
  "020.architecture" \
  "030.model" \
  "040.runtime" \
  "050.flow" \
  "060.integration" \
  "070.operations" \
  "080.policy" \
  "090.interface" \
  "100.security" \
  "110.infrastructure" \
  "120.implementation" \
  "130.development"
do
  for DOMAIN in \
    "010.core" \
    "020.identity" \
    "030.state" \
    "040.memory" \
    "050.growth" \
    "060.builder" \
    "070.visual" \
    "080.runtime-hosting" \
    "090.snapshot" \
    "100.package" \
    "110.distribution" \
    "120.external-rights" \
    "130.access-license-transfer" \
    "140.integration" \
    "150.security" \
    "160.governance" \
    "170.operations-support"
  do
    append_dir_files "$BASE/$LAYER/$DOMAIN"
  done
done

echo "DONE: $OUT"
ls -lh "$OUT"
