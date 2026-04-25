# ============================================================
# AIWORKER OS WB06 REPLAY BACKFILL ACCEPTANCE START HERE
# ============================================================

status: wb06-entry
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
This file is the entry point for WB06.
WB06 freezes replay, backfill, repair, recovery, and acceptance-test direction
for AiworkerOS implementation-ready status.

scope:
- replay decision matrix
- idempotency key and redelivery policy
- backfill and repair runbook direction
- intake/outbox recovery direction
- acceptance test catalog
- implementation-ready freeze preconditions

explicit_boundary:
- cx22073jw implementation remains external
- WB06 does not add cx22073jw SQL
- WB06 focuses on AiworkerOS runtime safety, repairability, and testability

recommended_read_order:
- 050.flow/0500103_AIWORKER_REPLAY_AND_IDEMPOTENCY_DECISION_FLOW_EXACT.md
- 060.integration/0600106_AIWORKER_REPLAY_AND_RESULT_REDELIVERY_BOUNDARY_EXACT.md
- 070.operations/0700101_AIWORKER_BACKFILL_REPAIR_AND_RECOVERY_RUNBOOK_EXACT.md
- 090.interface/0900106_AIWORKER_REPLAY_DECISION_INPUT_OUTPUT_INTERFACE_EXACT.md
- 100.security/1000107_AIWORKER_REPLAY_BACKFILL_AND_RECOVERY_SAFETY_GUARD_EXACT.md
- 110.infrastructure/1100118_AIWORKER_REPLAY_DECISION_MATRIX_AND_LEDGER_EXACT.md
- 110.infrastructure/1100119_AIWORKER_ACCEPTANCE_TEST_CATALOG_EXACT.md
- 120.implementation/1200113_AIWORKER_WB06_APPLY_ORDER_EXACT.md
- 120.implementation/1200114_AIWORKER_WB06_ACCEPTANCE_GATE_EXACT.md
- 130.development/1300107_AIWORKER_IMPLEMENTATION_READY_FREEZE_PREP_EXACT.md

frozen_conclusions:
- replay is explicit and decision-driven
- request_hash lineage is mandatory
- no duplicate canonical mutation is allowed after successful apply
- redelivery may occur without remutation when prior success exists
- backfill and recovery are controlled operations, not freeform edits
- implementation-ready freeze requires WB01-WB06 consistency
