

# ============================================================
# QUICK FORECAST OVERVIEW
# ============================================================

status: canonical
layer: application
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
QuickForecast is a field-ready business application
that starts from demand forecasting and rapidly connects
forecast results to action ideas, proposal drafts,
planning drafts, and profit-image previews.

product_tiers:
- QuickForecast Basic
- QuickForecast Pro

core_flow:
Forecast
Action
Proposal
Profit

summary:
QuickForecast is not only a forecasting tool.
Its primary value is to transform forecast thinking
into business-ready proposal output.

The application supports short-cycle usage in:
- meetings
- sales visits
- field work
- transit / movement
- quick internal review situations

Basic:
Provides lightweight forecasting and proposal drafting
based on public/general information and manual assumptions.

Pro:
Extends Basic with ERP-linked reference usage,
shared operation, approval handling, synchronization,
history visibility, and governed enterprise handoff.

erp_relation:
ERP retains equivalent forecasting capability.
QuickForecast does not replace ERP.
QuickForecast exists as a fast, mobile,
high-immediacy companion application that helps users
build draft business opportunities quickly.

main_value:
- quickly build forecast drafts
- derive business actions from forecast meaning
- generate proposal / planning drafts
- preview revenue and profit image
- support mobile and interrupted work
- connect field thinking to governed enterprise operation

design_identity:
QuickForecast is a demand-forecast-originated
proposal drafting workbench.


# ============================================================
# QUICK FORECAST INDEX
# ============================================================

status: canonical
layer: application
application: QuickForecast
owner: Boss
prepared_by: Zero

# ============================================================
# ROOT
# ============================================================

- 000_QUICK_FORECAST_OVERVIEW.md
- 000_QUICK_FORECAST_INDEX.md
- 00_QUICK_FORECAST_INTEGRATED.md
- 00_QUICK_FORECAST_INTEGRATED_REBUILT.md

# ============================================================
# 010.CONSTITUTION
# ============================================================

- 010.constitution/constitution_OVERVIEW.md
- 010.constitution/constitution_INDEX.md
- 010.constitution/010_QUICK_FORECAST_CONSTITUTION.md
- 010.constitution/010110_QUICK_FORECAST_BASIC_PRO_CONSTITUTION.md
- 010.constitution/010120_QUICK_FORECAST_ERP_COEXISTENCE_CONSTITUTION.md

# ============================================================
# 020.ARCHITECTURE
# ============================================================

- 020.architecture/architecture_OVERVIEW.md
- 020.architecture/architecture_INDEX.md
- 020.architecture/020_QUICK_FORECAST_ARCHITECTURE.md
- 020.architecture/020110_FORECAST_ACTION_PROPOSAL_PROFIT_ARCHITECTURE.md
- 020.architecture/020120_MOBILE_IMMEDIACY_ARCHITECTURE.md

# ============================================================
# 030.MODEL
# ============================================================

- 030.model/model_OVERVIEW.md
- 030.model/model_INDEX.md
- 030.model/030_QUICK_FORECAST_MODEL_OVERVIEW.md
- 030.model/030100_FORECAST_DRAFT_MODEL.md
- 030.model/030110_FORECAST_SIGNAL_MODEL.md
- 030.model/030120_FORECAST_SCENARIO_MODEL.md
- 030.model/030130_ACTION_IDEA_MODEL.md
- 030.model/030140_PROPOSAL_DRAFT_MODEL.md
- 030.model/030150_PROFIT_PREVIEW_MODEL.md
- 030.model/030160_APPROVAL_REQUEST_MODEL.md
- 030.model/030170_SYNC_STATE_MODEL.md
- 030.model/030180_HISTORY_ENTRY_MODEL.md
- 030.model/030190_VALIDATION_CODE_MODEL.md
- 030.model/030200_ERROR_CODE_MODEL.md
- 030.model/030210_UI_STATE_CODE_MODEL.md
- 030.model/030220_UI_LABEL_CODE_MODEL.md
- 030.model/030230_VALIDATION_CODE_TABLE.md
- 030.model/030240_ERROR_CODE_TABLE.md
- 030.model/030250_UI_STATE_CODE_TABLE.md
- 030.model/030260_SHARE_TARGET_MODEL.md
- 030.model/030270_APPROVAL_EVENT_MODEL.md
- 030.model/030280_ERP_HANDOFF_MODEL.md
- 030.model/030290_PROFIT_ASSUMPTION_MODEL.md
- 030.model/030300_LOCAL_ENTITY_MAPPING_MODEL.md

# ============================================================
# 040.RUNTIME
# ============================================================

- 040.runtime/runtime_OVERVIEW.md
- 040.runtime/runtime_INDEX.md
- 040.runtime/040_QUICK_FORECAST_RUNTIME.md
- 040.runtime/040110_FORECAST_DRAFT_RUNTIME.md
- 040.runtime/040120_ACTION_PROPOSAL_RUNTIME.md
- 040.runtime/040130_SYNC_AND_SUBMISSION_RUNTIME.md

# ============================================================
# 050.FLOW
# ============================================================

- 050.flow/flow_OVERVIEW.md
- 050.flow/flow_INDEX.md
- 050.flow/050_QUICK_FORECAST_FLOW.md
- 050.flow/050110_FORECAST_CREATION_FLOW.md
- 050.flow/050120_ACTION_IDEA_FLOW.md
- 050.flow/050130_PROPOSAL_DRAFT_FLOW.md
- 050.flow/050140_PROFIT_PREVIEW_FLOW.md
- 050.flow/050150_PRO_APPROVAL_AND_SUBMISSION_FLOW.md
- 050.flow/050160_PRO_SHARE_FLOW.md
- 050.flow/050170_ERP_HANDOFF_FLOW.md

# ============================================================
# 060.INTEGRATION
# ============================================================

- 060.integration/integration_OVERVIEW.md
- 060.integration/integration_INDEX.md
- 060.integration/060_QUICK_FORECAST_INTEGRATION.md
- 060.integration/060110_GENERAL_SIGNAL_INTEGRATION_CONTRACT.md
- 060.integration/060120_ERP_REFERENCE_INTEGRATION_CONTRACT.md
- 060.integration/060130_PROPOSAL_EXPORT_INTEGRATION_CONTRACT.md
- 060.integration/060140_PRO_APPROVAL_INTEGRATION_CONTRACT.md
- 060.integration/060150_GOVERNED_SUBMISSION_INTEGRATION_CONTRACT.md
- 060.integration/060160_SHARE_AND_PERMISSION_INTEGRATION_CONTRACT.md
- 060.integration/060170_ERP_HANDOFF_INTEGRATION_CONTRACT.md

# ============================================================
# 070.OPERATIONS
# ============================================================

- 070.operations/operations_OVERVIEW.md
- 070.operations/operations_INDEX.md
- 070.operations/070_QUICK_FORECAST_OPERATIONS.md
- 070.operations/070110_QUICK_FORECAST_RUNBOOK.md
- 070.operations/070120_SYNC_FAILURE_OPERATIONS.md
- 070.operations/070130_SUBMISSION_FAILURE_OPERATIONS.md

# ============================================================
# 080.POLICY
# ============================================================

- 080.policy/policy_OVERVIEW.md
- 080.policy/policy_INDEX.md
- 080.policy/080_QUICK_FORECAST_POLICY.md
- 080.policy/080110_BASIC_PRO_FEATURE_POLICY.md
- 080.policy/080120_PROPOSAL_DRAFT_POLICY.md
- 080.policy/080130_PROFIT_PREVIEW_POLICY.md
- 080.policy/080140_APPROVAL_AND_SUBMISSION_POLICY.md
- 080.policy/080150_VALIDATION_POLICY.md
- 080.policy/080160_UI_STATE_POLICY.md

# ============================================================
# 090.INTERFACE
# ============================================================

- 090.interface/interface_OVERVIEW.md
- 090.interface/interface_INDEX.md
- 090.interface/090_QUICK_FORECAST_INTERFACE_OVERVIEW.md
- 090.interface/090110_DASHBOARD_INTERFACE.md
- 090.interface/090120_FORECAST_EDITOR_INTERFACE.md
- 090.interface/090130_ACTION_IDEA_BOARD_INTERFACE.md
- 090.interface/090140_PROPOSAL_DRAFT_BUILDER_INTERFACE.md
- 090.interface/090150_PROFIT_PREVIEW_INTERFACE.md
- 090.interface/090160_PRO_APPROVAL_SUBMISSION_INTERFACE.md
- 090.interface/090170_FORECAST_EDITOR_FIELD_SPEC.md
- 090.interface/090180_ACTION_BOARD_FIELD_SPEC.md
- 090.interface/090190_PROPOSAL_BUILDER_FIELD_SPEC.md
- 090.interface/090200_PROFIT_PREVIEW_FIELD_SPEC.md
- 090.interface/090210_PRO_SUBMISSION_FIELD_SPEC.md
- 090.interface/090220_FORECAST_LIST_INTERFACE.md
- 090.interface/090230_FORECAST_DETAIL_INTERFACE.md
- 090.interface/090240_SHARE_TARGET_INTERFACE.md
- 090.interface/090250_HISTORY_INTERFACE.md
- 090.interface/090260_SCREEN_TRANSITION_INTERFACE.md
- 090.interface/090270_DASHBOARD_SCREEN_SKELETON_INTERFACE.md
- 090.interface/090280_FORECAST_LIST_SCREEN_SKELETON_INTERFACE.md
- 090.interface/090290_FORECAST_EDITOR_SCREEN_SKELETON_INTERFACE.md
- 090.interface/090300_ACTION_BOARD_SCREEN_SKELETON_INTERFACE.md
- 090.interface/090310_PROPOSAL_BUILDER_SCREEN_SKELETON_INTERFACE.md
- 090.interface/090320_PROFIT_PREVIEW_SCREEN_SKELETON_INTERFACE.md
- 090.interface/090330_FORECAST_DETAIL_SCREEN_SKELETON_INTERFACE.md
- 090.interface/090340_PRO_APPROVAL_SUBMISSION_SCREEN_SKELETON_INTERFACE.md
- 090.interface/090350_HISTORY_SCREEN_SKELETON_INTERFACE.md
- 090.interface/090360_SHARE_TARGET_SCREEN_SKELETON_INTERFACE.md
- 090.interface/090370_SETTINGS_SCREEN_SKELETON_INTERFACE.md

# ============================================================
# 100.SECURITY
# ============================================================
- 100.security/security_OVERVIEW.md
- 100.security/security_INDEX.md
- 100.security/100_QUICK_FORECAST_SECURITY.md
- 100.security/100110_TIER_BOUNDARY_SECURITY.md
- 100.security/100120_SUBMISSION_INTEGRITY_SECURITY.md

# ============================================================
# 110.INFRASTRUCTURE
# ============================================================
- 110.infrastructure/infrastructure_OVERVIEW.md
- 110.infrastructure/infrastructure_INDEX.md
- 110.infrastructure/110_QUICK_FORECAST_INFRASTRUCTURE.md
- 110.infrastructure/110110_LOCAL_FIRST_INFRASTRUCTURE.md
- 110.infrastructure/110120_PRO_ENTERPRISE_LINK_INFRASTRUCTURE.md
- 110.infrastructure/110130_LOCAL_PERSISTENCE_INFRASTRUCTURE.md
- 110.infrastructure/110140_PRO_CACHE_AND_SYNC_INFRASTRUCTURE.md
- 110.infrastructure/110150_LOCAL_ENTITY_SET_INFRASTRUCTURE.md

# ============================================================
# 120.IMPLEMENTATION
# ============================================================
- 120.implementation/implementation_OVERVIEW.md
- 120.implementation/implementation_INDEX.md
- 120.implementation/120_QUICK_FORECAST_IMPLEMENTATION.md
- 120.implementation/120110_FORECAST_TO_PROPOSAL_IMPLEMENTATION.md
- 120.implementation/120120_PROFIT_PREVIEW_IMPLEMENTATION.md
- 120.implementation/120130_PRO_LINKED_OPERATION_IMPLEMENTATION.md
- 120.implementation/120140_ANDROID_PACKAGE_STRUCTURE_IMPLEMENTATION.md
- 120.implementation/120150_COMMON_COMPONENT_MAPPING_IMPLEMENTATION.md
- 120.implementation/120160_BASIC_PRO_FEATURE_FLAG_IMPLEMENTATION.md
- 120.implementation/120170_ANDROID_SCREEN_STATE_IMPLEMENTATION.md
- 120.implementation/120180_ANDROID_NAVIGATION_IMPLEMENTATION.md
- 120.implementation/120190_PRO_SCREEN_GATING_IMPLEMENTATION.md
- 120.implementation/120200_DETAIL_TO_PRO_FLOW_IMPLEMENTATION.md
- 120.implementation/120210_ANDROID_VIEWMODEL_IMPLEMENTATION.md
- 120.implementation/120220_ANDROID_REPOSITORY_IMPLEMENTATION.md
- 120.implementation/120230_LOCAL_DB_IMPLEMENTATION.md
- 120.implementation/120240_LOCAL_ENTITY_FIELD_IMPLEMENTATION.md
- 120.implementation/120250_DAO_METHOD_IMPLEMENTATION.md
- 120.implementation/120260_REPOSITORY_METHOD_IMPLEMENTATION.md
- 120.implementation/120270_SCREEN_TO_REPOSITORY_MAPPING_IMPLEMENTATION.md
- 120.implementation/120280_DASHBOARD_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md
- 120.implementation/120290_FORECAST_LIST_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md
- 120.implementation/120300_FORECAST_EDITOR_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md
- 120.implementation/120310_ACTION_BOARD_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md
- 120.implementation/120320_PROPOSAL_BUILDER_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md
- 120.implementation/120330_PROFIT_PREVIEW_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md
- 120.implementation/120340_VIEWMODEL_REDUCER_PATTERN_IMPLEMENTATION.md
- 120.implementation/120350_FORECAST_DETAIL_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md
- 120.implementation/120360_PRO_APPROVAL_SUBMISSION_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md
- 120.implementation/120370_HISTORY_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md
- 120.implementation/120380_SHARE_TARGET_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md
- 120.implementation/120390_SETTINGS_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md
- 120.implementation/120400_PRO_VIEWMODEL_GATING_IMPLEMENTATION.md
- 120.implementation/120410_DASHBOARD_REDUCER_TRANSITION_IMPLEMENTATION.md
- 120.implementation/120420_FORECAST_LIST_REDUCER_TRANSITION_IMPLEMENTATION.md
- 120.implementation/120430_FORECAST_EDITOR_REDUCER_TRANSITION_IMPLEMENTATION.md
- 120.implementation/120440_ACTION_BOARD_REDUCER_TRANSITION_IMPLEMENTATION.md
- 120.implementation/120450_PROPOSAL_BUILDER_REDUCER_TRANSITION_IMPLEMENTATION.md
- 120.implementation/120460_PROFIT_PREVIEW_REDUCER_TRANSITION_IMPLEMENTATION.md
- 120.implementation/120470_CORE_SCREEN_REPOSITORY_RESPONSIBILITY_IMPLEMENTATION.md
- 120.implementation/120480_FORECAST_DETAIL_REDUCER_TRANSITION_IMPLEMENTATION.md
- 120.implementation/120490_PRO_APPROVAL_SUBMISSION_REDUCER_TRANSITION_IMPLEMENTATION.md
- 120.implementation/120500_HISTORY_REDUCER_TRANSITION_IMPLEMENTATION.md
- 120.implementation/120510_SHARE_TARGET_REDUCER_TRANSITION_IMPLEMENTATION.md
- 120.implementation/120520_SETTINGS_REDUCER_TRANSITION_IMPLEMENTATION.md
- 120.implementation/120530_PRO_SCREEN_REPOSITORY_RESPONSIBILITY_IMPLEMENTATION.md
- 120.implementation/120540_ANDROID_CLASS_INVENTORY_IMPLEMENTATION.md
- 120.implementation/120550_ANDROID_FEATURE_CLASS_RESPONSIBILITY_IMPLEMENTATION.md
- 120.implementation/120560_ANDROID_DATA_CLASS_RESPONSIBILITY_IMPLEMENTATION.md
- 120.implementation/120570_ANDROID_DOMAIN_CLASS_RESPONSIBILITY_IMPLEMENTATION.md
- 120.implementation/120580_ANDROID_INTEGRATION_CLASS_RESPONSIBILITY_IMPLEMENTATION.md
- 120.implementation/120590_ANDROID_COMMON_UI_CLASS_RESPONSIBILITY_IMPLEMENTATION.md
- 120.implementation/120600_SCREEN_TO_CLASS_MAPPING_IMPLEMENTATION.md
- 120.implementation/120610_ANDROID_FILE_GENERATION_UNIT_IMPLEMENTATION.md
- 120.implementation/120620_ANDROID_MINIMUM_FILE_SET_IMPLEMENTATION.md
- 120.implementation/120630_ANDROID_FILE_TEMPLATE_RESPONSIBILITY_IMPLEMENTATION.md
- 120.implementation/120640_ANDROID_GENERATION_TARGET_FREEZE_IMPLEMENTATION.md
- 120.implementation/120650_ANDROID_PHASE1_GENERATION_TARGET_IMPLEMENTATION.md
- 120.implementation/120660_ANDROID_DEFERRED_TARGET_IMPLEMENTATION.md

# ============================================================
# 130.DEVELOPMENT
# ============================================================
- 130.development/development_OVERVIEW.md
- 130.development/development_INDEX.md
- 130.development/130_QUICK_FORECAST_DEVELOPMENT.md
- 130.development/130110_MVP_DEVELOPMENT_PLAN.md
- 130.development/130120_PRO_EXPANSION_DEVELOPMENT_PLAN.md
- 130.development/130130_ANDROID_IMPLEMENTATION_PREPARATION_PLAN.md
- 130.development/130140_SCREEN_IMPLEMENTATION_ORDER_PLAN.md
- 130.development/130150_CORE_SCREEN_SKELETON_DEVELOPMENT_PLAN.md
- 130.development/130160_PRO_SCREEN_SKELETON_DEVELOPMENT_PLAN.md
- 130.development/130170_VIEWMODEL_REPOSITORY_DB_DEVELOPMENT_PLAN.md
- 130.development/130180_ENTITY_DAO_REPOSITORY_DEVELOPMENT_PLAN.md
- 130.development/130190_VIEWMODEL_STATE_EVENT_EFFECT_DEVELOPMENT_PLAN.md
- 130.development/130200_PRO_VIEWMODEL_STATE_EVENT_EFFECT_DEVELOPMENT_PLAN.md
- 130.development/130210_REDUCER_AND_REPOSITORY_RESPONSIBILITY_DEVELOPMENT_PLAN.md
- 130.development/130220_PRO_REDUCER_AND_REPOSITORY_RESPONSIBILITY_DEVELOPMENT_PLAN.md
- 130.development/130230_ANDROID_CLASS_IMPLEMENTATION_ORDER_PLAN.md
- 130.development/130240_ANDROID_FILE_GENERATION_DEVELOPMENT_PLAN.md
- 130.development/130250_ANDROID_FILE_BATCH_PLAN.md
- 130.development/130260_ANDROID_GENERATION_TARGET_ORDER_PLAN.md
- 130.development/130270_ANDROID_GENERATION_DONE_CRITERIA_PLAN.md

# ============================================================
# 900.META
# ============================================================
- 900.meta/meta_OVERVIEW.md
- 900.meta/meta_INDEX.md
- 900.meta/900100_QUICK_FORECAST_DESIGN_NOTE.md
- 900.meta/900110_QUICK_FORECAST_REVIEW_CHECKLIST.md
- 900.meta/900120_QUICK_FORECAST_CONSISTENCY_NOTE.md
- 900.meta/900130_QUICK_FORECAST_UI_REVIEW_CHECKLIST.md
- 900.meta/900140_QUICK_FORECAST_VALIDATION_CHECKLIST.md
- 900.meta/900150_QUICK_FORECAST_SCREEN_INVENTORY.md
- 900.meta/900160_QUICK_FORECAST_CODE_SEED_NOTE.md
- 900.meta/900170_PRO_OPERATION_REVIEW_CHECKLIST.md
- 900.meta/900180_SCREEN_TO_MODEL_TRACE_NOTE.md
- 900.meta/900190_QUICK_FORECAST_BOOK_BUILD_SCRIPT.sh
- 900.meta/900200_QUICK_FORECAST_CONSISTENCY_CHECK_NOTE.md
- 900.meta/900210_QUICK_FORECAST_QUICK_CHECK.sh
- 900.meta/900220_IMPLEMENTATION_PREP_REVIEW_CHECKLIST.md
- 900.meta/900230_ANDROID_PACKAGE_TO_SCREEN_TRACE_NOTE.md
- 900.meta/900240_CORE_SCREEN_SKELETON_REVIEW_CHECKLIST.md
- 900.meta/900250_PRO_SCREEN_SKELETON_REVIEW_CHECKLIST.md
- 900.meta/900260_VIEWMODEL_REPOSITORY_DB_REVIEW_CHECKLIST.md
- 900.meta/900270_ENTITY_DAO_REPOSITORY_REVIEW_CHECKLIST.md
- 900.meta/900280_VIEWMODEL_STATE_EVENT_EFFECT_REVIEW_CHECKLIST.md
- 900.meta/900290_PRO_VIEWMODEL_STATE_EVENT_EFFECT_REVIEW_CHECKLIST.md
- 900.meta/900300_REDUCER_AND_REPOSITORY_RESPONSIBILITY_REVIEW_CHECKLIST.md
- 900.meta/900310_PRO_REDUCER_AND_REPOSITORY_RESPONSIBILITY_REVIEW_CHECKLIST.md
- 900.meta/900320_ANDROID_CLASS_INVENTORY_REVIEW_CHECKLIST.md
- 900.meta/900330_ANDROID_FILE_GENERATION_REVIEW_CHECKLIST.md
- 900.meta/900340_ANDROID_GENERATION_TARGET_FREEZE_REVIEW_CHECKLIST.md


# ============================================================
# CONSTITUTION OVERVIEW
# ============================================================

status: canonical
application: QuickForecast
layer: 010.constitution
owner: Boss
prepared_by: Zero

purpose:
Summarizes the constitutional role of QuickForecast.

summary:
The constitution layer defines QuickForecast as
a field-ready, forecast-originated business application.

Its constitutional identity is not passive analytics,
but active business drafting.

constitutional_focus:
- forecast-to-action continuity
- proposal-first usefulness
- mobile immediacy
- Basic / Pro tier clarity
- ERP coexistence
- explicit authority boundary
- fail-closed governed submission


# ============================================================
# CONSTITUTION INDEX
# ============================================================

status: canonical
application: QuickForecast
layer: 010.constitution
owner: Boss
prepared_by: Zero

files:
- constitution_OVERVIEW.md
- constitution_INDEX.md
- 010_QUICK_FORECAST_CONSTITUTION.md
- 010110_QUICK_FORECAST_BASIC_PRO_CONSTITUTION.md
- 010120_QUICK_FORECAST_ERP_COEXISTENCE_CONSTITUTION.md


# ============================================================
# QUICK FORECAST CONSTITUTION
# ============================================================

status: canonical
layer: constitution
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the constitutional role, boundary, and governing principles
of QuickForecast Basic / Pro.

# ============================================================
# 1. CONSTITUTIONAL ROLE
# ============================================================

QuickForecast is a field-ready business application
that starts from demand forecasting and rapidly connects
forecast outcomes to action ideas, proposal drafts,
planning drafts, and profit-image previews.

QuickForecast shall support immediate use during:
- meetings
- sales visits
- field operations
- mobile work
- travel / movement
- quick management review situations

QuickForecast is not merely a forecasting viewer.
Its primary constitutional role is:

forecast creation
-> action idea derivation
-> proposal / planning draft generation
-> profit-image preview

# ============================================================
# 2. PRODUCT TIERS
# ============================================================

