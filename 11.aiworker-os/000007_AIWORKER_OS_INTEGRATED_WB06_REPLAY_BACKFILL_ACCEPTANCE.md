# ============================================================
# AIWORKER OS INTEGRATED WB06 REPLAY BACKFILL ACCEPTANCE
# ============================================================

status: integrated
system: AiworkerOS
owner: Boss
prepared_by: Zero
generated_at: 20260421_054625


<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS DIRECTORY AND LAYER RULE
# ============================================================

status: canonical
system: AiworkerOS
layer: 000.rules
owner: Boss
prepared_by: Zero

purpose:
Define the initial root structure and layer meaning for AiworkerOS.

root_rule:
AiworkerOS must follow the canonical CivilizationOS layer pattern.

allowed_layers:
- 000.rules
- 010.constitution
- 020.architecture
- 030.model
- 040.runtime
- 050.flow
- 060.integration
- 070.operations
- 080.policy
- 090.interface
- 100.security
- 110.infrastructure
- 120.implementation
- 130.development
- 900.society
- 910.civilization
- 920.meta
- 999.archive

placement_rule:
- constitutional truth goes in 010.constitution
- structural and boundary designs go in 020.architecture
- entity and state models go in 030.model
- runtime decision logic goes in 040.runtime
- sequence and lifecycle flows go in 050.flow
- cross-OS and cross-surface contracts go in 060.integration and 090.interface
- operational governance goes in 070.operations and 080.policy
- access separation and hard controls go in 100.security
- schema, table, view, and controlled function design go in 110.infrastructure
- build order and delivery sequence go in 120.implementation and 130.development

final_rule:
AiworkerOS keeps the same top-level layer semantics as CivilizationOS.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS RULES INDEX
# ============================================================

status: index
system: AiworkerOS
layer: 000.rules
owner: Boss
prepared_by: Zero

documents:
- 0000001_AIWORKER_OS_DIRECTORY_AND_LAYER_RULE.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS RULES OVERVIEW
# ============================================================

status: overview
system: AiworkerOS
layer: 000.rules
owner: Boss
prepared_by: Zero

purpose:
Defines root rules and structural layer policy for AiworkerOS.

current_scope:
- 0000001_AIWORKER_OS_DIRECTORY_AND_LAYER_RULE.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS START HERE
# ============================================================

status: initial-canonical-entry
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
This document is the first entry point for AiworkerOS.
AiworkerOS is a new independent OS under Civilization System.
It is the canonical owner of AI worker entity truth.

read_order:
- 000001_AIWORKER_OS_ROOT_AUTHORITY_MAP.md
- 010.constitution/0100001_AIWORKER_OS_CONSTITUTION.md
- 010.constitution/0100002_AIWORKER_OS_CANONICAL_BOUNDARY_CONSTITUTION.md
- 020.architecture/0200001_AIWORKER_OS_ARCHITECTURE.md
- 020.architecture/0200002_AIWORKER_OS_BUSINESSOS_AND_CX22073JW_ARCHITECTURE.md
- 030.model/011103000000001_AIWORKER_ENTITY_AND_SCOPE_MODEL.md
- 030.model/011103000000002_AIWORKER_TENDENCY_AND_GROWTH_MODEL.md
- 030.model/011103000000003_AIWORKER_ASSIGNMENT_AND_RESTRICTION_MODEL.md
- 110.infrastructure/1100001_AIWORKER_OS_SCHEMA_AND_VIEW_INFRASTRUCTURE.md
- 120.implementation/1200001_AIWORKER_OS_IMPLEMENTATION_SEQUENCE.md

fixed_conclusion:
- AiworkerOS is an independent OS.
- canonical schema is aiworker.
- BusinessOS owns commercial, contract, billing, approval, dispatch request, and ERP linkage truth.
- AiworkerOS owns worker entity truth, growth, tendency, capability, assignment entity state, repair, rebuild, and restricted handling truth.
- cx22073jw is an AI-worker-only read-view surface.
- AI workers do not read aiworker or business raw tables directly.

final_rule:
Read AiworkerOS as the worker-entity truth system,
not as a commercial wrapper.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS ROOT AUTHORITY MAP
# ============================================================

status: canonical-authority-map
system: AiworkerOS
owner: Boss
prepared_by: Zero

authority_summary:
- worker entity truth: AiworkerOS
- worker master: AiworkerOS
- worker rank attachment: AiworkerOS
- worker domain and role attachment: AiworkerOS
- company_style_profile attachment: AiworkerOS
- worker capability and growth truth: AiworkerOS
- company AI usage tendency truth: AiworkerOS
- user AI usage tendency truth: AiworkerOS
- worker assignment entity truth: AiworkerOS
- worker restricted and privileged handling truth: AiworkerOS
- commercial contract and pricing truth: BusinessOS
- order, subscription, billing, approval truth: BusinessOS
- dispatch request truth on business side: BusinessOS
- ERP linkage truth: BusinessOS
- AI worker read-only safe view family: cx22073jw

nonnegotiable_rules:
- BusinessOS must not own worker mutable entity truth.
- cx22073jw is not canonical storage.
- raw aiworker and business tables are not AI worker read surfaces.
- company_style_profile changes behavior tendency only, not authority ceilings.
- rank does not bypass gate, approval, audit, or destructive action restrictions.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS EXACT BUNDLE 01 START HERE
# ============================================================

status: exact-bundle-entry
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
This file is the entry point for Exact Bundle 01.
It freezes the first implementation-ready boundary for AiworkerOS.

recommended_read_order:
- 020.architecture/0200101_AIWORKER_TRUTH_SPLIT_ARCHITECTURE_EXACT.md
- 020.architecture/0200102_AIWORKER_RUNTIME_SURFACE_AND_LANE_ARCHITECTURE_EXACT.md
- 030.model/011103000000010_AIWORKER_CLASSIFICATION_AND_EFFECTIVE_BEHAVIOR_MODEL.md
- 030.model/011103000000011_AIWORKER_TENANCY_ASSIGNMENT_AND_AVAILABILITY_MODEL.md
- 030.model/011103000000012_AIWORKER_GROWTH_TENDENCY_AND_FIT_EXACT_MODEL.md
- 040.runtime/0400101_AIWORKER_EFFECTIVE_BEHAVIOR_AND_GATE_RUNTIME_EXACT_MODEL.md
- 050.flow/0500101_AIWORKER_COMMAND_DRAFT_STAGING_OFFICIAL_WRITE_FLOW_EXACT.md
- 050.flow/0500102_AIWORKER_DISPATCH_ASSIGNMENT_REPAIR_REBUILD_FLOW_EXACT.md
- 060.integration/0600101_AIWORKER_BUSINESSOS_INTERFACE_EXACT_DESIGN.md
- 060.integration/0600102_AIWORKER_CX22073JW_READ_VIEW_FAMILY_EXACT_DESIGN.md
- 090.interface/0900101_AIWORKER_EVENT_COMMAND_INTERFACE_EXACT_CATALOG.md
- 100.security/1000101_AIWORKER_ALLOWED_VIEW_GATE_AND_WRITE_SURFACE_SECURITY_MODEL.md
- 110.infrastructure/1100101_AIWORKER_SCHEMA_TABLE_LEDGER_EXACT.md
- 110.infrastructure/1100102_AIWORKER_ENUM_CODE_AND_ID_POLICY_EXACT.md
- 110.infrastructure/1100103_AIWORKER_CX22073JW_VIEW_FAMILY_COLUMN_SHAPE_EXACT.md
- 110.infrastructure/1100104_AIWORKER_CONTROLLED_FUNCTION_AND_OFFICIAL_INTAKE_EXACT.md
- 120.implementation/1200101_AIWORKER_IMPLEMENTATION_PHASE_PLAN_EXACT.md
- 120.implementation/1200102_AIWORKER_ACCEPTANCE_GATE_EXACT.md

frozen_conclusions:
- aiworker is the canonical worker-truth schema
- business owns commercial and ERP-side truth only
- cx22073jw is AI-worker-only read-view surface
- raw table direct read by AI workers is prohibited
- style changes behavior tendency only
- rank never bypasses gate or approval



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS WB01 SQL DDL START HERE
# ============================================================

status: wb01-entry
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
This file is the entry point for WB01.
WB01 freezes the exact SQL DDL policy for the aiworker canonical schema.

recommended_read_order:
- 110.infrastructure/1100105_AIWORKER_SQL_DDL_CORE_TABLES_EXACT.md
- 110.infrastructure/1100106_AIWORKER_SQL_DDL_CODE_TABLES_AND_SEEDS_EXACT.md
- 110.infrastructure/1100107_AIWORKER_SQL_DDL_INDEX_AND_CONSTRAINT_LEDGER_EXACT.md
- 120.implementation/1200103_AIWORKER_WB01_SQL_DDL_APPLY_ORDER_EXACT.md
- 120.implementation/1200104_AIWORKER_WB01_SQL_REVIEW_GATE_EXACT.md
- 130.development/1300102_AIWORKER_WB01_NEXT_WORKBLOCK_EXACT.md

frozen_conclusions:
- aiworker is the canonical SQL schema for worker truth
- code families are additive and table-driven
- AI workers never read raw aiworker tables
- cx22073jw read-view DDL is out of WB01 scope and belongs to WB02
- official mutation path remains controlled-function-only



<!-- ============================================================ -->
<!-- ============================================================ -->

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



<!-- ============================================================ -->
<!-- ============================================================ -->

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



<!-- ============================================================ -->
<!-- ============================================================ -->

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



<!-- ============================================================ -->
<!-- ============================================================ -->

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



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS ROOT INDEX
# ============================================================

status: index
system: AiworkerOS
owner: Boss
prepared_by: Zero

root_markdown_files:
- 000000_AIWORKER_OS_INTEGRATED_INITIAL.md
- 000000_AIWORKER_OS_START_HERE.md
- 000001_AIWORKER_OS_INTEGRATED_EXACT_BUNDLE_01.md
- 000001_AIWORKER_OS_ROOT_AUTHORITY_MAP.md
- 000002_AIWORKER_OS_EXACT_BUNDLE_01_START_HERE.md
- 000002_AIWORKER_OS_INTEGRATED_WB01_SQL_DDL.md
- 000003_AIWORKER_OS_WB01_SQL_DDL_START_HERE.md
- 000004_AIWORKER_OS_INTEGRATED_WB03_CONTROLLED_FUNCTION_CONTRACT.md
- 000005_AIWORKER_OS_INTEGRATED_WB04_PAYLOAD_JSON_CONTRACT.md
- 000005_AIWORKER_OS_WB03_CONTROLLED_FUNCTION_START_HERE.md
- 000006_AIWORKER_OS_INTEGRATED_WB05_GRANT_MATRIX_RLS.md
- 000006_AIWORKER_OS_WB04_PAYLOAD_JSON_CONTRACT_START_HERE.md
- 000007_AIWORKER_OS_WB05_GRANT_MATRIX_RLS_START_HERE.md
- 000008_AIWORKER_OS_WB06_REPLAY_BACKFILL_ACCEPTANCE_START_HERE.md

root_directories:
- 000.rules
- 010.constitution
- 020.architecture
- 030.model
- 040.runtime
- 050.flow
- 060.integration
- 070.operations
- 080.policy
- 090.interface
- 100.security
- 110.infrastructure
- 120.implementation
- 130.development
- 900.society
- 910.civilization
- 920.meta
- 999.archive



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS ROOT OVERVIEW
# ============================================================

status: overview
system: AiworkerOS
owner: Boss
prepared_by: Zero

summary:
AiworkerOS is the independent worker-truth OS for Ai(robot) employees.
WB06 freezes replay, backfill, repair, recovery, and acceptance-test direction,
bringing the system to implementation-ready freeze preparation status.

current_focus:
- replay and idempotency safety
- redelivery without remutation
- auditable recovery direction
- acceptance-test completeness
- implementation-ready freeze preparation



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS CONSTITUTION
# ============================================================

status: canonical
system: AiworkerOS
layer: 010.constitution
owner: Boss
prepared_by: Zero

purpose:
Define the constitutional identity of AiworkerOS.

constitutional_identity:
AiworkerOS is the independent operating system that canonically owns
AI worker entity truth for Civilization System.

fixed_scope:
- AI worker master
- worker lifecycle state
- worker rank attachment
- worker domain and role attachment
- worker capability and specialization
- worker growth and adaptation
- company AI usage tendency
- user AI usage tendency
- worker assignment entity truth
- worker repair and rebuild truth
- worker restricted and privileged handling truth

worker_class_rule:
All workers in AiworkerOS are Ai(robot) workers.
Ai(human) is not part of dispatched AI employee scope here.

rank_rule:
Official rank names already defined elsewhere must be reused as-is.
AiworkerOS must not redefine the official rank names in an incompatible way.

behavior_rule:
Effective worker behavior is not determined by rank alone.
It is determined by:
rank x domain x role x lane x app scope x allowed view family
x output policy x write surface x gate x mode x company_style_profile

final_rule:
AiworkerOS owns the worker.
Other systems may contract, request, reference, or consume the worker,
but they do not become worker-truth owners.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS CANONICAL BOUNDARY CONSTITUTION
# ============================================================

status: canonical
system: AiworkerOS
layer: 010.constitution
owner: Boss
prepared_by: Zero

purpose:
Fix the non-negotiable boundary between AiworkerOS, BusinessOS, and cx22073jw.

aiworkeros_canonical_truth:
- worker master and mutable worker state
- worker capability, growth, and proficiency
- company and user AI tendency truth
- worker assignment entity truth
- worker availability and queue truth
- repair, rebuild, restriction, and privilege truth

businessos_canonical_truth:
- commercial contract
- plan and pricing
- order and subscription
- approval record on business side
- billing record
- dispatch request on business side
- ERP linkage and business-facing result summary

cx22073jw_role:
- AI-worker-only read-view family
- masked and summarized read surface
- not canonical storage
- not a write truth surface

prohibitions:
- do not move worker entity truth back into BusinessOS
- do not open aiworker raw tables directly to AI workers
- do not open business raw tables directly to AI workers
- do not use company_style_profile as an authority override
- do not use rank as a gate bypass

final_rule:
write canonical is split by ownership.
read for AI workers is centralized through cx22073jw safe view families.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS CONSTITUTION INDEX
# ============================================================

status: index
system: AiworkerOS
layer: 010.constitution
owner: Boss
prepared_by: Zero

documents:
- 0100001_AIWORKER_OS_CONSTITUTION.md
- 0100002_AIWORKER_OS_CANONICAL_BOUNDARY_CONSTITUTION.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS CONSTITUTION OVERVIEW
# ============================================================

status: overview
system: AiworkerOS
layer: 010.constitution
owner: Boss
prepared_by: Zero

purpose:
Defines constitutional identity and non-negotiable boundaries.

current_scope:
- 0100001_AIWORKER_OS_CONSTITUTION.md
- 0100002_AIWORKER_OS_CANONICAL_BOUNDARY_CONSTITUTION.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS ARCHITECTURE
# ============================================================

status: canonical
system: AiworkerOS
layer: 020.architecture
owner: Boss
prepared_by: Zero

purpose:
Define the base architecture of AiworkerOS.

core_architecture:
1. Business-side systems create commercial and dispatch intent.
2. AiworkerOS receives controlled worker-side requests.
3. AiworkerOS resolves worker identity, eligibility, state, fit, and guard.
4. AiworkerOS writes canonical worker-side truth into aiworker schema.
5. cx22073jw publishes AI-worker-only safe view families for runtime reading.
6. Result summaries and controlled outcomes flow back to BusinessOS and other permitted consumers.

major_planes:
- canonical worker truth plane: aiworker
- commercial and approval plane: business
- AI-worker read plane: cx22073jw
- command and controlled write plane: intake rows and controlled functions

design_principles:
- entity truth and commercial truth are separated
- read lane and write lane are separated
- raw tables and safe runtime surfaces are separated
- rank, role, style, and gate are separated
- all worker types are modeled as domain and role variants of Ai(robot)

final_rule:
AiworkerOS is the canonical worker core,
BusinessOS is the commercial envelope,
and cx22073jw is the AI-worker read mask.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS BUSINESSOS AND CX22073JW ARCHITECTURE
# ============================================================

status: canonical
system: AiworkerOS
layer: 020.architecture
owner: Boss
prepared_by: Zero

purpose:
Define how AiworkerOS interfaces with BusinessOS and cx22073jw.

business_to_aiworker:
- BusinessOS owns contract, approval, billing, dispatch request, and ERP-side work order truth.
- BusinessOS sends controlled dispatch intent and approved work request surfaces to AiworkerOS.
- BusinessOS does not mutate worker entity truth directly.

aiworker_to_business:
- AiworkerOS returns assignment decisions, accepted worker references, execution state summaries, escalation summaries, and completion summaries.
- Returned data is business-facing and summary-safe, not raw worker internals.

aiworker_to_cx22073jw:
- AiworkerOS publishes safe read families derived from canonical worker truth.
- cx22073jw exposes only masked, summarized, role-scoped views.

ai_worker_read_rule:
AI workers read only cx22073jw safe families such as:
- VF200 worker profile safe
- VF210 company tendency safe
- VF220 user tendency safe
- VF230 growth summary
- VF240 assignment and availability safe
- VF250 affinity and fit safe
- VF260 audit and restriction context

final_rule:
BusinessOS and cx22073jw touch AiworkerOS through controlled boundary surfaces only.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER TRUTH SPLIT ARCHITECTURE EXACT
# ============================================================

status: exact-design
system: AiworkerOS
layer: 020.architecture
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact truth split among aiworker, business, and cx22073jw.

three_surface_architecture:
1. aiworker
   - canonical worker entity truth
   - mutable worker state
   - worker capability, growth, assignment, repair, rebuild
   - company and user AI tendency truth
   - restriction and privilege truth on worker side

2. business
   - commercial contract
   - pricing, order, subscription, billing
   - approval record on business side
   - dispatch request on business side
   - ERP linkage and business-facing summary

3. cx22073jw
   - AI-worker-only safe read families
   - masked and summarized view surface
   - role-specific, gate-aware read surface
   - not canonical storage
   - not general app read surface

hard_boundary:
- worker entity truth must not be copied back into business as canonical
- AI workers must not read aiworker raw tables
- AI workers must not read business raw tables
- other apps must not use cx22073jw AI-worker-only families
- commercial decisions do not mutate worker truth directly
- worker-side repair and rebuild do not rewrite commercial truth directly

write_path_principle:
- business creates request-side truth
- aiworker decides worker-side entity state
- controlled surfaces perform official write application
- result summary is returned to business as business-facing truth



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER RUNTIME SURFACE AND LANE ARCHITECTURE EXACT
# ============================================================

status: exact-design
system: AiworkerOS
layer: 020.architecture
owner: Boss
prepared_by: Zero

purpose:
Freeze runtime lanes, read families, and write surfaces.

runtime_lanes:
- OBSERVE
- ADVISE
- DRAFT
- STAGING
- OFFICIAL_REQUEST
- OFFICIAL_APPLY
- AUDIT_ONLY
- REPAIR
- REBUILD

lane_meaning:
- OBSERVE: read only, no proposal required
- ADVISE: read and explain, no write
- DRAFT: creates reversible draft rows only
- STAGING: prepares structured candidate data for review
- OFFICIAL_REQUEST: submits official intake for controlled application
- OFFICIAL_APPLY: restricted to controlled function execution only
- AUDIT_ONLY: records audit and review conclusions
- REPAIR: worker remediation path
- REBUILD: controlled reset or reconstruction path

allowed_surface_families:
read_surface:
- cx22073jw view family only

write_surface:
- command row
- draft row
- staging row
- official intake table
- controlled function

forbidden_surface:
- direct insert into aiworker business-truth tables
- direct update to raw worker truth by AI worker actor
- direct delete on worker-truth tables by rank-based privilege



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS ARCHITECTURE INDEX
# ============================================================

status: index
system: AiworkerOS
layer: 020.architecture
owner: Boss
prepared_by: Zero

documents:
- 0200001_AIWORKER_OS_ARCHITECTURE.md
- 0200002_AIWORKER_OS_BUSINESSOS_AND_CX22073JW_ARCHITECTURE.md
- 0200101_AIWORKER_TRUTH_SPLIT_ARCHITECTURE_EXACT.md
- 0200102_AIWORKER_RUNTIME_SURFACE_AND_LANE_ARCHITECTURE_EXACT.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS ARCHITECTURE OVERVIEW
# ============================================================

status: overview
system: AiworkerOS
layer: 020.architecture
owner: Boss
prepared_by: Zero

purpose:
Defines exact architecture, truth split, and runtime surface structure.

current_scope:
- 0200001_AIWORKER_OS_ARCHITECTURE.md
- 0200002_AIWORKER_OS_BUSINESSOS_AND_CX22073JW_ARCHITECTURE.md
- 0200101_AIWORKER_TRUTH_SPLIT_ARCHITECTURE_EXACT.md
- 0200102_AIWORKER_RUNTIME_SURFACE_AND_LANE_ARCHITECTURE_EXACT.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER ENTITY AND SCOPE MODEL
# ============================================================

status: canonical
system: AiworkerOS
layer: 030.model
owner: Boss
prepared_by: Zero

entities:
- worker_master
- worker_identity_projection
- worker_domain_role_binding
- worker_lifecycle_state
- worker_capability_matrix
- worker_specialization_profile
- worker_assignment_state
- worker_availability_state

domain_rule:
At minimum, AiworkerOS supports these worker domains:
- operations
- casual_conversation
- casual_relationship
- streaming
- game
- education
- qualification_prep
- utility_assist
- workforce_execution
- combat_unit
- clerical_execution
- clerical_control
- senior_clerical_control

role_rule:
Role is separate from domain.
Multiple roles may exist inside one domain.

rank_rule:
Rank exists as an attached official canonical class,
but official rank names are imported from the existing rank canon
and are not redefined here.

entity_truth_rule:
worker_id is the worker truth anchor.
All worker-side mutable truth binds to worker_id.

final_rule:
AiworkerOS models all AI workers as one unified worker framework
with domain and role variation,
not as disconnected species.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER TENDENCY AND GROWTH MODEL
# ============================================================

status: canonical
system: AiworkerOS
layer: 030.model
owner: Boss
prepared_by: Zero

