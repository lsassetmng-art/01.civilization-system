# ============================================================
# PKG-AIW-007 README
# ============================================================

status: execution-package
package_code: PKG-AIW-007
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
Executable packaging for apply orchestration and verification starter support in AiworkerOS.

package_contents:
- 001_apply_order_and_verification_scope.md
- 050_verify_lib.sh
- 901_environment_precheck.sh
- 100_apply_pkg_aiw_001_to_006_in_order.sh
- 200_verify_pkg_aiw_001_foundation.sh
- 210_verify_pkg_aiw_002_functions.sh
- 220_verify_pkg_aiw_003_payloads.sh
- 230_verify_pkg_aiw_004_security.sh
- 240_verify_pkg_aiw_005_replay_recovery.sh
- 250_verify_pkg_aiw_006_acceptance.sh
- 300_run_full_verification_suite.sh
- 998_PACKAGE_SCOPE_NOTE.md

execution_policy:
- additive only
- review with 佐藤(DB担当) before DB apply
- no destructive SQL
- no hidden prerequisites
- no raw-table grant widening
- no cx22073jw implementation in this package
- DB environment variable is PERSONA_DATABASE_URL

dependency_note:
- PKG-AIW-001 through PKG-AIW-006 should already exist as files before apply orchestration
- actual DB apply still requires reviewer confirmation

implemented_scope:
- environment precheck
- ordered package apply wrapper
- package-level verification scripts
- full verification suite entrypoint

non_scope:
- automatic release
- cross-track orchestration outside AiworkerOS