QuickForecast consists of:

- QuickForecast Basic
- QuickForecast Pro

Basic:
Uses public/general information and manual input
for lightweight forecast-originated proposal drafting.

Pro:
Extends Basic with ERP-connected operational capability,
shared business usage, approval support, synchronization,
history, and business linkage.

# ============================================================
# 3. RELATION TO ERP
# ============================================================

ERP shall also retain equivalent forecasting capability.

QuickForecast does not abolish or replace ERP forecasting.

ERP is the authoritative enterprise platform
for heavier, broader, denser, and formally controlled
forecast operation.

QuickForecast is the high-mobility companion application
optimized for speed, field usage, and immediate proposal drafting.

# ============================================================
# 4. PRIMARY VALUE
# ============================================================

QuickForecast must provide value not only by showing forecast numbers,
but by connecting numbers to business action.

Its constitutional value is to make the user able to answer:

- what demand is expected
- what action should be taken
- how to explain the action
- how to draft the proposal
- what revenue / profit image may result

# ============================================================
# 5. CORE PRINCIPLES
# ============================================================

The following principles are mandatory:

1. Forecast-to-action continuity
Forecast results must be connectable to business action candidates.

2. Proposal-first usefulness
The application must support direct business output,
not only numeric inspection.

3. Mobile immediacy
The application must remain usable in short, mobile,
and interrupted work contexts.

4. Explicit distinction of forecast and authority
QuickForecast outputs are working drafts unless explicitly
accepted by an external authority flow.

5. Fail closed on external business submission
When business-critical submission conditions are not satisfied,
submission must be rejected.

6. Tier clarity
Basic and Pro must remain clearly distinguishable.

# ============================================================
# 6. BASIC / PRO CONSTITUTIONAL DIFFERENCE
# ============================================================

Basic is for lightweight, individual, draft-oriented usage.

Pro is for practical business operation with enterprise linkage.

Basic must remain useful by itself.
Pro must remain operationally stronger without making Basic meaningless.

# ============================================================
# 7. MAIN CONSTITUTIONAL OUTPUTS
# ============================================================

QuickForecast shall be able to produce:

- forecast draft
- scenario comparison
- action idea set
- planning draft
- proposal draft
- revenue image preview
- profit image preview

# ============================================================
# 8. CONSTITUTIONAL BOUNDARY
# ============================================================

QuickForecast shall not be defined as the sole enterprise authority
for final official planning.

QuickForecast may prepare, structure, and transmit working proposals,
but official enterprise authority remains governed by the receiving system
and enterprise workflow.

# ============================================================
# 9. SUMMARY
# ============================================================

QuickForecast Basic / Pro is a demand-forecast-originated,
field-ready proposal draft generation application
that supports immediate business action design and profit-image thinking,
while coexisting with ERP's equivalent forecasting capability.


# ============================================================
# QUICK FORECAST BASIC / PRO CONSTITUTION
# ============================================================

status: canonical
layer: constitution
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the tier boundary between QuickForecast Basic and Pro.

principles:
- Basic must be independently useful
- Pro must justify upgrade by operational depth
- tier separation must be explicit
- ERP data usage is Pro-only
- enterprise collaboration is Pro-only

basic_scope:
- general/public information usage
- manual forecast input
- scenario drafting
- action idea drafting
- proposal draft generation
- simple revenue/profit image preview
- local usage

pro_scope:
- all Basic capabilities
- ERP data usage
- shared usage
- approval support
- synchronization
- history and audit
- enterprise-linked operation


# ============================================================
# QUICK FORECAST ERP COEXISTENCE CONSTITUTION
# ============================================================

status: canonical
layer: constitution
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines coexistence between QuickForecast and ERP forecasting.

principles:
- ERP retains equivalent forecasting capability
- QuickForecast is not an ERP replacement
- QuickForecast optimizes high-mobility usage
- ERP optimizes dense and formal enterprise operation
- the two systems may exchange forecast-originated business drafts
- official authority is determined by the receiving governed flow

erp_strengths:
- dense analysis
- larger operational scope
- formal workflow
- authoritative enterprise records
- broader cross-function linkage

quickforecast_strengths:
- fast startup
- mobile readiness
- meeting-time usability
- sales-time usability
- rapid proposal drafting
- immediate action ideation


# ============================================================
# ARCHITECTURE OVERVIEW
# ============================================================

status: canonical
application: QuickForecast
layer: 020.architecture
owner: Boss
prepared_by: Zero

purpose:
Summarizes the architecture of QuickForecast.

summary:
QuickForecast is architected as a workbench
with the canonical chain:

Forecast
-> Action
-> Proposal
-> Profit

architectural_focus:
- mobile-first structure
- local-first continuity
- editable generated output
- scenario-aware drafting
- Pro enterprise linkage
- coexistence with ERP forecasting


# ============================================================
# ARCHITECTURE INDEX
# ============================================================

status: canonical
application: QuickForecast
layer: 020.architecture
owner: Boss
prepared_by: Zero

files:
- architecture_OVERVIEW.md
- architecture_INDEX.md
- 020_QUICK_FORECAST_ARCHITECTURE.md
- 020110_FORECAST_ACTION_PROPOSAL_PROFIT_ARCHITECTURE.md
- 020120_MOBILE_IMMEDIACY_ARCHITECTURE.md


# ============================================================
# QUICK FORECAST ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the application architecture of QuickForecast.

# ============================================================
# 1. ARCHITECTURAL GOAL
# ============================================================

QuickForecast is architected as a forecast-originated
business drafting workbench.

Its core chain is:

Forecast
-> Action
-> Proposal
-> Profit

# ============================================================
# 2. TOP-LEVEL COMPONENTS
# ============================================================

QuickForecast consists of the following major components:

- forecast input component
- scenario component
- signal / factor component
- action idea component
- proposal draft component
- profit preview component
- local persistence component
- sync component
- enterprise linkage component
- approval / history component
- UI orchestration component

# ============================================================
# 3. TIERED OPERATION
# ============================================================

Basic architecture:
- lightweight local-first operation
- public/general signal usage
- manual input centered
- individual drafting

Pro architecture:
- extends Basic architecture
- enterprise data usage
- shared operation
- approval support
- synchronization
- enterprise transmission

# ============================================================
# 4. LOGICAL FLOW
# ============================================================

The canonical logical sequence is:

1. collect forecast inputs
2. derive forecast scenarios
3. identify demand direction and strength
4. derive candidate actions
5. transform candidate actions into proposal/planning draft
6. estimate revenue / profit image
7. optionally synchronize, share, approve, and transmit

# ============================================================
# 5. LAYERS
# ============================================================

UI layer:
Handles fast user interaction and mobile-friendly operation.

Application orchestration layer:
Coordinates forecast, scenario, action, proposal, and profit steps.

Domain layer:
Holds forecast, action, proposal, and profit logic.

Persistence layer:
Stores local drafts, local state, and pending work.

Sync / enterprise linkage layer:
Supports Pro-only synchronized or linked business operation.

# ============================================================
# 6. ARCHITECTURAL POSITIONING
# ============================================================

QuickForecast is not architected as a passive analytics dashboard.

It is architected as an active business drafting engine.

Its output is not only forecast data,
but proposal-usable business draft material.

# ============================================================
# 7. COMPANION RELATION TO ERP
# ============================================================

QuickForecast architecture must coexist with ERP architecture.

The systems may overlap in business domain,
but differ in usage pattern and optimization target.

ERP:
- deeper
- broader
- more formal
- more authoritative

QuickForecast:
- faster
- lighter
- more mobile
- more immediate

# ============================================================
# 8. FAILURE BEHAVIOR
# ============================================================

Drafting may continue locally when external services are unavailable.

Business-critical external transmission must fail closed when:
- required context is missing
- enterprise identity is unresolved
- approval policy is unsatisfied
- payload transformation fails

# ============================================================
# 9. SUMMARY
# ============================================================

QuickForecast architecture is a mobile-first,
proposal-oriented, forecast-originated workbench architecture
with explicit Basic/Pro tier separation and ERP coexistence.


# ============================================================
# FORECAST ACTION PROPOSAL PROFIT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the four-step core architecture of QuickForecast.

stages:

1. Forecast
Demand direction, scale, and scenario are drafted.

2. Action
Business responses are derived from forecast meaning.

3. Proposal
Action candidates are transformed into explainable drafts.

4. Profit
Revenue and profit image are previewed.

rules:
- each stage must preserve explainability
- each stage must remain editable
- each stage must support scenario-aware variation
- proposal and profit stages must remain linked to forecast assumptions


# ============================================================
# MOBILE IMMEDIACY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines architecture decisions required for quick field usage.

requirements:
- fast open
- low interaction friction
- draft-friendly editing
- interruption tolerance
- resumable editing
- partial completion support
- local persistence first
- compact screen flow

target_usage:
- in meeting
- in sales visit
- in transit
- on phone
- with unstable network


# ============================================================
# MODEL OVERVIEW
# ============================================================

status: canonical
application: QuickForecast
layer: 030.model
owner: Boss
prepared_by: Zero

purpose:
Summarizes the QuickForecast model structure.

summary:
QuickForecast models preserve the full chain
from forecast drafting to proposal output.

model_domains:
- forecast
- signal
- scenario
- action
- proposal
- profit
- approval
- sync
- handoff
- history
- ui / validation support

model_principles:
- traceability
- explicit state
- editable drafting
- tier-aware operation


# ============================================================
# MODEL INDEX
# ============================================================

status: canonical
application: QuickForecast
layer: 030.model
owner: Boss
prepared_by: Zero

files:
- model_OVERVIEW.md
- model_INDEX.md
- 030_QUICK_FORECAST_MODEL_OVERVIEW.md
- 030100_FORECAST_DRAFT_MODEL.md
- 030110_FORECAST_SIGNAL_MODEL.md
- 030120_FORECAST_SCENARIO_MODEL.md
- 030130_ACTION_IDEA_MODEL.md
- 030140_PROPOSAL_DRAFT_MODEL.md
- 030150_PROFIT_PREVIEW_MODEL.md
- 030160_APPROVAL_REQUEST_MODEL.md
- 030170_SYNC_STATE_MODEL.md
- 030180_HISTORY_ENTRY_MODEL.md
- 030190_VALIDATION_CODE_MODEL.md
- 030200_ERROR_CODE_MODEL.md
- 030210_UI_STATE_CODE_MODEL.md
- 030220_UI_LABEL_CODE_MODEL.md
- 030230_VALIDATION_CODE_TABLE.md
- 030240_ERROR_CODE_TABLE.md
- 030250_UI_STATE_CODE_TABLE.md
- 030260_SHARE_TARGET_MODEL.md
- 030270_APPROVAL_EVENT_MODEL.md
- 030280_ERP_HANDOFF_MODEL.md
- 030290_PROFIT_ASSUMPTION_MODEL.md
- 030300_LOCAL_ENTITY_MAPPING_MODEL.md


# ============================================================
# QUICK FORECAST MODEL OVERVIEW
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the core model family of QuickForecast.

model_families:
- forecast
- signal
- scenario
- action
- proposal
- profit
- sync
- approval
- history
- ui support

summary:
QuickForecast models are not limited to demand numbers.
They must preserve the chain from forecast to action,
proposal, and profit image.


# ============================================================
# FORECAST DRAFT MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: forecast_draft
owner: Boss
prepared_by: Zero

purpose:
Represents a working forecast draft.

fields:
- forecast_id
- tier_code
- owner_user_id
- company_id
- title
- forecast_scope_code
- target_object_type
- target_object_id
- period_start
- period_end
- grain_code
- demand_direction_code
- demand_strength_code
- forecast_quantity
- forecast_amount
- confidence_code
- created_at
- updated_at
- deleted_at

notes:
This is a working forecast object,
not automatically an official enterprise authority record.


# ============================================================
# FORECAST SIGNAL MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: forecast_signal
owner: Boss
prepared_by: Zero

purpose:
Represents an input signal used during forecasting.

signal_types:
- climate
- season
- area
- event
- competitor
- market_general
- historical_actual
- inventory
- backlog
- manual_assumption

fields:
- signal_id
- forecast_id
- signal_type_code
- source_tier_code
- source_reference
- signal_summary
- signal_strength_code
- effect_direction_code
- effect_note
- created_at


# ============================================================
# FORECAST SCENARIO MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: forecast_scenario
owner: Boss
prepared_by: Zero

purpose:
Represents alternative forecast scenarios.

scenario_examples:
- base
- bullish
- cautious
- event_push
- supply_constrained
- sales_push

fields:
- scenario_id
- forecast_id
- scenario_code
- scenario_name
- scenario_order
- quantity_delta
- amount_delta
- assumption_note
- is_selected
- created_at
- updated_at


# ============================================================
# ACTION IDEA MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: action_idea
owner: Boss
prepared_by: Zero

purpose:
Represents a business action candidate derived from forecast meaning.

action_examples:
- campaign
- price_adjustment
- bundle_offer
- inventory_prebuild
- replenishment_push
- seasonal_display
- customer_proposal
- internal_planning

fields:
- action_id
- forecast_id
- scenario_id
- action_type_code
- action_title
- action_summary
- target_customer_type
- target_channel_code
- expected_effect_summary
- execution_timing_note
- created_at
- updated_at


# ============================================================
# PROPOSAL DRAFT MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: proposal_draft
owner: Boss
prepared_by: Zero

purpose:
Represents a proposal or planning draft generated from forecast and action.

draft_types:
- customer_proposal
- internal_plan
- campaign_plan
- sales_talk_draft
- meeting_memo_draft
- approval_outline

fields:
- proposal_draft_id
- forecast_id
- scenario_id
- action_id
- draft_type_code
- title
- executive_summary
- problem_statement
- opportunity_statement
- recommended_action
- expected_business_effect
- draft_body
- created_at
- updated_at


# ============================================================
# PROFIT PREVIEW MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: profit_preview
owner: Boss
prepared_by: Zero

purpose:
Represents a simplified revenue/profit image tied to draft action.

fields:
- profit_preview_id
- forecast_id
- scenario_id
- action_id
- expected_sales_quantity
- expected_unit_price
- expected_sales_amount
- expected_cost_amount
- expected_gross_profit
- expected_execution_cost
- expected_operating_profit
- profit_margin_rate
- inventory_need_note
- risk_note
- created_at
- updated_at


# ============================================================
# APPROVAL REQUEST MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: approval_request
owner: Boss
prepared_by: Zero

purpose:
Represents a Pro-tier approval request.

fields:
- approval_request_id
- target_type_code
- target_id
- requester_user_id
- approver_user_id
- approval_state_code
- request_comment
- requested_at
- responded_at
- response_comment


# ============================================================
# SYNC STATE MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: sync_state
owner: Boss
prepared_by: Zero

purpose:
Represents local/cloud/enterprise synchronization state.

states:
- local_only
- pending_sync
- synced
- sync_failed
- pending_submission
- submitted
- submission_failed

fields:
- sync_state_id
- target_type_code
- target_id
- state_code
- last_attempt_at
- last_success_at
- last_error_code
- last_error_message


# ============================================================
# HISTORY ENTRY MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: history_entry
owner: Boss
prepared_by: Zero

purpose:
Represents historical audit-worthy events in Pro operation.

event_examples:
- created
- edited
- scenario_selected
- action_generated
- proposal_generated
- profit_preview_updated
- approval_requested
- approval_granted
- approval_rejected
- synchronized
- submitted

fields:
- history_entry_id
- target_type_code
- target_id
- event_type_code
- event_summary
- actor_user_id
- occurred_at


# ============================================================
# VALIDATION CODE MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: validation_code
owner: Boss
prepared_by: Zero

purpose:
Defines validation code families for QuickForecast.

validation_families:
- forecast_input_validation
- scenario_validation
- action_validation
- proposal_validation
- profit_preview_validation
- approval_validation
- submission_validation

principles:
- codes must be stable
- codes must be human-reviewable
- codes must be UI-displayable
- blocking and warning levels must be distinguishable


# ============================================================
# ERROR CODE MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: error_code
owner: Boss
prepared_by: Zero

purpose:
Defines runtime / sync / submission error code families.

error_families:
- local_persistence_error
- sync_error
- approval_error
- submission_error
- permission_error
- contract_error
- unsupported_tier_error

principles:
- false success is prohibited
- terminal and retryable error must be distinguishable
- user-visible summary and internal detail should be separable


# ============================================================
# UI STATE CODE MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: ui_state_code
owner: Boss
prepared_by: Zero

purpose:
Defines stable UI state code families.

ui_state_groups:
- draft_state
- sync_state
- approval_state
- submission_state
- proposal_state
- profit_preview_state

requirements:
- state must be explicit
- state must be displayable in compact mobile UI
- state must not rely on color alone


# ============================================================
# UI LABEL CODE MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: ui_label_code
owner: Boss
prepared_by: Zero

purpose:
Defines stable UI label code families.

label_groups:
- common_action
- forecast_field
- scenario_field
- action_field
- proposal_field
- profit_field
- sync_field
- approval_field
- submission_field

principles:
- user-facing labels should be key-managed
- state labels must remain consistent across screens


# ============================================================
# VALIDATION CODE TABLE
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: validation_code_table
owner: Boss
prepared_by: Zero

entries:

- code: QF-VAL-FORECAST-001
  level: blocking_error
  meaning: target object is missing

- code: QF-VAL-FORECAST-002
  level: blocking_error
  meaning: period range is invalid

- code: QF-VAL-FORECAST-003
  level: warning
  meaning: demand strength is missing

- code: QF-VAL-ACTION-001
  level: warning
  meaning: no action selected

- code: QF-VAL-PROPOSAL-001
  level: warning
  meaning: proposal title is empty

- code: QF-VAL-PROPOSAL-002
  level: warning
  meaning: executive summary is empty

- code: QF-VAL-PROFIT-001
  level: warning
  meaning: unit price is missing

- code: QF-VAL-APPROVAL-001
  level: blocking_error
  meaning: approver identity is unresolved

- code: QF-VAL-SUBMIT-001
  level: blocking_error
  meaning: submission target is missing

- code: QF-VAL-SUBMIT-002
  level: blocking_error
  meaning: required approval is not granted

- code: QF-VAL-TIER-001
  level: blocking_error
  meaning: Pro-only feature requested from Basic


# ============================================================
# ERROR CODE TABLE
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: error_code_table
owner: Boss
prepared_by: Zero

entries:

- code: QF-ERR-LOCAL-001
  retryable: false
  meaning: local draft save failed

- code: QF-ERR-SYNC-001
  retryable: true
  meaning: sync request failed

- code: QF-ERR-SYNC-002
  retryable: false
  meaning: sync contract rejected

- code: QF-ERR-APPROVAL-001
  retryable: true
  meaning: approval request could not be delivered

- code: QF-ERR-SUBMIT-001
  retryable: true
  meaning: submission transport failed

- code: QF-ERR-SUBMIT-002
  retryable: false
  meaning: submission payload invalid

- code: QF-ERR-PERM-001
  retryable: false
  meaning: permission denied

- code: QF-ERR-TIER-001
  retryable: false
  meaning: unsupported tier access


# ============================================================
# UI STATE CODE TABLE
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: ui_state_code_table
owner: Boss
prepared_by: Zero

entries:

draft_states:
- QF-STATE-DRAFT-NEW
- QF-STATE-DRAFT-LOCAL
- QF-STATE-DRAFT-EDITED

sync_states:
- QF-STATE-SYNC-NONE
- QF-STATE-SYNC-PENDING
- QF-STATE-SYNC-DONE
- QF-STATE-SYNC-FAILED

approval_states:
- QF-STATE-APPROVAL-NOT-REQUESTED
- QF-STATE-APPROVAL-PENDING
- QF-STATE-APPROVAL-APPROVED
- QF-STATE-APPROVAL-REJECTED

submission_states:
- QF-STATE-SUBMIT-NOT-READY
- QF-STATE-SUBMIT-READY
- QF-STATE-SUBMIT-PENDING
- QF-STATE-SUBMIT-DONE
- QF-STATE-SUBMIT-FAILED


# ============================================================
# SHARE TARGET MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: share_target
owner: Boss
prepared_by: Zero

purpose:
Defines Pro-tier share target structure.

share_target_types:
- user
- team
- department
- role_based_target

fields:
- share_target_id
- target_type_code
- target_id
- permission_level_code
- shared_by_user_id
- shared_at
- expires_at

permission_levels:
- view
- comment
- edit
- submit_assist


# ============================================================
# APPROVAL EVENT MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: approval_event
owner: Boss
prepared_by: Zero

purpose:
Defines approval event history for Pro operation.

event_types:
- requested
- reminded
- approved
- rejected
- canceled

fields:
- approval_event_id
- approval_request_id
- event_type_code
- actor_user_id
- event_note
- occurred_at


# ============================================================
# ERP HANDOFF MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: erp_handoff
owner: Boss
prepared_by: Zero

purpose:
Defines governed ERP handoff state from QuickForecast Pro.

fields:
- erp_handoff_id
- source_target_type
- source_target_id
- source_forecast_id
- selected_scenario_id
- payload_version
- payload_summary
- handoff_state_code
- target_company_id
- target_flow_code
- requested_by_user_id
- requested_at
- accepted_at
- rejected_at
- result_code
- result_message

handoff_states:
- not_prepared
- ready
- pending
- accepted
- rejected
- failed


# ============================================================
# PROFIT ASSUMPTION MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: profit_assumption
owner: Boss
prepared_by: Zero

purpose:
Defines explicit profit preview assumptions.

fields:
- profit_assumption_id
- forecast_id
- scenario_id
- action_id
- quantity_assumption
- unit_price_assumption
- variable_cost_assumption
- fixed_execution_cost_assumption
- inventory_impact_note
- risk_factor_note
- created_by_user_id
- created_at
- updated_at


# ============================================================
# LOCAL ENTITY MAPPING MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: local_entity_mapping
owner: Boss
prepared_by: Zero

purpose:
Defines mapping intent between canonical models and local entities.

mapping_targets:
- forecast_draft -> forecast_draft_entity
- forecast_signal -> forecast_signal_entity
- forecast_scenario -> forecast_scenario_entity
- action_idea -> action_idea_entity
- proposal_draft -> proposal_draft_entity
- profit_preview -> profit_preview_entity
- profit_assumption -> profit_assumption_entity
- sync_state -> sync_state_entity
- approval_request -> approval_request_cache_entity
- approval_event -> approval_event_cache_entity
- share_target -> share_target_cache_entity
- erp_handoff -> erp_handoff_cache_entity
- history_entry -> history_entry_entity

rules:
- mapping must preserve identity
- mapping must preserve state meaning
- cache entities must remain distinguishable from authority records


# ============================================================
# RUNTIME OVERVIEW
# ============================================================

status: canonical
application: QuickForecast
layer: 040.runtime
owner: Boss
prepared_by: Zero

purpose:
Summarizes runtime behavior of QuickForecast.

summary:
QuickForecast runtime is local-first and interruption-tolerant.

runtime_focus:
- fast draft creation
- resumable editing
- explicit state handling
- editable generation flow
- Pro sync / approval / submission runtime
- fail-closed enterprise submission behavior


# ============================================================
# RUNTIME INDEX
# ============================================================

status: canonical
application: QuickForecast
layer: 040.runtime
owner: Boss
prepared_by: Zero

files:
- runtime_OVERVIEW.md
- runtime_INDEX.md
- 040_QUICK_FORECAST_RUNTIME.md
- 040110_FORECAST_DRAFT_RUNTIME.md
- 040120_ACTION_PROPOSAL_RUNTIME.md
- 040130_SYNC_AND_SUBMISSION_RUNTIME.md


# ============================================================
# QUICK FORECAST RUNTIME
# ============================================================

status: canonical
layer: runtime
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the runtime behavior of QuickForecast Basic / Pro.

# ============================================================
# 1. RUNTIME ROLE
# ============================================================

QuickForecast runtime exists to support rapid transition from:

