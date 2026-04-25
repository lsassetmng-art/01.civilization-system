#!/data/data/com.termux/files/usr/bin/bash
set -eu

PKG_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"

"$PKG_DIR/901_environment_precheck.sh"

printf '%s\n' '============================================================'
printf '%s\n' 'PKG-AIW-007 FULL VERIFICATION SUITE'
printf '%s\n' '============================================================'

"$PKG_DIR/200_verify_pkg_aiw_001_foundation.sh"
"$PKG_DIR/210_verify_pkg_aiw_002_functions.sh"
"$PKG_DIR/220_verify_pkg_aiw_003_payloads.sh"
"$PKG_DIR/230_verify_pkg_aiw_004_security.sh"
"$PKG_DIR/240_verify_pkg_aiw_005_replay_recovery.sh"
"$PKG_DIR/250_verify_pkg_aiw_006_acceptance.sh"

printf '%s\n' '============================================================'
printf '%s\n' 'PKG-AIW-007 FULL VERIFICATION SUITE FINISHED'
printf '%s\n' '============================================================'