entities:
- developer_company_style_policy
- company_ai_usage_tendency
- user_ai_usage_tendency
- worker_growth_profile
- worker_growth_event
- worker_capability_snapshot
- worker_domain_proficiency
- worker_role_proficiency

company_style_profile_enum:
- AGGRESSIVE
- BALANCED
- CONSERVATIVE

style_allowed_effect:
- proposal volume tendency
- degree of anticipation
- fallback richness
- escalation timing tendency
- tone sharpness or caution

style_forbidden_effect:
- rank ceiling override
- gate bypass
- approval bypass
- audit bypass
- destructive action unlock
- authority change unlock

growth_rule:
Growth changes proficiency, fit, recommendation quality, and recovery learning,
but growth does not silently rewrite core authority boundaries.

tendency_rule:
Company tendency and user tendency are worker-side operational inputs.
They remain canonical in AiworkerOS even when consumed elsewhere as summaries.

final_rule:
Tendency and growth are worker truth,
not temporary front-end preference caches.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER ASSIGNMENT AND RESTRICTION MODEL
# ============================================================

status: canonical
system: AiworkerOS
layer: 030.model
owner: Boss
prepared_by: Zero

entities:
- worker_dispatch_reservation
- worker_queue_membership
- worker_company_affinity
- worker_user_affinity
- worker_assignment_fit_profile
- worker_privileged_profile
- worker_restricted_handling_policy
- worker_exception_control_state
- worker_state_change_log
- worker_growth_audit_log
- worker_assignment_history
- worker_repair_history

assignment_rule:
Assignment entity truth lives in AiworkerOS.
BusinessOS may request assignment,
but request is not the same thing as canonical assignment fact.

restriction_rule:
Restricted and privileged handling are first-class canonical worker-side states.

availability_rule:
Availability, cooldown, maintenance, repair, and rebuild states are part of assignment eligibility.

final_rule:
Assignment is resolved from worker truth plus gate,
not from commercial request alone.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER CLASSIFICATION AND EFFECTIVE BEHAVIOR MODEL
# ============================================================

status: exact-model
system: AiworkerOS
layer: 030.model
owner: Boss
prepared_by: Zero

purpose:
Define the exact dimensions that determine worker behavior.

worker_classification_axes:
- rank
- domain
- role
- lane
- app_scope
- mode
- company_style_profile
- allowed_view_family
- output_policy
- write_surface
- gate

fixed_domain_examples:
- operations
- casual_conversation
- casual_relationship
- streaming
- game
- education
- qualification_prep
- utility_assist
- workforce_execution
- combat_unit
- clerical_execution
- clerical_control
- senior_clerical_control

mode_examples:
- STANDARD
- SAFE
- RESTRICTED
- MAINTENANCE
- TRAINING
- RECOVERY
- ESCALATION_PENDING

effective_behavior_formula:
effective_behavior =
rank x domain x role x lane x app_scope x mode
x company_style_profile x allowed_view_family
x output_policy x write_surface x gate

nonnegotiable_rules:
- rank and role are separate
- domain and role are separate
- style is not authority
- style cannot unlock forbidden write surface
- rank cannot bypass approval or audit
- rank cannot unlock destructive authority



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER TENANCY ASSIGNMENT AND AVAILABILITY MODEL
# ============================================================

status: exact-model
system: AiworkerOS
layer: 030.model
owner: Boss
prepared_by: Zero

purpose:
Freeze tenancy and assignment-side worker truth.

tenancy_dimensions:
- provider_company_id
- tenant_company_id
- tenant_user_id
- assigned_app_scope
- assigned_project_id
- assignment_lane_scope

assignment_state_values:
- UNASSIGNED
- RESERVED
- ASSIGNED
- ACTIVE
- PAUSED
- COOLDOWN
- MAINTENANCE
- REPAIR
- REBUILD
- RETIRED

availability_state_values:
- AVAILABLE
- BUSY
- RESERVED
- UNAVAILABLE
- MAINTENANCE
- REPAIR
- REBUILD
- SUSPENDED

queue_dimensions:
- queue_family
- queue_priority_band
- queue_position
- last_assignment_at
- concurrent_capacity
- current_load_band

hard_rule:
Assignment entity truth lives in aiworker even when the request originated in business.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER GROWTH TENDENCY AND FIT EXACT MODEL
# ============================================================

status: exact-model
system: AiworkerOS
layer: 030.model
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact model for tendency, growth, proficiency, and fit.

company_tendency_dimensions:
- initiative_preference
- explanation_depth_preference
- approval_strictness_tendency
- retry_tolerance_tendency
- escalation_preference
- automation_comfort_band

user_tendency_dimensions:
- interaction_comfort_band
- response_length_preference
- summary_preference
- support_style_preference
- initiative_preference
- review_frequency_preference

growth_dimensions:
- domain_proficiency_score
- role_proficiency_score
- recovery_learning_score
- suggestion_effectiveness_score
- stability_score
- escalation_accuracy_score

fit_dimensions:
- company_fit_score
- user_fit_score
- assignment_fit_score
- trust_alignment_score
- communication_fit_score

hard_rule:
Growth and tendency are worker-side truth and must not be re-canonicalized in business.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS MODEL INDEX
# ============================================================

status: index
system: AiworkerOS
layer: 030.model
owner: Boss
prepared_by: Zero

documents:
- 011103000000001_AIWORKER_ENTITY_AND_SCOPE_MODEL.md
- 011103000000002_AIWORKER_TENDENCY_AND_GROWTH_MODEL.md
- 011103000000003_AIWORKER_ASSIGNMENT_AND_RESTRICTION_MODEL.md
- 011103000000010_AIWORKER_CLASSIFICATION_AND_EFFECTIVE_BEHAVIOR_MODEL.md
- 011103000000011_AIWORKER_TENANCY_ASSIGNMENT_AND_AVAILABILITY_MODEL.md
- 011103000000012_AIWORKER_GROWTH_TENDENCY_AND_FIT_EXACT_MODEL.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS MODEL OVERVIEW
# ============================================================

status: overview
system: AiworkerOS
layer: 030.model
owner: Boss
prepared_by: Zero

purpose:
Defines exact worker classification, tendency, assignment, and fit models.

current_scope:
- 011103000000001_AIWORKER_ENTITY_AND_SCOPE_MODEL.md
- 011103000000002_AIWORKER_TENDENCY_AND_GROWTH_MODEL.md
- 011103000000003_AIWORKER_ASSIGNMENT_AND_RESTRICTION_MODEL.md
- 011103000000010_AIWORKER_CLASSIFICATION_AND_EFFECTIVE_BEHAVIOR_MODEL.md
- 011103000000011_AIWORKER_TENANCY_ASSIGNMENT_AND_AVAILABILITY_MODEL.md
- 011103000000012_AIWORKER_GROWTH_TENDENCY_AND_FIT_EXACT_MODEL.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS RUNTIME
# ============================================================

status: canonical
system: AiworkerOS
layer: 040.runtime
owner: Boss
prepared_by: Zero

runtime_formula:
effective_behavior =
rank x domain x role x lane x app_scope x allowed_view_family
x output_policy x write_surface x gate x mode x company_style_profile

runtime_lanes:
- advisory lane
- embedded help lane
- execution lane
- control lane
- restricted lane

read_runtime_rule:
AI workers obtain runtime context from cx22073jw safe view families only.

write_runtime_rule:
AI workers do not directly write canonical raw tables.
Writes must go through:
- command row
- draft row
- staging row
- official intake table
- controlled function

guard_rule:
Even high-rank workers remain bound by gate, approval, and audit rules.

final_rule:
Runtime intelligence is shaped by controlled context,
not by unrestricted raw database reach.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER EFFECTIVE BEHAVIOR AND GATE RUNTIME EXACT MODEL
# ============================================================

status: exact-runtime
system: AiworkerOS
layer: 040.runtime
owner: Boss
prepared_by: Zero

purpose:
Freeze runtime decision order for read, proposal, staging, and official request.

runtime_evaluation_order:
1. worker lifecycle status
2. mode
3. restriction and privileged context
4. assignment and availability state
5. allowed view family
6. lane
7. output policy
8. write surface
9. gate requirement
10. company_style_profile

stop_conditions:
- suspended worker
- retired worker
- unavailable mode for requested lane
- no allowed read family
- no allowed write surface
- missing approval requirement
- missing audit requirement
- restricted action outside gate

style_application_order:
Style is applied only after authority and gate checks pass.

escalation_triggers:
- restricted handling required
- official request rejected by gate
- missing mandatory reference data
- low confidence under strict policy
- privileged context required



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS RUNTIME INDEX
# ============================================================

status: index
system: AiworkerOS
layer: 040.runtime
owner: Boss
prepared_by: Zero

documents:
- 0400001_AIWORKER_OS_RUNTIME.md
- 0400101_AIWORKER_EFFECTIVE_BEHAVIOR_AND_GATE_RUNTIME_EXACT_MODEL.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS RUNTIME OVERVIEW
# ============================================================

status: overview
system: AiworkerOS
layer: 040.runtime
owner: Boss
prepared_by: Zero

purpose:
Defines runtime evaluation order and gate behavior.

current_scope:
- 0400001_AIWORKER_OS_RUNTIME.md
- 0400101_AIWORKER_EFFECTIVE_BEHAVIOR_AND_GATE_RUNTIME_EXACT_MODEL.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER DISPATCH AND RESULT FLOW
# ============================================================

status: canonical
system: AiworkerOS
layer: 050.flow
owner: Boss
prepared_by: Zero

flow:
1. BusinessOS records business-side dispatch request.
2. BusinessOS sends controlled dispatch intake to AiworkerOS.
3. AiworkerOS validates request scope and tenant context.
4. AiworkerOS evaluates candidate workers by domain, role, rank attachment, fit, availability, and restriction state.
5. AiworkerOS decides assignment, reservation, rejection, or escalation.
6. AiworkerOS writes worker-side canonical state into aiworker schema.
7. AiworkerOS publishes refreshed safe context families to cx22073jw.
8. Assigned worker reads cx22073jw view families.
9. Worker produces advice, action draft, staged output, or controlled execution request.
10. Controlled function and gate evaluate write intent.
11. Summary-safe result is emitted back to BusinessOS.
12. Audit, growth, fit, and recovery histories are updated in AiworkerOS.

flow_invariants:
- request truth and assignment truth are different records
- raw worker internals do not flow back to business-facing surfaces by default
- read lane is cx22073jw only
- write lane is controlled only

final_rule:
AiworkerOS resolves the worker,
BusinessOS resolves the business transaction,
and cx22073jw resolves the worker-readable context.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER COMMAND DRAFT STAGING OFFICIAL WRITE FLOW EXACT
# ============================================================

status: exact-flow
system: AiworkerOS
layer: 050.flow
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact multi-surface write flow for AI workers.

write_flow:
1. command row received
2. allowed read family resolved
3. draft row created if proposal path is allowed
4. staging row created if structured candidate is needed
5. official intake row created if gate-eligible
6. controlled function evaluates and applies
7. result event and audit log emitted

surface_purpose:
- command row: request instruction and declared lane
- draft row: reversible human-reviewable proposal
- staging row: normalized structured candidate payload
- official intake table: gate-bound application request
- controlled function: only legal mutation path to canonical truth

forbidden_paths:
- command row directly mutates canonical truth
- draft row directly mutates canonical truth
- staging row directly mutates canonical truth
- AI worker direct DML against canonical tables



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER DISPATCH ASSIGNMENT REPAIR REBUILD FLOW EXACT
# ============================================================

status: exact-flow
system: AiworkerOS
layer: 050.flow
owner: Boss
prepared_by: Zero

purpose:
Freeze the worker-side lifecycle flow from dispatch to recovery.

dispatch_lifecycle:
1. business creates dispatch request truth
2. aiworker evaluates worker eligibility
3. reservation state created
4. assignment state applied
5. active execution state begins
6. result summary prepared
7. cooldown or next queue placement applied

repair_rebuild_path:
- issue detected
- restriction or incident context attached
- worker enters REPAIR or REBUILD
- controlled review determines next state
- worker returns to AVAILABLE or becomes SUSPENDED or RETIRED

hard_rule:
Repair and rebuild state transitions are aiworker truth, not business truth.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER REPLAY AND IDEMPOTENCY DECISION FLOW EXACT
# ============================================================

status: exact-flow
system: AiworkerOS
layer: 050.flow
owner: Boss
prepared_by: Zero

purpose:
Freeze the canonical replay and idempotency decision flow.

idempotency_key_direction:
- request_hash
- business_request_id when present
- target_truth_surface
- controlled_function_code
- requested_transition_code
- worker_id or target entity key
- payload_version

decision_flow:
1. receive replay candidate
2. resolve request lineage by request_hash
3. locate prior intake and result state
4. compare target truth surface and transition intent
5. compare normalized candidate material
6. decide one of:
   - APPLY_NEW
   - NOOP_ALREADY_APPLIED
   - REDELIVER_RESULT_ONLY
   - REJECT_REPLAY_MISMATCH
   - REQUIRE_REVIEW
   - BLOCK_NONTERMINAL_INTAKE
7. write decision result code
8. emit redelivery only when allowed
9. never duplicate canonical mutation after successful prior apply

terminal_replay_outcomes:
- APPLY_NEW
  used_when:
  - no prior successful canonical apply exists

- NOOP_ALREADY_APPLIED
  used_when:
  - same idempotency lineage already applied
  - no new canonical mutation is required

- REDELIVER_RESULT_ONLY
  used_when:
  - prior canonical mutation already applied
  - result needs to be re-emitted or delivery retried

- REJECT_REPLAY_MISMATCH
  used_when:
  - request_hash lineage matches but target or normalized candidate differs incompatibly

- REQUIRE_REVIEW
  used_when:
  - replay candidate cannot be safely auto-resolved

- BLOCK_NONTERMINAL_INTAKE
  used_when:
  - earlier intake remains in nonterminal processing state

hard_rules:
- replay never bypasses gate
- replay never bypasses approval
- replay never bypasses audit
- redelivery without remutation is allowed only after safe equivalence check



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS FLOW INDEX
# ============================================================

status: index
system: AiworkerOS
layer: 050.flow
owner: Boss
prepared_by: Zero

documents:
- 0500001_AIWORKER_DISPATCH_AND_RESULT_FLOW.md
- 0500101_AIWORKER_COMMAND_DRAFT_STAGING_OFFICIAL_WRITE_FLOW_EXACT.md
- 0500102_AIWORKER_DISPATCH_ASSIGNMENT_REPAIR_REBUILD_FLOW_EXACT.md
- 0500103_AIWORKER_REPLAY_AND_IDEMPOTENCY_DECISION_FLOW_EXACT.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS FLOW OVERVIEW
# ============================================================

status: overview
system: AiworkerOS
layer: 050.flow
owner: Boss
prepared_by: Zero

purpose:
Defines canonical flows for write surfaces, dispatch, repair, replay, and rebuild.

current_scope:
- 0500001_AIWORKER_DISPATCH_AND_RESULT_FLOW.md
- 0500101_AIWORKER_COMMAND_DRAFT_STAGING_OFFICIAL_WRITE_FLOW_EXACT.md
- 0500102_AIWORKER_DISPATCH_ASSIGNMENT_REPAIR_REBUILD_FLOW_EXACT.md
- 0500103_AIWORKER_REPLAY_AND_IDEMPOTENCY_DECISION_FLOW_EXACT.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS BUSINESS INTERFACE
# ============================================================

status: canonical
system: AiworkerOS
layer: 060.integration
owner: Boss
prepared_by: Zero

business_to_aiworker_interfaces:
- approved_dispatch_request
- approved_work_order_reference
- contract_scope_reference
- business_approval_reference
- billing_visibility_reference
- ERP linkage reference when required

aiworker_to_business_interfaces:
- assignment_decision_summary
- worker_reservation_summary
- escalation_summary
- execution_result_summary
- completion_summary
- failure_summary
- repair_or_rebuild_notice_summary

boundary_rule:
BusinessOS is not allowed to receive unrestricted worker raw growth,
raw restricted state internals,
or unrestricted worker private internals.

final_rule:
Business interfaces are summary-safe and business-facing by design.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS CX22073JW VIEW FAMILY INTEGRATION
# ============================================================

status: canonical
system: AiworkerOS
layer: 060.integration
owner: Boss
prepared_by: Zero

view_families:
- VF200_AIWORKER_PROFILE_SAFE
- VF201_AIWORKER_ROLE_AND_DOMAIN_SAFE
- VF202_AIWORKER_STYLE_PROFILE_SAFE
- VF210_COMPANY_AI_TENDENCY_SAFE
- VF211_COMPANY_AI_OPERATIONAL_PREFERENCE_SAFE
- VF220_USER_AI_TENDENCY_SAFE
- VF221_USER_AI_RESPONSE_PREFERENCE_SAFE
- VF230_WORKER_GROWTH_SUMMARY
- VF231_WORKER_CAPABILITY_SNAPSHOT_SAFE
- VF232_WORKER_PROFICIENCY_SUMMARY
- VF240_WORKER_ASSIGNMENT_SAFE
- VF241_WORKER_AVAILABILITY_SAFE
- VF242_WORKER_QUEUE_AND_LOAD_SAFE
- VF250_WORKER_COMPANY_AFFINITY_SAFE
- VF251_WORKER_USER_AFFINITY_SAFE
- VF252_WORKER_ASSIGNMENT_FIT_SAFE
- VF260_WORKER_AUDIT_SUMMARY
- VF261_WORKER_PRIVILEGED_CONTEXT
- VF262_WORKER_RESTRICTED_HANDLING_CONTEXT

view_rules:
- views are derived from aiworker truth
- views are masked and summarized
- views are role-specific and lane-aware
- privileged families require explicit AI design finalization
- non-AI-worker apps must not use these view families as their default read plane

final_rule:
cx22073jw is the worker-readable mask, not the worker truth base.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER BUSINESSOS INTERFACE EXACT DESIGN
# ============================================================

status: exact-integration
system: AiworkerOS
layer: 060.integration
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact canonical interface between business and aiworker.

business_to_aiworker_events:
- AIWORKER_DISPATCH_REQUEST_CREATED
- AIWORKER_WORK_ORDER_UPDATED
- AIWORKER_APPROVAL_CONTEXT_UPDATED
- AIWORKER_CONTRACT_CONTEXT_ATTACHED
- AIWORKER_CANCEL_REQUESTED

required_business_fields:
- business_request_id
- tenant_company_id
- requested_domain
- requested_role
- requested_lane
- requested_app_scope
- priority_band
- approval_requirement_code
- billing_context_id
- erp_context_id
- request_created_at

aiworker_to_business_events:
- AIWORKER_ASSIGNMENT_DECIDED
- AIWORKER_ASSIGNMENT_REJECTED
- AIWORKER_EXECUTION_STATE_CHANGED
- AIWORKER_RESULT_SUMMARY_READY
- AIWORKER_ESCALATION_REQUIRED
- AIWORKER_REPAIR_STATE_CHANGED

required_aiworker_fields:
- worker_id
- worker_assignment_id
- business_request_id
- aiworker_status_code
- result_summary_code
- escalation_code
- repair_state_code
- emitted_at

hard_rule:
Business receives business-facing result truth and must not infer worker-side raw internals as canonical.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER CX22073JW READ VIEW FAMILY EXACT DESIGN
# ============================================================

status: exact-integration
system: AiworkerOS
layer: 060.integration
owner: Boss
prepared_by: Zero

purpose:
Freeze the AI-worker-only read families exposed through cx22073jw.

view_family_catalog:
- VF200_AIWORKER_PROFILE_SAFE
- VF201_AIWORKER_ROLE_AND_DOMAIN_SAFE
- VF202_AIWORKER_STYLE_PROFILE_SAFE
- VF210_COMPANY_AI_TENDENCY_SAFE
- VF211_COMPANY_AI_OPERATIONAL_PREFERENCE_SAFE
- VF220_USER_AI_TENDENCY_SAFE
- VF221_USER_AI_RESPONSE_PREFERENCE_SAFE
- VF230_WORKER_GROWTH_SUMMARY
- VF231_WORKER_CAPABILITY_SNAPSHOT_SAFE
- VF232_WORKER_PROFICIENCY_SUMMARY
- VF240_WORKER_ASSIGNMENT_SAFE
- VF241_WORKER_AVAILABILITY_SAFE
- VF242_WORKER_QUEUE_AND_LOAD_SAFE
- VF250_WORKER_COMPANY_AFFINITY_SAFE
- VF251_WORKER_USER_AFFINITY_SAFE
- VF252_WORKER_ASSIGNMENT_FIT_SAFE
- VF260_WORKER_AUDIT_SUMMARY
- VF261_WORKER_PRIVILEGED_CONTEXT
- VF262_WORKER_RESTRICTED_HANDLING_CONTEXT

global_rules:
- AI-worker-only
- not for general apps
- masked and summarized only
- role-specific filtering allowed
- privileged families require additional gate
- no raw secret or unrestricted internals exposed



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER BUSINESS CORRELATION AND RESULT RETURN CONTRACT EXACT
# ============================================================

status: exact-integration
system: AiworkerOS
layer: 060.integration
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact correlation and return contract between AiworkerOS canonical mutation
and BusinessOS-facing result linkage.

business_correlation_principle:
- business originates request-side truth
- aiworker owns worker-side canonical mutation
- aiworker returns business-facing correlation and result summary
- business must not infer raw internal mutation details as canonical worker truth

correlation_keys:
- business_request_id
- worker_id
- worker_assignment_state_id or equivalent target entity key
- intake_id
- controlled_function_code
- result_summary_code
- aiworker_status_code
- emitted_at

writeback_targets_inside_aiworker:
- official intake request status
- state change log
- event_outbox
- optional result correlation row if normalized ledger is used

return_event_types:
- AIWORKER_ASSIGNMENT_DECIDED
- AIWORKER_ASSIGNMENT_REJECTED
- AIWORKER_EXECUTION_STATE_CHANGED
- AIWORKER_RESULT_SUMMARY_READY
- AIWORKER_ESCALATION_REQUIRED
- AIWORKER_REPAIR_STATE_CHANGED
- AIWORKER_REBUILD_STATE_CHANGED