forecast
-> action
-> proposal
-> profit

The runtime must favor:
- quick start
- interruption tolerance
- resumable drafting
- local-first continuity
- explicit submission control

# ============================================================
# 2. BASIC RUNTIME
# ============================================================

Basic runtime supports:
- local draft creation
- local forecast editing
- public/general signal use
- local scenario comparison
- local action derivation
- local proposal draft generation
- local profit preview generation

Basic does not require enterprise synchronization.

# ============================================================
# 3. PRO RUNTIME
# ============================================================

Pro runtime extends Basic with:
- ERP-related data usage
- shared work support
- approval support
- synchronization
- governed submission support
- history / audit-capable operation

# ============================================================
# 4. LOCAL-FIRST PRINCIPLE
# ============================================================

QuickForecast must remain draft-capable even when:
- network is unstable
- external systems are unavailable
- the user is in a short work window
- the user is interrupted mid-edit

Draft continuity has priority over immediate external dependency.

# ============================================================
# 5. EXPLICIT STATE HANDLING
# ============================================================

The runtime must distinguish at minimum:

- working draft
- locally saved
- pending sync
- synced
- approval pending
- approved
- rejected
- pending submission
- submitted
- submission failed

No ambiguous mixed state is allowed.

# ============================================================
# 6. FAIL-CLOSED SUBMISSION
# ============================================================

Business-critical external submission must fail closed when:
- enterprise context is missing
- tier restriction is violated
- required approval is missing
- target identity is unresolved
- payload transformation fails
- submission policy is violated

# ============================================================
# 7. EXPLAINABILITY
# ============================================================

Runtime-generated action, proposal, and profit outputs
must remain traceable to forecast assumptions and selected scenario.

# ============================================================
# 8. SUMMARY
# ============================================================

QuickForecast runtime is a local-first, interruption-tolerant,
proposal-oriented runtime with explicit Pro-tier governed linkage.


# ============================================================
# FORECAST DRAFT RUNTIME
# ============================================================

status: canonical
layer: runtime
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines how forecast drafts behave during runtime.

rules:
- drafts must be creatable quickly
- partial drafts must be saveable
- scenario switching must not destroy original assumption state
- forecast edits must remain reversible where practical
- local save must not imply enterprise acceptance


# ============================================================
# ACTION / PROPOSAL RUNTIME
# ============================================================

status: canonical
layer: runtime
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines runtime behavior of action and proposal generation.

rules:
- action ideas must remain editable
- proposal drafts must remain editable
- proposal text must remain linked to scenario and action source
- profit preview must be regenerable after forecast edits
- regenerated drafts must not silently erase prior user-authored content


# ============================================================
# SYNC AND SUBMISSION RUNTIME
# ============================================================

status: canonical
layer: runtime
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines synchronization and governed submission runtime.

rules:
- Basic has no enterprise submission runtime
- Pro may synchronize and submit
- pending items must be explicitly state-tracked
- retryable failure and terminal failure must be distinguishable
- user-visible status must remain explicit


# ============================================================
# FLOW OVERVIEW
# ============================================================

status: canonical
application: QuickForecast
layer: 050.flow
owner: Boss
prepared_by: Zero

purpose:
Summarizes the core working flow of QuickForecast.

canonical_flow:
Forecast
-> Action
-> Proposal
-> Profit

extended_pro_flow:
Forecast
-> Action
-> Proposal
-> Profit
-> Share / Approval / Handoff

flow_focus:
- short-cycle work progression
- resumable drafting
- proposal-oriented output
- governed Pro transition to enterprise use


# ============================================================
# FLOW INDEX
# ============================================================

status: canonical
application: QuickForecast
layer: 050.flow
owner: Boss
prepared_by: Zero

files:
- flow_OVERVIEW.md
- flow_INDEX.md
- 050_QUICK_FORECAST_FLOW.md
- 050110_FORECAST_CREATION_FLOW.md
- 050120_ACTION_IDEA_FLOW.md
- 050130_PROPOSAL_DRAFT_FLOW.md
- 050140_PROFIT_PREVIEW_FLOW.md
- 050150_PRO_APPROVAL_AND_SUBMISSION_FLOW.md
- 050160_PRO_SHARE_FLOW.md
- 050170_ERP_HANDOFF_FLOW.md


# ============================================================
# QUICK FORECAST FLOW
# ============================================================

status: canonical
layer: flow
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the canonical business flow of QuickForecast.

canonical_flow:
Forecast
-> Action
-> Proposal
-> Profit

summary:
QuickForecast is designed to transform demand expectation
into business-ready draft output within a short working cycle.


# ============================================================
# FORECAST CREATION FLOW
# ============================================================

status: canonical
layer: flow
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the forecast creation flow.

flow_steps:
1. user starts new draft
2. target object and period are selected
3. relevant signals are selected or entered
4. base forecast assumption is drafted
5. scenario variants are added if needed
6. forecast draft is locally saved
7. user proceeds to action stage or pauses work

notes:
The flow must support incomplete progress and later resume.


# ============================================================
# ACTION IDEA FLOW
# ============================================================

status: canonical
layer: flow
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines how action ideas are derived from forecast results.

flow_steps:
1. forecast direction and strength are inspected
2. key signals are reviewed
3. user selects or edits business intent
4. candidate actions are proposed
5. user chooses, edits, combines, or removes actions
6. chosen action set is saved for proposal drafting

action_examples:
- campaign
- pricing response
- bundle
- inventory response
- customer proposal
- internal planning response


# ============================================================
# PROPOSAL DRAFT FLOW
# ============================================================

status: canonical
layer: flow
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines how proposal/planning drafts are generated.

flow_steps:
1. selected forecast and action set are loaded
2. draft type is chosen
3. title and summary skeleton are generated
4. opportunity and recommendation sections are drafted
5. user edits draft body
6. draft is saved locally
7. Pro users may share or route for approval

draft_types:
- customer proposal
- internal plan
- campaign plan
- sales talk draft
- meeting memo draft
- approval outline


# ============================================================
# PROFIT PREVIEW FLOW
# ============================================================

status: canonical
layer: flow
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines how revenue/profit image is previewed.

flow_steps:
1. selected forecast and action are identified
2. sales quantity assumption is confirmed
3. unit price and cost assumptions are entered or referenced
4. expected sales and gross profit are calculated
5. execution cost is applied
6. profit image is previewed
7. user revises action or proposal if needed

notes:
Profit preview is explanatory support,
not automatic enterprise authority.


# ============================================================
# PRO APPROVAL AND SUBMISSION FLOW
# ============================================================

status: canonical
layer: flow
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Pro-only approval and submission flow.

flow_steps:
1. user selects a share / approval / submission target
2. policy-required checks are executed
3. approval request is created when required
4. approval result is received
5. submission payload is prepared
6. governed submission is executed
7. result is recorded in history and state

rules:
- Basic cannot execute enterprise submission
- required approval must be enforced
- failed submission must not be shown as accepted


# ============================================================
# PRO SHARE FLOW
# ============================================================

status: canonical
layer: flow
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Pro-only share flow.

flow_steps:
1. user selects target draft or forecast context
2. share target is selected
3. permission level is chosen
4. share validation is executed
5. share target record is created
6. recipient sees shared item in pending/shared list

rules:
- Basic cannot perform governed sharing
- share target identity must be explicit
- permission level must be explicit


# ============================================================
# ERP HANDOFF FLOW
# ============================================================

status: canonical
layer: flow
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Pro ERP handoff flow.

flow_steps:
1. user selects handoff target
2. scenario and proposal context are fixed
3. submission readiness is validated
4. payload summary is generated
5. governed handoff is executed
6. handoff result is recorded
7. accepted / rejected / failed state becomes visible

rules:
- handoff is explicit
- handoff result is explicit
- local draft continuity remains even after failure


# ============================================================
# INTEGRATION OVERVIEW
# ============================================================

status: canonical
application: QuickForecast
layer: 060.integration
owner: Boss
prepared_by: Zero

purpose:
Summarizes integration boundaries of QuickForecast.

summary:
QuickForecast integrates through governed contracts only.

basic_scope:
- general/public signal usage
- local drafting oriented operation

pro_scope:
- ERP reference usage
- approval linkage
- sharing linkage
- synchronization linkage
- governed enterprise handoff

integration_principles:
- explicit contract boundary
- explicit target identity
- explicit result state
- fail-closed business-critical submission


# ============================================================
# INTEGRATION INDEX
# ============================================================

status: canonical
application: QuickForecast
layer: 060.integration
owner: Boss
prepared_by: Zero

files:
- integration_OVERVIEW.md
- integration_INDEX.md
- 060_QUICK_FORECAST_INTEGRATION.md
- 060110_GENERAL_SIGNAL_INTEGRATION_CONTRACT.md
- 060120_ERP_REFERENCE_INTEGRATION_CONTRACT.md
- 060130_PROPOSAL_EXPORT_INTEGRATION_CONTRACT.md
- 060140_PRO_APPROVAL_INTEGRATION_CONTRACT.md
- 060150_GOVERNED_SUBMISSION_INTEGRATION_CONTRACT.md
- 060160_SHARE_AND_PERMISSION_INTEGRATION_CONTRACT.md
- 060170_ERP_HANDOFF_INTEGRATION_CONTRACT.md


# ============================================================
# QUICK FORECAST INTEGRATION
# ============================================================

status: canonical
layer: integration
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines integration boundaries of QuickForecast Basic / Pro.

# ============================================================
# 1. INTEGRATION PRINCIPLE
# ============================================================

QuickForecast integrates outward only through governed contracts.

The application must not treat local draft state
as enterprise-authoritative state.

# ============================================================
# 2. BASIC INTEGRATION
# ============================================================

Basic integration scope:
- public/general information usage
- local import/export where allowed
- no ERP data usage
- no governed enterprise submission

# ============================================================
# 3. PRO INTEGRATION
# ============================================================

Pro integration scope:
- ERP-related data reference
- shared operation support
- approval linkage
- synchronization linkage
- governed submission linkage

# ============================================================
# 4. ERP COEXISTENCE
# ============================================================

ERP retains equivalent forecasting capability.

QuickForecast may exchange forecast-originated draft material
with ERP-side governed functions,
but QuickForecast does not nullify ERP authority.

# ============================================================
# 5. INTEGRATION SAFETY
# ============================================================

Integration must fail closed when:
- identity is unresolved
- contract version is unsupported
- required fields are missing
- policy-gated flow is not satisfied


# ============================================================
# GENERAL SIGNAL INTEGRATION CONTRACT
# ============================================================

status: canonical
layer: integration
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the contract family for public/general forecasting signals.

signal_families:
- climate
- season
- location
- event
- competitor_general
- market_general

contract_rules:
- source type must be explicit
- signal summary must remain explainable
- unsupported or unverifiable signal forms must be rejectable
- signal usage must not falsely imply enterprise authority


# ============================================================
# ERP REFERENCE INTEGRATION CONTRACT
# ============================================================

status: canonical
layer: integration
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Pro-only ERP reference integration.

reference_examples:
- sales actual
- inventory
- backlog
- historical demand
- item / target master context

rules:
- ERP reference is Pro-only
- reference access must respect enterprise identity and permission
- referenced data must remain distinguishable from locally edited draft data
- ERP reference failure must not destroy local draft continuity


# ============================================================
# PROPOSAL EXPORT INTEGRATION CONTRACT
# ============================================================

status: canonical
layer: integration
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines how proposal/planning drafts may be exported or handed off.

export_targets:
- internal review flow
- approval flow
- enterprise receiving system
- external draft consumption flow

rules:
- exported draft type must be explicit
- source forecast and scenario must remain traceable
- export success and enterprise acceptance must not be conflated


# ============================================================
# PRO APPROVAL INTEGRATION CONTRACT
# ============================================================

status: canonical
layer: integration
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Pro-tier approval integration.

rules:
- approval target must be explicit
- approval state must be explicit
- requester and approver identity must be resolvable
- approval result must be storable in history
- approval grant and submission acceptance are separate states


# ============================================================
# GOVERNED SUBMISSION INTEGRATION CONTRACT
# ============================================================

status: canonical
layer: integration
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines governed external submission from Pro.

submission_targets:
- ERP-side governed intake
- business workflow intake
- internal enterprise receiving flow

rules:
- submission must be explicit
- contract version must be explicit
- submission payload must be transformable from source draft state
- submission result must be recorded explicitly
- rejected or failed submission must remain visible as failure


# ============================================================
# SHARE AND PERMISSION INTEGRATION CONTRACT
# ============================================================

status: canonical
layer: integration
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Pro share and permission contract assumptions.

rules:
- target identity must be resolvable
- permission level must be explicit
- unsupported permission escalation must be rejected
- share success and recipient action are separate states


# ============================================================
# ERP HANDOFF INTEGRATION CONTRACT
# ============================================================

status: canonical
layer: integration
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines governed ERP handoff contract.

rules:
- payload version must be explicit
- source forecast and scenario traceability must remain possible
- receiving ERP response must be recorded explicitly
- acceptance, rejection, and technical failure are separate outcomes


# ============================================================
# OPERATIONS OVERVIEW
# ============================================================

status: canonical
application: QuickForecast
layer: 070.operations
owner: Boss
prepared_by: Zero

purpose:
Summarizes operational design of QuickForecast.

summary:
QuickForecast operation must support mobile,
interrupted, and short-window business usage.

operations_focus:
- preserve local drafts
- surface pending work
- surface failed work
- keep Pro operation recoverable
- distinguish sync, approval, and submission states


# ============================================================
# OPERATIONS INDEX
# ============================================================

status: canonical
application: QuickForecast
layer: 070.operations
owner: Boss
prepared_by: Zero

files:
- operations_OVERVIEW.md
- operations_INDEX.md
- 070_QUICK_FORECAST_OPERATIONS.md
- 070110_QUICK_FORECAST_RUNBOOK.md
- 070120_SYNC_FAILURE_OPERATIONS.md
- 070130_SUBMISSION_FAILURE_OPERATIONS.md


# ============================================================
# QUICK FORECAST OPERATIONS
# ============================================================

status: canonical
layer: operations
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling of QuickForecast Basic / Pro.

# ============================================================
# 1. OPERATIONAL ROLE
# ============================================================

QuickForecast must remain operable in short,
interrupted, and mobile business contexts.

Operational design must support:
- fast start
- resumable work
- explicit state visibility
- low-friction draft continuation
- safe Pro-tier submission handling

# ============================================================
# 2. BASIC OPERATION
# ============================================================

Basic operation is centered on:
- personal usage
- local drafting
- lightweight forecasting
- action ideation
- proposal draft preparation
- simple profit preview

Basic operation does not require enterprise runbook handling.

# ============================================================
# 3. PRO OPERATION
# ============================================================

Pro operation adds:
- shared usage
- approval handling
- synchronization handling
- submission handling
- history / audit support
- enterprise-linked recovery procedures

# ============================================================
# 4. OPERATIONAL STATES TO MONITOR
# ============================================================

The following states must remain operationally visible:

- local draft count
- pending sync count
- sync failure count
- pending approval count
- rejected item count
- pending submission count
- submission failure count

# ============================================================
# 5. OPERATIONAL FAILURE HANDLING
# ============================================================

When external linkage fails:
- local drafts must remain preserved
- failure must be visible
- retryability must be distinguishable
- false success display is prohibited

# ============================================================
# 6. OPERATIONAL SUMMARY
# ============================================================

QuickForecast operation prioritizes continuity of business drafting
while keeping Pro-tier enterprise linkage explicit and recoverable.


# ============================================================
# QUICK FORECAST RUNBOOK
# ============================================================

status: canonical
layer: operations
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines core runbook guidance for QuickForecast operation.

runbook_topics:
- draft recovery
- sync retry handling
- approval delay handling
- submission failure handling
- local state preservation
- user-visible error handling

principles:
- preserve draft first
- show state explicitly
- never silently drop user work
- never present failed submission as accepted


# ============================================================
# SYNC FAILURE OPERATIONS
# ============================================================

status: canonical
layer: operations
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling for synchronization failure.

rules:
- failed sync items must remain listed
- retry must be explicit or policy-driven
- local editability must remain where safe
- sync failure must not block unrelated local drafting


# ============================================================
# SUBMISSION FAILURE OPERATIONS
# ============================================================

status: canonical
layer: operations
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling for Pro submission failure.

rules:
- submission failure must be visible
- failure cause must be recordable
- retryable and non-retryable failure must be distinguishable
- failed submission must not imply approval reversal


# ============================================================
# POLICY OVERVIEW
# ============================================================

status: canonical
application: QuickForecast
layer: 080.policy
owner: Boss
prepared_by: Zero

purpose:
Summarizes policy rules of QuickForecast.

summary:
Policy governs tier boundary, explainability,
draft safety, and Pro enterprise behavior.

policy_focus:
- Basic / Pro separation
- explainable proposal and profit outputs
- validation threshold separation
- explicit state display
- approval and submission gating


# ============================================================
# POLICY INDEX
# ============================================================

status: canonical
application: QuickForecast
layer: 080.policy
owner: Boss
prepared_by: Zero

files:
- policy_OVERVIEW.md
- policy_INDEX.md
- 080_QUICK_FORECAST_POLICY.md
- 080110_BASIC_PRO_FEATURE_POLICY.md
- 080120_PROPOSAL_DRAFT_POLICY.md
- 080130_PROFIT_PREVIEW_POLICY.md
- 080140_APPROVAL_AND_SUBMISSION_POLICY.md
- 080150_VALIDATION_POLICY.md
- 080160_UI_STATE_POLICY.md


# ============================================================
# QUICK FORECAST POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines policy rules for QuickForecast Basic / Pro.

# ============================================================
# 1. POLICY POSITION
# ============================================================

QuickForecast policy governs:
- tier boundary
- drafting safety
- explainability
- submission gating
- approval requirements
- user-visible distinction of state

# ============================================================
# 2. BASIC POLICY
# ============================================================

Basic policy:
- no ERP data usage
- no governed enterprise submission
- no enterprise approval requirement
- local draft use is allowed
- public/general signal usage is allowed within supported forms

# ============================================================
# 3. PRO POLICY
# ============================================================

Pro policy:
- ERP-linked usage is allowed
- approval flow may be required
- governed submission is allowed
- history and audit handling is required where applicable
- enterprise permissions must be respected

# ============================================================
# 4. EXPLAINABILITY POLICY
# ============================================================

Proposal and profit outputs must remain explainable from:
- forecast assumptions
- scenario selection
- selected actions
- user edits where applicable

# ============================================================
# 5. SAFETY POLICY
# ============================================================

The system must fail closed on business-critical submission
when required policy conditions are not met.


# ============================================================
# BASIC / PRO FEATURE POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines policy boundary between Basic and Pro feature sets.

basic_allowed:
- local forecast drafting
- general signal usage
- action idea drafting
- proposal draft generation
- simple profit preview
- local save

basic_disallowed:
- ERP data usage
- enterprise approval flow
- governed enterprise submission
- enterprise synchronization

pro_allowed:
- all Basic features
- ERP reference usage
- enterprise synchronization
- approval routing
- governed submission
- history / audit-capable enterprise-linked operation


# ============================================================
# PROPOSAL DRAFT POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines policy for proposal/planning drafts.

rules:
- draft type must be explicit
- draft status must be distinguishable from accepted business outcome
- user edits must be preservable
- regenerated content must not silently destroy authored content
- exported draft and accepted enterprise record are separate states


# ============================================================
# PROFIT PREVIEW POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines policy for revenue/profit preview.

rules:
- profit preview is a decision-support estimate
- preview is not automatic accounting authority
- assumption source must remain explainable
- preview must remain revisable after forecast or action changes


# ============================================================
# APPROVAL AND SUBMISSION POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines policy for Pro-tier approval and submission.

rules:
- approval requirement must be enforceable
- approval state must be explicit
- submission without required approval is prohibited
- submission result must be explicit
- rejected submission must remain visible as rejected


# ============================================================
# VALIDATION POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines validation policy for QuickForecast.

validation_levels:
- blocking_error
- warning
- info

rules:
- blocking errors must prevent governed submission
- warnings may allow local save
- local draft save should be broader than enterprise submission allowance
- validation output must remain explainable to the user


# ============================================================
# UI STATE POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines policy for user-visible state handling.

rules:
- draft, sync, approval, and submission states must remain separate
- state must not be hidden in deep screens only
- failure must be visible in list and detail contexts
- state display must not depend on color alone


# ============================================================
# INTERFACE OVERVIEW
# ============================================================

status: canonical
application: QuickForecast
layer: 090.interface
owner: Boss
prepared_by: Zero

purpose:
Summarizes interface design of QuickForecast.

summary:
QuickForecast UI is mobile-first and organized around:

Forecast
-> Action
-> Proposal
-> Profit

screen_focus:
- quick resume
- low-friction editing
- explicit state display
- editable generated content
- compact Pro operation controls
- source-to-output visibility


# ============================================================
# INTERFACE INDEX
# ============================================================

status: canonical
application: QuickForecast
layer: 090.interface
owner: Boss
prepared_by: Zero

files:
- interface_OVERVIEW.md
- interface_INDEX.md
- 090_QUICK_FORECAST_INTERFACE_OVERVIEW.md
- 090110_DASHBOARD_INTERFACE.md
- 090120_FORECAST_EDITOR_INTERFACE.md
- 090130_ACTION_IDEA_BOARD_INTERFACE.md
- 090140_PROPOSAL_DRAFT_BUILDER_INTERFACE.md
- 090150_PROFIT_PREVIEW_INTERFACE.md
- 090160_PRO_APPROVAL_SUBMISSION_INTERFACE.md
- 090170_FORECAST_EDITOR_FIELD_SPEC.md
- 090180_ACTION_BOARD_FIELD_SPEC.md
- 090190_PROPOSAL_BUILDER_FIELD_SPEC.md
- 090200_PROFIT_PREVIEW_FIELD_SPEC.md
- 090210_PRO_SUBMISSION_FIELD_SPEC.md
- 090220_FORECAST_LIST_INTERFACE.md
- 090230_FORECAST_DETAIL_INTERFACE.md
- 090240_SHARE_TARGET_INTERFACE.md
- 090250_HISTORY_INTERFACE.md
- 090260_SCREEN_TRANSITION_INTERFACE.md
- 090270_DASHBOARD_SCREEN_SKELETON_INTERFACE.md
- 090280_FORECAST_LIST_SCREEN_SKELETON_INTERFACE.md
- 090290_FORECAST_EDITOR_SCREEN_SKELETON_INTERFACE.md
- 090300_ACTION_BOARD_SCREEN_SKELETON_INTERFACE.md
- 090310_PROPOSAL_BUILDER_SCREEN_SKELETON_INTERFACE.md
- 090320_PROFIT_PREVIEW_SCREEN_SKELETON_INTERFACE.md
- 090330_FORECAST_DETAIL_SCREEN_SKELETON_INTERFACE.md
- 090340_PRO_APPROVAL_SUBMISSION_SCREEN_SKELETON_INTERFACE.md
- 090350_HISTORY_SCREEN_SKELETON_INTERFACE.md
- 090360_SHARE_TARGET_SCREEN_SKELETON_INTERFACE.md
- 090370_SETTINGS_SCREEN_SKELETON_INTERFACE.md


# ============================================================
# QUICK FORECAST INTERFACE OVERVIEW
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the major user interface structure of QuickForecast.

core_ui_flow:
Forecast
-> Action
-> Proposal
-> Profit

screen_families:
- dashboard
- forecast list
- forecast editor
- scenario compare
- action idea board
- proposal draft builder
- profit preview
- approval / submission
- sync status
- settings

ui_principles:
- mobile first
- quick edit
- low friction
- interruption tolerance
- explicit state display


# ============================================================
# DASHBOARD INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the dashboard screen.

