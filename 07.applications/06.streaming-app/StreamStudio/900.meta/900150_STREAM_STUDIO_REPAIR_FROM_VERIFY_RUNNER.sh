#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/07.applications/06.streaming-app/StreamStudio"
TMP_DIR="$HOME/.tmp"
REPORT="$TMP_DIR/stream_studio_verify_audit_report.txt"
LIST_FILE="$TMP_DIR/stream_studio_file_list.txt"
INTEGRATED="$ROOT/00_STREAM_STUDIO_INTEGRATED.md"

DIRS="
$ROOT/010.constitution
$ROOT/020.architecture
$ROOT/030.model
$ROOT/040.screen-and-stateflow
$ROOT/050.api
$ROOT/060.integration
$ROOT/070.operations
$ROOT/080.policy
$ROOT/120.implementation
$ROOT/900.meta
"

mkdir -p "$TMP_DIR"

make_dir_overview_if_missing() {
  dir="$1"
  base="$(basename "$dir" | cut -d'.' -f1)"
  overview="$dir/${base}_OVERVIEW.md"

  [ -d "$dir" ] || mkdir -p "$dir"

  if [ ! -f "$overview" ]; then
    cat > "$overview" <<EOT
# ============================================================
# ${base} OVERVIEW
# ============================================================

status: repair-generated
layer: overview
system: applications
application: StreamStudio
directory: $(basename "$dir")
owner: Boss
prepared_by: Zero

summary:
Repair-generated overview placeholder for $(basename "$dir").
This file was auto-created by repair runner because it was missing.
EOT
    echo "REPAIRED OVERVIEW -> $overview"
  fi
}

make_dir_index_if_missing() {
  dir="$1"
  base="$(basename "$dir" | cut -d'.' -f1)"
  index="$dir/${base}_INDEX.md"

  [ -d "$dir" ] || mkdir -p "$dir"

  if [ ! -f "$index" ]; then
    {
      echo "# ============================================================"
      echo "# ${base} INDEX"
      echo "# ============================================================"
      echo
      echo "status: repair-generated"
      echo "layer: index"
      echo "system: applications"
      echo "application: StreamStudio"
      echo "directory: $(basename "$dir")"
      echo "owner: Boss"
      echo "prepared_by: Zero"
      echo
      echo "files:"
      find "$dir" -maxdepth 1 -type f ! -name "$(basename "$index")" ! -name "$(basename "$overview")" | sort | while IFS= read -r f; do
        echo "- $(basename "$f")"
      done
    } > "$index"
    echo "REPAIRED INDEX -> $index"
  fi
}

repair_root_overview_if_missing() {
  file="$ROOT/000_STREAM_STUDIO_OVERVIEW.md"
  if [ ! -f "$file" ]; then
    cat > "$file" <<'EOT'
# ============================================================
# STREAM STUDIO OVERVIEW
# ============================================================

status: repair-generated
layer: overview
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

summary:
Repair-generated root overview placeholder for StreamStudio.
This file was auto-created by repair runner because it was missing.
EOT
    echo "REPAIRED ROOT OVERVIEW -> $file"
  fi
}

repair_root_index() {
  file="$ROOT/000_STREAM_STUDIO_INDEX.md"
  {
    echo "# ============================================================"
    echo "# STREAM STUDIO INDEX"
    echo "# ============================================================"
    echo
    echo "status: canonical"
    echo "layer: index"
    echo "system: applications"
    echo "application: StreamStudio"
    echo "owner: Boss"
    echo "prepared_by: Zero"
    echo
    echo "root_files:"
    echo "- 000_STREAM_STUDIO_OVERVIEW.md"
    echo "- 000_STREAM_STUDIO_INDEX.md"
    echo "- 00_STREAM_STUDIO_INTEGRATED.md"
    echo
    echo "main_documents:"
    find "$ROOT" -type f ! -name "000_STREAM_STUDIO_INDEX.md" ! -name "000_STREAM_STUDIO_OVERVIEW.md" ! -name "00_STREAM_STUDIO_INTEGRATED.md" | sort | while IFS= read -r f; do
      rel="${f#$ROOT/}"
      echo "- $rel"
    done
  } > "$file"
  echo "REBUILT ROOT INDEX -> $file"
}

rebuild_dir_indexes() {
  for dir in $DIRS; do
    [ -d "$dir" ] || mkdir -p "$dir"
    base="$(basename "$dir" | cut -d'.' -f1)"
    overview="$dir/${base}_OVERVIEW.md"
    index="$dir/${base}_INDEX.md"

    make_dir_overview_if_missing "$dir"

    {
      echo "# ============================================================"
      echo "# ${base} INDEX"
      echo "# ============================================================"
      echo
      echo "status: canonical"
      echo "layer: index"
      echo "system: applications"
      echo "application: StreamStudio"
      echo "directory: $(basename "$dir")"
      echo "owner: Boss"
      echo "prepared_by: Zero"
      echo
      echo "files:"
      find "$dir" -maxdepth 1 -type f ! -name "$(basename "$index")" | sort | while IFS= read -r f; do
        echo "- $(basename "$f")"
      done
    } > "$index"

    echo "REBUILT DIR INDEX -> $index"
  done
}

rebuild_integrated() {
  find "$ROOT" -type f ! -name "00_STREAM_STUDIO_INTEGRATED.md" | sort > "$LIST_FILE"

  : > "$INTEGRATED"
  while IFS= read -r f; do
    [ -n "$f" ] || continue
    printf "\n<!-- BEGIN FILE: %s -->\n" "$f" >> "$INTEGRATED"
    cat "$f" >> "$INTEGRATED"
    printf "\n<!-- END FILE: %s -->\n\n" "$f" >> "$INTEGRATED"
  done < "$LIST_FILE"

  echo "REBUILT INTEGRATED -> $INTEGRATED"
}

echo "============================================================"
echo "STREAM STUDIO REPAIR START"
echo "============================================================"

repair_root_overview_if_missing
rebuild_dir_indexes
repair_root_index
rebuild_integrated

echo "============================================================"
echo "STREAM STUDIO REPAIR DONE"
echo "============================================================"