hard_rules:
- writeback does not create business truth directly inside business schema
- result return is event/correlation output, not cross-schema direct mutation
- billing, pricing, order, and ERP truth remain outside AiworkerOS canonical mutation scope



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER BUSINESS REQUEST AND RESULT EVENT JSON CONTRACT EXACT
# ============================================================

status: exact-integration
system: AiworkerOS
layer: 060.integration
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact JSON contract across the AiworkerOS <-> BusinessOS boundary.

business_to_aiworker_request_event_types:
- AIWORKER_DISPATCH_REQUEST_CREATED
- AIWORKER_WORK_ORDER_UPDATED
- AIWORKER_APPROVAL_CONTEXT_UPDATED
- AIWORKER_CONTRACT_CONTEXT_ATTACHED
- AIWORKER_CANCEL_REQUESTED

common_request_event_contract:
```json
{
  "event_type": "AIWORKER_DISPATCH_REQUEST_CREATED",
  "event_version": "1.0",
  "business_request_id": "uuid",
  "tenant_company_id": "uuid",
  "tenant_user_id": "uuid|null",
  "requested_domain": "text",
  "requested_role": "text",
  "requested_lane": "text",
  "requested_app_scope": "text",
  "priority_band": "text",
  "approval_requirement_code": "text|null",
  "billing_context_id": "uuid|null",
  "erp_context_id": "uuid|null",
  "request_created_at": "timestamptz",
  "request_payload": {
    "intent_code": "text",
    "reason_code": "text|null",
    "requested_transition_code": "text|null",
    "notes": "text|null"
  }
}
```

aiworker_to_business_result_event_types:
- AIWORKER_ASSIGNMENT_DECIDED
- AIWORKER_ASSIGNMENT_REJECTED
- AIWORKER_EXECUTION_STATE_CHANGED
- AIWORKER_RESULT_SUMMARY_READY
- AIWORKER_ESCALATION_REQUIRED
- AIWORKER_REPAIR_STATE_CHANGED
- AIWORKER_REBUILD_STATE_CHANGED

common_result_event_contract:
```json
{
  "event_type": "AIWORKER_ASSIGNMENT_DECIDED",
  "event_version": "1.0",
  "business_request_id": "uuid",
  "worker_id": "uuid",
  "worker_assignment_id": "uuid|null",
  "aiworker_status_code": "text",
  "result_summary_code": "text",
  "escalation_code": "text|null",
  "repair_state_code": "text|null",
  "rebuild_state_code": "text|null",
  "summary_payload": {
    "state_family_code": "text",
    "old_state_code": "text|null",
    "new_state_code": "text|null",
    "decision_reason_code": "text|null",
    "human_review_required_flag": "boolean"
  },
  "emitted_at": "timestamptz"
}
```

hard_rules:
- business-facing payloads must not contain raw worker-internal secret columns
- business-facing payloads must not contain direct cx22073jw view objects
- payload versions are explicit and additive



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER REPLAY AND RESULT REDELIVERY BOUNDARY EXACT
# ============================================================

status: exact-integration
system: AiworkerOS
layer: 060.integration
owner: Boss
prepared_by: Zero

purpose:
Freeze replay and result-redelivery behavior at the AiworkerOS <-> BusinessOS boundary.

integration_principles:
- BusinessOS may resend request-side events
- AiworkerOS must treat replay explicitly, not implicitly
- equivalent replay may produce NOOP_ALREADY_APPLIED or REDELIVER_RESULT_ONLY
- incompatible replay must not silently remutate worker truth

business_side_replay_examples:
- upstream timeout caused resend
- outbox delivery uncertain on business side
- manual retry of same request lineage
- operational redelivery request after consumer outage

redelivery_boundary:
- prior successful apply may re-emit business-facing summary event
- redelivery preserves original business_request_id lineage
- redelivery must not invent a new canonical mutation outcome
- redelivery must preserve result_summary_code family unless explicit corrected-summary flow exists

mismatch_boundary:
- same business_request_id but incompatible normalized candidate is not auto-apply
- mismatch produces review or reject path
- business-facing event must indicate replay/mismatch result class via result_code

hard_rules:
- BusinessOS does not force remutation by repeating the same request
- AiworkerOS remains source of truth for replay decision after intake normalization



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS INTEGRATION INDEX
# ============================================================

status: index
system: AiworkerOS
layer: 060.integration
owner: Boss
prepared_by: Zero

documents:
- 0600001_AIWORKER_OS_BUSINESS_INTERFACE.md
- 0600002_AIWORKER_OS_CX22073JW_VIEW_FAMILY_INTEGRATION.md
- 0600101_AIWORKER_BUSINESSOS_INTERFACE_EXACT_DESIGN.md
- 0600102_AIWORKER_CX22073JW_READ_VIEW_FAMILY_EXACT_DESIGN.md
- 0600104_AIWORKER_BUSINESS_CORRELATION_AND_RESULT_RETURN_CONTRACT_EXACT.md
- 0600105_AIWORKER_BUSINESS_REQUEST_AND_RESULT_EVENT_JSON_CONTRACT_EXACT.md
- 0600106_AIWORKER_REPLAY_AND_RESULT_REDELIVERY_BOUNDARY_EXACT.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS INTEGRATION OVERVIEW
# ============================================================

status: overview
system: AiworkerOS
layer: 060.integration
owner: Boss
prepared_by: Zero

purpose:
Defines BusinessOS and external dependency boundaries and contracts.

current_scope:
- 0600001_AIWORKER_OS_BUSINESS_INTERFACE.md
- 0600002_AIWORKER_OS_CX22073JW_VIEW_FAMILY_INTEGRATION.md
- 0600101_AIWORKER_BUSINESSOS_INTERFACE_EXACT_DESIGN.md
- 0600102_AIWORKER_CX22073JW_READ_VIEW_FAMILY_EXACT_DESIGN.md
- 0600104_AIWORKER_BUSINESS_CORRELATION_AND_RESULT_RETURN_CONTRACT_EXACT.md
- 0600105_AIWORKER_BUSINESS_REQUEST_AND_RESULT_EVENT_JSON_CONTRACT_EXACT.md
- 0600106_AIWORKER_REPLAY_AND_RESULT_REDELIVERY_BOUNDARY_EXACT.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS OPERATION POLICY
# ============================================================

status: canonical
system: AiworkerOS
layer: 070.operations
owner: Boss
prepared_by: Zero

operational_scope:
- worker onboarding
- activation and suspension
- cooldown and maintenance
- repair and rebuild
- availability and queue operation
- assignment rotation
- audit review
- exception handling

operation_rules:
- suspended workers are not assignment-eligible
- repair and rebuild states must be explicitly recorded
- cooldown and maintenance states affect assignment eligibility
- operational changes must append audit history
- emergency restriction updates must not skip logging

final_rule:
Worker operation is governed as stateful infrastructure,
not as ad hoc front-end behavior.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER BACKFILL REPAIR AND RECOVERY RUNBOOK EXACT
# ============================================================

status: exact-operations
system: AiworkerOS
layer: 070.operations
owner: Boss
prepared_by: Zero

purpose:
Freeze the operational runbook direction for backfill, repair, and recovery.

runbook_families:
- code-seed backfill
- history rebuild backfill
- missing outbox redelivery recovery
- stuck intake recovery
- audit gap investigation
- replay lineage repair
- restricted/privileged review escalation recovery

runbook_principles:
- additive first
- dry-run first
- scope declaration mandatory
- target-row identification mandatory
- result log mandatory
- rollback or compensating path mandatory
- review with 佐藤(DB担当) mandatory for SQL-affecting repair steps

controlled_backfill_direction:
- prefer controlled function path when canonical state could change
- use direct maintenance SQL only for metadata repair, delivery metadata, or clearly noncanonical repairs
- direct rewrite of canonical worker truth outside approved path is prohibited

stuck_intake_recovery_examples:
- RECEIVED too long without VALIDATING
- READY_TO_APPLY without execution progress
- APPLYING without terminal outcome due to interruption

event_delivery_recovery_examples:
- event emitted but delivery metadata missing
- delivery failed after canonical mutation succeeded
- result needs re-emission without remutation

repair_runbook_minimum_sections:
- incident identifier
- scope and target rows
- precheck query set
- dry-run logic
- execution logic
- postcheck query set
- rollback or compensating action
- audit note and approver

hard_rules:
- recovery must preserve canonical boundary
- repair must not become silent canonical rewrite
- backfill must be auditable and replay-safe



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS OPERATIONS INDEX
# ============================================================

status: index
system: AiworkerOS
layer: 070.operations
owner: Boss
prepared_by: Zero

documents:
- 0700001_AIWORKER_OS_OPERATION_POLICY.md
- 0700101_AIWORKER_BACKFILL_REPAIR_AND_RECOVERY_RUNBOOK_EXACT.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS OPERATIONS OVERVIEW
# ============================================================

status: overview
system: AiworkerOS
layer: 070.operations
owner: Boss
prepared_by: Zero

purpose:
Defines operational governance, backfill, repair, and recovery direction.

current_scope:
- 0700001_AIWORKER_OS_OPERATION_POLICY.md
- 0700101_AIWORKER_BACKFILL_REPAIR_AND_RECOVERY_RUNBOOK_EXACT.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS RANK STYLE AND ACCESS POLICY
# ============================================================

status: canonical
system: AiworkerOS
layer: 080.policy
owner: Boss
prepared_by: Zero

policy_axes:
- rank
- domain
- role
- lane
- company_style_profile
- allowed_view_family
- output_policy
- write_surface
- gate
- mode

hard_rules:
- rank is not equal to role
- rank is not equal to style
- style is not equal to authority
- domain specialization is not equal to unrestricted data access
- lane selection does not disable security policy

forbidden_shortcuts:
- no rank-based gate bypass
- no style-based approval bypass
- no role-based destructive unlock without gate
- no direct raw-table read because of domain fit

final_rule:
Access is granted by explicit policy composition,
not by single-axis privilege myths.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS POLICY INDEX
# ============================================================

status: index
system: AiworkerOS
layer: 080.policy
owner: Boss
prepared_by: Zero

documents:
- 0800001_AIWORKER_OS_RANK_STYLE_AND_ACCESS_POLICY.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS POLICY OVERVIEW
# ============================================================

status: overview
system: AiworkerOS
layer: 080.policy
owner: Boss
prepared_by: Zero

purpose:
Defines policy constraints for style, rank, access, and review.

current_scope:
- 0800001_AIWORKER_OS_RANK_STYLE_AND_ACCESS_POLICY.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS EVENT AND COMMAND INTERFACE
# ============================================================

status: canonical
system: AiworkerOS
layer: 090.interface
owner: Boss
prepared_by: Zero

command_surfaces:
- worker_command_row
- worker_draft_row
- worker_staging_row
- worker_official_intake_row
- controlled_write_function

interface_examples:
- BUSINESS_DISPATCH_REQUEST_ACCEPTED
- BUSINESS_DISPATCH_REQUEST_REJECTED
- AIWORKER_ASSIGNMENT_CREATED
- AIWORKER_ASSIGNMENT_ESCALATED
- AIWORKER_EXECUTION_SUMMARY_PUBLISHED
- AIWORKER_REPAIR_REQUIRED
- AIWORKER_REBUILD_REQUIRED
- AIWORKER_RESTRICTION_UPDATED

interface_rule:
Commands are accepted only through controlled surfaces.
Events are summary-safe outward signals, not raw-table leaks.

final_rule:
AiworkerOS interfaces are explicit, narrow, and audit-ready.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER EVENT COMMAND INTERFACE EXACT CATALOG
# ============================================================

status: exact-interface
system: AiworkerOS
layer: 090.interface
owner: Boss
prepared_by: Zero

purpose:
Freeze the command and event interface catalog used by AiworkerOS.

command_row_columns:
- command_id
- command_type
- source_system
- source_actor_type
- requested_lane
- requested_domain
- requested_role
- target_worker_id
- tenant_company_id
- tenant_user_id
- app_scope_code
- payload_ref
- requested_at
- requested_by
- command_status

draft_row_columns:
- draft_id
- command_id
- worker_id
- draft_type
- draft_summary
- draft_payload_ref
- draft_status
- created_at
- reviewed_at

staging_row_columns:
- staging_id
- draft_id
- staging_type
- normalized_payload_ref
- gate_code
- staging_status
- created_at

official_intake_columns:
- intake_id
- staging_id
- intake_type
- target_truth_surface
- controlled_function_code
- approval_ticket_id
- audit_required_flag
- intake_status
- submitted_at
- applied_at

event_columns:
- event_id
- event_type
- source_system
- source_entity_type
- source_entity_id
- related_business_request_id
- related_worker_id
- summary_code
- payload_ref
- emitted_at



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER CONTROLLED FUNCTION INPUT OUTPUT INTERFACE EXACT
# ============================================================

status: exact-interface
system: AiworkerOS
layer: 090.interface
owner: Boss
prepared_by: Zero

purpose:
Freeze the common input and output contract for controlled functions.

common_input_fields:
- p_intake_id
- p_controlled_function_code
- p_actor_type
- p_actor_id
- p_worker_id
- p_business_request_id
- p_gate_code
- p_requested_transition_code
- p_target_truth_surface
- p_payload_ref
- p_approval_ticket_id
- p_audit_required_flag
- p_reason_code
- p_requested_at

common_output_fields:
- o_success_flag
- o_result_code
- o_aiworker_status_code
- o_summary_code
- o_state_family_code
- o_old_state_code
- o_new_state_code
- o_related_entity_id
- o_event_id
- o_emitted_at

common_error_codes:
- ERR_INTAKE_NOT_FOUND
- ERR_FUNCTION_CODE_MISMATCH
- ERR_GATE_REQUIRED
- ERR_GATE_DENIED
- ERR_APPROVAL_REQUIRED
- ERR_AUDIT_REQUIRED
- ERR_INVALID_TARGET_SURFACE
- ERR_WORKER_NOT_FOUND
- ERR_WORKER_SUSPENDED
- ERR_WORKER_RETIRED
- ERR_ILLEGAL_TRANSITION
- ERR_CORRELATION_MISSING
- ERR_PAYLOAD_INVALID
- ERR_INTERNAL_WRITE_FAILED

function_specific_contracts:
- assignment state apply:
  required_input:
  - p_worker_id
  - p_business_request_id
  - p_requested_transition_code
  - p_gate_code
  output_focus:
  - state_family_code = ASSIGNMENT

- availability state apply:
  required_input:
  - p_worker_id
  - p_requested_transition_code
  - p_gate_code
  output_focus:
  - state_family_code = AVAILABILITY

- repair transition apply:
  required_input:
  - p_worker_id
  - p_requested_transition_code
  - p_reason_code
  - p_gate_code
  output_focus:
  - state_family_code = REPAIR

- rebuild transition apply:
  required_input:
  - p_worker_id
  - p_requested_transition_code
  - p_reason_code
  - p_gate_code
  output_focus:
  - state_family_code = REBUILD

- tendency update apply:
  required_input:
  - p_worker_id or target tendency key
  - p_payload_ref
  - p_gate_code
  output_focus:
  - state_family_code = TENDENCY

- growth event apply:
  required_input:
  - p_worker_id
  - p_payload_ref
  - p_reason_code
  output_focus:
  - state_family_code = GROWTH

- privileged context change apply:
  required_input:
  - p_worker_id
  - p_requested_transition_code
  - p_gate_code
  output_focus:
  - state_family_code = PRIVILEGED_CONTEXT

hard_rules:
- controlled functions receive normalized input only
- direct raw-table mutation parameters are prohibited
- result output is standardized even when a function has specialized logic



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER COMMAND AND DRAFT PAYLOAD JSON CONTRACT EXACT
# ============================================================

status: exact-interface
system: AiworkerOS
layer: 090.interface
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact JSON payload contracts for command_row and draft_row.

command_row_payload_principle:
- command payload is request-intent oriented
- command payload is not yet canonical mutation material
- command payload may be incomplete for execution
- command payload must be replay-identifiable

command_row_payload_contract:
```json
{
  "payload_version": "1.0",
  "command_type": "text",
  "source_system": "text",
  "source_actor_type": "text",
  "requested_lane": "text",
  "requested_domain": "text|null",
  "requested_role": "text|null",
  "target_worker_id": "uuid|null",
  "tenant_company_id": "uuid|null",
  "tenant_user_id": "uuid|null",
  "app_scope_code": "text|null",
  "business_request_id": "uuid|null",
  "reason_code": "text|null",
  "requested_transition_code": "text|null",
  "request_context": {
    "intent_code": "text",
    "note_text": "text|null",
    "source_reference_id": "text|null"
  },
  "idempotency": {
    "request_hash": "text",
    "client_request_id": "text|null"
  },
  "requested_at": "timestamptz",
  "requested_by": "text"
}
```

draft_row_payload_principle:
- draft payload is reversible and human-reviewable
- draft payload is richer than command payload
- draft payload still cannot mutate canonical truth directly

draft_row_payload_contract:
```json
{
  "payload_version": "1.0",
  "draft_type": "text",
  "worker_id": "uuid|null",
  "business_request_id": "uuid|null",
  "proposed_state_family_code": "text|null",
  "proposed_transition_code": "text|null",
  "proposal_summary": {
    "headline": "text",
    "summary_code": "text|null",
    "reason_code": "text|null"
  },
  "proposal_details": {
    "candidate_values": "object",
    "human_review_points": ["text"],
    "risk_flags": ["text"]
  },
  "source_command_ref": {
    "command_id": "uuid",
    "request_hash": "text"
  },
  "created_at": "timestamptz"
}
```

hard_rules:
- command payload and draft payload are separate contracts
- draft payload may add normalized hints but is still noncanonical
- neither payload may embed raw billing or ERP records



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER STAGING AND OFFICIAL INTAKE PAYLOAD JSON CONTRACT EXACT
# ============================================================

status: exact-interface
system: AiworkerOS
layer: 090.interface
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact JSON payload contracts for staging_row and official_intake_request.

staging_payload_principle:
- staging payload is the normalized mutation candidate
- staging payload has enough structure for gate validation
- staging payload is deterministic and replay-safe

staging_payload_contract:
```json
{
  "payload_version": "1.0",
  "staging_type": "text",
  "controlled_function_code": "text",
  "target_truth_surface": "text",
  "worker_id": "uuid|null",
  "business_request_id": "uuid|null",
  "state_family_code": "text",
  "requested_transition_code": "text|null",
  "normalized_candidate": {
    "target_key": "object",
    "new_values": "object",
    "close_previous_current_row": "boolean|null",
    "history_write_required": "boolean",
    "event_required": "boolean"
  },
  "gate_context": {
    "gate_code": "text",
    "approval_required_flag": "boolean",
    "audit_required_flag": "boolean",
    "restricted_flag": "boolean",
    "privileged_flag": "boolean"
  },
  "source_refs": {
    "command_id": "uuid|null",
    "draft_id": "uuid|null",
    "request_hash": "text"
  },
  "created_at": "timestamptz"
}
```

official_intake_payload_principle:
- official intake payload is gate-bound execution material
- official intake payload is the direct function-input source
- only controlled functions may process it

official_intake_payload_contract:
```json
{
  "payload_version": "1.0",
  "intake_type": "text",
  "controlled_function_code": "text",
  "target_truth_surface": "text",
  "worker_id": "uuid|null",
  "business_request_id": "uuid|null",
  "gate_code": "text",
  "approval_ticket_id": "text|null",
  "audit_required_flag": "boolean",
  "reason_code": "text|null",
  "execution_candidate": {
    "requested_transition_code": "text|null",
    "target_key": "object",
    "new_values": "object"
  },
  "correlation": {
    "staging_id": "uuid",
    "request_hash": "text",
    "client_request_id": "text|null"
  },
  "submitted_at": "timestamptz",
  "submitted_by": "text"
}
```

hard_rules:
- official intake payload must be derivable from staging payload
- official intake payload must not include freeform undocumented fields
- unknown fields must be rejected or dropped under fixed sanitization policy



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER RESULT EVENT PAYLOAD JSON CONTRACT EXACT
# ============================================================

status: exact-interface
system: AiworkerOS
layer: 090.interface
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact JSON payload contract for AiworkerOS result events and summaries.

result_event_payload_principle:
- result payload is business-facing and replay-safe
- result payload returns correlation, status, and summary
- result payload is not a raw mirror of canonical tables

result_event_payload_contract:
```json
{
  "payload_version": "1.0",
  "event_type": "text",
  "event_id": "uuid",
  "business_request_id": "uuid|null",
  "worker_id": "uuid|null",
  "related_entity_id": "uuid|null",
  "aiworker_status_code": "text",
  "result_code": "text",
  "result_summary_code": "text",
  "state_family_code": "text|null",
  "old_state_code": "text|null",
  "new_state_code": "text|null",
  "decision_context": {
    "approval_used_flag": "boolean",
    "audit_written_flag": "boolean",
    "escalation_required_flag": "boolean"
  },
  "summary_payload": {
    "headline": "text",
    "detail_code": "text|null",
    "reason_code": "text|null",
    "human_review_required_flag": "boolean"
  },
  "emitted_at": "timestamptz"
}
```

result_summary_payload_bands:
- MINIMAL
- STANDARD
- REVIEW
- RESTRICTED_NOTICE

band_meaning:
- MINIMAL:
  only summary and correlation

- STANDARD:
  summary plus state-family result

- REVIEW:
  includes human review indicators

- RESTRICTED_NOTICE:
  signals restriction without exposing restricted raw detail

hard_rules:
- result payload must not expose raw payload_ref
- result payload must not expose direct unrestricted restricted-policy text
- result payload must not expose raw command/draft/staging/intake internals



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER REPLAY DECISION INPUT OUTPUT INTERFACE EXACT
# ============================================================

status: exact-interface
system: AiworkerOS
layer: 090.interface
owner: Boss
prepared_by: Zero

purpose:
Freeze the standardized input and output contract for replay-decision handling.

replay_decision_input_fields:
- p_request_hash
- p_business_request_id
- p_worker_id
- p_target_truth_surface
- p_controlled_function_code
- p_requested_transition_code
- p_payload_version
- p_payload_ref
- p_requested_at
- p_actor_type
- p_actor_id

