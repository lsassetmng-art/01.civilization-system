# ============================================================
# AIWORKER OS WB03 CONTROLLED FUNCTION START HERE
# ============================================================

status: wb03-entry
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
This file is the entry point for WB03.
WB03 freezes the exact controlled-function contract for canonical truth mutation
inside AiworkerOS.

scope:
- official intake request acceptance contract
- controlled function catalog
- input and output contract
- gate validation contract
- state transition legality contract
- audit log write contract
- outbox emission contract
- business correlation write contract

explicit_boundary:
- cx22073jw implementation is handled in a separate chat
- WB03 only references cx22073jw as an external read-surface dependency
- WB03 does not add cx22073jw SQL objects

recommended_read_order:
- 060.integration/0600104_AIWORKER_BUSINESS_CORRELATION_AND_RESULT_RETURN_CONTRACT_EXACT.md
- 090.interface/0900102_AIWORKER_CONTROLLED_FUNCTION_INPUT_OUTPUT_INTERFACE_EXACT.md
- 100.security/1000103_AIWORKER_GATE_VALIDATION_AND_TRANSITION_GUARD_EXACT.md
- 110.infrastructure/1100110_AIWORKER_CONTROLLED_FUNCTION_SQL_CONTRACT_EXACT.md
- 110.infrastructure/1100111_AIWORKER_OFFICIAL_INTAKE_PROCESSING_AND_STATUS_MACHINE_EXACT.md
- 110.infrastructure/1100112_AIWORKER_AUDIT_AND_OUTBOX_EMISSION_CONTRACT_EXACT.md
- 120.implementation/1200107_AIWORKER_WB03_APPLY_ORDER_EXACT.md
- 120.implementation/1200108_AIWORKER_WB03_ACCEPTANCE_GATE_EXACT.md
- 130.development/1300104_AIWORKER_WB03_NEXT_WORKBLOCK_EXACT.md

frozen_conclusions:
- canonical worker truth is mutated only by controlled functions
- official intake is the only legal mutation request surface
- gate validation precedes mutation
- transition legality precedes mutation
- audit and outbox emission are mandatory mutation-side effects
- business correlation is written back as business-facing result linkage only
