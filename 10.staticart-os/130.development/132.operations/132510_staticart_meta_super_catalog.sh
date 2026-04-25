#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

CATALOG="$ROOT/920.meta/082.meta_super_catalog/000001_STATIC_ART_OS_META_SUPER_CATALOG.md"
CATEGORY="$ROOT/920.meta/082.meta_super_catalog/000002_STATIC_ART_OS_META_CATEGORY_INDEX.md"
META_ROOT="$ROOT/920.meta"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART META SUPER CATALOG
============================================================

Usage:
  bash 132.operations/132510_staticart_meta_super_catalog.sh help
  bash 132.operations/132510_staticart_meta_super_catalog.sh list
  bash 132.operations/132510_staticart_meta_super_catalog.sh catalog
  bash 132.operations/132510_staticart_meta_super_catalog.sh categories
  bash 132.operations/132510_staticart_meta_super_catalog.sh dirs
  bash 132.operations/132510_staticart_meta_super_catalog.sh short
TEXT
}

show_list() {
  cat <<TEXT
$CATALOG
$CATEGORY
TEXT
}

show_catalog() {
  sed -n '1,220p' "$CATALOG"
}

show_categories() {
  sed -n '1,260p' "$CATEGORY"
}

show_dirs() {
  find "$META_ROOT" -mindepth 1 -maxdepth 1 -type d | sort
}

show_short() {
  printf '\n============================================================\n'
  printf 'META SUPER CATALOG\n'
  printf '============================================================\n'
  sed -n '1,200p' "$CATALOG"

  printf '\n============================================================\n'
  printf 'META CATEGORY INDEX\n'
  printf '============================================================\n'
  sed -n '1,220p' "$CATEGORY"
}

case "$MODE" in
  help|--help|-h)
    show_help
    ;;
  list)
    show_list
    ;;
  catalog)
    show_catalog
    ;;
  categories)
    show_categories
    ;;
  dirs)
    show_dirs
    ;;
  short)
    show_short
    ;;
  *)
    echo "ERROR: unknown mode -> $MODE"
    show_help
    exit 1
    ;;
esac
