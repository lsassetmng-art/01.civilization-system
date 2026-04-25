#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="$HOME/01.civilization-system/10.staticart-os/122.api-implementation-prep/phase3-checks"

printf '\n============================================================\n'
printf 'STATICART PHASE3 FULL CHECK START\n'
printf '============================================================\n'

bash "$BASE/931_staticart_phase3_env_check.sh"
bash "$BASE/932_staticart_phase3_file_presence_check.sh"
bash "$BASE/933_staticart_phase3_binding_smoke_check.sh"

printf '\n============================================================\n'
printf 'STATICART PHASE3 FULL CHECK DONE\n'
printf '============================================================\n'