main_sections:
- recent drafts
- pending work
- scenario shortcuts
- proposal draft shortcuts
- profit preview shortcuts
- sync / approval / submission alerts

requirements:
- user must see immediate next actions
- user must see pending enterprise-linked work in Pro
- dashboard must support fast resume


# ============================================================
# FORECAST EDITOR INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines forecast editing UI.

main_sections:
- forecast header
- target scope
- signal inputs
- scenario controls
- forecast summary
- save / continue action

requirements:
- fast input on mobile
- partial completion allowed
- switching scenario must be easy
- local save must be obvious


# ============================================================
# ACTION IDEA BOARD INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the action idea board UI.

main_sections:
- forecast summary strip
- scenario context
- action candidate cards
- selected action set
- editable action details

requirements:
- action candidates must be understandable at a glance
- selected actions must remain editable
- user must be able to move quickly to proposal drafting


# ============================================================
# PROPOSAL DRAFT BUILDER INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines proposal/planning draft builder UI.

main_sections:
- draft type selector
- title and summary
- opportunity section
- recommendation section
- draft body editor
- save / share / approval actions

requirements:
- user must be able to generate and then edit
- draft source context must remain visible
- authored text must remain protected during regeneration


# ============================================================
# PROFIT PREVIEW INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines profit preview UI.

main_sections:
- forecast summary
- selected action summary
- sales assumptions
- cost assumptions
- profit result
- risk / inventory note

requirements:
- calculation inputs must be visible
- preview must be revisable
- result must be explainable


# ============================================================
# PRO APPROVAL / SUBMISSION INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Pro-only approval and submission UI.

main_sections:
- target selector
- approval state
- submission readiness
- payload summary
- result history
- retry / resend visibility

requirements:
- Basic users must not access governed submission controls
- approval and submission must be clearly separated
- failed state must remain visible


# ============================================================
# FORECAST EDITOR FIELD SPEC
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the field-level structure of forecast editor UI.

header_fields:
- draft_title
- tier_badge
- target_object_type
- target_object_id
- period_start
- period_end
- grain_code

signal_fields:
- season_signal
- climate_signal
- area_signal
- event_signal
- competitor_general_signal
- market_general_signal
- historical_actual_signal_pro
- inventory_signal_pro
- backlog_signal_pro
- manual_assumption

forecast_fields:
- demand_direction
- demand_strength
- forecast_quantity
- forecast_amount
- confidence_code
- assumption_note

actions:
- save_draft
- duplicate_scenario
- continue_to_action


# ============================================================
# ACTION BOARD FIELD SPEC
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the field-level structure of action idea board UI.

context_fields:
- selected_forecast_title
- selected_scenario
- demand_direction
- demand_strength
- key_signal_summary

action_card_fields:
- action_type
- action_title
- expected_effect_summary
- target_channel
- execution_timing_note
- selection_state

editable_fields:
- action_summary
- target_customer_type
- target_channel_code
- timing_note
- expected_effect_note

actions:
- select_action
- add_custom_action
- continue_to_proposal


# ============================================================
# PROPOSAL BUILDER FIELD SPEC
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the field-level structure of proposal builder UI.

main_fields:
- draft_type_code
- title
- executive_summary
- problem_statement
- opportunity_statement
- recommended_action
- expected_business_effect
- draft_body

context_fields:
- source_forecast_title
- selected_scenario
- selected_action_summary
- profit_preview_summary

actions:
- generate_draft
- regenerate_selected_section
- save_draft
- share_pro
- request_approval_pro
- continue_to_profit


# ============================================================
# PROFIT PREVIEW FIELD SPEC
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the field-level structure of profit preview UI.

assumption_fields:
- expected_sales_quantity
- expected_unit_price
- expected_sales_amount
- expected_cost_amount
- expected_execution_cost

result_fields:
- expected_gross_profit
- expected_operating_profit
- profit_margin_rate
- inventory_need_note
- risk_note

actions:
- recalculate
- back_to_action
- back_to_proposal
- save_snapshot


# ============================================================
# PRO SUBMISSION FIELD SPEC
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Pro-only approval/submission field structure.

approval_fields:
- approval_required_flag
- approval_state
- approver_identity
- request_comment
- response_comment

submission_fields:
- submission_target_type
- submission_target_id
- payload_summary
- submission_readiness
- last_submission_result
- retry_state

actions:
- request_approval
- prepare_submission
- submit
- retry_submission


# ============================================================
# FORECAST LIST INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines forecast list screen.

main_sections:
- filter bar
- draft list
- shared list
- pending approval list
- pending handoff list

list_fields:
- title
- target summary
- scenario summary
- draft_state
- approval_state
- submission_or_handoff_state
- updated_at

requirements:
- state must be readable at a glance
- pending work must be easy to resume
- failure state must surface in list view


# ============================================================
# FORECAST DETAIL INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines forecast detail screen.

main_sections:
- header summary
- signal summary
- scenario summary
- action summary
- proposal summary
- profit preview summary
- history panel
- share / approval / handoff panel

requirements:
- user must understand source-to-output chain
- summary must be compact but editable
- Pro operation panel must remain clearly separated


# ============================================================
# SHARE TARGET INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Pro share target UI.

main_sections:
- target search
- target type selector
- permission selector
- current shared targets
- share result feedback

requirements:
- share scope must be understandable
- permission level must be understandable
- Pro-only boundary must be explicit


# ============================================================
# HISTORY INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines history/audit-oriented screen or panel.

main_sections:
- timeline list
- filter by event type
- actor summary
- event detail
- approval events
- submission / handoff events

requirements:
- history must be compact on mobile
- critical events must remain distinguishable
- accepted / rejected / failed must be separately visible


# ============================================================
# SCREEN TRANSITION INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the primary screen transition structure of QuickForecast.

# ============================================================
# 1. PRIMARY FLOW
# ============================================================

primary_transition:
dashboard
-> forecast_list
-> forecast_editor
-> action_idea_board
-> proposal_draft_builder
-> profit_preview

pro_extended_transition:
profit_preview
-> pro_approval_submission
-> history

# ============================================================
# 2. ENTRY POINTS
# ============================================================

entry_points:
- dashboard recent draft
- dashboard pending work
- forecast list item
- shared item notification
- approval pending item
- handoff pending item

# ============================================================
# 3. CORE TRANSITIONS
# ============================================================

dashboard:
- to forecast_list
- to forecast_editor (new draft)
- to pending Pro work
- to settings

forecast_list:
- to forecast_detail
- to forecast_editor
- to shared target contexts
- to history

forecast_detail:
- to forecast_editor
- to action_idea_board
- to proposal_draft_builder
- to profit_preview
- to pro_approval_submission
- to history

forecast_editor:
- to action_idea_board
- to forecast_detail
- back to forecast_list

action_idea_board:
- to proposal_draft_builder
- back to forecast_editor
- to forecast_detail

proposal_draft_builder:
- to profit_preview
- to forecast_detail
- to pro_approval_submission (Pro)
- back to action_idea_board

profit_preview:
- to proposal_draft_builder
- to action_idea_board
- to forecast_detail
- to pro_approval_submission (Pro)

pro_approval_submission:
- to history
- to forecast_detail
- back to proposal_draft_builder
- back to profit_preview

history:
- to forecast_detail

settings:
- back to dashboard

# ============================================================
# 4. TRANSITION PRINCIPLES
# ============================================================

principles:
- resume is more important than deep nesting
- forecast context must remain recoverable
- source-to-output chain must remain navigable
- Pro-only transitions must remain gated


# ============================================================
# DASHBOARD SCREEN SKELETON INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Android screen skeleton for dashboard.

screen_role:
The dashboard is the resume-first home screen.

primary_goals:
- resume unfinished work
- surface pending work
- start new forecast quickly
- expose next useful action

main_sections:
- top app bar
- quick start actions
- recent drafts
- pending Pro work
- shortcuts to proposal / profit work
- state summary strip

state_groups:
- loading
- empty
- populated
- partial sync failure visible
- Pro pending visible

actions:
- create new draft
- open recent draft
- open pending approval/submission item
- go to forecast list
- go to settings

basic_pro_difference:
Basic:
- recent drafts
- quick start
- local-only state emphasis

Pro:
- adds pending approval
- adds pending handoff
- adds sync / failure visibility


# ============================================================
# FORECAST LIST SCREEN SKELETON INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Android screen skeleton for forecast list.

screen_role:
The forecast list is the main inventory screen for drafts and work items.

main_sections:
- top app bar
- filter / search row
- tab or segmented list scope
- draft list
- empty state
- state legend area

list_tabs:
- my drafts
- recent
- shared (Pro)
- pending approval (Pro)
- pending handoff (Pro)

item_fields:
- title
- target summary
- selected scenario
- draft/update time
- draft/sync/approval/handoff states

actions:
- open detail
- open editor
- create new draft
- filter
- sort

state_groups:
- loading
- empty
- filtered empty
- populated
- failure surfaced in row state

basic_pro_difference:
Basic:
- my drafts / recent 중심

Pro:
- shared / approval / handoff tabs enabled


# ============================================================
# FORECAST EDITOR SCREEN SKELETON INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Android screen skeleton for forecast editor.

screen_role:
The forecast editor creates and edits the forecasting base context.

main_sections:
- top app bar
- draft header card
- target scope section
- signal input section
- scenario switcher
- forecast result section
- bottom action area

field_groups:
- title / scope / period / grain
- public/general signals
- manual assumption
- Pro ERP reference signals
- demand direction / strength
- quantity / amount / confidence

actions:
- save draft
- duplicate scenario
- move to action board
- back to detail/list

state_groups:
- new draft
- editing existing
- validation warning visible
- local saved
- Pro reference loading

basic_pro_difference:
Basic:
- public/general signals only

Pro:
- ERP reference panels available
- permission failure may be surfaced inline


# ============================================================
# ACTION BOARD SCREEN SKELETON INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Android screen skeleton for action idea board.

screen_role:
The action board converts forecast meaning into possible business actions.

main_sections:
- top app bar
- forecast summary strip
- scenario context chip area
- action candidate list/grid
- selected action area
- bottom continue area

action_card_parts:
- action type
- action title
- expected effect summary
- timing hint
- channel / target hint
- selected state

actions:
- select action
- edit action
- add custom action
- continue to proposal
- back to editor

state_groups:
- no selected action
- suggested actions shown
- custom action added
- action validation warning

basic_pro_difference:
Basic and Pro share almost the same core UI.


# ============================================================
# PROPOSAL BUILDER SCREEN SKELETON INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Android screen skeleton for proposal draft builder.

screen_role:
The proposal builder transforms selected actions into editable proposal text.

main_sections:
- top app bar
- source context summary
- draft type selector
- section editor area
- regeneration controls
- bottom action area

draft_sections:
- title
- executive summary
- problem statement
- opportunity statement
- recommended action
- expected business effect
- free draft body

actions:
- generate draft
- regenerate section
- save
- continue to profit
- share/request approval (Pro)
- back to action board

state_groups:
- empty draft
- generated draft
- user edited draft
- regeneration pending
- validation warning

basic_pro_difference:
Basic:
- local save only

Pro:
- share / approval entry visible


# ============================================================
# PROFIT PREVIEW SCREEN SKELETON INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Android screen skeleton for profit preview.

screen_role:
The profit preview screen explains the revenue/profit image of a chosen action.

main_sections:
- top app bar
- source summary area
- assumption input cards
- result cards
- risk / inventory note area
- bottom action area

assumption_groups:
- quantity
- price
- cost
- execution cost

result_groups:
- sales amount
- gross profit
- operating profit
- margin rate

actions:
- recalculate
- save snapshot
- back to proposal
- back to action
- proceed to Pro handoff/approval

state_groups:
- missing assumptions
- calculated
- warning present
- Pro submission readiness hint visible

basic_pro_difference:
Basic:
- local preview result

Pro:
- may continue to approval / handoff readiness


# ============================================================
# FORECAST DETAIL SCREEN SKELETON INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Android screen skeleton for forecast detail.

screen_role:
The forecast detail screen is the compact summary hub
for a single working object.

main_sections:
- top app bar
- header summary card
- signal summary section
- scenario summary section
- action summary section
- proposal summary section
- profit preview summary section
- history shortcut area
- Pro operation panel

summary_fields:
- title
- scope summary
- selected scenario
- updated time
- draft / sync / approval / handoff states

actions:
- edit forecast
- open action board
- open proposal builder
- open profit preview
- open history
- open Pro approval / handoff

state_groups:
- loading
- content
- no linked action yet
- no proposal yet
- no profit preview yet
- Pro operation visible

basic_pro_difference:
Basic:
- no governed operation panel

Pro:
- approval / share / handoff entry visible


# ============================================================
# PRO APPROVAL SUBMISSION SCREEN SKELETON INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Android screen skeleton for Pro approval / submission screen.

screen_role:
This screen manages governed Pro workflow transitions.

main_sections:
- top app bar
- source summary strip
- approval status card
- approver / target section
- handoff readiness section
- payload summary section
- result history strip
- bottom action area

state_groups:
- not requested
- approval pending
- approval approved
- approval rejected
- handoff ready
- handoff pending
- handoff accepted
- handoff rejected
- handoff failed

actions:
- request approval
- cancel approval request
- prepare handoff
- execute handoff
- retry handoff
- open history

basic_pro_difference:
Pro only.
Basic must not enter this screen.


# ============================================================
# HISTORY SCREEN SKELETON INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Android screen skeleton for history screen.

screen_role:
The history screen shows important state-changing events
for the working object.

main_sections:
- top app bar
- event filter row
- timeline list
- event detail drawer or panel
- state legend

event_groups:
- draft events
- action events
- proposal events
- profit preview events
- approval events
- handoff events
- sync events

actions:
- filter by event type
- open source object context
- open related detail screen

state_groups:
- empty
- filtered empty
- content

basic_pro_difference:
Basic:
- local history focused

Pro:
- adds approval / handoff / sync events


# ============================================================
# SHARE TARGET SCREEN SKELETON INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Android screen skeleton for share target screen.

screen_role:
This screen manages who can see or assist with a Pro draft.

main_sections:
- top app bar
- target search area
- target type tabs or selector
- permission level section
- selected target preview
- current share list
- bottom action area

actions:
- search target
- select target
- select permission
- confirm share
- revoke share
- back to detail

state_groups:
- no target selected
- target selected
- share created
- share failed
- current shares visible

basic_pro_difference:
Pro only.
Basic must not enter this screen.


# ============================================================
# SETTINGS SCREEN SKELETON INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Android screen skeleton for settings screen.

screen_role:
The settings screen manages local preferences,
tier visibility, and app-level configuration.

main_sections:
- top app bar
- account / tier section
- local draft behavior section
- display / editing preference section
- Pro connection section
- about / version section

setting_groups:
- current tier display
- draft autosave preference
- default screen preference
- state badge / compact mode preference
- Pro connection summary
- legal / version info

actions:
- update preference
- view tier status
- inspect connection status
- return to dashboard

basic_pro_difference:
Basic:
- local preference focused

Pro:
- connection and enterprise-linked summary visible


# ============================================================
# SECURITY OVERVIEW
# ============================================================

status: canonical
application: QuickForecast
layer: 100.security
owner: Boss
prepared_by: Zero

purpose:
Summarizes security design of QuickForecast.

summary:
Security protects tier boundary, enterprise-linked access,
draft integrity, approval integrity, and submission integrity.

security_focus:
- Basic / Pro enforcement
- ERP reference protection
- attributable approval action
- attributable submission action
- prohibition of false success display


# ============================================================
# SECURITY INDEX
# ============================================================

status: canonical
application: QuickForecast
layer: 100.security
owner: Boss
prepared_by: Zero

files:
- security_OVERVIEW.md
- security_INDEX.md
- 100_QUICK_FORECAST_SECURITY.md
- 100110_TIER_BOUNDARY_SECURITY.md
- 100120_SUBMISSION_INTEGRITY_SECURITY.md


# ============================================================
# QUICK FORECAST SECURITY
# ============================================================

status: canonical
layer: security
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines security requirements of QuickForecast Basic / Pro.

# ============================================================
# 1. SECURITY POSITION
# ============================================================

QuickForecast handles business draft material
that may later influence enterprise decisions.

Security must therefore protect:
- user identity
- tier boundary
- enterprise-linked access
- draft integrity
- submission integrity
- approval integrity

# ============================================================
# 2. BASIC SECURITY
# ============================================================

Basic security scope:
- local user protection
- local draft protection
- feature-tier enforcement
- safe local state handling

# ============================================================
# 3. PRO SECURITY
# ============================================================

Pro security scope adds:
- enterprise identity binding
- permission-gated ERP reference
- approval-path integrity
- governed submission integrity
- history / audit support where applicable

# ============================================================
# 4. CORE RULES
# ============================================================

rules:
- Basic-only users must not access Pro-only enterprise controls
- ERP reference access must be permission-checked
- approval and submission actions must be attributable
- local draft loss by insecure handling is prohibited where preventable
- submission state forgery is prohibited


# ============================================================
# TIER BOUNDARY SECURITY
# ============================================================

status: canonical
layer: security
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines security requirements for Basic / Pro separation.

rules:
- ERP data access is Pro-only
- enterprise submission is Pro-only
- approval routing is Pro-only
- client-visible UI hiding alone is insufficient
- effective authorization must be enforced by governed control


# ============================================================
# SUBMISSION INTEGRITY SECURITY
# ============================================================

status: canonical
layer: security
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines security requirements for governed submission.

rules:
- target identity must be resolved before submission
- submission payload must be attributable to source draft state
- approval-required payload must not bypass approval
- success display must match actual result state


# ============================================================
# INFRASTRUCTURE OVERVIEW
# ============================================================

status: canonical
application: QuickForecast
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Summarizes infrastructure assumptions of QuickForecast.

summary:
Infrastructure supports mobile-first,
local-first business drafting.

infrastructure_focus:
- local persistence
- interruption tolerance
- optional enterprise linkage
- recoverable connected failure
- Pro governed connectivity assumptions


# ============================================================
# INFRASTRUCTURE INDEX
# ============================================================

status: canonical
application: QuickForecast
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

files:
- infrastructure_OVERVIEW.md
- infrastructure_INDEX.md
- 110_QUICK_FORECAST_INFRASTRUCTURE.md
- 110110_LOCAL_FIRST_INFRASTRUCTURE.md
- 110120_PRO_ENTERPRISE_LINK_INFRASTRUCTURE.md
- 110130_LOCAL_PERSISTENCE_INFRASTRUCTURE.md
- 110140_PRO_CACHE_AND_SYNC_INFRASTRUCTURE.md
- 110150_LOCAL_ENTITY_SET_INFRASTRUCTURE.md


# ============================================================
# QUICK FORECAST INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines infrastructure assumptions for QuickForecast.

# ============================================================
# 1. INFRASTRUCTURE ROLE
# ============================================================

QuickForecast infrastructure must support:
- mobile execution
- local-first drafting
- optional synchronization
- optional enterprise linkage
- recoverable failure handling

# ============================================================
# 2. BASIC INFRASTRUCTURE
# ============================================================

Basic infrastructure emphasizes:
- local storage
- mobile runtime
- low dependency startup
- offline-capable drafting

# ============================================================
# 3. PRO INFRASTRUCTURE
# ============================================================

Pro infrastructure adds:
- identity-aware connected operation
- ERP reference connectivity
- approval connectivity
- submission connectivity
- history / sync support


# ============================================================
# LOCAL-FIRST INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines local-first infrastructure assumptions.

requirements:
- drafts must remain locally storable
- partial work must survive app interruption where practical
- local state must be recoverable after transient connectivity loss
- local draft continuity must not depend on constant network access


# ============================================================
# PRO ENTERPRISE LINK INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Pro enterprise-link infrastructure assumptions.

requirements:
- enterprise context resolution
- permission-aware ERP reference access
- governed approval path support
- governed submission path support
- explicit failure return path


# ============================================================
# LOCAL PERSISTENCE INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines local persistence infrastructure assumptions.

requirements:
- persistence available without constant network
- draft writes should be fast
- reads should support quick resume
- failed Pro linkage must not corrupt local draft continuity
- local state versioning should be considered for schema evolution


# ============================================================
# PRO CACHE AND SYNC INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines infrastructure assumptions for Pro cache and sync support.

requirements:
- sync state cache
- approval state cache
- handoff result cache
- retry-supporting state retention
- explicit stale / pending / failed distinction

principles:
- Pro cache is support state, not authority truth
- cache refresh failure must remain visible


# ============================================================
# LOCAL ENTITY SET INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the intended local entity set for QuickForecast local persistence.

core_entities:
- forecast_draft_entity
- forecast_signal_entity
- forecast_scenario_entity
- action_idea_entity
- proposal_draft_entity
- profit_preview_entity
- profit_assumption_entity

support_entities:
- sync_state_entity
- approval_request_cache_entity
- approval_event_cache_entity
- share_target_cache_entity
- erp_handoff_cache_entity
- history_entry_entity
- settings_entity

principles:
- one clear identity per entity
- source draft entities and support cache entities must remain distinguishable
- entities should support quick resume and partial-save behavior


# ============================================================
# IMPLEMENTATION OVERVIEW
# ============================================================

status: canonical
application: QuickForecast
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
Summarizes implementation direction of QuickForecast.

summary:
Implementation preserves the canonical chain:

Forecast
-> Action
-> Proposal
-> Profit

implementation_focus:
- stable local core first
- editable generated content
- explicit state handling
- safe Pro enterprise-linked extension


# ============================================================
# IMPLEMENTATION INDEX
# ============================================================

status: canonical
application: QuickForecast
layer: 120.implementation
owner: Boss
prepared_by: Zero