replay_decision_output_fields:
- o_replay_decision_code
- o_result_code
- o_existing_intake_id
- o_existing_related_entity_id
- o_existing_event_id
- o_redelivery_allowed_flag
- o_review_required_flag
- o_decided_at

replay_decision_codes:
- APPLY_NEW
- NOOP_ALREADY_APPLIED
- REDELIVER_RESULT_ONLY
- REJECT_REPLAY_MISMATCH
- REQUIRE_REVIEW
- BLOCK_NONTERMINAL_INTAKE

error_codes:
- ERR_REPLAY_LINEAGE_NOT_FOUND
- ERR_REPLAY_EQUIVALENCE_UNCLEAR
- ERR_REPLAY_MISMATCH
- ERR_NONTERMINAL_INTAKE_EXISTS
- ERR_REDELIVERY_NOT_ALLOWED
- ERR_INTERNAL_REPLAY_CHECK_FAILED

hard_rules:
- replay decision output is standardized
- replay decision must be recordable for audit
- replay decision must not itself mutate canonical worker truth unless APPLY_NEW path continues into controlled function flow



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS INTERFACE INDEX
# ============================================================

status: index
system: AiworkerOS
layer: 090.interface
owner: Boss
prepared_by: Zero

documents:
- 0900001_AIWORKER_OS_EVENT_AND_COMMAND_INTERFACE.md
- 0900101_AIWORKER_EVENT_COMMAND_INTERFACE_EXACT_CATALOG.md
- 0900102_AIWORKER_CONTROLLED_FUNCTION_INPUT_OUTPUT_INTERFACE_EXACT.md
- 0900103_AIWORKER_COMMAND_AND_DRAFT_PAYLOAD_JSON_CONTRACT_EXACT.md
- 0900104_AIWORKER_STAGING_AND_OFFICIAL_INTAKE_PAYLOAD_JSON_CONTRACT_EXACT.md
- 0900105_AIWORKER_RESULT_EVENT_PAYLOAD_JSON_CONTRACT_EXACT.md
- 0900106_AIWORKER_REPLAY_DECISION_INPUT_OUTPUT_INTERFACE_EXACT.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS INTERFACE OVERVIEW
# ============================================================

status: overview
system: AiworkerOS
layer: 090.interface
owner: Boss
prepared_by: Zero

purpose:
Defines exact command, draft, staging, intake, event, payload, and replay interfaces.

current_scope:
- 0900001_AIWORKER_OS_EVENT_AND_COMMAND_INTERFACE.md
- 0900101_AIWORKER_EVENT_COMMAND_INTERFACE_EXACT_CATALOG.md
- 0900102_AIWORKER_CONTROLLED_FUNCTION_INPUT_OUTPUT_INTERFACE_EXACT.md
- 0900103_AIWORKER_COMMAND_AND_DRAFT_PAYLOAD_JSON_CONTRACT_EXACT.md
- 0900104_AIWORKER_STAGING_AND_OFFICIAL_INTAKE_PAYLOAD_JSON_CONTRACT_EXACT.md
- 0900105_AIWORKER_RESULT_EVENT_PAYLOAD_JSON_CONTRACT_EXACT.md
- 0900106_AIWORKER_REPLAY_DECISION_INPUT_OUTPUT_INTERFACE_EXACT.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS SECURITY BOUNDARY
# ============================================================

status: canonical
system: AiworkerOS
layer: 100.security
owner: Boss
prepared_by: Zero

security_principles:
- separate raw truth from worker-readable surfaces
- separate read planes from write planes
- separate commercial truth from worker truth
- separate style behavior from authority
- separate rank from destructive permission

hard_controls:
- AI workers do not directly read aiworker raw tables
- AI workers do not directly read business raw tables
- AI workers use cx22073jw safe families only
- privileged and restricted contexts require explicit gating
- all controlled writes must be auditable

final_rule:
Security in AiworkerOS is architecture,
not a late-stage patch.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER ALLOWED VIEW GATE AND WRITE SURFACE SECURITY MODEL
# ============================================================

status: exact-security
system: AiworkerOS
layer: 100.security
owner: Boss
prepared_by: Zero

purpose:
Freeze the security rules for read family gating and write-surface control.

security_principles:
- least read
- no raw worker truth exposure to AI workers
- no raw business truth exposure to AI workers
- explicit gate before privileged read family
- explicit gate before official apply
- audit requirement precedes destructive or authority-like mutation
- style never changes authority

gate_families:
- GATE_STANDARD
- GATE_RESTRICTED
- GATE_PRIVILEGED
- GATE_APPROVAL_REQUIRED
- GATE_AUDIT_REQUIRED
- GATE_REPAIR
- GATE_REBUILD

write_surface_authority:
- command row: always non-canonical
- draft row: always non-canonical
- staging row: always non-canonical
- official intake: mutation request only
- controlled function: only canonical mutation executor

hard_rule:
No worker rank, role, or style may independently unlock forbidden write surfaces.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER GATE VALIDATION AND TRANSITION GUARD EXACT
# ============================================================

status: exact-security
system: AiworkerOS
layer: 100.security
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact validation order before a controlled function may mutate canonical truth.

validation_order:
1. official intake row exists
2. intake status is eligible for processing
3. controlled function code matches requested intake route
4. target truth surface is allowed for that function
5. worker exists when worker-targeted mutation is required
6. worker lifecycle state permits mutation
7. required gate is present
8. approval requirement is satisfied
9. audit requirement is satisfied
10. requested transition is legal from current state
11. payload reference or normalized data exists when required
12. correlation requirement is satisfied for business-originated actions

worker_lifecycle_stop_conditions:
- suspended_flag = true and function is not explicit recovery path
- retired_flag = true
- lifecycle_status prohibits requested mutation family

gate_requirements:
- assignment or availability standard path:
  minimum_gate:
  - GATE_STANDARD

- repair path:
  minimum_gate:
  - GATE_REPAIR

- rebuild path:
  minimum_gate:
  - GATE_REBUILD

- privileged context change:
  minimum_gate:
  - GATE_PRIVILEGED

- restricted handling related mutation:
  minimum_gate:
  - GATE_RESTRICTED

approval_rules:
- if intake has approval_ticket_id requirement, missing approval blocks mutation
- rank, role, and style cannot substitute for approval

audit_rules:
- if audit_required_flag = true, audit write is mandatory
- mutation success without audit side effect is invalid

transition_guard_principle:
- legality is determined by explicit state-family transition tables
- no implicit freeform transition is allowed
- final/destructive/authority-like mutation must have explicit allowed path

hard_rules:
- style does not widen gate
- rank does not bypass transition legality
- controlled function must fail closed on missing validation data



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER PAYLOAD SANITIZATION AND REPLAY SAFETY EXACT
# ============================================================

status: exact-security
system: AiworkerOS
layer: 100.security
owner: Boss
prepared_by: Zero

purpose:
Freeze the sanitization and replay-safety rules for all WB04 payload contracts.

sanitization_rules:
- reject undocumented top-level keys on official intake payload
- normalize nullability exactly as contract defines
- trim or reject oversized freeform text fields by fixed limits
- reject embedded raw business records
- reject embedded raw worker secrets
- reject payload shapes that attempt to override gate or authority through style or rank fields

replay_safety_rules:
- command payload must carry request_hash
- staging and intake payload must preserve request_hash lineage
- same request_hash plus same target surface plus same transition is idempotency candidate
- replay must not duplicate canonical mutation when prior applied result exists
- replay detection outcome must be representable as result_code

payload_version_rules:
- every payload has explicit payload_version
- additive fields may be introduced in later versions
- silent breaking change to existing field semantics is prohibited
- consumers must key on payload_version

redaction_rules:
- restricted or privileged result paths must use coded summaries
- human-readable detail is bounded by summary band
- direct raw text from internal policies must not be echoed into result payload by default

hard_rules:
- replay-safety is not optional
- sanitization is not optional
- payload contract is fail-closed on unknown critical shape



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER ROLE FAMILY AND GRANT MATRIX EXACT
# ============================================================

status: exact-security
system: AiworkerOS
layer: 100.security
owner: Boss
prepared_by: Zero

purpose:
Freeze the database-side role family design for AiworkerOS.

role_family_principles:
- default deny
- least privilege
- raw truth separation
- write surface separation
- function-only canonical mutation
- no privilege widening by rank, role, or style
- review roles are not execution roles

role_families:
- ROLE_AIW_SCHEMA_OWNER
  purpose:
  Owns schema objects and grants.
  not_for_runtime_use: true

- ROLE_AIW_MIGRATOR
  purpose:
  Applies additive migrations only.
  runtime_use: false

- ROLE_AIW_OFFICIAL_INTAKE_WRITER
  purpose:
  Inserts official intake request rows and may set initial RECEIVED status only.

- ROLE_AIW_CONTROLLED_FUNCTION_EXECUTOR
  purpose:
  Executes controlled functions only.
  direct_raw_table_dml: prohibited_except_through_function_definer_path

- ROLE_AIW_AUDIT_READER
  purpose:
  Reads audit and history surfaces needed for review.
  mutation_allowed: false

- ROLE_AIW_OPERATIONS_REVIEWER
  purpose:
  Reads limited raw review surfaces needed for operations governance.
  mutation_allowed: false

- ROLE_AIW_EVENT_DELIVERY
  purpose:
  Reads undelivered event_outbox rows and marks delivery metadata only.

- ROLE_AIW_RESTRICTED_REVIEWER
  purpose:
  Narrow reviewer for restricted-handling truth families.

- ROLE_AIW_PRIVILEGED_REVIEWER
  purpose:
  Narrow reviewer for privileged-context truth families.

- ROLE_AIW_NO_RAWTABLE_AIWORKER
  purpose:
  Negative policy identity representing AI-worker actors.
  raw_table_access: none

grant_matrix_principles:
- ROLE_AIW_NO_RAWTABLE_AIWORKER receives no raw-table SELECT
- ROLE_AIW_OFFICIAL_INTAKE_WRITER does not execute controlled mutation directly
- ROLE_AIW_CONTROLLED_FUNCTION_EXECUTOR does not receive broad table grants for ad hoc querying
- ROLE_AIW_EVENT_DELIVERY does not read worker master internals beyond outbox-linked minimum
- restricted and privileged reviewers do not automatically inherit each other

hard_rules:
- style does not map to DB grants
- rank does not map to DB grants
- app lane does not map directly to DB grants
- grant realization must preserve canonical surface separation already frozen in prior bundles



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER RLS DIRECTION AND NO DIRECT READ POLICY EXACT
# ============================================================

status: exact-security
system: AiworkerOS
layer: 100.security
owner: Boss
prepared_by: Zero

purpose:
Freeze the RLS direction and no-direct-read realization for AiworkerOS.

no_direct_read_policy:
- AI worker runtime actors do not query aiworker raw tables directly
- AI worker runtime actors use external read surfaces only
- raw tables are deny-by-default at grant level
- RLS is defense-in-depth, not a replacement for deny-by-default grants

rls_direction_by_family:
- worker master and lifecycle:
  rls_direction:
  - optional for internal service roles
  - not exposed to AI worker runtime roles
  rationale:
  Internal canonical truth, not a direct read surface.

- company and user tendency:
  rls_direction:
  - tenant-scoped filtering required when read is granted to reviewer/service roles
  policy_key_examples:
  - tenant_company_id
  - tenant_user_id

- assignment and availability:
  rls_direction:
  - tenant- and app-scope-aware filtering where review/service read is granted
  policy_key_examples:
  - tenant_company_id
  - tenant_user_id
  - assigned_app_scope_code

- affinity and fit:
  rls_direction:
  - tenant-scoped filtering required

- audit and history:
  rls_direction:
  - narrower read than standard raw truth
  - reviewer roles only
  - delivery roles excluded

- restricted and privileged:
  rls_direction:
  - dedicated reviewer roles only
  - stricter filters than standard review
  - no broad inheritance

- official intake and outbox:
  rls_direction:
  - workflow-state-aware filtering where applicable
  - delivery role limited to undelivered or delivery-relevant rows
  - intake writer limited to rows it created or workflow states allowed by policy

security_definer_direction:
- controlled functions may use reviewed SECURITY DEFINER direction if required
- SECURITY DEFINER is allowed only for controlled function path
- ad hoc runtime use of elevated definers is prohibited

hard_rules:
- grant deny remains primary boundary
- RLS must not be relied on as the only protection
- no policy may widen access for AI worker runtime actors to raw truth tables



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER REPLAY BACKFILL AND RECOVERY SAFETY GUARD EXACT
# ============================================================

status: exact-security
system: AiworkerOS
layer: 100.security
owner: Boss
prepared_by: Zero

purpose:
Freeze safety guards for replay, backfill, and recovery operations.

replay_safety_guards:
- identical lineage equivalence check required
- nonterminal prior intake blocks auto-remutation
- redelivery path must not alter canonical truth
- mismatch path fails closed
- approval and audit requirements remain effective during replay evaluation

backfill_safety_guards:
- dry-run output required before execution
- scope filter required
- target-row count check required
- high-impact repair requires explicit reviewer approval
- restricted/privileged family repair requires narrower reviewer scope

recovery_safety_guards:
- terminal-state rewrite requires explicit approved repair path
- event redelivery role cannot rewrite canonical truth
- audit gaps must be surfaced, not silently ignored
- repaired rows require recovery note or incident linkage

forbidden_shortcuts:
- bulk canonical rewrite without scope ledger
- bypassing controlled functions for convenience
- deleting historical evidence to hide inconsistency
- using style/rank/app lane as repair privilege substitute

hard_rules:
- safety guard failure blocks execution
- repair convenience never overrides canonical integrity



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS SECURITY INDEX
# ============================================================

status: index
system: AiworkerOS
layer: 100.security
owner: Boss
prepared_by: Zero

documents:
- 1000001_AIWORKER_OS_SECURITY_BOUNDARY.md
- 1000101_AIWORKER_ALLOWED_VIEW_GATE_AND_WRITE_SURFACE_SECURITY_MODEL.md
- 1000103_AIWORKER_GATE_VALIDATION_AND_TRANSITION_GUARD_EXACT.md
- 1000104_AIWORKER_PAYLOAD_SANITIZATION_AND_REPLAY_SAFETY_EXACT.md
- 1000105_AIWORKER_ROLE_FAMILY_AND_GRANT_MATRIX_EXACT.md
- 1000106_AIWORKER_RLS_DIRECTION_AND_NO_DIRECT_READ_POLICY_EXACT.md
- 1000107_AIWORKER_REPLAY_BACKFILL_AND_RECOVERY_SAFETY_GUARD_EXACT.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS SECURITY OVERVIEW
# ============================================================

status: overview
system: AiworkerOS
layer: 100.security
owner: Boss
prepared_by: Zero

purpose:
Defines gating, grants, RLS, replay safety, sanitization, transition guards, and write-surface control.

current_scope:
- 1000001_AIWORKER_OS_SECURITY_BOUNDARY.md
- 1000101_AIWORKER_ALLOWED_VIEW_GATE_AND_WRITE_SURFACE_SECURITY_MODEL.md
- 1000103_AIWORKER_GATE_VALIDATION_AND_TRANSITION_GUARD_EXACT.md
- 1000104_AIWORKER_PAYLOAD_SANITIZATION_AND_REPLAY_SAFETY_EXACT.md
- 1000105_AIWORKER_ROLE_FAMILY_AND_GRANT_MATRIX_EXACT.md
- 1000106_AIWORKER_RLS_DIRECTION_AND_NO_DIRECT_READ_POLICY_EXACT.md
- 1000107_AIWORKER_REPLAY_BACKFILL_AND_RECOVERY_SAFETY_GUARD_EXACT.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS SCHEMA AND VIEW INFRASTRUCTURE
# ============================================================

status: canonical
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

canonical_schema:
- aiworker

primary_aiworker_tables:
- worker_master
- worker_domain_role_binding
- developer_company_style_policy
- company_ai_usage_tendency
- user_ai_usage_tendency
- worker_growth_profile
- worker_growth_event
- worker_capability_snapshot
- worker_domain_proficiency
- worker_role_proficiency
- worker_assignment_state
- worker_dispatch_reservation
- worker_availability_state
- worker_queue_membership
- worker_company_affinity
- worker_user_affinity
- worker_assignment_fit_profile
- worker_privileged_profile
- worker_restricted_handling_policy
- worker_exception_control_state
- worker_state_change_log
- worker_growth_audit_log
- worker_assignment_history
- worker_repair_history

controlled_write_surfaces:
- worker_command_row
- worker_draft_row
- worker_staging_row
- worker_official_intake_row
- fn_apply_worker_controlled_write
- fn_apply_worker_assignment_decision
- fn_publish_worker_summary

cx22073jw_view_family_targets:
- VF200 to VF262 as defined in integration design
- view-only for AI workers
- masked, summarized, and lane-aware

business_side_dependencies:
- approved dispatch request reference
- contract scope reference
- billing and approval reference
- ERP linkage reference when needed

final_rule:
Physical storage truth is aiworker.
Worker-readable projection is cx22073jw.
Business-facing commercial truth remains in business.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER SCHEMA TABLE LEDGER EXACT
# ============================================================

status: exact-infrastructure
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the first exact table ledger for aiworker schema.

schema:
- aiworker

table_groups:

A. master and identity
- aiworker.worker_master
  primary_key: worker_id
  core_columns:
  - worker_code
  - display_label
  - employee_type
  - rank_code
  - domain_code
  - role_code
  - lifecycle_status
  - provider_company_id
  - company_style_profile_code
  - active_flag
  - suspended_flag
  - retired_flag
  - created_at
  - updated_at

- aiworker.developer_company_master
  primary_key: developer_company_id
  core_columns:
  - developer_company_code
  - developer_company_name
  - default_company_style_profile_code
  - active_flag
  - created_at
  - updated_at

- aiworker.company_style_policy
  primary_key: company_style_policy_id
  core_columns:
  - developer_company_id
  - company_style_profile_code
  - proposal_tendency_code
  - fallback_tendency_code
  - escalation_tendency_code
  - tone_policy_code
  - restricted_domain_policy_summary
  - active_flag
  - created_at
  - updated_at

B. tendency
- aiworker.company_ai_usage_tendency
  primary_key: company_ai_usage_tendency_id
  core_columns:
  - tenant_company_id
  - initiative_preference_code
  - explanation_depth_preference_code
  - approval_strictness_tendency_code
  - retry_tolerance_tendency_code
  - escalation_preference_code
  - automation_comfort_band_code
  - effective_from
  - effective_to
  - updated_at

- aiworker.user_ai_usage_tendency
  primary_key: user_ai_usage_tendency_id
  core_columns:
  - tenant_user_id
  - interaction_comfort_band_code
  - response_length_preference_code
  - summary_preference_code
  - support_style_preference_code
  - initiative_preference_code
  - review_frequency_preference_code
  - effective_from
  - effective_to
  - updated_at

C. growth and capability
- aiworker.worker_growth_profile
  primary_key: worker_growth_profile_id
  core_columns:
  - worker_id
  - growth_level
  - stability_score
  - recovery_learning_score
  - suggestion_effectiveness_score
  - escalation_accuracy_score
  - updated_at

- aiworker.worker_growth_event
  primary_key: worker_growth_event_id
  core_columns:
  - worker_id
  - growth_event_type
  - event_score_delta
  - summary_code
  - occurred_at
  - recorded_at

- aiworker.worker_capability_snapshot
  primary_key: worker_capability_snapshot_id
  core_columns:
  - worker_id
  - snapshot_at
  - capability_band_code
  - specialization_summary_code
  - confidence_band_code
  - recorded_at

- aiworker.worker_domain_proficiency
  primary_key: worker_domain_proficiency_id
  core_columns:
  - worker_id
  - domain_code
  - proficiency_score
  - score_band_code
  - measured_at
  - updated_at

- aiworker.worker_role_proficiency
  primary_key: worker_role_proficiency_id
  core_columns:
  - worker_id
  - role_code
  - proficiency_score
  - score_band_code
  - measured_at
  - updated_at

D. assignment and availability
- aiworker.worker_assignment_state
  primary_key: worker_assignment_state_id
  core_columns:
  - worker_id
  - tenant_company_id
  - tenant_user_id
  - assigned_app_scope_code
  - assigned_project_id
  - assignment_state_code
  - assignment_lane_scope_code
  - effective_from
  - effective_to
  - updated_at

- aiworker.worker_dispatch_reservation
  primary_key: worker_dispatch_reservation_id
  core_columns:
  - business_request_id
  - worker_id
  - reservation_state_code
  - reserved_from
  - reserved_to
  - priority_band_code
  - created_at
  - updated_at

- aiworker.worker_availability_state
  primary_key: worker_availability_state_id
  core_columns:
  - worker_id
  - availability_state_code
  - concurrent_capacity
  - current_load_band_code
  - effective_from
  - effective_to
  - updated_at

- aiworker.worker_queue_membership
  primary_key: worker_queue_membership_id
  core_columns:
  - worker_id
  - queue_family_code
  - queue_priority_band_code
  - queue_position
  - last_assignment_at
  - current_load_band_code
  - updated_at

E. affinity and fit
- aiworker.worker_company_affinity
  primary_key: worker_company_affinity_id
  core_columns:
  - worker_id
  - tenant_company_id
  - company_fit_score
  - trust_alignment_score
  - communication_fit_score
  - updated_at

- aiworker.worker_user_affinity
  primary_key: worker_user_affinity_id
  core_columns:
  - worker_id
  - tenant_user_id
  - user_fit_score
  - trust_alignment_score
  - communication_fit_score
  - updated_at

- aiworker.worker_assignment_fit_profile
  primary_key: worker_assignment_fit_profile_id
  core_columns:
  - worker_id
  - app_scope_code
  - assignment_fit_score
  - fit_reason_summary_code
  - updated_at

F. restricted and privileged
- aiworker.worker_privileged_profile
  primary_key: worker_privileged_profile_id
  core_columns:
  - worker_id
  - privileged_context_code
  - privileged_gate_code
  - active_flag
  - updated_at

- aiworker.worker_restricted_handling_policy
  primary_key: worker_restricted_handling_policy_id
  core_columns:
  - worker_id
  - restricted_domain_code
  - handling_policy_code
  - escalation_required_flag
  - updated_at

