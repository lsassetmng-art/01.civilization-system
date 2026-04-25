#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="$HOME/01.civilization-system/10.staticart-os/124.test-implementation-prep/phase6-7-checks"

printf '\n============================================================\n'
printf 'STATICART PHASE6_7 FULL CHECK START\n'
printf '============================================================\n'

bash "$BASE/961_staticart_phase6_7_env_check.sh"
bash "$BASE/962_staticart_phase6_ui_file_presence_check.sh"
bash "$BASE/963_staticart_phase7_test_file_presence_check.sh"
bash "$BASE/964_staticart_phase6_7_binding_smoke_check.sh"

printf '\n============================================================\n'
printf 'STATICART PHASE6_7 FULL CHECK DONE\n'
printf '============================================================\n'