files:
- implementation_OVERVIEW.md
- implementation_INDEX.md
- 120_QUICK_FORECAST_IMPLEMENTATION.md
- 120110_FORECAST_TO_PROPOSAL_IMPLEMENTATION.md
- 120120_PROFIT_PREVIEW_IMPLEMENTATION.md
- 120130_PRO_LINKED_OPERATION_IMPLEMENTATION.md
- 120140_ANDROID_PACKAGE_STRUCTURE_IMPLEMENTATION.md
- 120150_COMMON_COMPONENT_MAPPING_IMPLEMENTATION.md
- 120160_BASIC_PRO_FEATURE_FLAG_IMPLEMENTATION.md
- 120170_ANDROID_SCREEN_STATE_IMPLEMENTATION.md
- 120180_ANDROID_NAVIGATION_IMPLEMENTATION.md
- 120190_PRO_SCREEN_GATING_IMPLEMENTATION.md
- 120200_DETAIL_TO_PRO_FLOW_IMPLEMENTATION.md
- 120210_ANDROID_VIEWMODEL_IMPLEMENTATION.md
- 120220_ANDROID_REPOSITORY_IMPLEMENTATION.md
- 120230_LOCAL_DB_IMPLEMENTATION.md
- 120240_LOCAL_ENTITY_FIELD_IMPLEMENTATION.md
- 120250_DAO_METHOD_IMPLEMENTATION.md
- 120260_REPOSITORY_METHOD_IMPLEMENTATION.md
- 120270_SCREEN_TO_REPOSITORY_MAPPING_IMPLEMENTATION.md
- 120280_DASHBOARD_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md
- 120290_FORECAST_LIST_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md
- 120300_FORECAST_EDITOR_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md
- 120310_ACTION_BOARD_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md
- 120320_PROPOSAL_BUILDER_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md
- 120330_PROFIT_PREVIEW_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md
- 120340_VIEWMODEL_REDUCER_PATTERN_IMPLEMENTATION.md
- 120350_FORECAST_DETAIL_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md
- 120360_PRO_APPROVAL_SUBMISSION_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md
- 120370_HISTORY_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md
- 120380_SHARE_TARGET_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md
- 120390_SETTINGS_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md
- 120400_PRO_VIEWMODEL_GATING_IMPLEMENTATION.md
- 120410_DASHBOARD_REDUCER_TRANSITION_IMPLEMENTATION.md
- 120420_FORECAST_LIST_REDUCER_TRANSITION_IMPLEMENTATION.md
- 120430_FORECAST_EDITOR_REDUCER_TRANSITION_IMPLEMENTATION.md
- 120440_ACTION_BOARD_REDUCER_TRANSITION_IMPLEMENTATION.md
- 120450_PROPOSAL_BUILDER_REDUCER_TRANSITION_IMPLEMENTATION.md
- 120460_PROFIT_PREVIEW_REDUCER_TRANSITION_IMPLEMENTATION.md
- 120470_CORE_SCREEN_REPOSITORY_RESPONSIBILITY_IMPLEMENTATION.md
- 120480_FORECAST_DETAIL_REDUCER_TRANSITION_IMPLEMENTATION.md
- 120490_PRO_APPROVAL_SUBMISSION_REDUCER_TRANSITION_IMPLEMENTATION.md
- 120500_HISTORY_REDUCER_TRANSITION_IMPLEMENTATION.md
- 120510_SHARE_TARGET_REDUCER_TRANSITION_IMPLEMENTATION.md
- 120520_SETTINGS_REDUCER_TRANSITION_IMPLEMENTATION.md
- 120530_PRO_SCREEN_REPOSITORY_RESPONSIBILITY_IMPLEMENTATION.md
- 120540_ANDROID_CLASS_INVENTORY_IMPLEMENTATION.md
- 120550_ANDROID_FEATURE_CLASS_RESPONSIBILITY_IMPLEMENTATION.md
- 120560_ANDROID_DATA_CLASS_RESPONSIBILITY_IMPLEMENTATION.md
- 120570_ANDROID_DOMAIN_CLASS_RESPONSIBILITY_IMPLEMENTATION.md
- 120580_ANDROID_INTEGRATION_CLASS_RESPONSIBILITY_IMPLEMENTATION.md
- 120590_ANDROID_COMMON_UI_CLASS_RESPONSIBILITY_IMPLEMENTATION.md
- 120600_SCREEN_TO_CLASS_MAPPING_IMPLEMENTATION.md
- 120610_ANDROID_FILE_GENERATION_UNIT_IMPLEMENTATION.md
- 120620_ANDROID_MINIMUM_FILE_SET_IMPLEMENTATION.md
- 120630_ANDROID_FILE_TEMPLATE_RESPONSIBILITY_IMPLEMENTATION.md
- 120640_ANDROID_GENERATION_TARGET_FREEZE_IMPLEMENTATION.md
- 120650_ANDROID_PHASE1_GENERATION_TARGET_IMPLEMENTATION.md
- 120660_ANDROID_DEFERRED_TARGET_IMPLEMENTATION.md


# ============================================================
# QUICK FORECAST IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines implementation direction for QuickForecast.

# ============================================================
# 1. IMPLEMENTATION GOAL
# ============================================================

Implementation must preserve the canonical sequence:

Forecast
-> Action
-> Proposal
-> Profit

while remaining mobile-first and local-first.

# ============================================================
# 2. IMPLEMENTATION PRIORITIES
# ============================================================

priorities:
- fast draft creation
- stable local persistence
- editable generated content
- explicit state handling
- safe Pro enterprise linkage
- visible failure handling

# ============================================================
# 3. IMPLEMENTATION CONSTRAINTS
# ============================================================

constraints:
- Basic and Pro capability boundary must remain explicit
- generated draft content must remain user-editable
- regeneration must not silently destroy user-authored content
- enterprise submission must remain explicitly triggered


# ============================================================
# FORECAST TO PROPOSAL IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines implementation direction for forecast-to-proposal chain.

implementation_focus:
- forecast inputs map to scenario objects
- scenario objects map to action ideas
- selected actions map to proposal draft sections
- proposal draft remains editable after generation
- source traceability should be preservable where practical


# ============================================================
# PROFIT PREVIEW IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines implementation direction for profit preview.

implementation_focus:
- assumptions remain visible
- calculation result remains revisable
- preview updates after source edits
- enterprise authority is not implied by preview existence


# ============================================================
# PRO-LINKED OPERATION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines implementation direction for Pro linked operation.

implementation_focus:
- ERP reference access remains separate from local edits
- approval flow state remains explicit
- pending sync and pending submission remain explicit
- failed enterprise linkage preserves local draft continuity


# ============================================================
# ANDROID PACKAGE STRUCTURE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Android-oriented package structure for QuickForecast.

recommended_package_root:
com.lsam.QuickForecast

recommended_structure:
- app
- core
- feature
- data
- domain
- integration
- common

package_details:

app:
Application bootstrap, navigation entry, top-level configuration.

core:
- auth
- tier
- flags
- state
- validation
- error
- model common

common:
- ui common
- form common
- state badge
- timeline component
- loading / error component
- draft status component

feature.forecast:
- forecast list
- forecast detail
- forecast editor
- scenario compare

feature.action:
- action idea board
- action editor

feature.proposal:
- proposal draft builder
- draft section regeneration controls

feature.profit:
- profit preview
- profit assumption editor

feature.pro:
- share target
- approval submission
- history
- sync status

domain:
- forecast domain
- action domain
- proposal domain
- profit domain
- approval domain
- handoff domain

data:
- local storage
- repository
- dto
- mapper
- cache

integration:
- general signal gateway
- ERP reference gateway
- approval gateway
- handoff gateway
- sync gateway

principles:
- feature-oriented UI separation
- domain separation from UI
- Pro-specific UI isolated from Basic core
- governed integration isolated from local draft logic


# ============================================================
# COMMON COMPONENT MAPPING IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines common component reuse targets for QuickForecast.

reuse_targets:
- login / auth common
- user target selector common
- share target selector common
- approval panel common
- history timeline common
- sync status common
- validation message common
- state badge common
- local draft indicator common

quickforecast_specific_components:
- forecast summary strip
- signal input panel
- scenario selector
- action card board
- proposal draft editor
- profit preview card
- ERP handoff readiness panel

principles:
- reuse common governance-aware components where possible
- keep forecast/action/proposal/profit chain app-specific
- avoid duplicating share/approval/history primitives


# ============================================================
# BASIC / PRO FEATURE FLAG IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines feature-flag implementation direction for Basic / Pro.

flag_groups:
- tier.basic
- tier.pro
- pro.erp_reference
- pro.share
- pro.approval
- pro.sync
- pro.handoff
- pro.history_extended

basic_enabled:
- forecast draft
- scenario handling
- action board
- proposal draft builder
- profit preview
- local save

basic_disabled:
- ERP reference
- governed sharing
- governed approval
- enterprise sync
- ERP handoff

implementation_rules:
- server/governed enforcement required for Pro-only functions
- UI-only hiding is insufficient
- disabled Pro features should remain explainable to the user


# ============================================================
# ANDROID SCREEN STATE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines implementation direction for screen-level state handling.

state_principles:
- each screen must have explicit ui state
- loading / empty / content / failure should be distinguishable
- transient action state should not erase source content state
- Pro governance state should be additive, not mixed ambiguously

recommended_state_shape:
- screen_identity
- loading_state
- content_presence_state
- validation_state
- sync_state
- approval_state
- handoff_state
- last_user_action_state

notes:
Forecast context should survive configuration and navigation changes where practical.


# ============================================================
# ANDROID NAVIGATION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines implementation direction for Android navigation.

navigation_principles:
- navigation must preserve resumability
- deep nesting should be avoided
- detail and editor transitions must remain predictable
- source-to-output chain should be reachable without confusion

recommended_flow:
dashboard
-> forecast_list
-> forecast_detail
-> forecast_editor
-> action_idea_board
-> proposal_draft_builder
-> profit_preview

pro_extensions:
- pro_approval_submission
- history

notes:
Navigation should preserve the working object identity
across Forecast -> Action -> Proposal -> Profit transitions.


# ============================================================
# PRO SCREEN GATING IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines implementation direction for Pro-only screen gating.

pro_only_screens:
- pro_approval_submission
- share_target

rules:
- route guard is required
- UI-only hiding is insufficient
- unsupported navigation must fail safely
- Pro downgrade state must not expose stale governed controls


# ============================================================
# DETAIL TO PRO FLOW IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines implementation direction from detail view
to Pro governance screens.

principles:
- forecast detail is the handoff point from core drafting
  to governed Pro actions
- detail screen should summarize enough context
  before entering approval / handoff flow
- history should remain reachable from detail and Pro screens


# ============================================================
# ANDROID VIEWMODEL IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines ViewModel-layer implementation direction for QuickForecast.

viewmodel_goals:
- hold screen state explicitly
- preserve working object context
- support resumable editing
- separate local draft logic from Pro governed actions

recommended_viewmodels:
- DashboardViewModel
- ForecastListViewModel
- ForecastDetailViewModel
- ForecastEditorViewModel
- ActionBoardViewModel
- ProposalBuilderViewModel
- ProfitPreviewViewModel
- ProApprovalSubmissionViewModel
- HistoryViewModel
- ShareTargetViewModel
- SettingsViewModel

common_state_segments:
- screen loading state
- draft object state
- validation state
- action state
- sync state
- approval state
- handoff state
- user message state

principles:
- one primary working object per major ViewModel
- governed Pro actions should be explicit commands
- local save and governed handoff must remain separate flows


# ============================================================
# ANDROID REPOSITORY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines repository-layer implementation direction.

repository_goals:
- isolate local storage from UI
- isolate integration gateways from UI
- preserve domain-shaped data access
- support Basic-only and Pro-linked operation cleanly

recommended_repositories:
- ForecastRepository
- ScenarioRepository
- ActionRepository
- ProposalRepository
- ProfitRepository
- HistoryRepository
- ShareRepository
- ApprovalRepository
- HandoffRepository
- SettingsRepository

split_principle:
Each repository may internally use:
- local data source
- remote/integration data source
- mapper layer

rules:
- local draft repositories must function without Pro linkage
- Pro linkage repositories must not own local draft truth
- ERP reference reads must remain distinct from user-edited draft values


# ============================================================
# LOCAL DB IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines local DB / persistence implementation direction.

persistence_goals:
- keep drafts safe locally
- support interrupted work
- support later resume
- support explicit state tracking
- preserve draft continuity during external failure

recommended_local_entities:
- forecast_draft_entity
- forecast_signal_entity
- forecast_scenario_entity
- action_idea_entity
- proposal_draft_entity
- profit_preview_entity
- profit_assumption_entity
- sync_state_entity
- approval_request_cache_entity
- approval_event_cache_entity
- share_target_cache_entity
- erp_handoff_cache_entity
- history_entry_entity
- settings_entity

rules:
- local save success does not imply enterprise acceptance
- cache of Pro-linked state must remain explicitly marked
- local entity model may differ from canonical doc model if mapping is clear


# ============================================================
# LOCAL ENTITY FIELD IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines recommended field groups for local entities.

entity_field_groups:

forecast_draft_entity:
- local_id
- forecast_id
- tier_code
- title
- target_object_type
- target_object_id
- period_start
- period_end
- grain_code
- demand_direction_code
- demand_strength_code
- forecast_quantity
- forecast_amount
- confidence_code
- selected_scenario_id
- draft_state_code
- updated_at

forecast_signal_entity:
- local_id
- signal_id
- forecast_id
- signal_type_code
- source_tier_code
- signal_summary
- signal_strength_code
- effect_direction_code
- effect_note
- updated_at

forecast_scenario_entity:
- local_id
- scenario_id
- forecast_id
- scenario_code
- scenario_name
- scenario_order
- quantity_delta
- amount_delta
- assumption_note
- is_selected
- updated_at

action_idea_entity:
- local_id
- action_id
- forecast_id
- scenario_id
- action_type_code
- action_title
- action_summary
- target_channel_code
- expected_effect_summary
- updated_at

proposal_draft_entity:
- local_id
- proposal_draft_id
- forecast_id
- scenario_id
- action_id
- draft_type_code
- title
- executive_summary
- problem_statement
- opportunity_statement
- recommended_action
- expected_business_effect
- draft_body
- draft_state_code
- updated_at

profit_preview_entity:
- local_id
- profit_preview_id
- forecast_id
- scenario_id
- action_id
- expected_sales_amount
- expected_cost_amount
- expected_gross_profit
- expected_execution_cost
- expected_operating_profit
- profit_margin_rate
- updated_at

profit_assumption_entity:
- local_id
- profit_assumption_id
- forecast_id
- scenario_id
- action_id
- quantity_assumption
- unit_price_assumption
- variable_cost_assumption
- fixed_execution_cost_assumption
- inventory_impact_note
- risk_factor_note
- updated_at

support_note:
Support/cache entities may include remote_state_version,
last_sync_at, and cache freshness fields where useful.


# ============================================================
# DAO METHOD IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines DAO responsibilities and recommended method families.

dao_set:
- ForecastDraftDao
- ForecastSignalDao
- ForecastScenarioDao
- ActionIdeaDao
- ProposalDraftDao
- ProfitPreviewDao
- ProfitAssumptionDao
- SyncStateDao
- ApprovalRequestCacheDao
- ApprovalEventCacheDao
- ShareTargetCacheDao
- ErpHandoffCacheDao
- HistoryEntryDao
- SettingsDao

recommended_methods:

common_read_methods:
- getById
- getByForecastId
- listRecent
- listByUpdatedAtDesc

common_write_methods:
- insert
- update
- upsert
- deleteById
- deleteByForecastId

screen_support_methods:
- getLatestSelectedScenario
- getLatestProposalByForecastId
- getLatestProfitPreviewByForecastId
- listHistoryByTarget
- listPendingSync
- listPendingApproval
- listPendingHandoff

principles:
- DAO methods should remain persistence-focused
- screen aggregation logic should not live in DAO unless clearly justified
- destructive delete should be limited and explicit


# ============================================================
# REPOSITORY METHOD IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines repository responsibilities and recommended method families.

forecast_repository_methods:
- createDraft
- loadDraft
- saveDraft
- updateTargetScope
- updateForecastSummary
- listRecentDrafts
- listMyDrafts
- duplicateScenarioContext

scenario_repository_methods:
- listScenarios
- selectScenario
- createScenario
- updateScenario
- deleteScenario

action_repository_methods:
- listActionIdeas
- generateActionCandidates
- saveActionSelection
- addCustomAction
- updateAction

proposal_repository_methods:
- loadProposalDraft
- generateProposalDraft
- regenerateProposalSection
- saveProposalDraft
- listProposalDraftsByForecast

profit_repository_methods:
- loadProfitPreview
- calculateProfitPreview
- saveProfitPreview
- saveProfitAssumptions

history_repository_methods:
- listHistory
- appendLocalHistoryEvent

share_repository_methods:
- listShareTargets
- addShareTarget
- removeShareTarget

approval_repository_methods:
- loadApprovalState
- requestApproval
- cancelApproval
- refreshApprovalState

handoff_repository_methods:
- loadHandoffState
- prepareHandoff
- executeHandoff
- retryHandoff
- refreshHandoffState

settings_repository_methods:
- loadSettings
- saveSettings
- loadTierInfo

principles:
- repositories expose domain-meaningful methods
- repositories may coordinate multiple DAO calls
- governed remote actions must remain explicit repository commands


# ============================================================
# SCREEN TO REPOSITORY MAPPING IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines intended mapping from screens to repositories.

mapping:
- dashboard -> ForecastRepository, ApprovalRepository, HandoffRepository
- forecast_list -> ForecastRepository, ShareRepository, ApprovalRepository, HandoffRepository
- forecast_detail -> ForecastRepository, ScenarioRepository, ActionRepository, ProposalRepository, ProfitRepository, HistoryRepository
- forecast_editor -> ForecastRepository, ScenarioRepository
- action_idea_board -> ActionRepository, ScenarioRepository
- proposal_draft_builder -> ProposalRepository, ActionRepository, ProfitRepository
- profit_preview -> ProfitRepository
- pro_approval_submission -> ApprovalRepository, HandoffRepository
- history -> HistoryRepository
- share_target -> ShareRepository
- settings -> SettingsRepository

principles:
- keep screen coupling minimal
- prefer a small repository set per screen
- Pro repositories should not leak into Basic-only flows unless gated


# ============================================================
# DASHBOARD VIEWMODEL STATE EVENT EFFECT IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines ViewModel state / event / effect for dashboard screen.

state_segments:
- loading_state
- recent_drafts
- pending_pro_items
- quick_summary_state
- tier_state
- message_state

events:
- Initialize
- Refresh
- TapNewDraft
- TapRecentDraft
- TapPendingItem
- TapForecastList
- TapSettings

effects:
- NavigateToNewDraft
- NavigateToDraftDetail
- NavigateToForecastList
- NavigateToSettings
- ShowMessage

rules:
- dashboard state is resume-first
- Pro pending items are additive to Basic core


# ============================================================
# FORECAST LIST VIEWMODEL STATE EVENT EFFECT IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines ViewModel state / event / effect for forecast list screen.

state_segments:
- loading_state
- selected_tab
- filter_query
- sort_mode
- draft_list
- shared_list
- pending_approval_list
- pending_handoff_list
- message_state

events:
- Initialize
- Refresh
- SelectTab
- ChangeFilterQuery
- ChangeSortMode
- TapDraft
- TapCreateNew
- TapRetryPendingItem

effects:
- NavigateToDraftDetail
- NavigateToNewDraft
- ShowMessage

rules:
- Basic tabs and Pro tabs must remain distinguishable
- row state must remain explicit


# ============================================================
# FORECAST EDITOR VIEWMODEL STATE EVENT EFFECT IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines ViewModel state / event / effect for forecast editor screen.

state_segments:
- loading_state
- draft_identity_state
- header_form_state
- signal_form_state
- scenario_state
- forecast_result_state
- validation_state
- save_state
- pro_reference_state
- message_state

events:
- Initialize
- ChangeTitle
- ChangeTargetScope
- ChangePeriod
- ChangeGrain
- ChangeSignalValue
- ChangeManualAssumption
- SelectScenario
- DuplicateScenario
- SaveDraft
- TapContinueToAction
- RefreshProReference

effects:
- NavigateToActionBoard
- ShowMessage
- ShowValidation

rules:
- local save must be independent from Pro reference availability
- signal edits must not silently destroy scenario selection


# ============================================================
# ACTION BOARD VIEWMODEL STATE EVENT EFFECT IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines ViewModel state / event / effect for action board screen.

state_segments:
- loading_state
- forecast_context_state
- scenario_context_state
- suggested_actions_state
- selected_actions_state
- custom_action_form_state
- validation_state
- save_state
- message_state

events:
- Initialize
- SelectSuggestedAction
- DeselectAction
- AddCustomAction
- UpdateCustomAction
- SaveSelection
- TapContinueToProposal
- TapBackToEditor

effects:
- NavigateToProposalBuilder
- NavigateBack
- ShowMessage
- ShowValidation

rules:
- selected actions must remain editable
- no-action-selected state must remain explicit


# ============================================================
# PROPOSAL BUILDER VIEWMODEL STATE EVENT EFFECT IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines ViewModel state / event / effect for proposal builder screen.

state_segments:
- loading_state
- source_context_state
- draft_type_state
- proposal_section_state
- regeneration_state
- validation_state
- save_state
- pro_action_state
- message_state

events:
- Initialize
- SelectDraftType
- GenerateDraft
- RegenerateSection
- EditSectionText
- SaveDraft
- TapContinueToProfit
- TapSharePro
- TapRequestApprovalPro
- TapBackToAction

effects:
- NavigateToProfitPreview
- NavigateToProApproval
- NavigateBack
- ShowMessage
- ShowValidation

rules:
- regenerated section must not silently erase authored text
- Basic and Pro action set must be clearly separated


# ============================================================
# PROFIT PREVIEW VIEWMODEL STATE EVENT EFFECT IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines ViewModel state / event / effect for profit preview screen.

state_segments:
- loading_state
- source_context_state
- assumption_form_state
- result_state
- risk_note_state
- validation_state
- save_state
- pro_handoff_hint_state
- message_state

events:
- Initialize
- ChangeQuantityAssumption
- ChangeUnitPriceAssumption
- ChangeVariableCostAssumption
- ChangeFixedExecutionCostAssumption
- ChangeInventoryImpactNote
- ChangeRiskFactorNote
- Recalculate
- SaveSnapshot
- TapBackToProposal
- TapBackToAction
- TapProceedToProApproval

effects:
- NavigateToProposalBuilder
- NavigateToActionBoard
- NavigateToProApproval
- ShowMessage
- ShowValidation

rules:
- assumptions must remain visible
- recalculation must not hide prior entered assumptions


# ============================================================
# VIEWMODEL REDUCER PATTERN IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines reducer-like ViewModel pattern direction for QuickForecast.

pattern:
- State is the single main UI representation
- Event is user/system input
- Effect is one-time navigation/message side effect

principles:
- navigation is effect, not durable state
- toast/snackbar/dialog trigger is effect
- screen content is state
- repository result mapping should update state explicitly
- Pro governance actions should expose pending/success/failure states clearly


# ============================================================
# FORECAST DETAIL VIEWMODEL STATE EVENT EFFECT IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines ViewModel state / event / effect for forecast detail screen.

state_segments:
- loading_state
- summary_state
- signal_summary_state
- scenario_summary_state
- action_summary_state
- proposal_summary_state
- profit_summary_state
- history_summary_state
- pro_operation_state
- message_state

events:
- Initialize
- Refresh
- TapEditForecast
- TapOpenActionBoard
- TapOpenProposalBuilder
- TapOpenProfitPreview
- TapOpenHistory
- TapOpenProApprovalSubmission
- TapOpenShareTarget

effects:
- NavigateToForecastEditor
- NavigateToActionBoard
- NavigateToProposalBuilder
- NavigateToProfitPreview
- NavigateToHistory
- NavigateToProApprovalSubmission
- NavigateToShareTarget
- ShowMessage

rules:
- detail state is summary-hub oriented
- missing downstream outputs must remain explicit
- Pro actions must be additive and gated


# ============================================================
# PRO APPROVAL SUBMISSION VIEWMODEL STATE EVENT EFFECT IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines ViewModel state / event / effect for Pro approval/submission screen.

state_segments:
- loading_state
- source_context_state
- approval_state
- approver_state
- handoff_readiness_state
- payload_summary_state
- handoff_result_state
- retry_state
- validation_state
- message_state

events:
- Initialize
- Refresh
- SelectApprover
- ChangeApprovalComment
- RequestApproval
- CancelApprovalRequest
- PrepareHandoff
- ExecuteHandoff
- RetryHandoff
- TapOpenHistory
- TapBack

effects:
- NavigateToHistory
- NavigateBack
- ShowMessage
- ShowValidation

rules:
- approval state and handoff state must remain separate
- acceptance, rejection, and technical failure must remain distinct
- screen access is Pro-only


# ============================================================
# HISTORY VIEWMODEL STATE EVENT EFFECT IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines ViewModel state / event / effect for history screen.

state_segments:
- loading_state
- selected_filter_state
- timeline_items_state
- selected_event_state
- message_state

events:
- Initialize
- Refresh
- SelectFilter
- TapTimelineItem
- TapOpenRelatedContext
- TapBack

effects:
- NavigateToRelatedScreen
- NavigateBack
- ShowMessage

rules:
- history is read-heavy and filter-centric
- critical event types must remain distinguishable
- Basic and Pro event families may differ, but structure remains stable


# ============================================================
# SHARE TARGET VIEWMODEL STATE EVENT EFFECT IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines ViewModel state / event / effect for share target screen.

state_segments:
- loading_state
- search_query_state
- target_type_state
- search_result_state
- selected_target_state
- permission_level_state
- current_share_list_state
- validation_state
- message_state