- aiworker.worker_exception_control_state
  primary_key: worker_exception_control_state_id
  core_columns:
  - worker_id
  - exception_state_code
  - exception_reason_code
  - opened_at
  - closed_at
  - updated_at

G. audit and history
- aiworker.worker_state_change_log
  primary_key: worker_state_change_log_id
  core_columns:
  - worker_id
  - state_family_code
  - old_state_code
  - new_state_code
  - change_reason_code
  - changed_at
  - changed_by

- aiworker.worker_assignment_history
  primary_key: worker_assignment_history_id
  core_columns:
  - worker_id
  - tenant_company_id
  - tenant_user_id
  - app_scope_code
  - assignment_state_code
  - started_at
  - ended_at
  - recorded_at

- aiworker.worker_repair_history
  primary_key: worker_repair_history_id
  core_columns:
  - worker_id
  - repair_ticket_code
  - repair_state_code
  - repair_reason_code
  - opened_at
  - closed_at
  - recorded_at

- aiworker.worker_rebuild_history
  primary_key: worker_rebuild_history_id
  core_columns:
  - worker_id
  - rebuild_ticket_code
  - rebuild_state_code
  - rebuild_reason_code
  - opened_at
  - closed_at
  - recorded_at

hard_rule:
Worker truth tables live in aiworker only.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER ENUM CODE AND ID POLICY EXACT
# ============================================================

status: exact-infrastructure
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze code systems and identifier policy for initial implementation.

identifier_policy:
- all primary keys use *_id
- external business correlation uses business_request_id
- worker business-facing stable reference uses worker_code
- code fields end with _code
- timestamps use *_at or effective_from / effective_to

required_code_families:
- rank_code
- domain_code
- role_code
- mode_code
- company_style_profile_code
- assignment_state_code
- availability_state_code
- queue_family_code
- queue_priority_band_code
- capability_band_code
- score_band_code
- privileged_context_code
- handling_policy_code
- exception_state_code
- gate_code
- lane_code
- output_policy_code
- summary_code
- change_reason_code

company_style_profile_code_values:
- AGGRESSIVE
- BALANCED
- CONSERVATIVE

hard_rules:
- rank code list reuses already-established official rank names
- code families are additive
- style codes never represent authority levels



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER CX22073JW VIEW FAMILY COLUMN SHAPE EXACT
# ============================================================

status: exact-infrastructure
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the first exact column shape for cx22073jw AI-worker-only read families.

VF200_AIWORKER_PROFILE_SAFE:
- worker_id
- worker_code
- display_label
- lifecycle_status
- active_flag

VF201_AIWORKER_ROLE_AND_DOMAIN_SAFE:
- worker_id
- domain_code
- role_code
- rank_code
- lane_scope_summary_code

VF202_AIWORKER_STYLE_PROFILE_SAFE:
- worker_id
- company_style_profile_code
- proposal_tendency_code
- fallback_tendency_code
- escalation_tendency_code

VF210_COMPANY_AI_TENDENCY_SAFE:
- tenant_company_id
- initiative_preference_code
- explanation_depth_preference_code
- approval_strictness_tendency_code
- retry_tolerance_tendency_code

VF211_COMPANY_AI_OPERATIONAL_PREFERENCE_SAFE:
- tenant_company_id
- escalation_preference_code
- automation_comfort_band_code
- effective_from
- effective_to

VF220_USER_AI_TENDENCY_SAFE:
- tenant_user_id
- interaction_comfort_band_code
- support_style_preference_code
- initiative_preference_code

VF221_USER_AI_RESPONSE_PREFERENCE_SAFE:
- tenant_user_id
- response_length_preference_code
- summary_preference_code
- review_frequency_preference_code

VF230_WORKER_GROWTH_SUMMARY:
- worker_id
- growth_level
- stability_score
- recovery_learning_score
- suggestion_effectiveness_score

VF231_WORKER_CAPABILITY_SNAPSHOT_SAFE:
- worker_id
- snapshot_at
- capability_band_code
- specialization_summary_code
- confidence_band_code

VF232_WORKER_PROFICIENCY_SUMMARY:
- worker_id
- domain_code
- role_code
- proficiency_score
- score_band_code

VF240_WORKER_ASSIGNMENT_SAFE:
- worker_id
- tenant_company_id
- tenant_user_id
- assigned_app_scope_code
- assignment_state_code

VF241_WORKER_AVAILABILITY_SAFE:
- worker_id
- availability_state_code
- concurrent_capacity
- current_load_band_code

VF242_WORKER_QUEUE_AND_LOAD_SAFE:
- worker_id
- queue_family_code
- queue_priority_band_code
- queue_position
- current_load_band_code

VF250_WORKER_COMPANY_AFFINITY_SAFE:
- worker_id
- tenant_company_id
- company_fit_score
- trust_alignment_score
- communication_fit_score

VF251_WORKER_USER_AFFINITY_SAFE:
- worker_id
- tenant_user_id
- user_fit_score
- trust_alignment_score
- communication_fit_score

VF252_WORKER_ASSIGNMENT_FIT_SAFE:
- worker_id
- app_scope_code
- assignment_fit_score
- fit_reason_summary_code

VF260_WORKER_AUDIT_SUMMARY:
- worker_id
- state_family_code
- old_state_code
- new_state_code
- changed_at

VF261_WORKER_PRIVILEGED_CONTEXT:
- worker_id
- privileged_context_code
- privileged_gate_code
- active_flag

VF262_WORKER_RESTRICTED_HANDLING_CONTEXT:
- worker_id
- restricted_domain_code
- handling_policy_code
- escalation_required_flag

hard_rule:
These are safe, reduced, AI-worker-only shapes and not substitutes for raw truth tables.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER CONTROLLED FUNCTION AND OFFICIAL INTAKE EXACT
# ============================================================

status: exact-infrastructure
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the initial controlled mutation path for canonical truth.

official_intake_table:
- aiworker.official_intake_request
  primary_key: intake_id
  core_columns:
  - staging_id
  - intake_type
  - target_truth_surface
  - controlled_function_code
  - approval_ticket_id
  - audit_required_flag
  - submitted_by
  - submitted_at
  - intake_status
  - applied_at

controlled_function_catalog:
- aiworker.fn_apply_worker_assignment_state
- aiworker.fn_apply_worker_availability_state
- aiworker.fn_apply_worker_repair_transition
- aiworker.fn_apply_worker_rebuild_transition
- aiworker.fn_apply_worker_tendency_update
- aiworker.fn_apply_worker_growth_event
- aiworker.fn_apply_worker_privileged_context_change
- aiworker.fn_record_business_result_correlation

controlled_function_rules:
- function validates gate
- function validates approval requirement
- function validates audit requirement
- function validates target truth surface
- function writes state change log
- function emits result event payload reference

hard_rule:
Canonical truth mutation is allowed only through controlled functions.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER SQL DDL CORE TABLES EXACT
# ============================================================

status: exact-sql-ddl
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the first canonical SQL DDL ledger for aiworker core tables.

design_decisions:
- PostgreSQL is assumed
- canonical schema is `aiworker`
- primary keys use uuid
- entity and state truth lives only in `aiworker`
- code columns are text-based and validated by seed policy plus controlled functions
- cross-table entity relations use foreign keys
- code families are not hard PostgreSQL enum types because additive expansion is required
- `cx22073jw` view DDL is excluded from this document

sql_bootstrap:
```sql
create schema if not exists aiworker;
```

sql_master_and_policy:
```sql
create table if not exists aiworker.worker_master (
  worker_id uuid primary key,
  worker_code text not null unique,
  display_label text not null,
  employee_type text not null,
  rank_code text not null,
  domain_code text not null,
  role_code text not null,
  lifecycle_status text not null,
  provider_company_id uuid,
  company_style_profile_code text not null,
  repairable_flag boolean not null default true,
  rebuildable_flag boolean not null default true,
  active_flag boolean not null default true,
  suspended_flag boolean not null default false,
  retired_flag boolean not null default false,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists aiworker.developer_company_master (
  developer_company_id uuid primary key,
  developer_company_code text not null unique,
  developer_company_name text not null,
  default_company_style_profile_code text not null,
  active_flag boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists aiworker.company_style_policy (
  company_style_policy_id uuid primary key,
  developer_company_id uuid not null references aiworker.developer_company_master(developer_company_id),
  company_style_profile_code text not null,
  proposal_tendency_code text not null,
  fallback_tendency_code text not null,
  escalation_tendency_code text not null,
  tone_policy_code text not null,
  restricted_domain_policy_summary text,
  active_flag boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique (developer_company_id, company_style_profile_code)
);
```

sql_tendency_tables:
```sql
create table if not exists aiworker.company_ai_usage_tendency (
  company_ai_usage_tendency_id uuid primary key,
  tenant_company_id uuid not null,
  initiative_preference_code text not null,
  explanation_depth_preference_code text not null,
  approval_strictness_tendency_code text not null,
  retry_tolerance_tendency_code text not null,
  escalation_preference_code text not null,
  automation_comfort_band_code text not null,
  effective_from timestamptz not null,
  effective_to timestamptz,
  updated_at timestamptz not null default now()
);

create table if not exists aiworker.user_ai_usage_tendency (
  user_ai_usage_tendency_id uuid primary key,
  tenant_user_id uuid not null,
  interaction_comfort_band_code text not null,
  response_length_preference_code text not null,
  summary_preference_code text not null,
  support_style_preference_code text not null,
  initiative_preference_code text not null,
  review_frequency_preference_code text not null,
  effective_from timestamptz not null,
  effective_to timestamptz,
  updated_at timestamptz not null default now()
);
```

sql_growth_and_capability:
```sql
create table if not exists aiworker.worker_growth_profile (
  worker_growth_profile_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  growth_level integer not null default 0,
  stability_score integer not null default 0,
  recovery_learning_score integer not null default 0,
  suggestion_effectiveness_score integer not null default 0,
  escalation_accuracy_score integer not null default 0,
  updated_at timestamptz not null default now(),
  unique (worker_id)
);

create table if not exists aiworker.worker_growth_event (
  worker_growth_event_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  growth_event_type text not null,
  event_score_delta integer not null default 0,
  summary_code text not null,
  occurred_at timestamptz not null,
  recorded_at timestamptz not null default now()
);

create table if not exists aiworker.worker_capability_snapshot (
  worker_capability_snapshot_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  snapshot_at timestamptz not null,
  capability_band_code text not null,
  specialization_summary_code text not null,
  confidence_band_code text not null,
  recorded_at timestamptz not null default now()
);

create table if not exists aiworker.worker_domain_proficiency (
  worker_domain_proficiency_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  domain_code text not null,
  proficiency_score integer not null,
  score_band_code text not null,
  measured_at timestamptz not null,
  updated_at timestamptz not null default now(),
  unique (worker_id, domain_code)
);

create table if not exists aiworker.worker_role_proficiency (
  worker_role_proficiency_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  role_code text not null,
  proficiency_score integer not null,
  score_band_code text not null,
  measured_at timestamptz not null,
  updated_at timestamptz not null default now(),
  unique (worker_id, role_code)
);
```

sql_assignment_and_availability:
```sql
create table if not exists aiworker.worker_assignment_state (
  worker_assignment_state_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  tenant_company_id uuid,
  tenant_user_id uuid,
  assigned_app_scope_code text,
  assigned_project_id uuid,
  assignment_state_code text not null,
  assignment_lane_scope_code text not null,
  effective_from timestamptz not null,
  effective_to timestamptz,
  updated_at timestamptz not null default now()
);

create table if not exists aiworker.worker_dispatch_reservation (
  worker_dispatch_reservation_id uuid primary key,
  business_request_id uuid not null,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  reservation_state_code text not null,
  reserved_from timestamptz not null,
  reserved_to timestamptz,
  priority_band_code text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists aiworker.worker_availability_state (
  worker_availability_state_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  availability_state_code text not null,
  concurrent_capacity integer not null default 1,
  current_load_band_code text not null,
  effective_from timestamptz not null,
  effective_to timestamptz,
  updated_at timestamptz not null default now()
);

create table if not exists aiworker.worker_queue_membership (
  worker_queue_membership_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  queue_family_code text not null,
  queue_priority_band_code text not null,
  queue_position integer,
  last_assignment_at timestamptz,
  current_load_band_code text not null,
  updated_at timestamptz not null default now(),
  unique (worker_id, queue_family_code)
);
```

sql_affinity_and_restricted:
```sql
create table if not exists aiworker.worker_company_affinity (
  worker_company_affinity_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  tenant_company_id uuid not null,
  company_fit_score integer not null default 0,
  trust_alignment_score integer not null default 0,
  communication_fit_score integer not null default 0,
  updated_at timestamptz not null default now(),
  unique (worker_id, tenant_company_id)
);

create table if not exists aiworker.worker_user_affinity (
  worker_user_affinity_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  tenant_user_id uuid not null,
  user_fit_score integer not null default 0,
  trust_alignment_score integer not null default 0,
  communication_fit_score integer not null default 0,
  updated_at timestamptz not null default now(),
  unique (worker_id, tenant_user_id)
);

create table if not exists aiworker.worker_assignment_fit_profile (
  worker_assignment_fit_profile_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  app_scope_code text not null,
  assignment_fit_score integer not null default 0,
  fit_reason_summary_code text not null,
  updated_at timestamptz not null default now(),
  unique (worker_id, app_scope_code)
);

create table if not exists aiworker.worker_privileged_profile (
  worker_privileged_profile_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  privileged_context_code text not null,
  privileged_gate_code text not null,
  active_flag boolean not null default true,
  updated_at timestamptz not null default now(),
  unique (worker_id, privileged_context_code)
);

create table if not exists aiworker.worker_restricted_handling_policy (
  worker_restricted_handling_policy_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  restricted_domain_code text not null,
  handling_policy_code text not null,
  escalation_required_flag boolean not null default true,
  updated_at timestamptz not null default now(),
  unique (worker_id, restricted_domain_code)
);

create table if not exists aiworker.worker_exception_control_state (
  worker_exception_control_state_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  exception_state_code text not null,
  exception_reason_code text not null,
  opened_at timestamptz not null,
  closed_at timestamptz,
  updated_at timestamptz not null default now()
);
```

sql_audit_and_history:
```sql
create table if not exists aiworker.worker_state_change_log (
  worker_state_change_log_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  state_family_code text not null,
  old_state_code text,
  new_state_code text not null,
  change_reason_code text not null,
  changed_at timestamptz not null,
  changed_by text not null
);

create table if not exists aiworker.worker_assignment_history (
  worker_assignment_history_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  tenant_company_id uuid,
  tenant_user_id uuid,
  app_scope_code text,
  assignment_state_code text not null,
  started_at timestamptz not null,
  ended_at timestamptz,
  recorded_at timestamptz not null default now()
);

create table if not exists aiworker.worker_repair_history (
  worker_repair_history_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  repair_ticket_code text not null,
  repair_state_code text not null,
  repair_reason_code text not null,
  opened_at timestamptz not null,
  closed_at timestamptz,
  recorded_at timestamptz not null default now()
);

create table if not exists aiworker.worker_rebuild_history (
  worker_rebuild_history_id uuid primary key,
  worker_id uuid not null references aiworker.worker_master(worker_id),
  rebuild_ticket_code text not null,
  rebuild_state_code text not null,
  rebuild_reason_code text not null,
  opened_at timestamptz not null,
  closed_at timestamptz,
  recorded_at timestamptz not null default now()
);
```

sql_command_and_controlled_write_surfaces:
```sql
create table if not exists aiworker.command_row (
  command_id uuid primary key,
  command_type text not null,
  source_system text not null,
  source_actor_type text not null,
  requested_lane text not null,
  requested_domain text,
  requested_role text,
  target_worker_id uuid references aiworker.worker_master(worker_id),
  tenant_company_id uuid,
  tenant_user_id uuid,
  app_scope_code text,
  payload_ref text,
  requested_at timestamptz not null,
  requested_by text not null,
  command_status text not null
);

create table if not exists aiworker.draft_row (
  draft_id uuid primary key,
  command_id uuid not null references aiworker.command_row(command_id),
  worker_id uuid references aiworker.worker_master(worker_id),
  draft_type text not null,
  draft_summary text,
  draft_payload_ref text,
  draft_status text not null,
  created_at timestamptz not null default now(),
  reviewed_at timestamptz
);

create table if not exists aiworker.staging_row (
  staging_id uuid primary key,
  draft_id uuid references aiworker.draft_row(draft_id),
  staging_type text not null,
  normalized_payload_ref text,
  gate_code text not null,
  staging_status text not null,
  created_at timestamptz not null default now()
);

create table if not exists aiworker.official_intake_request (
  intake_id uuid primary key,
  staging_id uuid not null references aiworker.staging_row(staging_id),
  intake_type text not null,
  target_truth_surface text not null,
  controlled_function_code text not null,
  approval_ticket_id text,
  audit_required_flag boolean not null default false,
  submitted_by text not null,
  submitted_at timestamptz not null default now(),
  intake_status text not null,
  applied_at timestamptz
);

create table if not exists aiworker.event_outbox (
  event_id uuid primary key,
  event_type text not null,
  source_system text not null,
  source_entity_type text not null,
  source_entity_id text not null,
  related_business_request_id uuid,
  related_worker_id uuid references aiworker.worker_master(worker_id),
  summary_code text,
  payload_ref text,
  emitted_at timestamptz not null,
  delivered_at timestamptz
);
```

hard_rule:
The SQL above defines canonical raw truth storage only.
AI-worker consumption must still go through `cx22073jw` safe view families in WB02.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER SQL DDL CODE TABLES AND SEEDS EXACT
# ============================================================

status: exact-sql-ddl
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact additive code-table strategy for AiworkerOS.

design_decisions:
- use table-driven codes, not PostgreSQL enum types
- all code families are additive
- seed rows provide the initial authoritative code set
- operational tables store code values as text
- controlled functions validate allowed values against seed tables

sql_code_tables:
```sql
create table if not exists aiworker.code_family (
  family_code text primary key,
  family_label text not null,
  active_flag boolean not null default true,
  created_at timestamptz not null default now()
);

create table if not exists aiworker.code_value (
  family_code text not null references aiworker.code_family(family_code),
  value_code text not null,
  display_label text not null,
  sort_order integer not null default 0,
  active_flag boolean not null default true,
  created_at timestamptz not null default now(),
  primary key (family_code, value_code)
);
```

minimum_seed_families:
- rank_code
- domain_code
- role_code
- lifecycle_status
- company_style_profile_code
- assignment_state_code
- availability_state_code
- reservation_state_code
- queue_family_code
- queue_priority_band_code
- capability_band_code
- score_band_code
- privileged_context_code
- gate_code
- lane_code
- output_policy_code
- summary_code
- change_reason_code
- exception_state_code
- handling_policy_code
- command_status
- draft_status
- staging_status
- intake_status

sql_seed_examples:
```sql
insert into aiworker.code_family (family_code, family_label)
values
  ('company_style_profile_code', 'Company style profile'),
  ('lane_code', 'Runtime lane'),
  ('assignment_state_code', 'Assignment state'),
  ('availability_state_code', 'Availability state'),
  ('gate_code', 'Gate family')
on conflict (family_code) do nothing;

insert into aiworker.code_value (family_code, value_code, display_label, sort_order)
values
  ('company_style_profile_code', 'AGGRESSIVE',   'Aggressive',   10),
  ('company_style_profile_code', 'BALANCED',     'Balanced',     20),
  ('company_style_profile_code', 'CONSERVATIVE', 'Conservative', 30),

  ('lane_code', 'OBSERVE',          'Observe',          10),
  ('lane_code', 'ADVISE',           'Advise',           20),
  ('lane_code', 'DRAFT',            'Draft',            30),
  ('lane_code', 'STAGING',          'Staging',          40),
  ('lane_code', 'OFFICIAL_REQUEST', 'Official request', 50),
  ('lane_code', 'OFFICIAL_APPLY',   'Official apply',   60),
  ('lane_code', 'AUDIT_ONLY',       'Audit only',       70),
  ('lane_code', 'REPAIR',           'Repair',           80),
  ('lane_code', 'REBUILD',          'Rebuild',          90),

  ('assignment_state_code', 'UNASSIGNED',  'Unassigned',  10),
  ('assignment_state_code', 'RESERVED',    'Reserved',    20),
  ('assignment_state_code', 'ASSIGNED',    'Assigned',    30),
  ('assignment_state_code', 'ACTIVE',      'Active',      40),
  ('assignment_state_code', 'PAUSED',      'Paused',      50),
  ('assignment_state_code', 'COOLDOWN',    'Cooldown',    60),
  ('assignment_state_code', 'MAINTENANCE', 'Maintenance', 70),
  ('assignment_state_code', 'REPAIR',      'Repair',      80),
  ('assignment_state_code', 'REBUILD',     'Rebuild',     90),
  ('assignment_state_code', 'RETIRED',     'Retired',    100),

  ('availability_state_code', 'AVAILABLE',   'Available',   10),
  ('availability_state_code', 'BUSY',        'Busy',        20),
  ('availability_state_code', 'RESERVED',    'Reserved',    30),
  ('availability_state_code', 'UNAVAILABLE', 'Unavailable', 40),
  ('availability_state_code', 'MAINTENANCE', 'Maintenance', 50),
  ('availability_state_code', 'REPAIR',      'Repair',      60),
  ('availability_state_code', 'REBUILD',     'Rebuild',     70),
  ('availability_state_code', 'SUSPENDED',   'Suspended',   80),

  ('gate_code', 'GATE_STANDARD',          'Standard gate',          10),
  ('gate_code', 'GATE_RESTRICTED',        'Restricted gate',        20),
  ('gate_code', 'GATE_PRIVILEGED',        'Privileged gate',        30),
  ('gate_code', 'GATE_APPROVAL_REQUIRED', 'Approval required',      40),
  ('gate_code', 'GATE_AUDIT_REQUIRED',    'Audit required',         50),
  ('gate_code', 'GATE_REPAIR',            'Repair gate',            60),
  ('gate_code', 'GATE_REBUILD',           'Rebuild gate',           70)
on conflict (family_code, value_code) do nothing;
```

