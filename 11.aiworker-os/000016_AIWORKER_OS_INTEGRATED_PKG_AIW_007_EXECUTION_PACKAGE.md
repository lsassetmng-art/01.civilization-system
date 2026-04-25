# ============================================================
# AIWORKER OS INTEGRATED PKG-AIW-007 EXECUTION PACKAGE
# ============================================================

status: integrated
system: AiworkerOS
owner: Boss
prepared_by: Zero

package_files:
- 120.implementation/121.execution-packages/pkg-aiw-007/000_README.md
- 120.implementation/121.execution-packages/pkg-aiw-007/001_apply_order_and_verification_scope.md
- 120.implementation/121.execution-packages/pkg-aiw-007/050_verify_lib.sh
- 120.implementation/121.execution-packages/pkg-aiw-007/901_environment_precheck.sh
- 120.implementation/121.execution-packages/pkg-aiw-007/100_apply_pkg_aiw_001_to_006_in_order.sh
- 120.implementation/121.execution-packages/pkg-aiw-007/200_verify_pkg_aiw_001_foundation.sh
- 120.implementation/121.execution-packages/pkg-aiw-007/210_verify_pkg_aiw_002_functions.sh
- 120.implementation/121.execution-packages/pkg-aiw-007/220_verify_pkg_aiw_003_payloads.sh
- 120.implementation/121.execution-packages/pkg-aiw-007/230_verify_pkg_aiw_004_security.sh
- 120.implementation/121.execution-packages/pkg-aiw-007/240_verify_pkg_aiw_005_replay_recovery.sh
- 120.implementation/121.execution-packages/pkg-aiw-007/250_verify_pkg_aiw_006_acceptance.sh
- 120.implementation/121.execution-packages/pkg-aiw-007/300_run_full_verification_suite.sh
- 120.implementation/121.execution-packages/pkg-aiw-007/998_PACKAGE_SCOPE_NOTE.md

purpose:
Creates the review-ready apply orchestrator and verification starter package for AiworkerOS.

apply_note:
This bundle does not auto-apply to the database in this generation step.
Use the orchestrator only after DB environment binding and 佐藤(DB担当) review.

db_environment_rule:
- Persona-side DB work uses PERSONA_DATABASE_URL

dependency_note:
- PKG-AIW-001 through PKG-AIW-006 should exist before using this package
