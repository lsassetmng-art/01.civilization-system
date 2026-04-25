#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="$HOME/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase2-checks"

printf '\n============================================================\n'
printf 'STATICART PHASE2 FULL CHECK START\n'
printf '============================================================\n'

bash "$BASE/921_staticart_phase2_env_check.sh"
bash "$BASE/922_staticart_phase2_file_presence_check.sh"
bash "$BASE/923_staticart_phase2_binding_smoke_check.sh"

printf '\n============================================================\n'
printf 'STATICART PHASE2 FULL CHECK DONE\n'
printf '============================================================\n'