events:
- Initialize
- ChangeSearchQuery
- SelectTargetType
- SelectSearchResult
- SelectPermissionLevel
- ConfirmShare
- RevokeShare
- TapBack

effects:
- NavigateBack
- ShowMessage
- ShowValidation

rules:
- permission scope must remain explicit
- share success and target response are separate
- screen access is Pro-only


# ============================================================
# SETTINGS VIEWMODEL STATE EVENT EFFECT IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines ViewModel state / event / effect for settings screen.

state_segments:
- loading_state
- tier_info_state
- local_preference_state
- display_preference_state
- pro_connection_state
- app_info_state
- save_state
- message_state

events:
- Initialize
- ChangeAutosavePreference
- ChangeDefaultScreenPreference
- ChangeCompactModePreference
- RefreshProConnectionState
- SavePreferences
- TapBack

effects:
- NavigateBack
- ShowMessage

rules:
- settings changes should be explicit
- tier visibility should remain readable
- Pro connection state is additive to core settings


# ============================================================
# PRO VIEWMODEL GATING IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines ViewModel-layer gating direction for Pro-only flows.

pro_viewmodels:
- ProApprovalSubmissionViewModel
- ShareTargetViewModel

rules:
- ViewModel initialization must validate Pro availability
- unsupported tier access must produce safe failure behavior
- gated flow must not expose stale prior Pro state after downgrade


# ============================================================
# DASHBOARD REDUCER TRANSITION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines reducer-style transition examples for DashboardViewModel.

transition_examples:

Initialize:
- loading_state -> loading
- repository load starts
- on success:
  - recent_drafts updated
  - pending_pro_items updated if Pro
  - loading_state -> content
- on failure:
  - loading_state -> content_or_partial_failure
  - message_state updated

TapNewDraft:
- no durable content mutation
- effect -> NavigateToNewDraft

TapRecentDraft:
- no durable content mutation
- effect -> NavigateToDraftDetail

TapPendingItem:
- no durable content mutation
- effect -> NavigateToDraftDetail or NavigateToProApproval

notes:
Dashboard is effect-heavy and content-light.


# ============================================================
# FORECAST LIST REDUCER TRANSITION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines reducer-style transition examples for ForecastListViewModel.

transition_examples:

Initialize:
- loading_state -> loading
- selected_tab initialized
- list repository loads
- on success:
  - active list state updated
  - loading_state -> content

SelectTab:
- selected_tab updated
- visible list source changes
- loading_state may remain content if cached data exists

ChangeFilterQuery:
- filter_query updated
- filtered list recalculated or reloaded

TapDraft:
- effect -> NavigateToDraftDetail

TapCreateNew:
- effect -> NavigateToNewDraft

TapRetryPendingItem:
- row pending/retry state updated
- repository retry command may run if supported
- message/effect may be emitted on result

notes:
Selected tab and filter are state.
Navigation is effect.


# ============================================================
# FORECAST EDITOR REDUCER TRANSITION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines reducer-style transition examples for ForecastEditorViewModel.

transition_examples:

Initialize:
- loading_state -> loading
- draft loaded or created
- header_form_state populated
- signal_form_state populated
- scenario_state populated
- loading_state -> content

ChangeTitle / ChangeTargetScope / ChangePeriod / ChangeGrain:
- corresponding form state updated
- validation_state recalculated
- save_state -> dirty

ChangeSignalValue / ChangeManualAssumption:
- signal_form_state updated
- forecast_result_state may be recalculated locally
- validation_state recalculated
- save_state -> dirty

SelectScenario:
- scenario_state updated
- dependent displayed form/result state updated

DuplicateScenario:
- scenario_state expanded
- save_state -> dirty

SaveDraft:
- save_state -> saving
- repository saveDraft called
- on success:
  - save_state -> saved
  - message_state updated
- on failure:
  - save_state -> failed
  - message_state updated

TapContinueToAction:
- validation checked
- if allowed:
  - effect -> NavigateToActionBoard
- else:
  - effect -> ShowValidation

RefreshProReference:
- pro_reference_state -> loading
- Pro repository/reference load runs
- success/failure reflected only in pro_reference_state
- local draft state remains preserved

notes:
Local draft mutation and Pro reference loading must stay separate.


# ============================================================
# ACTION BOARD REDUCER TRANSITION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines reducer-style transition examples for ActionBoardViewModel.

transition_examples:

Initialize:
- loading_state -> loading
- forecast_context_state loaded
- suggested_actions_state loaded/generated
- selected_actions_state loaded
- loading_state -> content

SelectSuggestedAction:
- selected_actions_state updated
- validation_state recalculated
- save_state -> dirty

DeselectAction:
- selected_actions_state updated
- validation_state recalculated
- save_state -> dirty

AddCustomAction / UpdateCustomAction:
- custom_action_form_state updated
- selected_actions_state may update
- save_state -> dirty

SaveSelection:
- save_state -> saving
- repository saveActionSelection called
- on success -> save_state saved
- on failure -> save_state failed

TapContinueToProposal:
- validation checked
- if valid:
  - effect -> NavigateToProposalBuilder
- else:
  - effect -> ShowValidation

notes:
Action selection is durable state.
Continue navigation is effect.


# ============================================================
# PROPOSAL BUILDER REDUCER TRANSITION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines reducer-style transition examples for ProposalBuilderViewModel.

transition_examples:

Initialize:
- loading_state -> loading
- source_context_state loaded
- proposal_section_state loaded
- loading_state -> content

SelectDraftType:
- draft_type_state updated
- validation_state recalculated
- save_state -> dirty

GenerateDraft:
- regeneration_state -> generating
- repository generateProposalDraft called
- on success:
  - proposal_section_state updated
  - regeneration_state -> idle
  - save_state -> dirty_or_saved_by_policy
- on failure:
  - regeneration_state -> failed
  - message_state updated

RegenerateSection:
- regeneration_state -> generating_section
- only target section refreshed
- authored text protection rule applied

EditSectionText:
- proposal_section_state updated
- save_state -> dirty

SaveDraft:
- save_state -> saving
- repository saveProposalDraft called
- success/failure reflected

TapContinueToProfit:
- effect -> NavigateToProfitPreview

TapSharePro / TapRequestApprovalPro:
- Pro gate checked
- if allowed:
  - effect -> NavigateToProApproval
- else:
  - message/effect -> ShowValidation or ShowMessage

notes:
Generated content must become normal editable state after generation.


# ============================================================
# PROFIT PREVIEW REDUCER TRANSITION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines reducer-style transition examples for ProfitPreviewViewModel.

transition_examples:

Initialize:
- loading_state -> loading
- source_context_state loaded
- assumption_form_state loaded
- result_state loaded or empty
- loading_state -> content

ChangeQuantityAssumption / ChangeUnitPriceAssumption / ChangeVariableCostAssumption / ChangeFixedExecutionCostAssumption:
- assumption_form_state updated
- validation_state recalculated
- save_state -> dirty

ChangeInventoryImpactNote / ChangeRiskFactorNote:
- note state updated
- save_state -> dirty

Recalculate:
- result_state -> calculating
- repository calculateProfitPreview called
- on success:
  - result_state updated
  - validation_state updated
- on failure:
  - result_state -> failed
  - message_state updated

SaveSnapshot:
- save_state -> saving
- repository saveProfitPreview and/or saveProfitAssumptions called
- success/failure reflected

TapProceedToProApproval:
- Pro gate checked
- if allowed:
  - effect -> NavigateToProApproval
- else:
  - ShowMessage or ShowValidation effect

notes:
Assumptions remain state.
Navigation remains effect.


# ============================================================
# CORE SCREEN REPOSITORY RESPONSIBILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines repository call responsibility by core screen event.

dashboard:
- Initialize -> ForecastRepository.listRecentDrafts
- Initialize(Pro) -> ApprovalRepository.loadApprovalState summary / HandoffRepository.loadHandoffState summary

forecast_list:
- Initialize -> ForecastRepository.listMyDrafts
- SelectTab(shared) -> ShareRepository.listShareTargets or mapped list source
- SelectTab(approval) -> ApprovalRepository.loadApprovalState list view
- SelectTab(handoff) -> HandoffRepository.loadHandoffState list view

forecast_editor:
- Initialize -> ForecastRepository.loadDraft, ScenarioRepository.listScenarios
- SaveDraft -> ForecastRepository.saveDraft
- DuplicateScenario -> ForecastRepository.duplicateScenarioContext or ScenarioRepository.createScenario
- RefreshProReference -> Pro reference gateway via ForecastRepository or dedicated ERP reference path

action_board:
- Initialize -> ActionRepository.listActionIdeas
- Generate candidates -> ActionRepository.generateActionCandidates
- SaveSelection -> ActionRepository.saveActionSelection

proposal_builder:
- Initialize -> ProposalRepository.loadProposalDraft
- GenerateDraft -> ProposalRepository.generateProposalDraft
- RegenerateSection -> ProposalRepository.regenerateProposalSection
- SaveDraft -> ProposalRepository.saveProposalDraft

profit_preview:
- Initialize -> ProfitRepository.loadProfitPreview
- Recalculate -> ProfitRepository.calculateProfitPreview
- SaveSnapshot -> ProfitRepository.saveProfitPreview and saveProfitAssumptions

principles:
- each event should have a primary repository owner
- repository ownership should remain understandable


# ============================================================
# FORECAST DETAIL REDUCER TRANSITION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines reducer-style transition examples for ForecastDetailViewModel.

transition_examples:

Initialize:
- loading_state -> loading
- summary_state loaded
- signal_summary_state loaded
- scenario_summary_state loaded
- action_summary_state loaded
- proposal_summary_state loaded
- profit_summary_state loaded
- history_summary_state loaded
- Pro operation summary optionally loaded
- loading_state -> content

Refresh:
- loading_state may become refreshing
- summary sub-states reloaded
- failure updates message_state without destroying prior visible content

TapEditForecast:
- effect -> NavigateToForecastEditor

TapOpenActionBoard:
- effect -> NavigateToActionBoard

TapOpenProposalBuilder:
- effect -> NavigateToProposalBuilder

TapOpenProfitPreview:
- effect -> NavigateToProfitPreview

TapOpenHistory:
- effect -> NavigateToHistory

TapOpenProApprovalSubmission / TapOpenShareTarget:
- Pro gate checked
- if allowed:
  - effect -> NavigateToProApprovalSubmission / NavigateToShareTarget
- else:
  - effect -> ShowMessage or ShowValidation

notes:
Detail is a summary hub.
Absent downstream outputs remain explicit state, not failure.


# ============================================================
# PRO APPROVAL SUBMISSION REDUCER TRANSITION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines reducer-style transition examples for ProApprovalSubmissionViewModel.

transition_examples:

Initialize:
- loading_state -> loading
- Pro gate checked
- source_context_state loaded
- approval_state loaded
- approver_state loaded
- handoff_readiness_state loaded
- payload_summary_state loaded if available
- handoff_result_state loaded
- loading_state -> content

SelectApprover:
- approver_state updated
- validation_state recalculated

ChangeApprovalComment:
- approval_state draft comment updated

RequestApproval:
- validation_state checked
- approval_state -> requesting
- ApprovalRepository.requestApproval called
- on success:
  - approval_state -> pending
  - message_state updated
- on failure:
  - approval_state -> request_failed
  - message_state updated

CancelApprovalRequest:
- approval_state -> canceling
- ApprovalRepository.cancelApproval called
- success/failure reflected explicitly

PrepareHandoff:
- validation_state checked
- HandoffRepository.prepareHandoff called
- handoff_readiness_state updated
- payload_summary_state updated on success

ExecuteHandoff:
- approval requirement rechecked
- handoff_result_state -> pending
- HandoffRepository.executeHandoff called
- on success:
  - handoff_result_state -> accepted_or_done
- on rejection:
  - handoff_result_state -> rejected
- on technical failure:
  - handoff_result_state -> failed

RetryHandoff:
- retry_state -> retrying
- HandoffRepository.retryHandoff called
- handoff_result_state updated from result

TapOpenHistory:
- effect -> NavigateToHistory

TapBack:
- effect -> NavigateBack

notes:
Approval state and handoff state are separate durable states.


# ============================================================
# HISTORY REDUCER TRANSITION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines reducer-style transition examples for HistoryViewModel.

transition_examples:

Initialize:
- loading_state -> loading
- timeline_items_state loaded
- selected_filter_state initialized
- loading_state -> content

Refresh:
- loading_state -> refreshing_or_loading
- HistoryRepository.listHistory called
- success/failure reflected

SelectFilter:
- selected_filter_state updated
- timeline_items_state filtered or reloaded

TapTimelineItem:
- selected_event_state updated

TapOpenRelatedContext:
- effect -> NavigateToRelatedScreen

TapBack:
- effect -> NavigateBack

notes:
History is mostly read-only state with filter and selection transitions.


# ============================================================
# SHARE TARGET REDUCER TRANSITION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines reducer-style transition examples for ShareTargetViewModel.

transition_examples:

Initialize:
- loading_state -> loading
- Pro gate checked
- current_share_list_state loaded
- loading_state -> content

ChangeSearchQuery:
- search_query_state updated
- search_result_state may refresh

SelectTargetType:
- target_type_state updated
- search_result_state may refresh

SelectSearchResult:
- selected_target_state updated
- validation_state recalculated

SelectPermissionLevel:
- permission_level_state updated
- validation_state recalculated

ConfirmShare:
- validation checked
- ShareRepository.addShareTarget called
- on success:
  - current_share_list_state updated
  - message_state updated
- on failure:
  - message_state updated
  - validation_state or failure marker updated

RevokeShare:
- ShareRepository.removeShareTarget called
- current_share_list_state updated on success

TapBack:
- effect -> NavigateBack

notes:
Share creation updates share state; recipient behavior is out of scope.


# ============================================================
# SETTINGS REDUCER TRANSITION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines reducer-style transition examples for SettingsViewModel.

transition_examples:

Initialize:
- loading_state -> loading
- tier_info_state loaded
- local_preference_state loaded
- display_preference_state loaded
- Pro connection summary loaded if Pro
- app_info_state loaded
- loading_state -> content

ChangeAutosavePreference / ChangeDefaultScreenPreference / ChangeCompactModePreference:
- corresponding preference state updated
- save_state -> dirty

RefreshProConnectionState:
- pro_connection_state -> loading
- SettingsRepository or dedicated source loads connection summary
- success/failure reflected without mutating local preferences

SavePreferences:
- save_state -> saving
- SettingsRepository.saveSettings called
- success/failure reflected in save_state and message_state

TapBack:
- effect -> NavigateBack

notes:
Local preferences and Pro connection summary must remain separate.


# ============================================================
# PRO SCREEN REPOSITORY RESPONSIBILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines repository call responsibility by Pro and auxiliary screen event.

forecast_detail:
- Initialize -> ForecastRepository.loadDraft
- Initialize -> ScenarioRepository.listScenarios
- Initialize -> ActionRepository.listActionIdeas
- Initialize -> ProposalRepository.listProposalDraftsByForecast or loadProposalDraft
- Initialize -> ProfitRepository.loadProfitPreview
- Initialize -> HistoryRepository.listHistory
- Initialize(Pro) -> ApprovalRepository.loadApprovalState, HandoffRepository.loadHandoffState

pro_approval_submission:
- Initialize -> ApprovalRepository.loadApprovalState
- Initialize -> HandoffRepository.loadHandoffState
- RequestApproval -> ApprovalRepository.requestApproval
- CancelApprovalRequest -> ApprovalRepository.cancelApproval
- PrepareHandoff -> HandoffRepository.prepareHandoff
- ExecuteHandoff -> HandoffRepository.executeHandoff
- RetryHandoff -> HandoffRepository.retryHandoff
- Refresh -> ApprovalRepository.refreshApprovalState, HandoffRepository.refreshHandoffState

history:
- Initialize / Refresh -> HistoryRepository.listHistory

share_target:
- Initialize -> ShareRepository.listShareTargets
- ConfirmShare -> ShareRepository.addShareTarget
- RevokeShare -> ShareRepository.removeShareTarget

settings:
- Initialize -> SettingsRepository.loadSettings, SettingsRepository.loadTierInfo
- SavePreferences -> SettingsRepository.saveSettings
- RefreshProConnectionState -> SettingsRepository.loadTierInfo or Pro connection source

principles:
- governed approval and governed handoff remain explicit repository owners
- detail screen aggregates but does not own domain truth


# ============================================================
# ANDROID CLASS INVENTORY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the first-pass Android class inventory for QuickForecast.

package_root:
com.lsam.QuickForecast

class_groups:
- app
- feature.forecast
- feature.action
- feature.proposal
- feature.profit
- feature.pro
- domain
- data.local
- data.repository
- integration
- common


# ============================================================
# ANDROID FEATURE CLASS RESPONSIBILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines feature-layer class responsibilities.

feature.forecast:
- DashboardActivity or DashboardFragment
- ForecastListActivity or ForecastListFragment
- ForecastDetailActivity or ForecastDetailFragment
- ForecastEditorActivity or ForecastEditorFragment
- DashboardViewModel
- ForecastListViewModel
- ForecastDetailViewModel
- ForecastEditorViewModel

feature.action:
- ActionBoardActivity or ActionBoardFragment
- ActionBoardViewModel

feature.proposal:
- ProposalBuilderActivity or ProposalBuilderFragment
- ProposalBuilderViewModel

feature.profit:
- ProfitPreviewActivity or ProfitPreviewFragment
- ProfitPreviewViewModel

feature.pro:
- ProApprovalSubmissionActivity or Fragment
- ShareTargetActivity or Fragment
- HistoryActivity or Fragment
- SettingsActivity or Fragment
- ProApprovalSubmissionViewModel
- ShareTargetViewModel
- HistoryViewModel
- SettingsViewModel

principles:
- one primary screen class per screen
- one primary ViewModel per screen
- screen owns rendering, ViewModel owns state orchestration


# ============================================================
# ANDROID DATA CLASS RESPONSIBILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines data-layer class responsibilities.

data.local.entity:
- ForecastDraftEntity
- ForecastSignalEntity
- ForecastScenarioEntity
- ActionIdeaEntity
- ProposalDraftEntity
- ProfitPreviewEntity
- ProfitAssumptionEntity
- SyncStateEntity
- ApprovalRequestCacheEntity
- ApprovalEventCacheEntity
- ShareTargetCacheEntity
- ErpHandoffCacheEntity
- HistoryEntryEntity
- SettingsEntity

data.local.dao:
- ForecastDraftDao
- ForecastSignalDao
- ForecastScenarioDao
- ActionIdeaDao
- ProposalDraftDao
- ProfitPreviewDao
- ProfitAssumptionDao
- SyncStateDao
- ApprovalRequestCacheDao
- ApprovalEventCacheDao
- ShareTargetCacheDao
- ErpHandoffCacheDao
- HistoryEntryDao
- SettingsDao

data.local.database:
- QuickForecastDatabase

data.repository:
- ForecastRepositoryImpl
- ScenarioRepositoryImpl
- ActionRepositoryImpl
- ProposalRepositoryImpl
- ProfitRepositoryImpl
- HistoryRepositoryImpl
- ShareRepositoryImpl
- ApprovalRepositoryImpl
- HandoffRepositoryImpl
- SettingsRepositoryImpl

principles:
- entity/dao stay persistence-focused
- repository implementations coordinate DAOs and integration gateways


# ============================================================
# ANDROID DOMAIN CLASS RESPONSIBILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines domain-layer class responsibilities.

domain.models:
- ForecastDraft
- ForecastSignal
- ForecastScenario
- ActionIdea
- ProposalDraft
- ProfitPreview
- ProfitAssumption
- ApprovalRequest
- ApprovalEvent
- ShareTarget
- ErpHandoff
- HistoryEntry

domain.usecase_candidates:
- CreateForecastDraftUseCase
- SaveForecastDraftUseCase
- DuplicateScenarioUseCase
- GenerateActionCandidatesUseCase
- SaveActionSelectionUseCase
- GenerateProposalDraftUseCase
- RegenerateProposalSectionUseCase
- CalculateProfitPreviewUseCase
- SaveProfitSnapshotUseCase
- RequestApprovalUseCase
- PrepareHandoffUseCase
- ExecuteHandoffUseCase
- RetryHandoffUseCase

principles:
- domain layer expresses business meaning
- use cases are optional but useful for complex screens
- Pro governance use cases remain explicit


# ============================================================
# ANDROID INTEGRATION CLASS RESPONSIBILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines integration-layer class responsibilities.

integration.gateway_candidates:
- GeneralSignalGateway
- ErpReferenceGateway
- ApprovalGateway
- HandoffGateway
- ShareGateway
- SyncGateway

integration.dto_candidates:
- ErpReferenceDto
- ApprovalRequestDto
- ApprovalResultDto
- HandoffRequestDto
- HandoffResultDto
- ShareTargetDto

integration.mapper_candidates:
- ForecastEntityMapper
- ProposalEntityMapper
- ProfitEntityMapper
- ApprovalMapper
- HandoffMapper
- ShareMapper

principles:
- gateways isolate transport / remote contract details
- DTOs do not leak into UI state directly
- mappers preserve separation between canonical/domain/local/remote shapes


# ============================================================
# ANDROID COMMON UI CLASS RESPONSIBILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines reusable common UI class responsibilities.

common.ui:
- StateBadgeView
- ValidationMessageView
- LoadingStateView
- EmptyStateView
- ErrorStateView
- DraftStatusView
- SummaryCardView
- TimelineListView
- ShareTargetSelectorView
- ApprovalSummaryView
- HandoffSummaryView

common.form:
- ForecastHeaderFormBinder
- SignalInputBinder
- ProposalSectionBinder
- ProfitAssumptionBinder

principles:
- common components reduce repeated screen logic
- app-specific business sequence stays outside generic common views


# ============================================================
# SCREEN TO CLASS MAPPING IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines intended mapping from screens to concrete Android class groups.

mapping:

dashboard:
- screen: DashboardActivity/Fragment
- viewmodel: DashboardViewModel
- repositories: ForecastRepository, ApprovalRepository, HandoffRepository

forecast_list:
- screen: ForecastListActivity/Fragment
- viewmodel: ForecastListViewModel
- repositories: ForecastRepository, ShareRepository, ApprovalRepository, HandoffRepository

forecast_detail:
- screen: ForecastDetailActivity/Fragment
- viewmodel: ForecastDetailViewModel
- repositories: ForecastRepository, ScenarioRepository, ActionRepository, ProposalRepository, ProfitRepository, HistoryRepository, ApprovalRepository, HandoffRepository

forecast_editor:
- screen: ForecastEditorActivity/Fragment
- viewmodel: ForecastEditorViewModel
- repositories: ForecastRepository, ScenarioRepository

action_board:
- screen: ActionBoardActivity/Fragment
- viewmodel: ActionBoardViewModel
- repositories: ActionRepository, ScenarioRepository

proposal_builder:
- screen: ProposalBuilderActivity/Fragment
- viewmodel: ProposalBuilderViewModel
- repositories: ProposalRepository, ActionRepository, ProfitRepository

profit_preview:
- screen: ProfitPreviewActivity/Fragment
- viewmodel: ProfitPreviewViewModel
- repositories: ProfitRepository

pro_approval_submission:
- screen: ProApprovalSubmissionActivity/Fragment
- viewmodel: ProApprovalSubmissionViewModel
- repositories: ApprovalRepository, HandoffRepository

history:
- screen: HistoryActivity/Fragment
- viewmodel: HistoryViewModel
- repositories: HistoryRepository

share_target:
- screen: ShareTargetActivity/Fragment
- viewmodel: ShareTargetViewModel
- repositories: ShareRepository

settings:
- screen: SettingsActivity/Fragment
- viewmodel: SettingsViewModel
- repositories: SettingsRepository


# ============================================================
# ANDROID FILE GENERATION UNIT IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines file-generation units for Android implementation.

