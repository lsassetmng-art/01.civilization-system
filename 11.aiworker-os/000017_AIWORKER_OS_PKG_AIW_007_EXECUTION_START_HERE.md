# ============================================================
# AIWORKER OS PKG-AIW-007 EXECUTION START HERE
# ============================================================

status: execution-package
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
This file is the entry point for PKG-AIW-007.
It packages apply orchestration and verification starter support for AiworkerOS.

package_scope:
- package-order execution policy
- environment precheck
- apply orchestrator
- verification helper library
- package-level verification scripts
- full verification suite
- review-ready execution templates

explicit_note:
This package does not auto-apply to a database.
It generates the execution and verification files and expects
PERSONA_DATABASE_URL to be set later.

recommended_read_order:
- 120.implementation/121.execution-packages/pkg-aiw-007/000_README.md
- 120.implementation/121.execution-packages/pkg-aiw-007/001_apply_order_and_verification_scope.md
- 120.implementation/121.execution-packages/pkg-aiw-007/901_environment_precheck.sh
- 120.implementation/121.execution-packages/pkg-aiw-007/100_apply_pkg_aiw_001_to_006_in_order.sh
- 120.implementation/121.execution-packages/pkg-aiw-007/300_run_full_verification_suite.sh
