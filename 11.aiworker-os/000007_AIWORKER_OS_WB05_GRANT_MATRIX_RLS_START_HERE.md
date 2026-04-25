# ============================================================
# AIWORKER OS WB05 GRANT MATRIX RLS START HERE
# ============================================================

status: wb05-entry
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
This file is the entry point for WB05.
WB05 freezes the exact grant matrix and RLS direction for AiworkerOS raw truth,
official intake, controlled-function execution, audit, and event delivery.

scope:
- database role family design
- raw table access matrix
- no-direct-read realization
- official intake write role separation
- controlled function execution boundary
- audit read/write boundary
- event outbox delivery-side grant boundary
- restricted and privileged access matrix
- RLS direction for tenant-sensitive truth families

explicit_boundary:
- cx22073jw implementation remains external
- WB05 does not add cx22073jw grant definitions
- WB05 only fixes AiworkerOS-side raw truth and execution privilege design

recommended_read_order:
- 100.security/1000105_AIWORKER_ROLE_FAMILY_AND_GRANT_MATRIX_EXACT.md
- 100.security/1000106_AIWORKER_RLS_DIRECTION_AND_NO_DIRECT_READ_POLICY_EXACT.md
- 110.infrastructure/1100115_AIWORKER_RAW_TABLE_ACCESS_LEDGER_EXACT.md
- 110.infrastructure/1100116_AIWORKER_OFFICIAL_INTAKE_FUNCTION_AND_EVENTOUTBOX_ACCESS_BOUNDARY_EXACT.md
- 110.infrastructure/1100117_AIWORKER_RESTRICTED_AND_PRIVILEGED_ACCESS_MATRIX_EXACT.md
- 120.implementation/1200111_AIWORKER_WB05_APPLY_ORDER_EXACT.md
- 120.implementation/1200112_AIWORKER_WB05_ACCEPTANCE_GATE_EXACT.md
- 130.development/1300106_AIWORKER_WB05_NEXT_WORKBLOCK_EXACT.md

frozen_conclusions:
- AI workers do not receive raw-table read grants
- raw truth is deny-by-default
- official intake write is role-separated from controlled-function execution
- controlled functions are the only canonical mutation executors
- event delivery may read outbox only through narrow delivery role
- restricted and privileged tables require narrower role families than standard review