generation_units:

unit_01_core_local_data:
- QuickForecastDatabase
- ForecastDraftEntity
- ForecastScenarioEntity
- ActionIdeaEntity
- ProposalDraftEntity
- ProfitPreviewEntity
- ProfitAssumptionEntity
- ForecastDraftDao
- ForecastScenarioDao
- ActionIdeaDao
- ProposalDraftDao
- ProfitPreviewDao
- ProfitAssumptionDao

unit_02_core_repositories:
- ForecastRepository
- ScenarioRepository
- ActionRepository
- ProposalRepository
- ProfitRepository
- ForecastRepositoryImpl
- ScenarioRepositoryImpl
- ActionRepositoryImpl
- ProposalRepositoryImpl
- ProfitRepositoryImpl

unit_03_core_viewmodels:
- DashboardViewModel
- ForecastListViewModel
- ForecastEditorViewModel
- ActionBoardViewModel
- ProposalBuilderViewModel
- ProfitPreviewViewModel

unit_04_core_screens:
- DashboardActivity or Fragment
- ForecastListActivity or Fragment
- ForecastEditorActivity or Fragment
- ActionBoardActivity or Fragment
- ProposalBuilderActivity or Fragment
- ProfitPreviewActivity or Fragment

unit_05_core_common_ui:
- StateBadgeView
- ValidationMessageView
- LoadingStateView
- EmptyStateView
- ErrorStateView
- SummaryCardView

unit_06_pro_support_data:
- SyncStateEntity
- ApprovalRequestCacheEntity
- ApprovalEventCacheEntity
- ShareTargetCacheEntity
- ErpHandoffCacheEntity
- HistoryEntryEntity
- SettingsEntity
- related DAO classes

unit_07_pro_repositories:
- HistoryRepository
- ShareRepository
- ApprovalRepository
- HandoffRepository
- SettingsRepository
- HistoryRepositoryImpl
- ShareRepositoryImpl
- ApprovalRepositoryImpl
- HandoffRepositoryImpl
- SettingsRepositoryImpl

unit_08_pro_viewmodels:
- ForecastDetailViewModel
- HistoryViewModel
- ProApprovalSubmissionViewModel
- ShareTargetViewModel
- SettingsViewModel

unit_09_pro_screens:
- ForecastDetailActivity or Fragment
- HistoryActivity or Fragment
- ProApprovalSubmissionActivity or Fragment
- ShareTargetActivity or Fragment
- SettingsActivity or Fragment

unit_10_integration_gateways:
- GeneralSignalGateway
- ErpReferenceGateway
- ApprovalGateway
- HandoffGateway
- ShareGateway
- SyncGateway


# ============================================================
# ANDROID MINIMUM FILE SET IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the minimum file set required for first runnable implementation.

minimum_runnable_set:
- QuickForecastDatabase
- ForecastDraftEntity
- ForecastScenarioEntity
- ActionIdeaEntity
- ProposalDraftEntity
- ProfitPreviewEntity
- ForecastDraftDao
- ForecastScenarioDao
- ActionIdeaDao
- ProposalDraftDao
- ProfitPreviewDao
- ForecastRepositoryImpl
- ScenarioRepositoryImpl
- ActionRepositoryImpl
- ProposalRepositoryImpl
- ProfitRepositoryImpl
- DashboardViewModel
- ForecastListViewModel
- ForecastEditorViewModel
- ActionBoardViewModel
- ProposalBuilderViewModel
- ProfitPreviewViewModel
- Dashboard screen
- ForecastList screen
- ForecastEditor screen
- ActionBoard screen
- ProposalBuilder screen
- ProfitPreview screen

goal:
Enable the Forecast -> Action -> Proposal -> Profit local-first chain
before Pro governed extensions.


# ============================================================
# ANDROID FILE TEMPLATE RESPONSIBILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines what each file template should contain at creation time.

entity_template:
- package declaration
- class declaration
- primary fields
- identity fields
- updated_at and state fields where needed

dao_template:
- package declaration
- interface
- insert/update/upsert methods
- query methods for primary screen flows

repository_template:
- interface or implementation declaration
- constructor dependencies
- primary methods only
- TODO markers for remote linkage if deferred

viewmodel_template:
- State data class reference
- Event sealed structure reference
- Effect sealed structure reference
- init/load entry point
- event dispatcher
- reducer/update helper
- repository call TODO markers

screen_template:
- package declaration
- screen binding/composable/fragment skeleton
- state rendering entry
- event dispatch entry
- navigation/effect collector placeholder

principles:
- first templates should be thin but structurally correct
- TODO markers are acceptable if boundary is explicit


# ============================================================
# ANDROID GENERATION TARGET FREEZE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Freezes the first-pass Android file generation target set.

package_root:
com.lsam.QuickForecast

# ============================================================
# 1. CORE LOCAL DATA TARGETS
# ============================================================

core_local_data_targets:
- data/local/database/QuickForecastDatabase.java
- data/local/entity/ForecastDraftEntity.java
- data/local/entity/ForecastScenarioEntity.java
- data/local/entity/ActionIdeaEntity.java
- data/local/entity/ProposalDraftEntity.java
- data/local/entity/ProfitPreviewEntity.java
- data/local/entity/ProfitAssumptionEntity.java
- data/local/dao/ForecastDraftDao.java
- data/local/dao/ForecastScenarioDao.java
- data/local/dao/ActionIdeaDao.java
- data/local/dao/ProposalDraftDao.java
- data/local/dao/ProfitPreviewDao.java
- data/local/dao/ProfitAssumptionDao.java

# ============================================================
# 2. CORE REPOSITORY TARGETS
# ============================================================

core_repository_targets:
- domain/repository/ForecastRepository.java
- domain/repository/ScenarioRepository.java
- domain/repository/ActionRepository.java
- domain/repository/ProposalRepository.java
- domain/repository/ProfitRepository.java
- data/repository/ForecastRepositoryImpl.java
- data/repository/ScenarioRepositoryImpl.java
- data/repository/ActionRepositoryImpl.java
- data/repository/ProposalRepositoryImpl.java
- data/repository/ProfitRepositoryImpl.java

# ============================================================
# 3. CORE VIEWMODEL TARGETS
# ============================================================

core_viewmodel_targets:
- feature/forecast/DashboardViewModel.java
- feature/forecast/ForecastListViewModel.java
- feature/forecast/ForecastEditorViewModel.java
- feature/action/ActionBoardViewModel.java
- feature/proposal/ProposalBuilderViewModel.java
- feature/profit/ProfitPreviewViewModel.java

# ============================================================
# 4. CORE SCREEN TARGETS
# ============================================================

core_screen_targets:
- feature/forecast/DashboardActivity.java
- feature/forecast/ForecastListActivity.java
- feature/forecast/ForecastEditorActivity.java
- feature/action/ActionBoardActivity.java
- feature/proposal/ProposalBuilderActivity.java
- feature/profit/ProfitPreviewActivity.java

# ============================================================
# 5. COMMON UI TARGETS
# ============================================================

common_ui_targets:
- common/ui/StateBadgeView.java
- common/ui/ValidationMessageView.java
- common/ui/LoadingStateView.java
- common/ui/EmptyStateView.java
- common/ui/ErrorStateView.java
- common/ui/SummaryCardView.java

# ============================================================
# 6. PRO SUPPORT TARGETS
# ============================================================

pro_support_targets:
- data/local/entity/SyncStateEntity.java
- data/local/entity/ApprovalRequestCacheEntity.java
- data/local/entity/ApprovalEventCacheEntity.java
- data/local/entity/ShareTargetCacheEntity.java
- data/local/entity/ErpHandoffCacheEntity.java
- data/local/entity/HistoryEntryEntity.java
- data/local/entity/SettingsEntity.java
- data/local/dao/SyncStateDao.java
- data/local/dao/ApprovalRequestCacheDao.java
- data/local/dao/ApprovalEventCacheDao.java
- data/local/dao/ShareTargetCacheDao.java
- data/local/dao/ErpHandoffCacheDao.java
- data/local/dao/HistoryEntryDao.java
- data/local/dao/SettingsDao.java

# ============================================================
# 7. PRO REPOSITORY TARGETS
# ============================================================

pro_repository_targets:
- domain/repository/HistoryRepository.java
- domain/repository/ShareRepository.java
- domain/repository/ApprovalRepository.java
- domain/repository/HandoffRepository.java
- domain/repository/SettingsRepository.java
- data/repository/HistoryRepositoryImpl.java
- data/repository/ShareRepositoryImpl.java
- data/repository/ApprovalRepositoryImpl.java
- data/repository/HandoffRepositoryImpl.java
- data/repository/SettingsRepositoryImpl.java

# ============================================================
# 8. PRO VIEWMODEL TARGETS
# ============================================================

pro_viewmodel_targets:
- feature/forecast/ForecastDetailViewModel.java
- feature/pro/HistoryViewModel.java
- feature/pro/ProApprovalSubmissionViewModel.java
- feature/pro/ShareTargetViewModel.java
- feature/pro/SettingsViewModel.java

# ============================================================
# 9. PRO SCREEN TARGETS
# ============================================================

pro_screen_targets:
- feature/forecast/ForecastDetailActivity.java
- feature/pro/HistoryActivity.java
- feature/pro/ProApprovalSubmissionActivity.java
- feature/pro/ShareTargetActivity.java
- feature/pro/SettingsActivity.java

# ============================================================
# 10. INTEGRATION TARGETS
# ============================================================

integration_targets:
- integration/gateway/GeneralSignalGateway.java
- integration/gateway/ErpReferenceGateway.java
- integration/gateway/ApprovalGateway.java
- integration/gateway/HandoffGateway.java
- integration/gateway/ShareGateway.java
- integration/gateway/SyncGateway.java


# ============================================================
# ANDROID PHASE 1 GENERATION TARGET IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines what must be generated in the very first implementation pass.

phase_1_targets:
- QuickForecastDatabase
- ForecastDraftEntity
- ForecastScenarioEntity
- ActionIdeaEntity
- ProposalDraftEntity
- ProfitPreviewEntity
- ProfitAssumptionEntity
- ForecastDraftDao
- ForecastScenarioDao
- ActionIdeaDao
- ProposalDraftDao
- ProfitPreviewDao
- ProfitAssumptionDao
- ForecastRepository
- ScenarioRepository
- ActionRepository
- ProposalRepository
- ProfitRepository
- ForecastRepositoryImpl
- ScenarioRepositoryImpl
- ActionRepositoryImpl
- ProposalRepositoryImpl
- ProfitRepositoryImpl
- DashboardViewModel
- ForecastListViewModel
- ForecastEditorViewModel
- ActionBoardViewModel
- ProposalBuilderViewModel
- ProfitPreviewViewModel
- DashboardActivity
- ForecastListActivity
- ForecastEditorActivity
- ActionBoardActivity
- ProposalBuilderActivity
- ProfitPreviewActivity

reason:
This is the smallest coherent set for the
Forecast -> Action -> Proposal -> Profit local-first chain.


# ============================================================
# ANDROID DEFERRED TARGET IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines valid deferred targets after phase 1.

deferred_targets:
- all Pro cache entities
- all Pro DAOs
- all Pro repositories
- all Pro ViewModels
- all Pro Activities
- all integration gateways
- advanced common UI components beyond first required ones

defer_rule:
Deferred targets are allowed only when they do not block
the core local-first chain from compiling and rendering.


# ============================================================
# DEVELOPMENT OVERVIEW
# ============================================================

status: canonical
application: QuickForecast
layer: 130.development
owner: Boss
prepared_by: Zero

purpose:
Summarizes development progression of QuickForecast.

summary:
Development should begin with the stable local drafting core
before deeper Pro enterprise-linked expansion.

development_focus:
- MVP first
- forecast core before enterprise depth
- proposal usefulness before heavy automation
- Pro expansion after stable local experience


# ============================================================
# DEVELOPMENT INDEX
# ============================================================

status: canonical
application: QuickForecast
layer: 130.development
owner: Boss
prepared_by: Zero

files:
- development_OVERVIEW.md
- development_INDEX.md
- 130_QUICK_FORECAST_DEVELOPMENT.md
- 130110_MVP_DEVELOPMENT_PLAN.md
- 130120_PRO_EXPANSION_DEVELOPMENT_PLAN.md
- 130130_ANDROID_IMPLEMENTATION_PREPARATION_PLAN.md
- 130140_SCREEN_IMPLEMENTATION_ORDER_PLAN.md
- 130150_CORE_SCREEN_SKELETON_DEVELOPMENT_PLAN.md
- 130160_PRO_SCREEN_SKELETON_DEVELOPMENT_PLAN.md
- 130170_VIEWMODEL_REPOSITORY_DB_DEVELOPMENT_PLAN.md
- 130180_ENTITY_DAO_REPOSITORY_DEVELOPMENT_PLAN.md
- 130190_VIEWMODEL_STATE_EVENT_EFFECT_DEVELOPMENT_PLAN.md
- 130200_PRO_VIEWMODEL_STATE_EVENT_EFFECT_DEVELOPMENT_PLAN.md
- 130210_REDUCER_AND_REPOSITORY_RESPONSIBILITY_DEVELOPMENT_PLAN.md
- 130220_PRO_REDUCER_AND_REPOSITORY_RESPONSIBILITY_DEVELOPMENT_PLAN.md
- 130230_ANDROID_CLASS_IMPLEMENTATION_ORDER_PLAN.md
- 130240_ANDROID_FILE_GENERATION_DEVELOPMENT_PLAN.md
- 130250_ANDROID_FILE_BATCH_PLAN.md
- 130260_ANDROID_GENERATION_TARGET_ORDER_PLAN.md
- 130270_ANDROID_GENERATION_DONE_CRITERIA_PLAN.md


# ============================================================
# QUICK FORECAST DEVELOPMENT
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines development priorities and progression of QuickForecast.

# ============================================================
# 1. DEVELOPMENT ORDER
# ============================================================

recommended_order:
1. local forecast draft
2. scenario handling
3. action idea board
4. proposal draft builder
5. profit preview
6. Pro sync / approval / submission
7. refinement and consistency hardening

# ============================================================
# 2. DEVELOPMENT PRINCIPLES
# ============================================================

principles:
- mobile-first implementation
- local-first reliability
- visible state before automation depth
- user-editability over over-automation
- Pro enterprise linkage after stable local core


# ============================================================
# MVP DEVELOPMENT PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines MVP direction for QuickForecast.

mvp_scope:
- forecast draft creation
- scenario switching
- action idea selection
- proposal draft generation
- profit preview
- local save / resume

mvp_excludes_initially:
- advanced enterprise synchronization depth
- large-scale ERP analytic parity
- extended approval complexity


# ============================================================
# PRO EXPANSION DEVELOPMENT PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines post-MVP Pro expansion direction.

pro_expansion_scope:
- ERP reference linkage
- approval routing
- governed submission
- shared operational usage
- history / audit-capable state handling


# ============================================================
# ANDROID IMPLEMENTATION PREPARATION PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Android implementation preparation steps.

phase_order:
1. screen transition confirmation
2. package structure confirmation
3. shared/common component mapping
4. Basic / Pro flag boundary confirmation
5. local model and repository skeleton
6. screen skeleton creation
7. draft persistence implementation
8. Pro-linked screen gating
9. integration stub insertion
10. refinement

priority:
Basic local core first, then Pro-linked extensions.


# ============================================================
# SCREEN IMPLEMENTATION ORDER PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines recommended screen implementation order.

recommended_order:
1. dashboard
2. forecast_list
3. forecast_editor
4. action_idea_board
5. proposal_draft_builder
6. profit_preview
7. forecast_detail
8. pro_approval_submission
9. history
10. settings

reasoning:
This order preserves the core user value chain first,
then adds Pro governance-oriented surfaces.


# ============================================================
# CORE SCREEN SKELETON DEVELOPMENT PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines development order for core Android screen skeletons.

order:
1. dashboard skeleton
2. forecast_list skeleton
3. forecast_editor skeleton
4. action_idea_board skeleton
5. proposal_draft_builder skeleton
6. profit_preview skeleton

goal:
Establish end-to-end visual flow before Pro governance screens.


# ============================================================
# PRO SCREEN SKELETON DEVELOPMENT PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines development order for Pro and auxiliary screen skeletons.

order:
1. forecast_detail skeleton
2. history skeleton
3. pro_approval_submission skeleton
4. share_target skeleton
5. settings skeleton

goal:
Add governed workflow surfaces after the core drafting chain is stable.


# ============================================================
# VIEWMODEL REPOSITORY DB DEVELOPMENT PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines development order for ViewModel / Repository / DB skeletons.

recommended_order:
1. local entity definitions
2. DAO / local access definitions
3. repositories for forecast/proposal/profit core
4. ViewModels for core screens
5. Pro cache entities
6. Pro repositories
7. Pro ViewModels

priority:
Core local draft chain first.
Governed Pro extensions after stable local persistence.


# ============================================================
# ENTITY DAO REPOSITORY DEVELOPMENT PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines recommended development order for entity / DAO / repository layer.

recommended_order:
1. forecast_draft_entity and ForecastDraftDao
2. forecast_scenario_entity and ForecastScenarioDao
3. action_idea_entity and ActionIdeaDao
4. proposal_draft_entity and ProposalDraftDao
5. profit_preview_entity and ProfitPreviewDao
6. profit_assumption_entity and ProfitAssumptionDao
7. history_entry_entity and HistoryEntryDao
8. sync / approval / share / handoff cache entities and DAOs
9. repositories for core chain
10. repositories for Pro governance

goal:
Stabilize the Forecast -> Action -> Proposal -> Profit local chain first.


# ============================================================
# VIEWMODEL STATE EVENT EFFECT DEVELOPMENT PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines development order for core ViewModel state/event/effect design.

recommended_order:
1. DashboardViewModel
2. ForecastListViewModel
3. ForecastEditorViewModel
4. ActionBoardViewModel
5. ProposalBuilderViewModel
6. ProfitPreviewViewModel

goal:
Establish end-to-end screen logic for the Forecast -> Action -> Proposal -> Profit chain.


# ============================================================
# PRO VIEWMODEL STATE EVENT EFFECT DEVELOPMENT PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines development order for Pro and auxiliary ViewModel state/event/effect design.

recommended_order:
1. ForecastDetailViewModel
2. HistoryViewModel
3. ProApprovalSubmissionViewModel
4. ShareTargetViewModel
5. SettingsViewModel

goal:
Complete governed and auxiliary screen logic
after the core Forecast -> Action -> Proposal -> Profit chain is stable.


# ============================================================
# REDUCER AND REPOSITORY RESPONSIBILITY DEVELOPMENT PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines development order for reducer transition and repository responsibility design.

recommended_order:
1. ForecastEditor reducer transitions
2. ProposalBuilder reducer transitions
3. ProfitPreview reducer transitions
4. Dashboard and ForecastList reducer transitions
5. ActionBoard reducer transitions
6. repository responsibility cross-check

goal:
Clarify mutable state boundaries before actual ViewModel coding begins.


# ============================================================
# PRO REDUCER AND REPOSITORY RESPONSIBILITY DEVELOPMENT PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines development order for Pro/auxiliary reducer transitions and repository responsibility.

recommended_order:
1. ForecastDetail reducer transitions
2. History reducer transitions
3. ProApprovalSubmission reducer transitions
4. ShareTarget reducer transitions
5. Settings reducer transitions
6. repository responsibility cross-check

goal:
Clarify governed workflow state before Pro ViewModel coding begins.


# ============================================================
# ANDROID CLASS IMPLEMENTATION ORDER PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines recommended implementation order for Android classes.

recommended_order:
1. local entities and DAOs
2. repository interfaces and repository implementations
3. core ViewModels
4. core screen classes
5. common UI components
6. Pro ViewModels
7. Pro screen classes
8. integration gateways
9. mappers and refinement

goal:
Create the local-first core before expanding Pro governance flows.


# ============================================================
# ANDROID FILE GENERATION DEVELOPMENT PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines development order for actual Android file generation.

recommended_order:
1. database and entity files
2. dao files
3. repository interfaces and implementations
4. core viewmodel files
5. core screen files
6. common UI helper files
7. Pro support data files
8. Pro repositories
9. Pro viewmodels
10. Pro screens
11. integration gateway files

milestones:
- milestone_01: local db boots
- milestone_02: core repositories compile
- milestone_03: core screen chain compiles
- milestone_04: local-first draft flow works
- milestone_05: Pro support compiles


# ============================================================
# ANDROID FILE BATCH PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines recommended file batches for one-block generation.

batch_01:
- database
- 5 to 7 core entities
- related dao interfaces

batch_02:
- 5 core repository implementations
- model mappers if needed

batch_03:
- 3 core ViewModels
- Dashboard / ForecastList / ForecastEditor screens

batch_04:
- 3 core ViewModels
- ActionBoard / ProposalBuilder / ProfitPreview screens

batch_05:
- common ui components

batch_06:
- Pro cache entities and dao
- Pro repositories

batch_07:
- Pro ViewModels and screens

principles:
- each batch should remain buildable
- avoid mixing too many unrelated packages in one generation block


# ============================================================
# ANDROID GENERATION TARGET ORDER PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines frozen generation order after target freeze.

order:
1. core local data targets
2. core repository targets
3. core ViewModel targets
4. core screen targets
5. common UI targets
6. Pro support targets
7. Pro repository targets
8. Pro ViewModel targets
9. Pro screen targets
10. integration targets

rule:
No later group should be generated first unless required
to satisfy compile-time dependency of an earlier group.


# ============================================================
# ANDROID GENERATION DONE CRITERIA PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines completion criteria for skeleton generation.

phase_1_done_when:
- all phase_1_targets exist
- package paths are correct
- class names match design
- files compile at skeleton level or are one patch away
- screen / ViewModel / repository / dao / entity separation is preserved

full_generation_done_when:
- all generation targets exist
- no unresolved structural omission remains
- Pro-only classes are clearly isolated
- gateway classes are separated from repositories


# ============================================================
# META OVERVIEW
# ============================================================
status: canonical
application: QuickForecast
layer: 900.meta
owner: Boss
prepared_by: Zero

purpose:
Summarizes meta-layer support for QuickForecast.

summary:
The meta layer supports consistency review,
UI review, validation review, and cross-layer traceability.

meta_focus:
- design intent preservation
- review checklist support
- screen inventory support
- code seed stability
- screen-to-model trace support


# ============================================================
# META INDEX
# ============================================================

status: canonical
application: QuickForecast
layer: 900.meta
owner: Boss
prepared_by: Zero

files:
- meta_OVERVIEW.md
- meta_INDEX.md
- 900100_QUICK_FORECAST_DESIGN_NOTE.md
- 900110_QUICK_FORECAST_REVIEW_CHECKLIST.md
- 900120_QUICK_FORECAST_CONSISTENCY_NOTE.md
- 900130_QUICK_FORECAST_UI_REVIEW_CHECKLIST.md
- 900140_QUICK_FORECAST_VALIDATION_CHECKLIST.md
- 900150_QUICK_FORECAST_SCREEN_INVENTORY.md
- 900160_QUICK_FORECAST_CODE_SEED_NOTE.md
- 900170_PRO_OPERATION_REVIEW_CHECKLIST.md
- 900180_SCREEN_TO_MODEL_TRACE_NOTE.md
- 900190_QUICK_FORECAST_BOOK_BUILD_SCRIPT.sh
- 900200_QUICK_FORECAST_CONSISTENCY_CHECK_NOTE.md
- 900210_QUICK_FORECAST_QUICK_CHECK.sh
- 900220_IMPLEMENTATION_PREP_REVIEW_CHECKLIST.md
- 900230_ANDROID_PACKAGE_TO_SCREEN_TRACE_NOTE.md
- 900240_CORE_SCREEN_SKELETON_REVIEW_CHECKLIST.md
- 900250_PRO_SCREEN_SKELETON_REVIEW_CHECKLIST.md
- 900260_VIEWMODEL_REPOSITORY_DB_REVIEW_CHECKLIST.md
- 900270_ENTITY_DAO_REPOSITORY_REVIEW_CHECKLIST.md
- 900280_VIEWMODEL_STATE_EVENT_EFFECT_REVIEW_CHECKLIST.md
- 900290_PRO_VIEWMODEL_STATE_EVENT_EFFECT_REVIEW_CHECKLIST.md
- 900300_REDUCER_AND_REPOSITORY_RESPONSIBILITY_REVIEW_CHECKLIST.md
- 900310_PRO_REDUCER_AND_REPOSITORY_RESPONSIBILITY_REVIEW_CHECKLIST.md
- 900320_ANDROID_CLASS_INVENTORY_REVIEW_CHECKLIST.md
- 900330_ANDROID_FILE_GENERATION_REVIEW_CHECKLIST.md
- 900340_ANDROID_GENERATION_TARGET_FREEZE_REVIEW_CHECKLIST.md