rank_policy:
- rank_code seed values must reuse the already-established official rank names
- rank list is not redefined in this WB01 document
- rank seed execution is deferred until the official rank catalog is imported as-is

hard_rule:
Style codes represent behavior tendency only.
They never represent authority, write privilege, or gate bypass.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER SQL DDL INDEX AND CONSTRAINT LEDGER EXACT
# ============================================================

status: exact-sql-ddl
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the minimum exact indexes and constraints required for WB01.

index_policy:
- unique where canonical identity must not duplicate
- partial unique where only one active/current row is allowed
- lookup indexes on worker_id, tenant_company_id, tenant_user_id, business_request_id
- time-window indexes on effective_from / effective_to
- event and audit indexes on emitted_at and changed_at

sql_indexes_and_constraints:
```sql
create unique index if not exists ux_worker_master_worker_code
  on aiworker.worker_master (worker_code);

create unique index if not exists ux_company_style_policy_active_pair
  on aiworker.company_style_policy (developer_company_id, company_style_profile_code);

create unique index if not exists ux_company_ai_usage_tendency_current
  on aiworker.company_ai_usage_tendency (tenant_company_id)
  where effective_to is null;

create unique index if not exists ux_user_ai_usage_tendency_current
  on aiworker.user_ai_usage_tendency (tenant_user_id)
  where effective_to is null;

create unique index if not exists ux_worker_assignment_state_current
  on aiworker.worker_assignment_state (worker_id)
  where effective_to is null;

create unique index if not exists ux_worker_availability_state_current
  on aiworker.worker_availability_state (worker_id)
  where effective_to is null;

create index if not exists ix_worker_dispatch_reservation_request
  on aiworker.worker_dispatch_reservation (business_request_id);

create index if not exists ix_worker_dispatch_reservation_worker
  on aiworker.worker_dispatch_reservation (worker_id);

create index if not exists ix_worker_growth_event_worker_occurred
  on aiworker.worker_growth_event (worker_id, occurred_at desc);

create index if not exists ix_worker_capability_snapshot_worker_snapshot
  on aiworker.worker_capability_snapshot (worker_id, snapshot_at desc);

create index if not exists ix_worker_state_change_log_worker_changed
  on aiworker.worker_state_change_log (worker_id, changed_at desc);

create index if not exists ix_worker_assignment_history_worker_started
  on aiworker.worker_assignment_history (worker_id, started_at desc);

create index if not exists ix_worker_repair_history_worker_opened
  on aiworker.worker_repair_history (worker_id, opened_at desc);

create index if not exists ix_worker_rebuild_history_worker_opened
  on aiworker.worker_rebuild_history (worker_id, opened_at desc);

create index if not exists ix_command_row_worker_requested
  on aiworker.command_row (target_worker_id, requested_at desc);

create index if not exists ix_command_row_tenant_company_requested
  on aiworker.command_row (tenant_company_id, requested_at desc);

create index if not exists ix_draft_row_command
  on aiworker.draft_row (command_id);

create index if not exists ix_staging_row_draft
  on aiworker.staging_row (draft_id);

create index if not exists ix_official_intake_request_staging
  on aiworker.official_intake_request (staging_id);

create index if not exists ix_event_outbox_business_request
  on aiworker.event_outbox (related_business_request_id);

create index if not exists ix_event_outbox_worker_emitted
  on aiworker.event_outbox (related_worker_id, emitted_at desc);
```

sql_check_constraints:
```sql
alter table aiworker.worker_master
  add constraint ck_worker_master_not_suspended_and_retired
  check (not (suspended_flag = true and retired_flag = true));

alter table aiworker.worker_growth_profile
  add constraint ck_worker_growth_profile_nonnegative_scores
  check (
    growth_level >= 0 and
    stability_score >= 0 and
    recovery_learning_score >= 0 and
    suggestion_effectiveness_score >= 0 and
    escalation_accuracy_score >= 0
  );

alter table aiworker.worker_domain_proficiency
  add constraint ck_worker_domain_proficiency_nonnegative
  check (proficiency_score >= 0);

alter table aiworker.worker_role_proficiency
  add constraint ck_worker_role_proficiency_nonnegative
  check (proficiency_score >= 0);

alter table aiworker.worker_availability_state
  add constraint ck_worker_availability_state_capacity_positive
  check (concurrent_capacity >= 0);

alter table aiworker.worker_queue_membership
  add constraint ck_worker_queue_membership_position_nonnegative
  check (queue_position is null or queue_position >= 0);

alter table aiworker.worker_company_affinity
  add constraint ck_worker_company_affinity_scores_nonnegative
  check (
    company_fit_score >= 0 and
    trust_alignment_score >= 0 and
    communication_fit_score >= 0
  );

alter table aiworker.worker_user_affinity
  add constraint ck_worker_user_affinity_scores_nonnegative
  check (
    user_fit_score >= 0 and
    trust_alignment_score >= 0 and
    communication_fit_score >= 0
  );

alter table aiworker.worker_assignment_fit_profile
  add constraint ck_worker_assignment_fit_score_nonnegative
  check (assignment_fit_score >= 0);
```

notes:
- apply `alter table ... add constraint` only once in real migration files
- for already-existing databases, constraint names must be collision-checked first
- time-overlap exclusion constraints can be added in a later hardening pass if needed

hard_rule:
At most one current assignment row and one current availability row may exist per worker.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER CONTROLLED FUNCTION SQL CONTRACT EXACT
# ============================================================

status: exact-sql-contract
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact SQL contract direction for AiworkerOS controlled functions.

design_decisions:
- PostgreSQL function/procedure direction is assumed
- controlled functions are the only legal canonical mutation executors
- each controlled function validates intake, gate, transition, audit requirement, and output emission
- function bodies are not fully implemented in this WB03 document; only exact contracts are frozen

normalized_function_catalog:
- aiworker.fn_apply_worker_assignment_state
- aiworker.fn_apply_worker_availability_state
- aiworker.fn_apply_worker_repair_transition
- aiworker.fn_apply_worker_rebuild_transition
- aiworker.fn_apply_worker_tendency_update
- aiworker.fn_apply_worker_growth_event
- aiworker.fn_apply_worker_privileged_context_change
- aiworker.fn_record_business_result_correlation

common_contract_shape:
```sql
create or replace function aiworker.fn_example_contract_only (
  p_intake_id uuid,
  p_actor_type text,
  p_actor_id text,
  p_worker_id uuid,
  p_business_request_id uuid,
  p_gate_code text,
  p_requested_transition_code text,
  p_target_truth_surface text,
  p_payload_ref text,
  p_approval_ticket_id text,
  p_audit_required_flag boolean,
  p_reason_code text,
  p_requested_at timestamptz
)
returns table (
  success_flag boolean,
  result_code text,
  aiworker_status_code text,
  summary_code text,
  state_family_code text,
  old_state_code text,
  new_state_code text,
  related_entity_id uuid,
  event_id uuid,
  emitted_at timestamptz
)
language sql
as $$
  select
    false::boolean,
    'CONTRACT_ONLY'::text,
    'CONTRACT_ONLY'::text,
    'CONTRACT_ONLY'::text,
    'CONTRACT_ONLY'::text,
    null::text,
    null::text,
    null::uuid,
    null::uuid,
    null::timestamptz
$$;
```

function_contract_details:
- aiworker.fn_apply_worker_assignment_state
  target_truth_surface:
  - aiworker.worker_assignment_state
  mandatory_side_effects:
  - update current assignment row
  - write worker_state_change_log
  - optionally write worker_assignment_history
  - emit event_outbox row

- aiworker.fn_apply_worker_availability_state
  target_truth_surface:
  - aiworker.worker_availability_state
  mandatory_side_effects:
  - update current availability row
  - write worker_state_change_log
  - emit event_outbox row

- aiworker.fn_apply_worker_repair_transition
  target_truth_surface:
  - aiworker.worker_repair_history
  - worker lifecycle and/or availability family when applicable
  mandatory_side_effects:
  - write repair history
  - write worker_state_change_log
  - emit event_outbox row

- aiworker.fn_apply_worker_rebuild_transition
  target_truth_surface:
  - aiworker.worker_rebuild_history
  - worker lifecycle and/or availability family when applicable
  mandatory_side_effects:
  - write rebuild history
  - write worker_state_change_log
  - emit event_outbox row

- aiworker.fn_apply_worker_tendency_update
  target_truth_surface:
  - aiworker.company_ai_usage_tendency or aiworker.user_ai_usage_tendency
  mandatory_side_effects:
  - close previous current row when versioned
  - insert new current row
  - emit event_outbox row when required

- aiworker.fn_apply_worker_growth_event
  target_truth_surface:
  - aiworker.worker_growth_event
  - aiworker.worker_growth_profile
  mandatory_side_effects:
  - insert growth event row
  - update growth profile aggregates
  - write worker_state_change_log when state family changes
  - emit event_outbox row when required

- aiworker.fn_apply_worker_privileged_context_change
  target_truth_surface:
  - aiworker.worker_privileged_profile
  mandatory_side_effects:
  - activate/deactivate privileged profile row
  - write worker_state_change_log
  - emit event_outbox row

- aiworker.fn_record_business_result_correlation
  target_truth_surface:
  - normalized result correlation ledger or official_intake status fields
  mandatory_side_effects:
  - persist business_request_id linkage
  - persist summary/result codes
  - no mutation of worker truth by this function alone

hard_rules:
- no mutation route may skip function catalog
- no function may write to business schema
- no function may widen cx22073jw access



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OFFICIAL INTAKE PROCESSING AND STATUS MACHINE EXACT
# ============================================================

status: exact-infrastructure
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the official intake processing lifecycle and status machine used by controlled functions.

official_intake_status_values:
- RECEIVED
- VALIDATING
- GATE_DENIED
- APPROVAL_PENDING
- AUDIT_PENDING
- READY_TO_APPLY
- APPLYING
- APPLIED
- REJECTED
- FAILED

status_machine:
- RECEIVED -> VALIDATING
- VALIDATING -> GATE_DENIED
- VALIDATING -> APPROVAL_PENDING
- VALIDATING -> AUDIT_PENDING
- VALIDATING -> READY_TO_APPLY
- APPROVAL_PENDING -> READY_TO_APPLY
- AUDIT_PENDING -> READY_TO_APPLY
- READY_TO_APPLY -> APPLYING
- APPLYING -> APPLIED
- APPLYING -> FAILED
- VALIDATING -> REJECTED when function or target surface is invalid
- any nonterminal validation state -> FAILED when processing fails unexpectedly

processing_principle:
- only controlled functions may move intake into APPLYING/APPLIED
- status must reflect actual mutation lifecycle
- APPLIED means canonical mutation plus required side effects succeeded
- partial success is not accepted as APPLIED

required_validation_bindings:
- intake_type
- target_truth_surface
- controlled_function_code
- approval_ticket_id when required
- audit_required_flag
- staging_id
- submitted_at
- intake_status

hard_rules:
- APPLIED requires audit side effect when audit is required
- APPLIED requires outbox emission when emission is required by function contract
- REJECTED and GATE_DENIED must preserve diagnostic result codes



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER AUDIT AND OUTBOX EMISSION CONTRACT EXACT
# ============================================================

status: exact-infrastructure
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact side-effect contract for audit logging and event emission.

audit_write_principle:
- canonical mutation must produce audit evidence
- audit evidence is stored in worker_state_change_log and family-specific history where applicable
- audit write occurs in the same mutation transaction direction as the canonical update
- missing audit write invalidates success for audit-required functions

minimum_audit_fields:
- worker_id
- state_family_code
- old_state_code
- new_state_code
- change_reason_code
- changed_at
- changed_by

outbox_emission_principle:
- business-facing result return is event-driven
- event_outbox row is the canonical emission staging surface inside aiworker
- outbox row is written after mutation decision is known
- outbox row carries summary and correlation, not raw secret internals

minimum_outbox_fields:
- event_id
- event_type
- source_system
- source_entity_type
- source_entity_id
- related_business_request_id
- related_worker_id
- summary_code
- payload_ref
- emitted_at

emission_policy_by_family:
- assignment state mutation:
  required_event:
  - AIWORKER_ASSIGNMENT_DECIDED or AIWORKER_ASSIGNMENT_REJECTED

- availability state mutation:
  required_event:
  - AIWORKER_EXECUTION_STATE_CHANGED

- repair transition:
  required_event:
  - AIWORKER_REPAIR_STATE_CHANGED

- rebuild transition:
  required_event:
  - AIWORKER_REBUILD_STATE_CHANGED

- tendency update:
  optional_event:
  - AIWORKER_RESULT_SUMMARY_READY when business correlation is needed

- growth event:
  optional_event:
  - AIWORKER_RESULT_SUMMARY_READY when business correlation is needed

- privileged context change:
  required_event:
  - AIWORKER_ESCALATION_REQUIRED or equivalent restricted summary when policy says so

hard_rules:
- outbox emission does not substitute for audit
- audit does not substitute for outbox where emission is required
- raw payload blobs must not be emitted as direct unrestricted business-facing truth



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER CANONICAL PAYLOAD SCHEMA CATALOG EXACT
# ============================================================

status: exact-infrastructure
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the canonical payload schema catalog and naming policy.

schema_catalog:
- PAYLOAD_COMMAND_ROW_V1
- PAYLOAD_DRAFT_ROW_V1
- PAYLOAD_STAGING_ROW_V1
- PAYLOAD_OFFICIAL_INTAKE_V1
- PAYLOAD_RESULT_EVENT_V1
- PAYLOAD_BUSINESS_REQUEST_EVENT_V1

catalog_policy:
- schema names are stable identifiers
- version is explicit in schema name
- storage may keep payload as jsonb, but contract identity is schema-catalog driven
- validation implementation may be app-side, db-side, or mixed, but contract identity remains stable

json_storage_direction:
- command_row.payload_ref points to payload conforming to PAYLOAD_COMMAND_ROW_V1
- draft_row.draft_payload_ref points to payload conforming to PAYLOAD_DRAFT_ROW_V1
- staging_row.normalized_payload_ref points to payload conforming to PAYLOAD_STAGING_ROW_V1
- official intake execution material conforms to PAYLOAD_OFFICIAL_INTAKE_V1
- event_outbox.payload_ref points to payload conforming to PAYLOAD_RESULT_EVENT_V1

validation_direction:
- minimum validation on receipt
- strict validation before official intake creation
- strict validation before event emission
- validation failure must map to fixed error/result codes

hard_rules:
- payload refs without catalog identity are invalid
- catalog identity must not be inferred from filename conventions alone



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER RESULT SUMMARY CODE AND PAYLOAD MAPPING EXACT
# ============================================================

status: exact-infrastructure
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the mapping direction between result codes, summary codes, and result payload content.

result_code_examples:
- OK_APPLIED
- OK_NOOP_REPLAY
- OK_REVIEW_REQUIRED
- NG_GATE_DENIED
- NG_APPROVAL_REQUIRED
- NG_AUDIT_REQUIRED
- NG_ILLEGAL_TRANSITION
- NG_VALIDATION_FAILED
- NG_WORKER_NOT_ELIGIBLE
- NG_INTERNAL_ERROR

summary_code_mapping_principle:
- result_code expresses outcome class
- summary_code expresses user/business-facing summary family
- detail_code expresses narrower display or handling bucket
- summary band controls verbosity

mapping_examples:
- OK_APPLIED:
  default_summary_code:
  - SUM_APPLIED
  default_band:
  - STANDARD

- OK_NOOP_REPLAY:
  default_summary_code:
  - SUM_ALREADY_APPLIED
  default_band:
  - MINIMAL

- OK_REVIEW_REQUIRED:
  default_summary_code:
  - SUM_REVIEW_REQUIRED
  default_band:
  - REVIEW

- NG_GATE_DENIED:
  default_summary_code:
  - SUM_GATE_DENIED
  default_band:
  - MINIMAL

- NG_APPROVAL_REQUIRED:
  default_summary_code:
  - SUM_APPROVAL_REQUIRED
  default_band:
  - REVIEW

- NG_AUDIT_REQUIRED:
  default_summary_code:
  - SUM_AUDIT_REQUIRED
  default_band:
  - REVIEW

- NG_ILLEGAL_TRANSITION:
  default_summary_code:
  - SUM_ILLEGAL_TRANSITION
  default_band:
  - STANDARD

- NG_VALIDATION_FAILED:
  default_summary_code:
  - SUM_VALIDATION_FAILED
  default_band:
  - STANDARD

- NG_WORKER_NOT_ELIGIBLE:
  default_summary_code:
  - SUM_WORKER_NOT_ELIGIBLE
  default_band:
  - STANDARD

- NG_INTERNAL_ERROR:
  default_summary_code:
  - SUM_INTERNAL_ERROR
  default_band:
  - MINIMAL

hard_rules:
- result_code and summary_code are separate axes
- summary band must not widen restricted data exposure
- same result_code may map to different detail_code without changing summary family



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER RAW TABLE ACCESS LEDGER EXACT
# ============================================================

status: exact-infrastructure
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the first exact raw-table access ledger for AiworkerOS.

access_legend:
- NONE
- SELECT
- INSERT
- UPDATE
- EXECUTE
- DELIVERY_UPDATE
- OWN

table_group_access:

A. master and policy tables
- aiworker.worker_master
  ROLE_AIW_SCHEMA_OWNER: OWN
  ROLE_AIW_MIGRATOR: NONE
  ROLE_AIW_CONTROLLED_FUNCTION_EXECUTOR: NONE
  ROLE_AIW_OPERATIONS_REVIEWER: SELECT
  ROLE_AIW_AUDIT_READER: NONE
  ROLE_AIW_RESTRICTED_REVIEWER: NONE
  ROLE_AIW_PRIVILEGED_REVIEWER: NONE
  ROLE_AIW_EVENT_DELIVERY: NONE
  ROLE_AIW_OFFICIAL_INTAKE_WRITER: NONE
  ROLE_AIW_NO_RAWTABLE_AIWORKER: NONE

- aiworker.developer_company_master
  ROLE_AIW_SCHEMA_OWNER: OWN
  ROLE_AIW_OPERATIONS_REVIEWER: SELECT
  all_other_runtime_roles: NONE

- aiworker.company_style_policy
  ROLE_AIW_SCHEMA_OWNER: OWN
  ROLE_AIW_OPERATIONS_REVIEWER: SELECT
  all_other_runtime_roles: NONE

B. tendency tables
- aiworker.company_ai_usage_tendency
  ROLE_AIW_SCHEMA_OWNER: OWN
  ROLE_AIW_CONTROLLED_FUNCTION_EXECUTOR: NONE
  ROLE_AIW_OPERATIONS_REVIEWER: SELECT
  all_other_runtime_roles: NONE

- aiworker.user_ai_usage_tendency
  ROLE_AIW_SCHEMA_OWNER: OWN
  ROLE_AIW_CONTROLLED_FUNCTION_EXECUTOR: NONE
  ROLE_AIW_OPERATIONS_REVIEWER: SELECT
  all_other_runtime_roles: NONE

C. growth and capability tables
- aiworker.worker_growth_profile
- aiworker.worker_growth_event
- aiworker.worker_capability_snapshot
- aiworker.worker_domain_proficiency
- aiworker.worker_role_proficiency
  ROLE_AIW_SCHEMA_OWNER: OWN
  ROLE_AIW_AUDIT_READER: SELECT
  ROLE_AIW_OPERATIONS_REVIEWER: SELECT
  all_other_runtime_roles: NONE

D. assignment and availability tables
- aiworker.worker_assignment_state
- aiworker.worker_dispatch_reservation
- aiworker.worker_availability_state
- aiworker.worker_queue_membership
  ROLE_AIW_SCHEMA_OWNER: OWN
  ROLE_AIW_AUDIT_READER: SELECT
  ROLE_AIW_OPERATIONS_REVIEWER: SELECT
  all_other_runtime_roles: NONE

E. affinity and fit tables
- aiworker.worker_company_affinity
- aiworker.worker_user_affinity
- aiworker.worker_assignment_fit_profile
  ROLE_AIW_SCHEMA_OWNER: OWN
  ROLE_AIW_OPERATIONS_REVIEWER: SELECT
  all_other_runtime_roles: NONE

F. restricted and privileged tables
- aiworker.worker_privileged_profile
  ROLE_AIW_SCHEMA_OWNER: OWN
  ROLE_AIW_PRIVILEGED_REVIEWER: SELECT
  all_other_runtime_roles: NONE

- aiworker.worker_restricted_handling_policy
  ROLE_AIW_SCHEMA_OWNER: OWN
  ROLE_AIW_RESTRICTED_REVIEWER: SELECT
  all_other_runtime_roles: NONE

- aiworker.worker_exception_control_state
  ROLE_AIW_SCHEMA_OWNER: OWN
  ROLE_AIW_RESTRICTED_REVIEWER: SELECT
  ROLE_AIW_PRIVILEGED_REVIEWER: SELECT
  all_other_runtime_roles: NONE

G. audit and history tables
- aiworker.worker_state_change_log
- aiworker.worker_assignment_history
- aiworker.worker_repair_history
- aiworker.worker_rebuild_history
  ROLE_AIW_SCHEMA_OWNER: OWN
  ROLE_AIW_AUDIT_READER: SELECT
  ROLE_AIW_RESTRICTED_REVIEWER: SELECT on restricted-relevant subset via RLS
  ROLE_AIW_PRIVILEGED_REVIEWER: SELECT on privileged-relevant subset via RLS
  all_other_runtime_roles: NONE

H. workflow tables
- aiworker.command_row
- aiworker.draft_row
- aiworker.staging_row
  ROLE_AIW_SCHEMA_OWNER: OWN
  ROLE_AIW_OPERATIONS_REVIEWER: SELECT
  all_other_runtime_roles: NONE

hard_rules:
- controlled-function executor is not granted ad hoc raw-table DML in this ledger
- canonical mutation is modeled as function execution privilege, not broad table privilege
- AI worker runtime roles remain NONE across raw tables



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OFFICIAL INTAKE FUNCTION AND EVENTOUTBOX ACCESS BOUNDARY EXACT
# ============================================================

status: exact-infrastructure
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact access boundary for official intake, controlled functions, and event delivery.

