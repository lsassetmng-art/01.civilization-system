#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="$(cd "$(dirname "$0")" && pwd)"

printf '\n============================================================\n'
printf 'STATICART PHASE1 FULL VERIFY START\n'
printf '============================================================\n'

bash "$BASE/911_staticart_phase1_env_check.sh"
for verifier in \
  912_staticart_phase1_schema_enum_verify.sh \
  913_staticart_phase1_table_verify.sh \
  914_staticart_phase1_index_verify.sh \
  915_staticart_phase1_integrity_verify.sh
do
  result="$(bash "$BASE/$verifier")" || {
    printf '%s\n' "$result"
    echo "ERROR: verification command failed: $verifier"
    exit 1
  }
  printf '%s\n' "$result"
  if printf '%s\n' "$result" | grep -Eq '^[[:space:]]*NG[[:space:]]'; then
    echo "ERROR: verification reported NG: $verifier"
    exit 1
  fi
done

printf '\n============================================================\n'
printf 'STATICART PHASE1 FULL VERIFY DONE\n'
printf '============================================================\n'
