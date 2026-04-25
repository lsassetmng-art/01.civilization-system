# ============================================================
# AIWORKER OS WB04 PAYLOAD JSON CONTRACT START HERE
# ============================================================

status: wb04-entry
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
This file is the entry point for WB04.
WB04 freezes the exact JSON payload contracts for request-side and result-side
surfaces inside AiworkerOS.

scope:
- command row payload JSON contract
- draft payload JSON contract
- staging normalized payload JSON contract
- official intake payload JSON contract
- business request / result event payload JSON contract
- result summary mapping contract
- replay-safe and sanitization rules

explicit_boundary:
- cx22073jw implementation remains external
- WB04 does not define cx22073jw SQL
- WB04 only defines payload contracts inside AiworkerOS and toward BusinessOS event edges

recommended_read_order:
- 060.integration/0600105_AIWORKER_BUSINESS_REQUEST_AND_RESULT_EVENT_JSON_CONTRACT_EXACT.md
- 090.interface/0900103_AIWORKER_COMMAND_AND_DRAFT_PAYLOAD_JSON_CONTRACT_EXACT.md
- 090.interface/0900104_AIWORKER_STAGING_AND_OFFICIAL_INTAKE_PAYLOAD_JSON_CONTRACT_EXACT.md
- 090.interface/0900105_AIWORKER_RESULT_EVENT_PAYLOAD_JSON_CONTRACT_EXACT.md
- 100.security/1000104_AIWORKER_PAYLOAD_SANITIZATION_AND_REPLAY_SAFETY_EXACT.md
- 110.infrastructure/1100113_AIWORKER_CANONICAL_PAYLOAD_SCHEMA_CATALOG_EXACT.md
- 110.infrastructure/1100114_AIWORKER_RESULT_SUMMARY_CODE_AND_PAYLOAD_MAPPING_EXACT.md
- 120.implementation/1200109_AIWORKER_WB04_APPLY_ORDER_EXACT.md
- 120.implementation/1200110_AIWORKER_WB04_ACCEPTANCE_GATE_EXACT.md
- 130.development/1300105_AIWORKER_WB04_NEXT_WORKBLOCK_EXACT.md

frozen_conclusions:
- payload surfaces are distinct by lifecycle stage
- staging payload is the normalized mutation candidate
- official intake payload is gate-bound and execution-ready
- result payload returns summary and correlation, not raw worker internals
- replay-safety and sanitization are mandatory