official_intake_boundary:
- aiworker.official_intake_request
  ROLE_AIW_SCHEMA_OWNER:
  - OWN

  ROLE_AIW_OFFICIAL_INTAKE_WRITER:
  - INSERT
  - SELECT on self/eligible workflow scope via RLS
  - UPDATE limited to nonterminal intake metadata allowed by policy
  forbidden:
  - direct APPLIED finalization
  - direct canonical mutation

  ROLE_AIW_CONTROLLED_FUNCTION_EXECUTOR:
  - SELECT on eligible intake rows
  - UPDATE intake_status through controlled workflow only
  forbidden:
  - ad hoc nonworkflow mutation

  all_other_runtime_roles:
  - NONE

controlled_function_boundary:
- functions in controlled catalog:
  ROLE_AIW_SCHEMA_OWNER:
  - OWN
  ROLE_AIW_CONTROLLED_FUNCTION_EXECUTOR:
  - EXECUTE
  all_other_runtime_roles:
  - NONE

event_outbox_boundary:
- aiworker.event_outbox
  ROLE_AIW_SCHEMA_OWNER:
  - OWN

  ROLE_AIW_EVENT_DELIVERY:
  - SELECT on undelivered or eligible delivery rows
  - DELIVERY_UPDATE on delivered_at and delivery metadata only
  forbidden:
  - rewriting summary/result codes
  - rewriting business correlation
  - deleting rows

  ROLE_AIW_AUDIT_READER:
  - SELECT when audit review requires delivery evidence

  all_other_runtime_roles:
  - NONE

status_realization_principle:
- intake writer submits
- controlled-function executor applies
- event delivery role delivers
- no single runtime role owns the whole workflow chain

hard_rules:
- official intake writer cannot finalize canonical mutation
- event delivery cannot mutate worker truth
- event delivery cannot broaden raw truth visibility



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER RESTRICTED AND PRIVILEGED ACCESS MATRIX EXACT
# ============================================================

status: exact-infrastructure
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact access matrix for restricted and privileged truth families.

restricted_family_scope:
- aiworker.worker_restricted_handling_policy
- restricted-relevant rows in aiworker.worker_state_change_log
- restricted-relevant rows in repair/rebuild history when policy-linked

privileged_family_scope:
- aiworker.worker_privileged_profile
- privileged-relevant rows in aiworker.worker_state_change_log
- privileged-relevant exception-control or escalation-linked rows when policy-linked

role_access_matrix:
- ROLE_AIW_RESTRICTED_REVIEWER
  allowed:
  - SELECT restricted family scope
  - SELECT restricted-relevant audit subset via RLS
  forbidden:
  - SELECT privileged profile by default
  - canonical mutation
  - event delivery mutation

- ROLE_AIW_PRIVILEGED_REVIEWER
  allowed:
  - SELECT privileged family scope
  - SELECT privileged-relevant audit subset via RLS
  forbidden:
  - SELECT restricted policy raw text broadly unless explicitly allowed by narrower policy
  - canonical mutation
  - event delivery mutation

- ROLE_AIW_AUDIT_READER
  allowed:
  - SELECT standard audit/history surfaces
  conditional:
  - restricted/privileged subsets only when explicitly combined with narrower role
  forbidden:
  - broad restricted or privileged truth access by default

- ROLE_AIW_OPERATIONS_REVIEWER
  forbidden:
  - direct restricted family read
  - direct privileged family read

review_escalation_principle:
- standard reviewer -> restricted reviewer escalation is explicit
- standard reviewer -> privileged reviewer escalation is explicit
- restricted reviewer and privileged reviewer are separate reviewer families
- combined holding, if ever allowed, must be explicit and auditable

hard_rules:
- restricted and privileged truth families do not inherit to general review
- no AI worker runtime role receives restricted or privileged raw-table read grants



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER REPLAY DECISION MATRIX AND LEDGER EXACT
# ============================================================

status: exact-infrastructure
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the replay-decision matrix and ledger direction.

decision_matrix_axes:
- request_hash match
- target_truth_surface match
- controlled_function_code match
- requested_transition_code match
- normalized_candidate equivalence
- prior intake terminality
- prior canonical apply existence
- prior event emission existence

decision_matrix_examples:
- exact lineage match + prior applied + prior event emitted:
  decision:
  - NOOP_ALREADY_APPLIED or REDELIVER_RESULT_ONLY

- exact lineage match + prior applied + no delivery evidence:
  decision:
  - REDELIVER_RESULT_ONLY

- exact lineage match + no prior applied + prior intake terminal reject:
  decision:
  - APPLY_NEW or REQUIRE_REVIEW depending on policy

- request_hash match + candidate mismatch:
  decision:
  - REJECT_REPLAY_MISMATCH

- nonterminal intake exists:
  decision:
  - BLOCK_NONTERMINAL_INTAKE

replay_ledger_direction:
- optional normalized ledger name:
  - aiworker.replay_decision_log
- minimum fields:
  - replay_decision_log_id
  - request_hash
  - business_request_id
  - worker_id
  - target_truth_surface
  - controlled_function_code
  - replay_decision_code
  - prior_intake_id
  - prior_event_id
  - decision_reason_code
  - decided_at
  - decided_by

hard_rules:
- replay decisions must be auditable
- request_hash lineage remains stable key material
- replay ledger is evidence, not alternate worker truth



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER ACCEPTANCE TEST CATALOG EXACT
# ============================================================

status: exact-infrastructure
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the minimum acceptance test catalog for implementation-ready status.

test_buckets:

A. boundary tests
- business does not own worker mutable truth
- aiworker owns canonical worker truth
- cx22073jw implementation dependency remains external
- raw-table direct-read prohibition holds for AI worker runtime actors

B. schema and code-table tests
- aiworker schema exists
- required core tables exist
- required code families exist
- current-row uniqueness holds where required

C. controlled function tests
- official intake required before canonical mutation
- gate denial blocks mutation
- approval requirement blocks mutation when missing
- audit-required mutation fails without audit side effect
- legal transition succeeds
- illegal transition fails closed

D. payload tests
- command payload validates
- staging payload normalizes correctly
- official intake payload rejects unknown critical shape
- result payload excludes raw internal refs
- payload_version handling is correct

E. replay tests
- duplicate identical request returns NOOP_ALREADY_APPLIED or REDELIVER_RESULT_ONLY
- mismatched replay is rejected
- nonterminal intake blocks auto-remutation
- redelivery does not remutate canonical truth

F. grant and RLS tests
- AI worker runtime raw-table grants are absent
- official intake writer cannot finalize mutation
- controlled-function executor can execute only allowed functions
- restricted reviewer and privileged reviewer are separated
- event delivery role is narrow

G. recovery tests
- stuck intake recovery runbook is executable in dry-run mode
- event redelivery recovery works without remutation
- audit gap detection works
- recovery operations produce incident-linked evidence

H. event delivery tests
- required outbox rows are written
- delivery metadata updates are narrow
- duplicate delivery handling preserves result integrity

implementation_ready_test_minimum:
- at least one PASS scenario and one FAIL scenario per bucket
- all critical boundary tests PASS
- all replay safety tests PASS
- all grant boundary tests PASS

hard_rules:
- implementation-ready status cannot be claimed without acceptance evidence
- smoke-only testing is insufficient



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS INFRASTRUCTURE INDEX
# ============================================================

status: index
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

documents:
- 1100001_AIWORKER_OS_SCHEMA_AND_VIEW_INFRASTRUCTURE.md
- 1100101_AIWORKER_SCHEMA_TABLE_LEDGER_EXACT.md
- 1100102_AIWORKER_ENUM_CODE_AND_ID_POLICY_EXACT.md
- 1100103_AIWORKER_CX22073JW_VIEW_FAMILY_COLUMN_SHAPE_EXACT.md
- 1100104_AIWORKER_CONTROLLED_FUNCTION_AND_OFFICIAL_INTAKE_EXACT.md
- 1100105_AIWORKER_SQL_DDL_CORE_TABLES_EXACT.md
- 1100106_AIWORKER_SQL_DDL_CODE_TABLES_AND_SEEDS_EXACT.md
- 1100107_AIWORKER_SQL_DDL_INDEX_AND_CONSTRAINT_LEDGER_EXACT.md
- 1100110_AIWORKER_CONTROLLED_FUNCTION_SQL_CONTRACT_EXACT.md
- 1100111_AIWORKER_OFFICIAL_INTAKE_PROCESSING_AND_STATUS_MACHINE_EXACT.md
- 1100112_AIWORKER_AUDIT_AND_OUTBOX_EMISSION_CONTRACT_EXACT.md
- 1100113_AIWORKER_CANONICAL_PAYLOAD_SCHEMA_CATALOG_EXACT.md
- 1100114_AIWORKER_RESULT_SUMMARY_CODE_AND_PAYLOAD_MAPPING_EXACT.md
- 1100115_AIWORKER_RAW_TABLE_ACCESS_LEDGER_EXACT.md
- 1100116_AIWORKER_OFFICIAL_INTAKE_FUNCTION_AND_EVENTOUTBOX_ACCESS_BOUNDARY_EXACT.md
- 1100117_AIWORKER_RESTRICTED_AND_PRIVILEGED_ACCESS_MATRIX_EXACT.md
- 1100118_AIWORKER_REPLAY_DECISION_MATRIX_AND_LEDGER_EXACT.md
- 1100119_AIWORKER_ACCEPTANCE_TEST_CATALOG_EXACT.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS INFRASTRUCTURE OVERVIEW
# ============================================================

status: overview
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Defines schema, tables, enums, function contracts, payload catalog, replay ledger, grant matrix, and canonical mutation infrastructure.

current_scope:
- 1100001_AIWORKER_OS_SCHEMA_AND_VIEW_INFRASTRUCTURE.md
- 1100101_AIWORKER_SCHEMA_TABLE_LEDGER_EXACT.md
- 1100102_AIWORKER_ENUM_CODE_AND_ID_POLICY_EXACT.md
- 1100103_AIWORKER_CX22073JW_VIEW_FAMILY_COLUMN_SHAPE_EXACT.md
- 1100104_AIWORKER_CONTROLLED_FUNCTION_AND_OFFICIAL_INTAKE_EXACT.md
- 1100105_AIWORKER_SQL_DDL_CORE_TABLES_EXACT.md
- 1100106_AIWORKER_SQL_DDL_CODE_TABLES_AND_SEEDS_EXACT.md
- 1100107_AIWORKER_SQL_DDL_INDEX_AND_CONSTRAINT_LEDGER_EXACT.md
- 1100110_AIWORKER_CONTROLLED_FUNCTION_SQL_CONTRACT_EXACT.md
- 1100111_AIWORKER_OFFICIAL_INTAKE_PROCESSING_AND_STATUS_MACHINE_EXACT.md
- 1100112_AIWORKER_AUDIT_AND_OUTBOX_EMISSION_CONTRACT_EXACT.md
- 1100113_AIWORKER_CANONICAL_PAYLOAD_SCHEMA_CATALOG_EXACT.md
- 1100114_AIWORKER_RESULT_SUMMARY_CODE_AND_PAYLOAD_MAPPING_EXACT.md
- 1100115_AIWORKER_RAW_TABLE_ACCESS_LEDGER_EXACT.md
- 1100116_AIWORKER_OFFICIAL_INTAKE_FUNCTION_AND_EVENTOUTBOX_ACCESS_BOUNDARY_EXACT.md
- 1100117_AIWORKER_RESTRICTED_AND_PRIVILEGED_ACCESS_MATRIX_EXACT.md
- 1100118_AIWORKER_REPLAY_DECISION_MATRIX_AND_LEDGER_EXACT.md
- 1100119_AIWORKER_ACCEPTANCE_TEST_CATALOG_EXACT.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS IMPLEMENTATION SEQUENCE
# ============================================================

status: implementation-ready-design-sequence
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

phase_1:
Create root, layer directories, and root authority documents.

phase_2:
Create aiworker schema design and controlled write surface design.

phase_3:
Create worker core tables:
- master
- domain role binding
- lifecycle
- capability
- assignment
- restriction
- audit

phase_4:
Create tendency and growth tables.

phase_5:
Create cx22073jw view families VF200 to VF262.

phase_6:
Create BusinessOS boundary interfaces and result summary routing.

phase_7:
Create runtime gates, repair/rebuild flows, and audit policies.

phase_8:
Freeze initial integrated canonical build and begin exact payload design.

final_rule:
Build AiworkerOS in worker-truth order,
not in UI-first order.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER IMPLEMENTATION PHASE PLAN EXACT
# ============================================================

status: exact-implementation-plan
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
Freeze the first exact implementation sequence.

phase_plan:
- Phase A1: boundary freeze
  targets:
  - truth split freeze
  - lane freeze
  - read family freeze
  - write surface freeze

- Phase A2: schema and enum foundation
  targets:
  - aiworker schema
  - core tables
  - code families
  - state logs

- Phase A3: cx22073jw read family implementation
  targets:
  - safe view families
  - privileged gate routing
  - role-specific filtering

- Phase A4: controlled function and official intake path
  targets:
  - official intake table
  - controlled functions
  - audit logging

- Phase A5: business integration
  targets:
  - request/result event contracts
  - business correlation
  - ERP-facing summary boundary

- Phase A6: acceptance and freeze
  targets:
  - gate verification
  - boundary verification
  - integrated rebuild



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER ACCEPTANCE GATE EXACT
# ============================================================

status: exact-acceptance-gate
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
Freeze the minimum acceptance gates for implementation-ready status.

must_pass:
- business does not own worker mutable truth
- aiworker owns worker entity and state truth
- AI workers do not read raw aiworker tables
- AI workers do not read raw business tables
- cx22073jw families are AI-worker-only
- style does not change authority
- rank does not bypass gate
- official apply path uses controlled function only
- repair and rebuild state changes are logged
- business correlation is preserved on result events

freeze_condition:
Implementation-ready status is granted only after all must_pass items are satisfied.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER WB01 SQL DDL APPLY ORDER EXACT
# ============================================================

status: wb01-apply-order
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact apply order for WB01 SQL DDL.

apply_order:
1. create schema `aiworker`
2. create code tables
3. insert minimum seed families and values
4. create master tables
5. create tendency tables
6. create growth and capability tables
7. create assignment and availability tables
8. create affinity and restricted tables
9. create audit and history tables
10. create command / draft / staging / official_intake / event_outbox tables
11. create unique indexes
12. create normal indexes
13. add check constraints
14. verify zero forbidden direct-read grants
15. freeze migration journal entry

verification_minimum:
- all target tables exist
- all expected unique indexes exist
- one-current-row partial indexes exist
- code family seed rows exist
- no cx22073jw views are created in WB01
- no AI-worker direct raw table read grants are introduced



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER WB01 SQL REVIEW GATE EXACT
# ============================================================

status: wb01-review-gate
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
Freeze the review gate before WB01 SQL is turned into executable migrations.

review_gate:
- SQL execution material must be reviewed by 佐藤(DB担当)
- destructive change is not allowed in WB01
- additive-only migration style is mandatory
- executable migration text must preserve the exact canonical boundary already fixed in design
- raw-table grant strategy must be reviewed before any apply step
- rank and style must not appear as SQL privilege shortcuts

required_before_execution:
- exact rank code catalog import source fixed
- target database environment fixed
- migration numbering rule fixed
- rollback policy fixed
- grant and revoke policy fixed

out_of_scope_for_wb01:
- cx22073jw view DDL
- RLS finalization
- trigger hardening
- replay and backfill procedures
- full grant matrix



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER WB03 APPLY ORDER EXACT
# ============================================================

status: wb03-apply-order
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact apply order for WB03 controlled-function implementation preparation.

apply_order:
1. verify WB01 canonical tables exist
2. verify official intake table exists
3. freeze function catalog and function-code mapping
4. freeze transition legality tables or equivalent static mapping source
5. define common input/output contract
6. define gate validation helper direction
7. define controlled function contract per mutation family
8. define intake status machine
9. define audit side-effect contract
10. define outbox emission contract
11. define business correlation return contract
12. verify no function depends on cx22073jw implementation details
13. freeze integration journal entry

verification_minimum:
- all controlled functions are named and scoped
- each function has target truth surface defined
- each function has mandatory side effects defined
- intake status machine is fixed
- gate validation order is fixed
- audit and outbox contracts are fixed



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER WB03 ACCEPTANCE GATE EXACT
# ============================================================

status: wb03-acceptance-gate
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
Freeze the acceptance gate for WB03 controlled-function exact design.

must_pass:
- official intake is the only legal canonical mutation request surface
- controlled functions are the only legal canonical mutation executors
- each function has fixed target truth surface
- each function has fixed validation order
- each function has fixed mandatory side effects
- illegal transitions fail closed
- approval requirement cannot be bypassed by rank, role, or style
- audit-required mutations cannot succeed without audit write
- required result-return mutations cannot succeed without outbox emission
- business correlation is output-only and not cross-schema direct mutation
- cx22073jw implementation remains external to WB03 scope

freeze_condition:
WB03 is implementation-ready only when all must_pass items are satisfied.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER WB04 APPLY ORDER EXACT
# ============================================================

status: wb04-apply-order
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact apply order for WB04 payload JSON contract work.

apply_order:
1. freeze business request event JSON contract
2. freeze command payload JSON contract
3. freeze draft payload JSON contract
4. freeze staging normalized payload JSON contract
5. freeze official intake payload JSON contract
6. freeze result event payload JSON contract
7. freeze payload schema catalog identifiers
8. freeze sanitization and replay rules
9. freeze result_code / summary_code / summary band mapping
10. verify all payload surfaces are lifecycle-distinct
11. freeze payload contract journal entry

verification_minimum:
- every payload surface has explicit version
- every payload surface has explicit required fields
- request/result boundary contracts are separated
- replay lineage fields are present where required
- result payload excludes raw internal refs



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER WB04 ACCEPTANCE GATE EXACT
# ============================================================

status: wb04-acceptance-gate
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
Freeze the acceptance gate for WB04 payload exact design.

must_pass:
- command payload contract is fixed
- draft payload contract is fixed
- staging payload contract is fixed
- official intake payload contract is fixed
- result event payload contract is fixed
- business request/result boundary payloads are fixed
- payload_version is explicit on all payload families
- replay lineage is present where required
- sanitization rules are fixed
- result payload excludes raw payload_ref and unrestricted internal details
- summary code mapping is fixed
- cx22073jw implementation remains out of WB04 scope

freeze_condition:
WB04 is implementation-ready only when all must_pass items are satisfied.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER WB05 APPLY ORDER EXACT
# ============================================================

status: wb05-apply-order
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact apply order for WB05 grant and RLS design.

apply_order:
1. freeze role family catalog
2. freeze raw-table access ledger
3. freeze official intake write/execution separation
4. freeze controlled function EXECUTE boundary
5. freeze event delivery role boundary
6. freeze restricted and privileged reviewer role boundary
7. freeze deny-by-default raw-table posture
8. freeze RLS direction for tenant-sensitive families
9. review grant direction with 佐藤(DB担当)
10. freeze grant/RLS journal entry

verification_minimum:
- ROLE_AIW_NO_RAWTABLE_AIWORKER has no raw-table grants
- official intake writer and function executor are separated
- event delivery role is narrower than audit/review roles
- restricted and privileged reviewer roles are separated from general review
- RLS is defined as defense-in-depth, not replacement for deny-by-default grants



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER WB05 ACCEPTANCE GATE EXACT
# ============================================================

status: wb05-acceptance-gate
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
Freeze the acceptance gate for WB05 grant matrix and RLS exact design.

must_pass:
- AI worker runtime roles have zero raw-table read grants
- raw truth is deny-by-default
- official intake writer cannot finalize canonical mutation directly
- controlled-function executor is the only execution role for canonical mutation
- event delivery can only access outbox delivery surface narrowly
- audit reviewer is separate from event delivery
- restricted reviewer is separate from privileged reviewer
- restricted and privileged truth do not inherit to general review
- RLS direction is fixed for tenant-sensitive families
- grant/RLS direction is reviewed with 佐藤(DB担当)

freeze_condition:
WB05 is implementation-ready only when all must_pass items are satisfied.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER WB06 APPLY ORDER EXACT
# ============================================================

status: wb06-apply-order
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact apply order for WB06.

apply_order:
1. freeze replay decision flow
2. freeze BusinessOS replay/redelivery boundary
3. freeze replay decision input/output contract
4. freeze safety guards for replay/backfill/recovery
5. freeze replay decision matrix and ledger direction
6. freeze backfill and recovery runbook direction
7. freeze acceptance test catalog
8. verify WB01-WB05 dependencies are referenced consistently
9. review SQL-affecting recovery direction with 佐藤(DB担当)
10. freeze WB06 journal entry

verification_minimum:
- replay decision codes are fixed
- recovery runbook sections are fixed
- acceptance test buckets cover boundary, payload, replay, grants, and recovery
- implementation-ready preconditions are clear



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER WB06 ACCEPTANCE GATE EXACT
# ============================================================

status: wb06-acceptance-gate
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
Freeze the acceptance gate for WB06 and implementation-ready prefreeze status.

must_pass:
- replay decision flow is fixed
- idempotency lineage is fixed
- redelivery without remutation is fixed
- mismatch replay fails closed
- backfill and recovery runbook direction is fixed
- safety guards are fixed
- acceptance test catalog is fixed
- grant/RLS boundary tests are included
- controlled function boundary tests are included
- SQL-affecting recovery direction is reviewed with 佐藤(DB担当)

prefreeze_condition:
WB06 is complete only when all must_pass items are satisfied and the system is ready
for an implementation-ready freeze bundle.

hard_rules:
- replay ambiguity cannot be left implicit
- recovery cannot be left as ad hoc operator behavior
- implementation-ready claim requires acceptance-test planning evidence



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS IMPLEMENTATION INDEX
# ============================================================

status: index
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

