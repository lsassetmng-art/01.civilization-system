#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProjectFlow"
OUT="$BASE/00_PROJECT_FLOW_INTEGRATED.md"
TMP="/data/data/com.termux/files/home/.tmp/projectflow_integrated.tmp"

{
  cat "$BASE/000_PROJECT_FLOW_OVERVIEW.md"
  echo
  find "$BASE/000.rules" -maxdepth 1 -type f | sort | while read -r f; do echo; cat "$f"; done
  echo
  find "$BASE/010.constitution" -maxdepth 1 -type f | sort | while read -r f; do echo; cat "$f"; done
  echo
  find "$BASE/020.architecture" -maxdepth 1 -type f | sort | while read -r f; do echo; cat "$f"; done
  echo
  find "$BASE/030.model" -maxdepth 1 -type f | sort | while read -r f; do echo; cat "$f"; done
  echo
  find "$BASE/040.runtime" -maxdepth 1 -type f | sort | while read -r f; do echo; cat "$f"; done
  echo
  find "$BASE/050.flow" -maxdepth 1 -type f | sort | while read -r f; do echo; cat "$f"; done
  echo
  find "$BASE/060.integration" -maxdepth 1 -type f | sort | while read -r f; do echo; cat "$f"; done
  echo
  find "$BASE/070.operations" -maxdepth 1 -type f | sort | while read -r f; do echo; cat "$f"; done
  echo
  find "$BASE/080.policy" -maxdepth 1 -type f | sort | while read -r f; do echo; cat "$f"; done
  echo
  find "$BASE/090.interface" -maxdepth 1 -type f | sort | while read -r f; do echo; cat "$f"; done
  echo
  find "$BASE/090.meta" -maxdepth 1 -type f | sort | while read -r f; do echo; cat "$f"; done
  echo
  find "$BASE/100.security" -maxdepth 1 -type f | sort | while read -r f; do echo; cat "$f"; done
  echo
  find "$BASE/110.infrastructure" -maxdepth 1 -type f | sort | while read -r f; do echo; cat "$f"; done
  echo
  find "$BASE/120.implementation" -maxdepth 1 -type f | sort | while read -r f; do echo; cat "$f"; done
  echo
  find "$BASE/130.development" -maxdepth 1 -type f | sort | while read -r f; do echo; cat "$f"; done
} > "$TMP"

mv "$TMP" "$OUT"
chmod 700 "$BASE/00_BUILD_PROJECT_FLOW_INTEGRATED.sh"
echo "DONE: $OUT"
