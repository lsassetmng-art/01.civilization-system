# ============================================================
# OPERATION MODE POLICY
# ============================================================

status: canonical
layer: policy
domain: mode
subdomain: operation-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines policy rules for operation-facing modes.

scope:
Covers normal_execution, guided_execution,
degraded_execution, emergency_execution,
and maintenance_execution modes.

policy_focus:
- public-safe operational disclosure
- emergency and degraded control policy
- maintenance duration and exit policy
- prohibition of raw public exposure of internal operational detail

disclosure_matrix:
- normal_execution -> internal/public-safe impact as needed
- guided_execution -> internal
- degraded_execution -> public-safe impact plus internal detail
- emergency_execution -> restricted or sealed
- maintenance_execution -> public-safe notice plus internal detail

validation_rules:
- degraded or emergency mode requires authority basis.
- emergency_execution raw detail must not be publicly disclosed.
- maintenance_execution requires exit or review basis.
- public disclosures may describe service impact, not raw internal control logic.

failure_codes:
- OP_MODE_POLICY_AUTHORITY_REQUIRED
- OP_MODE_POLICY_PUBLIC_DETAIL_VIOLATION
- OP_MODE_POLICY_EXIT_BASIS_REQUIRED
- OP_MODE_POLICY_HISTORY_REQUIRED

example_scenarios:
- A degraded rail service may publicly disclose reduced capacity but not internal emergency controls.
