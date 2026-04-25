#!/data/data/com.termux/files/usr/bin/bash
set -eu

printf '%s\n' '============================================================'
printf '%s\n' 'PKG-AIW-007 APPLY TEMPLATE NOTE'
printf '%s\n' '============================================================'
printf '%s\n' 'PKG-AIW-007 is an orchestrator / verification package.'
printf '%s\n' 'There is no direct SQL apply sequence for this package alone.'
printf '%s\n' 'Use:'
printf '%s\n' '  100_apply_pkg_aiw_001_to_006_in_order.sh'
printf '%s\n' 'and then:'
printf '%s\n' '  300_run_full_verification_suite.sh'
printf '%s\n' 'Review requirement: 佐藤(DB担当) review is required before DB apply.'
printf '%s\n' '============================================================'