# ============================================================
# QUICK FORECAST DESIGN NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Captures the main design intent of QuickForecast.

design_intent:
QuickForecast is not merely a demand forecasting tool.
It is a forecast-originated proposal drafting application.

main_value_chain:
Forecast
-> Action
-> Proposal
-> Profit

tier_summary:
Basic:
lightweight public/general-data-centered drafting

Pro:
enterprise-linked practical operation


# ============================================================
# QUICK FORECAST REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines review checklist items for QuickForecast design consistency.

check_items:
- Basic / Pro distinction is explicit
- ERP coexistence is explicit
- forecast-to-action continuity exists
- proposal drafting role is explicit
- profit preview role is explicit
- local-first behavior is explicit
- fail-closed submission is explicit
- generated content remains editable
- official authority boundary is explicit


# ============================================================
# QUICK FORECAST CONSISTENCY NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines consistency intent across QuickForecast layers.

consistency_targets:
- constitution aligns with architecture
- model supports forecast/action/proposal/profit chain
- runtime aligns with local-first and Pro linkage
- policy aligns with tier boundary
- interface aligns with mobile immediacy


# ============================================================
# QUICK FORECAST UI REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines UI review checklist for QuickForecast.

check_items:
- Forecast -> Action -> Proposal -> Profit flow is visually clear
- mobile-first editing is preserved
- partial save is obvious
- Basic / Pro boundary is visible
- Pro-only controls are clearly restricted
- failure states are visible
- state is not represented by color alone
- generated content remains editable
- source context remains visible in proposal builder


# ============================================================
# QUICK FORECAST VALIDATION CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines validation review checklist for QuickForecast.

check_items:
- local save and governed submission have different thresholds
- blocking and warning validation are distinguished
- Basic disallows ERP reference and governed submission
- Pro approval requirement is enforceable
- proposal regeneration does not silently erase authored text
- profit preview assumptions remain visible
- submission failure remains visible as failure


# ============================================================
# QUICK FORECAST SCREEN INVENTORY
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines screen inventory of QuickForecast.

screens:
- dashboard
- forecast_list
- forecast_editor
- scenario_compare
- action_idea_board
- proposal_draft_builder
- profit_preview
- pro_approval_submission
- sync_status
- settings

screen_groups:
- common_core
- pro_only


# ============================================================
# QUICK FORECAST CODE SEED NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Captures initial stable code seeds for QuickForecast.

seed_examples:
- QF-VAL-FORECAST-001
- QF-VAL-PROPOSAL-001
- QF-ERR-SYNC-001
- QF-ERR-SUBMIT-001
- QF-STATE-DRAFT-LOCAL
- QF-STATE-SUBMIT-FAILED

note:
Final code tables may expand, but prefix consistency should be preserved.


# ============================================================
# PRO OPERATION REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines review checklist for Pro operational design.

check_items:
- share target model exists
- permission levels are explicit
- approval request and approval event are separated
- ERP handoff state is explicit
- acceptance / rejection / failure are separated
- list view surfaces pending and failed work
- detail view preserves source-to-output chain visibility


# ============================================================
# SCREEN TO MODEL TRACE NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines intended traceability between key screens and core models.

screen_to_model_map:
- forecast_editor -> forecast_draft, forecast_signal, forecast_scenario
- action_idea_board -> action_idea
- proposal_draft_builder -> proposal_draft
- profit_preview -> profit_preview, profit_assumption
- pro_approval_submission -> approval_request, approval_event, erp_handoff
- history -> history_entry, approval_event, erp_handoff


#!/data/data/com.termux/files/usr/bin/bash
set -e

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/QuickForecast"
OUT="$BASE/00_QUICK_FORECAST_INTEGRATED_REBUILT.md"

: > "$OUT"

append_file() {
  local f="$1"
  if [ -f "$f" ]; then
    printf '\n\n' >> "$OUT"
    cat "$f" >> "$OUT"
  fi
}

append_file "$BASE/000_QUICK_FORECAST_OVERVIEW.md"
append_file "$BASE/000_QUICK_FORECAST_INDEX.md"

append_file "$BASE/010.constitution/constitution_OVERVIEW.md"
append_file "$BASE/010.constitution/constitution_INDEX.md"
append_file "$BASE/010.constitution/010_QUICK_FORECAST_CONSTITUTION.md"
append_file "$BASE/010.constitution/010110_QUICK_FORECAST_BASIC_PRO_CONSTITUTION.md"
append_file "$BASE/010.constitution/010120_QUICK_FORECAST_ERP_COEXISTENCE_CONSTITUTION.md"

append_file "$BASE/020.architecture/architecture_OVERVIEW.md"
append_file "$BASE/020.architecture/architecture_INDEX.md"
append_file "$BASE/020.architecture/020_QUICK_FORECAST_ARCHITECTURE.md"
append_file "$BASE/020.architecture/020110_FORECAST_ACTION_PROPOSAL_PROFIT_ARCHITECTURE.md"
append_file "$BASE/020.architecture/020120_MOBILE_IMMEDIACY_ARCHITECTURE.md"

append_file "$BASE/030.model/model_OVERVIEW.md"
append_file "$BASE/030.model/model_INDEX.md"
append_file "$BASE/030.model/030_QUICK_FORECAST_MODEL_OVERVIEW.md"
append_file "$BASE/030.model/030100_FORECAST_DRAFT_MODEL.md"
append_file "$BASE/030.model/030110_FORECAST_SIGNAL_MODEL.md"
append_file "$BASE/030.model/030120_FORECAST_SCENARIO_MODEL.md"
append_file "$BASE/030.model/030130_ACTION_IDEA_MODEL.md"
append_file "$BASE/030.model/030140_PROPOSAL_DRAFT_MODEL.md"
append_file "$BASE/030.model/030150_PROFIT_PREVIEW_MODEL.md"
append_file "$BASE/030.model/030160_APPROVAL_REQUEST_MODEL.md"
append_file "$BASE/030.model/030170_SYNC_STATE_MODEL.md"
append_file "$BASE/030.model/030180_HISTORY_ENTRY_MODEL.md"
append_file "$BASE/030.model/030190_VALIDATION_CODE_MODEL.md"
append_file "$BASE/030.model/030200_ERROR_CODE_MODEL.md"
append_file "$BASE/030.model/030210_UI_STATE_CODE_MODEL.md"
append_file "$BASE/030.model/030220_UI_LABEL_CODE_MODEL.md"
append_file "$BASE/030.model/030230_VALIDATION_CODE_TABLE.md"
append_file "$BASE/030.model/030240_ERROR_CODE_TABLE.md"
append_file "$BASE/030.model/030250_UI_STATE_CODE_TABLE.md"
append_file "$BASE/030.model/030260_SHARE_TARGET_MODEL.md"
append_file "$BASE/030.model/030270_APPROVAL_EVENT_MODEL.md"
append_file "$BASE/030.model/030280_ERP_HANDOFF_MODEL.md"
append_file "$BASE/030.model/030290_PROFIT_ASSUMPTION_MODEL.md"

append_file "$BASE/040.runtime/runtime_OVERVIEW.md"
append_file "$BASE/040.runtime/runtime_INDEX.md"
append_file "$BASE/040.runtime/040_QUICK_FORECAST_RUNTIME.md"
append_file "$BASE/040.runtime/040110_FORECAST_DRAFT_RUNTIME.md"
append_file "$BASE/040.runtime/040120_ACTION_PROPOSAL_RUNTIME.md"
append_file "$BASE/040.runtime/040130_SYNC_AND_SUBMISSION_RUNTIME.md"

append_file "$BASE/050.flow/flow_OVERVIEW.md"
append_file "$BASE/050.flow/flow_INDEX.md"
append_file "$BASE/050.flow/050_QUICK_FORECAST_FLOW.md"
append_file "$BASE/050.flow/050110_FORECAST_CREATION_FLOW.md"
append_file "$BASE/050.flow/050120_ACTION_IDEA_FLOW.md"
append_file "$BASE/050.flow/050130_PROPOSAL_DRAFT_FLOW.md"
append_file "$BASE/050.flow/050140_PROFIT_PREVIEW_FLOW.md"
append_file "$BASE/050.flow/050150_PRO_APPROVAL_AND_SUBMISSION_FLOW.md"
append_file "$BASE/050.flow/050160_PRO_SHARE_FLOW.md"
append_file "$BASE/050.flow/050170_ERP_HANDOFF_FLOW.md"

append_file "$BASE/060.integration/integration_OVERVIEW.md"
append_file "$BASE/060.integration/integration_INDEX.md"
append_file "$BASE/060.integration/060_QUICK_FORECAST_INTEGRATION.md"
append_file "$BASE/060.integration/060110_GENERAL_SIGNAL_INTEGRATION_CONTRACT.md"
append_file "$BASE/060.integration/060120_ERP_REFERENCE_INTEGRATION_CONTRACT.md"
append_file "$BASE/060.integration/060130_PROPOSAL_EXPORT_INTEGRATION_CONTRACT.md"
append_file "$BASE/060.integration/060140_PRO_APPROVAL_INTEGRATION_CONTRACT.md"
append_file "$BASE/060.integration/060150_GOVERNED_SUBMISSION_INTEGRATION_CONTRACT.md"
append_file "$BASE/060.integration/060160_SHARE_AND_PERMISSION_INTEGRATION_CONTRACT.md"
append_file "$BASE/060.integration/060170_ERP_HANDOFF_INTEGRATION_CONTRACT.md"

append_file "$BASE/070.operations/operations_OVERVIEW.md"
append_file "$BASE/070.operations/operations_INDEX.md"
append_file "$BASE/070.operations/070_QUICK_FORECAST_OPERATIONS.md"
append_file "$BASE/070.operations/070110_QUICK_FORECAST_RUNBOOK.md"
append_file "$BASE/070.operations/070120_SYNC_FAILURE_OPERATIONS.md"
append_file "$BASE/070.operations/070130_SUBMISSION_FAILURE_OPERATIONS.md"

append_file "$BASE/080.policy/policy_OVERVIEW.md"
append_file "$BASE/080.policy/policy_INDEX.md"
append_file "$BASE/080.policy/080_QUICK_FORECAST_POLICY.md"
append_file "$BASE/080.policy/080110_BASIC_PRO_FEATURE_POLICY.md"
append_file "$BASE/080.policy/080120_PROPOSAL_DRAFT_POLICY.md"
append_file "$BASE/080.policy/080130_PROFIT_PREVIEW_POLICY.md"
append_file "$BASE/080.policy/080140_APPROVAL_AND_SUBMISSION_POLICY.md"
append_file "$BASE/080.policy/080150_VALIDATION_POLICY.md"
append_file "$BASE/080.policy/080160_UI_STATE_POLICY.md"

append_file "$BASE/090.interface/interface_OVERVIEW.md"
append_file "$BASE/090.interface/interface_INDEX.md"
append_file "$BASE/090.interface/090_QUICK_FORECAST_INTERFACE_OVERVIEW.md"
append_file "$BASE/090.interface/090110_DASHBOARD_INTERFACE.md"
append_file "$BASE/090.interface/090120_FORECAST_EDITOR_INTERFACE.md"
append_file "$BASE/090.interface/090130_ACTION_IDEA_BOARD_INTERFACE.md"
append_file "$BASE/090.interface/090140_PROPOSAL_DRAFT_BUILDER_INTERFACE.md"
append_file "$BASE/090.interface/090150_PROFIT_PREVIEW_INTERFACE.md"
append_file "$BASE/090.interface/090160_PRO_APPROVAL_SUBMISSION_INTERFACE.md"
append_file "$BASE/090.interface/090170_FORECAST_EDITOR_FIELD_SPEC.md"
append_file "$BASE/090.interface/090180_ACTION_BOARD_FIELD_SPEC.md"
append_file "$BASE/090.interface/090190_PROPOSAL_BUILDER_FIELD_SPEC.md"
append_file "$BASE/090.interface/090200_PROFIT_PREVIEW_FIELD_SPEC.md"
append_file "$BASE/090.interface/090210_PRO_SUBMISSION_FIELD_SPEC.md"
append_file "$BASE/090.interface/090220_FORECAST_LIST_INTERFACE.md"
append_file "$BASE/090.interface/090230_FORECAST_DETAIL_INTERFACE.md"
append_file "$BASE/090.interface/090240_SHARE_TARGET_INTERFACE.md"
append_file "$BASE/090.interface/090250_HISTORY_INTERFACE.md"

append_file "$BASE/100.security/security_OVERVIEW.md"
append_file "$BASE/100.security/security_INDEX.md"
append_file "$BASE/100.security/100_QUICK_FORECAST_SECURITY.md"
append_file "$BASE/100.security/100110_TIER_BOUNDARY_SECURITY.md"
append_file "$BASE/100.security/100120_SUBMISSION_INTEGRITY_SECURITY.md"

append_file "$BASE/110.infrastructure/infrastructure_OVERVIEW.md"
append_file "$BASE/110.infrastructure/infrastructure_INDEX.md"
append_file "$BASE/110.infrastructure/110_QUICK_FORECAST_INFRASTRUCTURE.md"
append_file "$BASE/110.infrastructure/110110_LOCAL_FIRST_INFRASTRUCTURE.md"
append_file "$BASE/110.infrastructure/110120_PRO_ENTERPRISE_LINK_INFRASTRUCTURE.md"

append_file "$BASE/120.implementation/implementation_OVERVIEW.md"
append_file "$BASE/120.implementation/implementation_INDEX.md"
append_file "$BASE/120.implementation/120_QUICK_FORECAST_IMPLEMENTATION.md"
append_file "$BASE/120.implementation/120110_FORECAST_TO_PROPOSAL_IMPLEMENTATION.md"
append_file "$BASE/120.implementation/120120_PROFIT_PREVIEW_IMPLEMENTATION.md"
append_file "$BASE/120.implementation/120130_PRO_LINKED_OPERATION_IMPLEMENTATION.md"

append_file "$BASE/130.development/development_OVERVIEW.md"
append_file "$BASE/130.development/development_INDEX.md"
append_file "$BASE/130.development/130_QUICK_FORECAST_DEVELOPMENT.md"
append_file "$BASE/130.development/130110_MVP_DEVELOPMENT_PLAN.md"
append_file "$BASE/130.development/130120_PRO_EXPANSION_DEVELOPMENT_PLAN.md"

append_file "$BASE/900.meta/meta_OVERVIEW.md"
append_file "$BASE/900.meta/meta_INDEX.md"
append_file "$BASE/900.meta/900100_QUICK_FORECAST_DESIGN_NOTE.md"
append_file "$BASE/900.meta/900110_QUICK_FORECAST_REVIEW_CHECKLIST.md"
append_file "$BASE/900.meta/900120_QUICK_FORECAST_CONSISTENCY_NOTE.md"
append_file "$BASE/900.meta/900130_QUICK_FORECAST_UI_REVIEW_CHECKLIST.md"
append_file "$BASE/900.meta/900140_QUICK_FORECAST_VALIDATION_CHECKLIST.md"
append_file "$BASE/900.meta/900150_QUICK_FORECAST_SCREEN_INVENTORY.md"
append_file "$BASE/900.meta/900160_QUICK_FORECAST_CODE_SEED_NOTE.md"
append_file "$BASE/900.meta/900170_PRO_OPERATION_REVIEW_CHECKLIST.md"
append_file "$BASE/900.meta/900180_SCREEN_TO_MODEL_TRACE_NOTE.md"

echo "=== BUILT ==="
ls -lh "$OUT"


# ============================================================
# QUICK FORECAST CONSISTENCY CHECK NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines simple consistency review targets for QuickForecast.

review_targets:
- all layer overview files exist
- all layer index files exist
- root index reflects current file set
- rebuilt book includes newly added files
- Basic / Pro boundary remains explicit
- ERP coexistence remains explicit
- Forecast -> Action -> Proposal -> Profit chain remains explicit
- Pro share / approval / handoff remains explicit

expected_layers:
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
- 900.meta


#!/data/data/com.termux/files/usr/bin/bash
set -e

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/QuickForecast"

echo "=== ROOT FILES ==="
find "$BASE" -maxdepth 1 -type f | sort
echo

echo "=== LAYER FILE COUNTS ==="
for d in \
  010.constitution \
  020.architecture \
  030.model \
  040.runtime \
  050.flow \
  060.integration \
  070.operations \
  080.policy \
  090.interface \
  100.security \
  110.infrastructure \
  120.implementation \
  130.development \
  900.meta
do
  printf "%-22s : " "$d"
  find "$BASE/$d" -maxdepth 1 -type f | wc -l
done
echo

echo "=== OVERVIEW FILES ==="
find \
  "$BASE/010.constitution" \
  "$BASE/020.architecture" \
  "$BASE/030.model" \
  "$BASE/040.runtime" \
  "$BASE/050.flow" \
  "$BASE/060.integration" \
  "$BASE/070.operations" \
  "$BASE/080.policy" \
  "$BASE/090.interface" \
  "$BASE/100.security" \
  "$BASE/110.infrastructure" \
  "$BASE/120.implementation" \
  "$BASE/130.development" \
  "$BASE/900.meta" \
  -maxdepth 1 -type f -name '*OVERVIEW.md' | sort
echo

echo "=== INDEX FILES ==="
find \
  "$BASE/010.constitution" \
  "$BASE/020.architecture" \
  "$BASE/030.model" \
  "$BASE/040.runtime" \
  "$BASE/050.flow" \
  "$BASE/060.integration" \
  "$BASE/070.operations" \
  "$BASE/080.policy" \
  "$BASE/090.interface" \
  "$BASE/100.security" \
  "$BASE/110.infrastructure" \
  "$BASE/120.implementation" \
  "$BASE/130.development" \
  "$BASE/900.meta" \
  -maxdepth 1 -type f -name '*INDEX.md' | sort
echo

echo "=== BOOK FILES ==="
ls -lh \
  "$BASE/00_QUICK_FORECAST_INTEGRATED.md" \
  "$BASE/00_QUICK_FORECAST_INTEGRATED_REBUILT.md"


# ============================================================
# IMPLEMENTATION PREP REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines review checklist for implementation preparation.

check_items:
- screen transition path matches Forecast -> Action -> Proposal -> Profit
- feature package split is clear
- common component reuse is identified
- Basic / Pro boundary is flaggable
- Pro-only controls are implementation-gated
- local draft logic is separated from governed linkage
- forecast context remains navigable across screens


# ============================================================
# ANDROID PACKAGE TO SCREEN TRACE NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines trace between packages and main screens.

trace_map:
- feature.forecast -> dashboard, forecast_list, forecast_detail, forecast_editor
- feature.action -> action_idea_board
- feature.proposal -> proposal_draft_builder
- feature.profit -> profit_preview
- feature.pro -> pro_approval_submission, history, share target, sync status
- common -> state badge, validation message, shared selectors, timeline


# ============================================================
# CORE SCREEN SKELETON REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines review checklist for core screen skeletons.

check_items:
- dashboard supports fast resume
- forecast list exposes state clearly
- forecast editor preserves draft-first operation
- action board makes action choice easy
- proposal builder keeps generated text editable
- profit preview keeps assumptions visible
- Basic / Pro difference is visible where needed
- Forecast -> Action -> Proposal -> Profit chain is intuitive


# ============================================================
# PRO SCREEN SKELETON REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines review checklist for Pro and auxiliary screen skeletons.

check_items:
- forecast detail summarizes the full chain clearly
- Pro approval screen separates approval and handoff
- history separates accepted / rejected / failed outcomes
- share target screen makes permission scope understandable
- settings screen keeps tier visibility clear
- Pro-only screens are clearly gated


# ============================================================
# VIEWMODEL REPOSITORY DB REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines review checklist for Android state/repository/db design.

check_items:
- ViewModels align to major screens
- repositories isolate UI from storage and integration
- local entity set covers Forecast -> Action -> Proposal -> Profit chain
- local save and Pro authority states are separated
- ERP reference values are not confused with edited draft values
- cache entities are clearly cache/support state


# ============================================================
# ENTITY DAO REPOSITORY REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines review checklist for entity / DAO / repository design.

check_items:
- all core chain entities exist
- local identity and external identity are distinguishable
- DAO scope stays persistence-focused
- repositories expose domain-level methods
- screen to repository mapping is understandable
- Pro governed operations remain separate from local draft save
- delete behavior is explicit and limited


# ============================================================
# VIEWMODEL STATE EVENT EFFECT REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines review checklist for ViewModel state/event/effect design.

check_items:
- each core screen has explicit state segments
- navigation is modeled as effect
- validation is explicit in state/effect handling
- save and governed Pro actions are separated
- state survives common editing flow
- Forecast -> Action -> Proposal -> Profit chain is preserved in ViewModels


# ============================================================
# PRO VIEWMODEL STATE EVENT EFFECT REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines review checklist for Pro and auxiliary ViewModel design.

check_items:
- forecast detail acts as a stable summary hub
- approval and handoff states are separated
- history filtering is explicit
- share target permission selection is explicit
- settings separates local preferences from Pro connection summary
- Pro-only ViewModels are safely gated


# ============================================================
# REDUCER AND REPOSITORY RESPONSIBILITY REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines review checklist for reducer transitions and repository responsibility.

check_items:
- navigation is always modeled as effect
- editable content is preserved in state
- save transitions are explicit
- Pro gate checks occur before Pro navigation/effects
- each key event has a clear repository owner
- local save and governed action are never conflated


# ============================================================
# PRO REDUCER AND REPOSITORY RESPONSIBILITY REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines review checklist for Pro reducer transitions and repository responsibility.

check_items:
- forecast detail remains a summary hub, not a truth owner
- approval and handoff transitions are clearly separated
- acceptance / rejection / failure remain distinct states
- history remains read-centric
- share creation and revoke each have clear repository owners
- settings save and Pro connection refresh are separated
- Pro gate checks occur before governed effects


# ============================================================
# ANDROID CLASS INVENTORY REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines review checklist for Android class inventory design.

check_items:
- every major screen has a primary screen class
- every major screen has a primary ViewModel
- repository implementations are named consistently
- entity / dao / repository layers are separated
- gateways isolate remote concerns
- common UI components are not overloaded with business rules
- Pro classes remain clearly identifiable


# ============================================================
# ANDROID FILE GENERATION REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines review checklist for Android file generation planning.

check_items:
- minimum runnable file set is clear
- file generation order follows dependency direction
- core local chain is prioritized over Pro
- templates remain thin and structurally correct
- screen/viewmodel/repository/entity responsibilities stay separated
- file batches remain buildable


# ============================================================
# ANDROID GENERATION TARGET FREEZE REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines review checklist for generation target freeze.

check_items:
- frozen target list is complete enough for phase 1
- phase 1 target set is coherent by itself
- deferred targets do not block local-first chain
- generation order follows dependency direction
- done criteria are explicit
