#!/data/data/com.termux/files/usr/bin/bash
set -eu

PKG_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
BASE_DIR="$(CDPATH= cd -- "$PKG_DIR/.." && pwd)"

"$PKG_DIR/901_environment_precheck.sh"

printf '%s\n' '============================================================'
printf '%s\n' 'PKG-AIW-007 APPLY ORCHESTRATOR'
printf '%s\n' '============================================================'
printf '%s\n' 'Review requirement: 佐藤(DB担当) review is required before DB apply.'
printf '%s\n' 'Applying packages in fixed order: 001 -> 006'
printf '%s\n' '============================================================'

"$BASE_DIR/pkg-aiw-001/901_apply_template_with_persona_database_url.sh"
"$BASE_DIR/pkg-aiw-002/901_apply_template_with_persona_database_url.sh"
"$BASE_DIR/pkg-aiw-003/901_apply_template_with_persona_database_url.sh"
"$BASE_DIR/pkg-aiw-004/901_apply_template_with_persona_database_url.sh"
"$BASE_DIR/pkg-aiw-005/901_apply_template_with_persona_database_url.sh"
"$BASE_DIR/pkg-aiw-006/901_apply_template_with_persona_database_url.sh"

printf '%s\n' '============================================================'
printf '%s\n' 'PKG-AIW-007 APPLY ORCHESTRATOR FINISHED'
printf '%s\n' '============================================================'
