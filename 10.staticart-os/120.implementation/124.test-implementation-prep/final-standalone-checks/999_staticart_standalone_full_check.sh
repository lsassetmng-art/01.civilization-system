#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="$HOME/01.civilization-system/10.staticart-os"
FINALBASE="$BASE/124.test-implementation-prep/final-standalone-checks"

printf '\n============================================================\n'
printf 'STATICART STANDALONE FULL CHECK START\n'
printf '============================================================\n'

bash "$FINALBASE/971_staticart_standalone_env_check.sh"
bash "$FINALBASE/972_staticart_standalone_file_presence_check.sh"
bash "$FINALBASE/973_staticart_standalone_phase_runner_presence_check.sh"
bash "$FINALBASE/974_staticart_standalone_summary_smoke_check.sh"

printf '\n============================================================\n'
printf 'OPTIONAL CHAINED PHASE CHECKS\n'
printf '============================================================\n'
printf 'To run full chained checks manually:\n'
printf '  bash "%s/121.db-implementation-prep/verification/990_staticart_phase1_full_verify.sh"\n' "$BASE"
printf '  bash "%s/122.api-implementation-prep/phase2-checks/990_staticart_phase2_full_check.sh"\n' "$BASE"
printf '  bash "%s/122.api-implementation-prep/phase3-checks/990_staticart_phase3_full_check.sh"\n' "$BASE"
printf '  bash "%s/122.api-implementation-prep/phase4-5-checks/990_staticart_phase4_5_full_check.sh"\n' "$BASE"
printf '  bash "%s/124.test-implementation-prep/phase6-7-checks/990_staticart_phase6_7_full_check.sh"\n' "$BASE"

printf '\n============================================================\n'
printf 'STATICART STANDALONE FULL CHECK DONE\n'
printf '============================================================\n'
