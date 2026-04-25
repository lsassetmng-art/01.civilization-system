#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="$HOME/01.civilization-system/10.staticart-os/121.db-implementation-prep/verification"

printf '\n============================================================\n'
printf 'STATICART PHASE1 FULL VERIFY START\n'
printf '============================================================\n'

bash "$BASE/911_staticart_phase1_env_check.sh"
bash "$BASE/912_staticart_phase1_schema_enum_verify.sh"
bash "$BASE/913_staticart_phase1_table_verify.sh"
bash "$BASE/914_staticart_phase1_index_verify.sh"
bash "$BASE/915_staticart_phase1_integrity_verify.sh"

printf '\n============================================================\n'
printf 'STATICART PHASE1 FULL VERIFY DONE\n'
printf '============================================================\n'