documents:
- 1200001_AIWORKER_OS_IMPLEMENTATION_SEQUENCE.md
- 1200101_AIWORKER_IMPLEMENTATION_PHASE_PLAN_EXACT.md
- 1200102_AIWORKER_ACCEPTANCE_GATE_EXACT.md
- 1200103_AIWORKER_WB01_SQL_DDL_APPLY_ORDER_EXACT.md
- 1200104_AIWORKER_WB01_SQL_REVIEW_GATE_EXACT.md
- 1200107_AIWORKER_WB03_APPLY_ORDER_EXACT.md
- 1200108_AIWORKER_WB03_ACCEPTANCE_GATE_EXACT.md
- 1200109_AIWORKER_WB04_APPLY_ORDER_EXACT.md
- 1200110_AIWORKER_WB04_ACCEPTANCE_GATE_EXACT.md
- 1200111_AIWORKER_WB05_APPLY_ORDER_EXACT.md
- 1200112_AIWORKER_WB05_ACCEPTANCE_GATE_EXACT.md
- 1200113_AIWORKER_WB06_APPLY_ORDER_EXACT.md
- 1200114_AIWORKER_WB06_ACCEPTANCE_GATE_EXACT.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS IMPLEMENTATION OVERVIEW
# ============================================================

status: overview
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
Defines implementation phases and acceptance gates.

current_scope:
- 1200001_AIWORKER_OS_IMPLEMENTATION_SEQUENCE.md
- 1200101_AIWORKER_IMPLEMENTATION_PHASE_PLAN_EXACT.md
- 1200102_AIWORKER_ACCEPTANCE_GATE_EXACT.md
- 1200103_AIWORKER_WB01_SQL_DDL_APPLY_ORDER_EXACT.md
- 1200104_AIWORKER_WB01_SQL_REVIEW_GATE_EXACT.md
- 1200107_AIWORKER_WB03_APPLY_ORDER_EXACT.md
- 1200108_AIWORKER_WB03_ACCEPTANCE_GATE_EXACT.md
- 1200109_AIWORKER_WB04_APPLY_ORDER_EXACT.md
- 1200110_AIWORKER_WB04_ACCEPTANCE_GATE_EXACT.md
- 1200111_AIWORKER_WB05_APPLY_ORDER_EXACT.md
- 1200112_AIWORKER_WB05_ACCEPTANCE_GATE_EXACT.md
- 1200113_AIWORKER_WB06_APPLY_ORDER_EXACT.md
- 1200114_AIWORKER_WB06_ACCEPTANCE_GATE_EXACT.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS DEVELOPMENT WORKBLOCK
# ============================================================

status: development-guidance
system: AiworkerOS
layer: 130.development
owner: Boss
prepared_by: Zero

development_rules:
- additive only
- preserve canonical boundary
- no destructive shortcut through raw access
- use index and overview files at each created layer root
- keep English filenames and stable logical names
- do not redefine official rank names locally
- do not merge BusinessOS commercial truth into aiworker truth

next_design_targets:
- exact table columns
- exact enum definitions
- exact event payloads
- exact controlled function contracts
- exact cx22073jw view column policy
- exact gate matrix by lane and mode

final_rule:
The first implementation target after this bundle is exact schema and payload fixation.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER DEVELOPMENT WORKBLOCK EXACT
# ============================================================

status: development-workblock
system: AiworkerOS
layer: 130.development
owner: Boss
prepared_by: Zero

purpose:
Provide the immediate next development-ready bundles after exact bundle 01.

next_workblocks:
- WB01: exact SQL DDL ledger for aiworker schema
- WB02: exact SQL view ledger for cx22073jw families
- WB03: exact request and result payload JSON contract
- WB04: exact controlled function input and output contract
- WB05: exact audit and replay design
- WB06: exact acceptance test catalog

priority_rule:
Start from WB01 through WB04 before UI or noncanonical conveniences.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER WB01 NEXT WORKBLOCK EXACT
# ============================================================

status: wb01-next-workblock
system: AiworkerOS
layer: 130.development
owner: Boss
prepared_by: Zero

purpose:
Define the next exact bundle after WB01.

next_workblock:
- WB02: cx22073jw AI-worker-only read view DDL exact bundle

wb02_targets:
- exact view SQL ledger
- column-by-column safe projection
- privileged gate routing policy
- restricted family handling
- BusinessOS read-boundary nonleak verification
- view naming and refresh strategy

followup_after_wb02:
- WB03: controlled function exact SQL contract
- WB04: request/result payload exact JSON contract
- WB05: grant matrix and RLS exact design



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER WB03 NEXT WORKBLOCK EXACT
# ============================================================

status: wb03-next-workblock
system: AiworkerOS
layer: 130.development
owner: Boss
prepared_by: Zero

purpose:
Define the next exact bundle after WB03.

next_workblock:
- WB04: request and result payload exact JSON contract

wb04_targets:
- command row payload contract
- draft payload contract
- staging normalized payload contract
- official intake payload contract
- business request/result event JSON contract
- summary/result code payload mapping
- replay-safe payload rules

followup_after_wb04:
- WB05: grant matrix and RLS exact design
- WB06: replay, backfill, and acceptance test catalog



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER WB04 NEXT WORKBLOCK EXACT
# ============================================================

status: wb04-next-workblock
system: AiworkerOS
layer: 130.development
owner: Boss
prepared_by: Zero

purpose:
Define the next exact bundle after WB04.

next_workblock:
- WB05: grant matrix and RLS exact design

wb05_targets:
- aiworker raw-table access matrix
- controlled-function execution roles
- official intake write role separation
- no-direct-read policy realization
- restricted / privileged access matrix
- event_outbox delivery-side grant boundary

followup_after_wb05:
- WB06: replay, backfill, and acceptance test catalog



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER WB05 NEXT WORKBLOCK EXACT
# ============================================================

status: wb05-next-workblock
system: AiworkerOS
layer: 130.development
owner: Boss
prepared_by: Zero

purpose:
Define the next exact bundle after WB05.

next_workblock:
- WB06: replay, backfill, and acceptance test catalog

wb06_targets:
- replay decision matrix
- idempotency verification catalog
- backfill and repair runbook design
- migration verification checklist
- function-side acceptance tests
- event delivery acceptance tests
- failure and recovery test cases

followup_after_wb06:
- implementation-ready freeze bundle



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER IMPLEMENTATION READY FREEZE PREP EXACT
# ============================================================

status: wb06-next-workblock
system: AiworkerOS
layer: 130.development
owner: Boss
prepared_by: Zero

purpose:
Define the immediate follow-up after WB06.

next_step:
- implementation-ready freeze bundle

freeze_bundle_targets:
- bundle-wide consistency verification
- unresolved gap ledger
- exact scope confirmation
- canonical integrated rebuild
- implementation entrypoint documentation
- reviewer signoff checklist

pre_freeze_checklist:
- WB01 through WB06 integrated consistency check
- canonical boundary contradiction check
- payload/function/grant alignment check
- recovery/runbook completeness check
- final integrated document regeneration

hard_rule:
No implementation-ready freeze claim before cross-bundle contradiction check passes.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS DEVELOPMENT INDEX
# ============================================================

status: index
system: AiworkerOS
layer: 130.development
owner: Boss
prepared_by: Zero

documents:
- 1300001_AIWORKER_OS_DEVELOPMENT_WORKBLOCK.md
- 1300101_AIWORKER_DEVELOPMENT_WORKBLOCK_EXACT.md
- 1300102_AIWORKER_WB01_NEXT_WORKBLOCK_EXACT.md
- 1300104_AIWORKER_WB03_NEXT_WORKBLOCK_EXACT.md
- 1300105_AIWORKER_WB04_NEXT_WORKBLOCK_EXACT.md
- 1300106_AIWORKER_WB05_NEXT_WORKBLOCK_EXACT.md
- 1300107_AIWORKER_IMPLEMENTATION_READY_FREEZE_PREP_EXACT.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS DEVELOPMENT OVERVIEW
# ============================================================

status: overview
system: AiworkerOS
layer: 130.development
owner: Boss
prepared_by: Zero

purpose:
Defines next workblocks and implementation priorities.

current_scope:
- 1300001_AIWORKER_OS_DEVELOPMENT_WORKBLOCK.md
- 1300101_AIWORKER_DEVELOPMENT_WORKBLOCK_EXACT.md
- 1300102_AIWORKER_WB01_NEXT_WORKBLOCK_EXACT.md
- 1300104_AIWORKER_WB03_NEXT_WORKBLOCK_EXACT.md
- 1300105_AIWORKER_WB04_NEXT_WORKBLOCK_EXACT.md
- 1300106_AIWORKER_WB05_NEXT_WORKBLOCK_EXACT.md
- 1300107_AIWORKER_IMPLEMENTATION_READY_FREEZE_PREP_EXACT.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS SOCIETY POSITION
# ============================================================

status: canonical
system: AiworkerOS
layer: 900.society
owner: Boss
prepared_by: Zero

position:
AiworkerOS is the societal worker-truth operating system for Ai(robot) labor entities.

social_scope:
- worker presence across multiple domains
- cross-domain worker assignment readiness
- consistent worker identity despite app differences
- stable worker governance across conservative and aggressive provider styles

final_rule:
AiworkerOS provides one worker-truth backbone across the civilization's labor surfaces.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS SOCIETY INDEX
# ============================================================

status: index
system: AiworkerOS
layer: 900.society
owner: Boss
prepared_by: Zero

documents:
- 9000001_AIWORKER_OS_SOCIETY_POSITION.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS SOCIETY OVERVIEW
# ============================================================

status: overview
system: AiworkerOS
layer: 900.society
owner: Boss
prepared_by: Zero

purpose:
Defines AiworkerOS position in worker society design.

current_scope:
- 9000001_AIWORKER_OS_SOCIETY_POSITION.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS CIVILIZATION POSITION
# ============================================================

status: canonical
system: AiworkerOS
layer: 910.civilization
owner: Boss
prepared_by: Zero

civilization_position:
AiworkerOS becomes the canonical worker entity OS placed alongside
CivilizationOS, PersonaOS, BusinessOS, LifeOS, GameOS, StreamingOS, and StaticArtOS.

civilization_boundaries:
- PersonaOS remains persona truth owner
- BusinessOS remains commercial and ERP-side owner for business flows
- AiworkerOS becomes worker truth owner
- cx22073jw remains privileged AI worker read-view plane

final_rule:
AiworkerOS is a new first-class OS in the Civilization System,
not a submodule hidden inside BusinessOS.



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS CIVILIZATION INDEX
# ============================================================

status: index
system: AiworkerOS
layer: 910.civilization
owner: Boss
prepared_by: Zero

documents:
- 9100001_AIWORKER_OS_CIVILIZATION_POSITION.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS CIVILIZATION OVERVIEW
# ============================================================

status: overview
system: AiworkerOS
layer: 910.civilization
owner: Boss
prepared_by: Zero

purpose:
Defines AiworkerOS position in the wider Civilization System.

current_scope:
- 9100001_AIWORKER_OS_CIVILIZATION_POSITION.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS BUILD MANIFEST
# ============================================================

status: generated
system: AiworkerOS
owner: Boss
prepared_by: Zero
generated_at: 2026-04-20 21:43:13 +0900

root:
/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os

generated_markdown_count:
- 59

generated_layers:
- 000.rules
- 010.constitution
- 020.architecture
- 030.model
- 040.runtime
- 050.flow
- 060.integration
- 070.operations
- 080.policy
- 090.interface
- 100.security
- 110.infrastructure
- 120.implementation
- 130.development
- 900.society
- 910.civilization
- 920.meta
- 999.archive

bundle_status:
- initial AiworkerOS design bundle created
- index and overview files created for each active top-level layer
- integrated initial markdown ready to build



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS META INDEX
# ============================================================

status: index
system: AiworkerOS
layer: 920.meta
owner: Boss
prepared_by: Zero

documents:
- 9200001_AIWORKER_OS_BUILD_MANIFEST.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS META OVERVIEW
# ============================================================

status: overview
system: AiworkerOS
layer: 920.meta
owner: Boss
prepared_by: Zero

purpose:
Stores manifests and generated metadata for AiworkerOS.

current_scope:
- 9200001_AIWORKER_OS_BUILD_MANIFEST.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS EXACT BUNDLE 01 MANIFEST
# ============================================================

status: generated
system: AiworkerOS
owner: Boss
prepared_by: Zero
generated_at: 20260420_220406

bundle_name:
- exact_bundle_01

generated_documents:
- 000002_AIWORKER_OS_EXACT_BUNDLE_01_START_HERE.md
- 020.architecture/0200101_AIWORKER_TRUTH_SPLIT_ARCHITECTURE_EXACT.md
- 020.architecture/0200102_AIWORKER_RUNTIME_SURFACE_AND_LANE_ARCHITECTURE_EXACT.md
- 030.model/011103000000010_AIWORKER_CLASSIFICATION_AND_EFFECTIVE_BEHAVIOR_MODEL.md
- 030.model/011103000000011_AIWORKER_TENANCY_ASSIGNMENT_AND_AVAILABILITY_MODEL.md
- 030.model/011103000000012_AIWORKER_GROWTH_TENDENCY_AND_FIT_EXACT_MODEL.md
- 040.runtime/0400101_AIWORKER_EFFECTIVE_BEHAVIOR_AND_GATE_RUNTIME_EXACT_MODEL.md
- 050.flow/0500101_AIWORKER_COMMAND_DRAFT_STAGING_OFFICIAL_WRITE_FLOW_EXACT.md
- 050.flow/0500102_AIWORKER_DISPATCH_ASSIGNMENT_REPAIR_REBUILD_FLOW_EXACT.md
- 060.integration/0600101_AIWORKER_BUSINESSOS_INTERFACE_EXACT_DESIGN.md
- 060.integration/0600102_AIWORKER_CX22073JW_READ_VIEW_FAMILY_EXACT_DESIGN.md
- 090.interface/0900101_AIWORKER_EVENT_COMMAND_INTERFACE_EXACT_CATALOG.md
- 100.security/1000101_AIWORKER_ALLOWED_VIEW_GATE_AND_WRITE_SURFACE_SECURITY_MODEL.md
- 110.infrastructure/1100101_AIWORKER_SCHEMA_TABLE_LEDGER_EXACT.md
- 110.infrastructure/1100102_AIWORKER_ENUM_CODE_AND_ID_POLICY_EXACT.md
- 110.infrastructure/1100103_AIWORKER_CX22073JW_VIEW_FAMILY_COLUMN_SHAPE_EXACT.md
- 110.infrastructure/1100104_AIWORKER_CONTROLLED_FUNCTION_AND_OFFICIAL_INTAKE_EXACT.md
- 120.implementation/1200101_AIWORKER_IMPLEMENTATION_PHASE_PLAN_EXACT.md
- 120.implementation/1200102_AIWORKER_ACCEPTANCE_GATE_EXACT.md
- 130.development/1300101_AIWORKER_DEVELOPMENT_WORKBLOCK_EXACT.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS EXACT BUNDLE 01 MANIFEST
# ============================================================

status: generated
system: AiworkerOS
owner: Boss
prepared_by: Zero
generated_at: 20260420_223714

bundle_name:
- exact_bundle_01

generated_documents:
- 000002_AIWORKER_OS_EXACT_BUNDLE_01_START_HERE.md
- 020.architecture/0200101_AIWORKER_TRUTH_SPLIT_ARCHITECTURE_EXACT.md
- 020.architecture/0200102_AIWORKER_RUNTIME_SURFACE_AND_LANE_ARCHITECTURE_EXACT.md
- 030.model/011103000000010_AIWORKER_CLASSIFICATION_AND_EFFECTIVE_BEHAVIOR_MODEL.md
- 030.model/011103000000011_AIWORKER_TENANCY_ASSIGNMENT_AND_AVAILABILITY_MODEL.md
- 030.model/011103000000012_AIWORKER_GROWTH_TENDENCY_AND_FIT_EXACT_MODEL.md
- 040.runtime/0400101_AIWORKER_EFFECTIVE_BEHAVIOR_AND_GATE_RUNTIME_EXACT_MODEL.md
- 050.flow/0500101_AIWORKER_COMMAND_DRAFT_STAGING_OFFICIAL_WRITE_FLOW_EXACT.md
- 050.flow/0500102_AIWORKER_DISPATCH_ASSIGNMENT_REPAIR_REBUILD_FLOW_EXACT.md
- 060.integration/0600101_AIWORKER_BUSINESSOS_INTERFACE_EXACT_DESIGN.md
- 060.integration/0600102_AIWORKER_CX22073JW_READ_VIEW_FAMILY_EXACT_DESIGN.md
- 090.interface/0900101_AIWORKER_EVENT_COMMAND_INTERFACE_EXACT_CATALOG.md
- 100.security/1000101_AIWORKER_ALLOWED_VIEW_GATE_AND_WRITE_SURFACE_SECURITY_MODEL.md
- 110.infrastructure/1100101_AIWORKER_SCHEMA_TABLE_LEDGER_EXACT.md
- 110.infrastructure/1100102_AIWORKER_ENUM_CODE_AND_ID_POLICY_EXACT.md
- 110.infrastructure/1100103_AIWORKER_CX22073JW_VIEW_FAMILY_COLUMN_SHAPE_EXACT.md
- 110.infrastructure/1100104_AIWORKER_CONTROLLED_FUNCTION_AND_OFFICIAL_INTAKE_EXACT.md
- 120.implementation/1200101_AIWORKER_IMPLEMENTATION_PHASE_PLAN_EXACT.md
- 120.implementation/1200102_AIWORKER_ACCEPTANCE_GATE_EXACT.md
- 130.development/1300101_AIWORKER_DEVELOPMENT_WORKBLOCK_EXACT.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS WB01 SQL DDL MANIFEST
# ============================================================

status: generated
system: AiworkerOS
owner: Boss
prepared_by: Zero
generated_at: 20260421_044706

generated_documents:
- 000003_AIWORKER_OS_WB01_SQL_DDL_START_HERE.md
- 110.infrastructure/1100105_AIWORKER_SQL_DDL_CORE_TABLES_EXACT.md
- 110.infrastructure/1100106_AIWORKER_SQL_DDL_CODE_TABLES_AND_SEEDS_EXACT.md
- 110.infrastructure/1100107_AIWORKER_SQL_DDL_INDEX_AND_CONSTRAINT_LEDGER_EXACT.md
- 120.implementation/1200103_AIWORKER_WB01_SQL_DDL_APPLY_ORDER_EXACT.md
- 120.implementation/1200104_AIWORKER_WB01_SQL_REVIEW_GATE_EXACT.md
- 130.development/1300102_AIWORKER_WB01_NEXT_WORKBLOCK_EXACT.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS WB03 CONTROLLED FUNCTION CONTRACT MANIFEST
# ============================================================

status: generated
system: AiworkerOS
owner: Boss
prepared_by: Zero
generated_at: 20260421_050252

generated_documents:
- 000005_AIWORKER_OS_WB03_CONTROLLED_FUNCTION_START_HERE.md
- 060.integration/0600104_AIWORKER_BUSINESS_CORRELATION_AND_RESULT_RETURN_CONTRACT_EXACT.md
- 090.interface/0900102_AIWORKER_CONTROLLED_FUNCTION_INPUT_OUTPUT_INTERFACE_EXACT.md
- 100.security/1000103_AIWORKER_GATE_VALIDATION_AND_TRANSITION_GUARD_EXACT.md
- 110.infrastructure/1100110_AIWORKER_CONTROLLED_FUNCTION_SQL_CONTRACT_EXACT.md
- 110.infrastructure/1100111_AIWORKER_OFFICIAL_INTAKE_PROCESSING_AND_STATUS_MACHINE_EXACT.md
- 110.infrastructure/1100112_AIWORKER_AUDIT_AND_OUTBOX_EMISSION_CONTRACT_EXACT.md
- 120.implementation/1200107_AIWORKER_WB03_APPLY_ORDER_EXACT.md
- 120.implementation/1200108_AIWORKER_WB03_ACCEPTANCE_GATE_EXACT.md
- 130.development/1300104_AIWORKER_WB03_NEXT_WORKBLOCK_EXACT.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS WB04 PAYLOAD JSON CONTRACT MANIFEST
# ============================================================

status: generated
system: AiworkerOS
owner: Boss
prepared_by: Zero
generated_at: 20260421_051746

generated_documents:
- 000006_AIWORKER_OS_WB04_PAYLOAD_JSON_CONTRACT_START_HERE.md
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



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS WB05 GRANT MATRIX RLS MANIFEST
# ============================================================

status: generated
system: AiworkerOS
owner: Boss
prepared_by: Zero
generated_at: 20260421_052546

generated_documents:
- 000007_AIWORKER_OS_WB05_GRANT_MATRIX_RLS_START_HERE.md
- 100.security/1000105_AIWORKER_ROLE_FAMILY_AND_GRANT_MATRIX_EXACT.md
- 100.security/1000106_AIWORKER_RLS_DIRECTION_AND_NO_DIRECT_READ_POLICY_EXACT.md
- 110.infrastructure/1100115_AIWORKER_RAW_TABLE_ACCESS_LEDGER_EXACT.md
- 110.infrastructure/1100116_AIWORKER_OFFICIAL_INTAKE_FUNCTION_AND_EVENTOUTBOX_ACCESS_BOUNDARY_EXACT.md
- 110.infrastructure/1100117_AIWORKER_RESTRICTED_AND_PRIVILEGED_ACCESS_MATRIX_EXACT.md
- 120.implementation/1200111_AIWORKER_WB05_APPLY_ORDER_EXACT.md
- 120.implementation/1200112_AIWORKER_WB05_ACCEPTANCE_GATE_EXACT.md
- 130.development/1300106_AIWORKER_WB05_NEXT_WORKBLOCK_EXACT.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS WB06 REPLAY BACKFILL ACCEPTANCE MANIFEST
# ============================================================

status: generated
system: AiworkerOS
owner: Boss
prepared_by: Zero
generated_at: 20260421_054625

generated_documents:
- 000008_AIWORKER_OS_WB06_REPLAY_BACKFILL_ACCEPTANCE_START_HERE.md
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



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS ARCHIVE INDEX
# ============================================================

status: index
system: AiworkerOS
layer: 999.archive
owner: Boss
prepared_by: Zero

documents:
- (no layer documents yet)



<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# AIWORKER OS ARCHIVE OVERVIEW
# ============================================================

status: overview
system: AiworkerOS
layer: 999.archive
owner: Boss
prepared_by: Zero

purpose:
Stores archived or superseded documents only.

current_scope:
- (no layer documents yet)


