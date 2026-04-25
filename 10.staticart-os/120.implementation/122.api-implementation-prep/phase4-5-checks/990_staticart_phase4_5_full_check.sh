#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="$HOME/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase4-5-checks"

printf '\n============================================================\n'
printf 'STATICART PHASE4_5 FULL CHECK START\n'
printf '============================================================\n'

bash "$BASE/941_staticart_phase4_5_env_check.sh"
bash "$BASE/942_staticart_phase4_5_file_presence_check.sh"
bash "$BASE/943_staticart_phase4_5_binding_smoke_check.sh"

printf '\n============================================================\n'
printf 'STATICART PHASE4_5 FULL CHECK DONE\n'
printf '============================================================\n'
