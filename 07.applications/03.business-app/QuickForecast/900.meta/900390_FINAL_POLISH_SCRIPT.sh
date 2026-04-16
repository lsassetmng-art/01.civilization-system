#!/data/data/com.termux/files/usr/bin/bash
set -e

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/QuickForecast"
OUT="$BASE/00_QUICK_FORECAST_INTEGRATED_REBUILT.md"

append_file() {
  local f="$1"
  if [ -f "$f" ]; then
    printf '\n\n' >> "$OUT"
    cat "$f" >> "$OUT"
  fi
}

# ============================================================
# 1. REWRITE ROOT OVERVIEW FOR STABLE WORDING
# ============================================================

cat <<'EOT' > "$BASE/000_QUICK_FORECAST_OVERVIEW.md"
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

current_scope_note:
The current body is design-complete and implementation-ready,
but active work remains design-only at this stage.
EOT

# ============================================================
# 2. REWRITE LAYER OVERVIEWS WITH STABLE ENDING STYLE
# ============================================================

cat <<'EOT' > "$BASE/010.constitution/constitution_OVERVIEW.md"
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
EOT

cat <<'EOT' > "$BASE/020.architecture/architecture_OVERVIEW.md"
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
EOT

cat <<'EOT' > "$BASE/030.model/model_OVERVIEW.md"
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
EOT

cat <<'EOT' > "$BASE/040.runtime/runtime_OVERVIEW.md"
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
EOT

cat <<'EOT' > "$BASE/050.flow/flow_OVERVIEW.md"
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
EOT

cat <<'EOT' > "$BASE/060.integration/integration_OVERVIEW.md"
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
EOT

cat <<'EOT' > "$BASE/070.operations/operations_OVERVIEW.md"
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
EOT

cat <<'EOT' > "$BASE/080.policy/policy_OVERVIEW.md"
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
EOT

cat <<'EOT' > "$BASE/090.interface/interface_OVERVIEW.md"
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
EOT

cat <<'EOT' > "$BASE/100.security/security_OVERVIEW.md"
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
EOT

cat <<'EOT' > "$BASE/110.infrastructure/infrastructure_OVERVIEW.md"
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
EOT

cat <<'EOT' > "$BASE/120.implementation/implementation_OVERVIEW.md"
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

boundary_note:
Implementation structure is fully designed,
but active work may remain design-only until implementation start is approved.
EOT

cat <<'EOT' > "$BASE/130.development/development_OVERVIEW.md"
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
EOT

cat <<'EOT' > "$BASE/900.meta/meta_OVERVIEW.md"
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
- design-only boundary clarity
EOT

# ============================================================
# 3. REBUILD BOOK
# ============================================================

: > "$OUT"

for f in \
  "$BASE/000_QUICK_FORECAST_OVERVIEW.md" \
  "$BASE/000_QUICK_FORECAST_INDEX.md" \
  "$BASE/010.constitution/constitution_OVERVIEW.md" \
  "$BASE/010.constitution/constitution_INDEX.md" \
  "$BASE/010.constitution/010_QUICK_FORECAST_CONSTITUTION.md" \
  "$BASE/010.constitution/010110_QUICK_FORECAST_BASIC_PRO_CONSTITUTION.md" \
  "$BASE/010.constitution/010120_QUICK_FORECAST_ERP_COEXISTENCE_CONSTITUTION.md" \
  "$BASE/020.architecture/architecture_OVERVIEW.md" \
  "$BASE/020.architecture/architecture_INDEX.md" \
  "$BASE/020.architecture/020_QUICK_FORECAST_ARCHITECTURE.md" \
  "$BASE/020.architecture/020110_FORECAST_ACTION_PROPOSAL_PROFIT_ARCHITECTURE.md" \
  "$BASE/020.architecture/020120_MOBILE_IMMEDIACY_ARCHITECTURE.md" \
  "$BASE/030.model/model_OVERVIEW.md" \
  "$BASE/030.model/model_INDEX.md" \
  "$BASE/030.model/030_QUICK_FORECAST_MODEL_OVERVIEW.md" \
  "$BASE/030.model/030100_FORECAST_DRAFT_MODEL.md" \
  "$BASE/030.model/030110_FORECAST_SIGNAL_MODEL.md" \
  "$BASE/030.model/030120_FORECAST_SCENARIO_MODEL.md" \
  "$BASE/030.model/030130_ACTION_IDEA_MODEL.md" \
  "$BASE/030.model/030140_PROPOSAL_DRAFT_MODEL.md" \
  "$BASE/030.model/030150_PROFIT_PREVIEW_MODEL.md" \
  "$BASE/030.model/030160_APPROVAL_REQUEST_MODEL.md" \
  "$BASE/030.model/030170_SYNC_STATE_MODEL.md" \
  "$BASE/030.model/030180_HISTORY_ENTRY_MODEL.md" \
  "$BASE/030.model/030190_VALIDATION_CODE_MODEL.md" \
  "$BASE/030.model/030200_ERROR_CODE_MODEL.md" \
  "$BASE/030.model/030210_UI_STATE_CODE_MODEL.md" \
  "$BASE/030.model/030220_UI_LABEL_CODE_MODEL.md" \
  "$BASE/030.model/030230_VALIDATION_CODE_TABLE.md" \
  "$BASE/030.model/030240_ERROR_CODE_TABLE.md" \
  "$BASE/030.model/030250_UI_STATE_CODE_TABLE.md" \
  "$BASE/030.model/030260_SHARE_TARGET_MODEL.md" \
  "$BASE/030.model/030270_APPROVAL_EVENT_MODEL.md" \
  "$BASE/030.model/030280_ERP_HANDOFF_MODEL.md" \
  "$BASE/030.model/030290_PROFIT_ASSUMPTION_MODEL.md" \
  "$BASE/030.model/030300_LOCAL_ENTITY_MAPPING_MODEL.md" \
  "$BASE/040.runtime/runtime_OVERVIEW.md" \
  "$BASE/040.runtime/runtime_INDEX.md" \
  "$BASE/040.runtime/040_QUICK_FORECAST_RUNTIME.md" \
  "$BASE/040.runtime/040110_FORECAST_DRAFT_RUNTIME.md" \
  "$BASE/040.runtime/040120_ACTION_PROPOSAL_RUNTIME.md" \
  "$BASE/040.runtime/040130_SYNC_AND_SUBMISSION_RUNTIME.md" \
  "$BASE/050.flow/flow_OVERVIEW.md" \
  "$BASE/050.flow/flow_INDEX.md" \
  "$BASE/050.flow/050_QUICK_FORECAST_FLOW.md" \
  "$BASE/050.flow/050110_FORECAST_CREATION_FLOW.md" \
  "$BASE/050.flow/050120_ACTION_IDEA_FLOW.md" \
  "$BASE/050.flow/050130_PROPOSAL_DRAFT_FLOW.md" \
  "$BASE/050.flow/050140_PROFIT_PREVIEW_FLOW.md" \
  "$BASE/050.flow/050150_PRO_APPROVAL_AND_SUBMISSION_FLOW.md" \
  "$BASE/050.flow/050160_PRO_SHARE_FLOW.md" \
  "$BASE/050.flow/050170_ERP_HANDOFF_FLOW.md" \
  "$BASE/060.integration/integration_OVERVIEW.md" \
  "$BASE/060.integration/integration_INDEX.md" \
  "$BASE/060.integration/060_QUICK_FORECAST_INTEGRATION.md" \
  "$BASE/060.integration/060110_GENERAL_SIGNAL_INTEGRATION_CONTRACT.md" \
  "$BASE/060.integration/060120_ERP_REFERENCE_INTEGRATION_CONTRACT.md" \
  "$BASE/060.integration/060130_PROPOSAL_EXPORT_INTEGRATION_CONTRACT.md" \
  "$BASE/060.integration/060140_PRO_APPROVAL_INTEGRATION_CONTRACT.md" \
  "$BASE/060.integration/060150_GOVERNED_SUBMISSION_INTEGRATION_CONTRACT.md" \
  "$BASE/060.integration/060160_SHARE_AND_PERMISSION_INTEGRATION_CONTRACT.md" \
  "$BASE/060.integration/060170_ERP_HANDOFF_INTEGRATION_CONTRACT.md" \
  "$BASE/070.operations/operations_OVERVIEW.md" \
  "$BASE/070.operations/operations_INDEX.md" \
  "$BASE/070.operations/070_QUICK_FORECAST_OPERATIONS.md" \
  "$BASE/070.operations/070110_QUICK_FORECAST_RUNBOOK.md" \
  "$BASE/070.operations/070120_SYNC_FAILURE_OPERATIONS.md" \
  "$BASE/070.operations/070130_SUBMISSION_FAILURE_OPERATIONS.md" \
  "$BASE/080.policy/policy_OVERVIEW.md" \
  "$BASE/080.policy/policy_INDEX.md" \
  "$BASE/080.policy/080_QUICK_FORECAST_POLICY.md" \
  "$BASE/080.policy/080110_BASIC_PRO_FEATURE_POLICY.md" \
  "$BASE/080.policy/080120_PROPOSAL_DRAFT_POLICY.md" \
  "$BASE/080.policy/080130_PROFIT_PREVIEW_POLICY.md" \
  "$BASE/080.policy/080140_APPROVAL_AND_SUBMISSION_POLICY.md" \
  "$BASE/080.policy/080150_VALIDATION_POLICY.md" \
  "$BASE/080.policy/080160_UI_STATE_POLICY.md" \
  "$BASE/090.interface/interface_OVERVIEW.md" \
  "$BASE/090.interface/interface_INDEX.md" \
  "$BASE/090.interface/090_QUICK_FORECAST_INTERFACE_OVERVIEW.md" \
  "$BASE/090.interface/090110_DASHBOARD_INTERFACE.md" \
  "$BASE/090.interface/090120_FORECAST_EDITOR_INTERFACE.md" \
  "$BASE/090.interface/090130_ACTION_IDEA_BOARD_INTERFACE.md" \
  "$BASE/090.interface/090140_PROPOSAL_DRAFT_BUILDER_INTERFACE.md" \
  "$BASE/090.interface/090150_PROFIT_PREVIEW_INTERFACE.md" \
  "$BASE/090.interface/090160_PRO_APPROVAL_SUBMISSION_INTERFACE.md" \
  "$BASE/090.interface/090170_FORECAST_EDITOR_FIELD_SPEC.md" \
  "$BASE/090.interface/090180_ACTION_BOARD_FIELD_SPEC.md" \
  "$BASE/090.interface/090190_PROPOSAL_BUILDER_FIELD_SPEC.md" \
  "$BASE/090.interface/090200_PROFIT_PREVIEW_FIELD_SPEC.md" \
  "$BASE/090.interface/090210_PRO_SUBMISSION_FIELD_SPEC.md" \
  "$BASE/090.interface/090220_FORECAST_LIST_INTERFACE.md" \
  "$BASE/090.interface/090230_FORECAST_DETAIL_INTERFACE.md" \
  "$BASE/090.interface/090240_SHARE_TARGET_INTERFACE.md" \
  "$BASE/090.interface/090250_HISTORY_INTERFACE.md" \
  "$BASE/090.interface/090260_SCREEN_TRANSITION_INTERFACE.md" \
  "$BASE/090.interface/090270_DASHBOARD_SCREEN_SKELETON_INTERFACE.md" \
  "$BASE/090.interface/090280_FORECAST_LIST_SCREEN_SKELETON_INTERFACE.md" \
  "$BASE/090.interface/090290_FORECAST_EDITOR_SCREEN_SKELETON_INTERFACE.md" \
  "$BASE/090.interface/090300_ACTION_BOARD_SCREEN_SKELETON_INTERFACE.md" \
  "$BASE/090.interface/090310_PROPOSAL_BUILDER_SCREEN_SKELETON_INTERFACE.md" \
  "$BASE/090.interface/090320_PROFIT_PREVIEW_SCREEN_SKELETON_INTERFACE.md" \
  "$BASE/090.interface/090330_FORECAST_DETAIL_SCREEN_SKELETON_INTERFACE.md" \
  "$BASE/090.interface/090340_PRO_APPROVAL_SUBMISSION_SCREEN_SKELETON_INTERFACE.md" \
  "$BASE/090.interface/090350_HISTORY_SCREEN_SKELETON_INTERFACE.md" \
  "$BASE/090.interface/090360_SHARE_TARGET_SCREEN_SKELETON_INTERFACE.md" \
  "$BASE/090.interface/090370_SETTINGS_SCREEN_SKELETON_INTERFACE.md" \
  "$BASE/100.security/security_OVERVIEW.md" \
  "$BASE/100.security/security_INDEX.md" \
  "$BASE/100.security/100_QUICK_FORECAST_SECURITY.md" \
  "$BASE/100.security/100110_TIER_BOUNDARY_SECURITY.md" \
  "$BASE/100.security/100120_SUBMISSION_INTEGRITY_SECURITY.md" \
  "$BASE/110.infrastructure/infrastructure_OVERVIEW.md" \
  "$BASE/110.infrastructure/infrastructure_INDEX.md" \
  "$BASE/110.infrastructure/110_QUICK_FORECAST_INFRASTRUCTURE.md" \
  "$BASE/110.infrastructure/110110_LOCAL_FIRST_INFRASTRUCTURE.md" \
  "$BASE/110.infrastructure/110120_PRO_ENTERPRISE_LINK_INFRASTRUCTURE.md" \
  "$BASE/110.infrastructure/110130_LOCAL_PERSISTENCE_INFRASTRUCTURE.md" \
  "$BASE/110.infrastructure/110140_PRO_CACHE_AND_SYNC_INFRASTRUCTURE.md" \
  "$BASE/110.infrastructure/110150_LOCAL_ENTITY_SET_INFRASTRUCTURE.md" \
  "$BASE/120.implementation/implementation_OVERVIEW.md" \
  "$BASE/120.implementation/implementation_INDEX.md" \
  "$BASE/120.implementation/120_QUICK_FORECAST_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120110_FORECAST_TO_PROPOSAL_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120120_PROFIT_PREVIEW_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120130_PRO_LINKED_OPERATION_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120140_ANDROID_PACKAGE_STRUCTURE_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120150_COMMON_COMPONENT_MAPPING_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120160_BASIC_PRO_FEATURE_FLAG_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120170_ANDROID_SCREEN_STATE_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120180_ANDROID_NAVIGATION_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120190_PRO_SCREEN_GATING_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120200_DETAIL_TO_PRO_FLOW_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120210_ANDROID_VIEWMODEL_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120220_ANDROID_REPOSITORY_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120230_LOCAL_DB_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120240_LOCAL_ENTITY_FIELD_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120250_DAO_METHOD_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120260_REPOSITORY_METHOD_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120270_SCREEN_TO_REPOSITORY_MAPPING_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120280_DASHBOARD_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120290_FORECAST_LIST_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120300_FORECAST_EDITOR_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120310_ACTION_BOARD_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120320_PROPOSAL_BUILDER_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120330_PROFIT_PREVIEW_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120340_VIEWMODEL_REDUCER_PATTERN_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120350_FORECAST_DETAIL_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120360_PRO_APPROVAL_SUBMISSION_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120370_HISTORY_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120380_SHARE_TARGET_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120390_SETTINGS_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120400_PRO_VIEWMODEL_GATING_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120410_DASHBOARD_REDUCER_TRANSITION_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120420_FORECAST_LIST_REDUCER_TRANSITION_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120430_FORECAST_EDITOR_REDUCER_TRANSITION_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120440_ACTION_BOARD_REDUCER_TRANSITION_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120450_PROPOSAL_BUILDER_REDUCER_TRANSITION_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120460_PROFIT_PREVIEW_REDUCER_TRANSITION_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120470_CORE_SCREEN_REPOSITORY_RESPONSIBILITY_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120480_FORECAST_DETAIL_REDUCER_TRANSITION_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120490_PRO_APPROVAL_SUBMISSION_REDUCER_TRANSITION_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120500_HISTORY_REDUCER_TRANSITION_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120510_SHARE_TARGET_REDUCER_TRANSITION_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120520_SETTINGS_REDUCER_TRANSITION_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120530_PRO_SCREEN_REPOSITORY_RESPONSIBILITY_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120540_ANDROID_CLASS_INVENTORY_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120550_ANDROID_FEATURE_CLASS_RESPONSIBILITY_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120560_ANDROID_DATA_CLASS_RESPONSIBILITY_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120570_ANDROID_DOMAIN_CLASS_RESPONSIBILITY_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120580_ANDROID_INTEGRATION_CLASS_RESPONSIBILITY_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120590_ANDROID_COMMON_UI_CLASS_RESPONSIBILITY_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120600_SCREEN_TO_CLASS_MAPPING_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120610_ANDROID_FILE_GENERATION_UNIT_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120620_ANDROID_MINIMUM_FILE_SET_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120630_ANDROID_FILE_TEMPLATE_RESPONSIBILITY_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120640_ANDROID_GENERATION_TARGET_FREEZE_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120650_ANDROID_PHASE1_GENERATION_TARGET_IMPLEMENTATION.md" \
  "$BASE/120.implementation/120660_ANDROID_DEFERRED_TARGET_IMPLEMENTATION.md" \
  "$BASE/130.development/development_OVERVIEW.md" \
  "$BASE/130.development/development_INDEX.md" \
  "$BASE/130.development/130_QUICK_FORECAST_DEVELOPMENT.md" \
  "$BASE/130.development/130110_MVP_DEVELOPMENT_PLAN.md" \
  "$BASE/130.development/130120_PRO_EXPANSION_DEVELOPMENT_PLAN.md" \
  "$BASE/130.development/130130_ANDROID_IMPLEMENTATION_PREPARATION_PLAN.md" \
  "$BASE/130.development/130140_SCREEN_IMPLEMENTATION_ORDER_PLAN.md" \
  "$BASE/130.development/130150_CORE_SCREEN_SKELETON_DEVELOPMENT_PLAN.md" \
  "$BASE/130.development/130160_PRO_SCREEN_SKELETON_DEVELOPMENT_PLAN.md" \
  "$BASE/130.development/130170_VIEWMODEL_REPOSITORY_DB_DEVELOPMENT_PLAN.md" \
  "$BASE/130.development/130180_ENTITY_DAO_REPOSITORY_DEVELOPMENT_PLAN.md" \
  "$BASE/130.development/130190_VIEWMODEL_STATE_EVENT_EFFECT_DEVELOPMENT_PLAN.md" \
  "$BASE/130.development/130200_PRO_VIEWMODEL_STATE_EVENT_EFFECT_DEVELOPMENT_PLAN.md" \
  "$BASE/130.development/130210_REDUCER_AND_REPOSITORY_RESPONSIBILITY_DEVELOPMENT_PLAN.md" \
  "$BASE/130.development/130220_PRO_REDUCER_AND_REPOSITORY_RESPONSIBILITY_DEVELOPMENT_PLAN.md" \
  "$BASE/130.development/130230_ANDROID_CLASS_IMPLEMENTATION_ORDER_PLAN.md" \
  "$BASE/130.development/130240_ANDROID_FILE_GENERATION_DEVELOPMENT_PLAN.md" \
  "$BASE/130.development/130250_ANDROID_FILE_BATCH_PLAN.md" \
  "$BASE/130.development/130260_ANDROID_GENERATION_TARGET_ORDER_PLAN.md" \
  "$BASE/130.development/130270_ANDROID_GENERATION_DONE_CRITERIA_PLAN.md" \
  "$BASE/900.meta/meta_OVERVIEW.md" \
  "$BASE/900.meta/meta_INDEX.md" \
  "$BASE/900.meta/900100_QUICK_FORECAST_DESIGN_NOTE.md" \
  "$BASE/900.meta/900110_QUICK_FORECAST_REVIEW_CHECKLIST.md" \
  "$BASE/900.meta/900120_QUICK_FORECAST_CONSISTENCY_NOTE.md" \
  "$BASE/900.meta/900130_QUICK_FORECAST_UI_REVIEW_CHECKLIST.md" \
  "$BASE/900.meta/900140_QUICK_FORECAST_VALIDATION_CHECKLIST.md" \
  "$BASE/900.meta/900150_QUICK_FORECAST_SCREEN_INVENTORY.md" \
  "$BASE/900.meta/900160_QUICK_FORECAST_CODE_SEED_NOTE.md" \
  "$BASE/900.meta/900170_PRO_OPERATION_REVIEW_CHECKLIST.md" \
  "$BASE/900.meta/900180_SCREEN_TO_MODEL_TRACE_NOTE.md" \
  "$BASE/900.meta/900190_QUICK_FORECAST_BOOK_BUILD_SCRIPT.sh" \
  "$BASE/900.meta/900200_QUICK_FORECAST_CONSISTENCY_CHECK_NOTE.md" \
  "$BASE/900.meta/900210_QUICK_FORECAST_QUICK_CHECK.sh" \
  "$BASE/900.meta/900220_IMPLEMENTATION_PREP_REVIEW_CHECKLIST.md" \
  "$BASE/900.meta/900230_ANDROID_PACKAGE_TO_SCREEN_TRACE_NOTE.md" \
  "$BASE/900.meta/900240_CORE_SCREEN_SKELETON_REVIEW_CHECKLIST.md" \
  "$BASE/900.meta/900250_PRO_SCREEN_SKELETON_REVIEW_CHECKLIST.md" \
  "$BASE/900.meta/900260_VIEWMODEL_REPOSITORY_DB_REVIEW_CHECKLIST.md" \
  "$BASE/900.meta/900270_ENTITY_DAO_REPOSITORY_REVIEW_CHECKLIST.md" \
  "$BASE/900.meta/900280_VIEWMODEL_STATE_EVENT_EFFECT_REVIEW_CHECKLIST.md" \
  "$BASE/900.meta/900290_PRO_VIEWMODEL_STATE_EVENT_EFFECT_REVIEW_CHECKLIST.md" \
  "$BASE/900.meta/900300_REDUCER_AND_REPOSITORY_RESPONSIBILITY_REVIEW_CHECKLIST.md" \
  "$BASE/900.meta/900310_PRO_REDUCER_AND_REPOSITORY_RESPONSIBILITY_REVIEW_CHECKLIST.md" \
  "$BASE/900.meta/900320_ANDROID_CLASS_INVENTORY_REVIEW_CHECKLIST.md" \
  "$BASE/900.meta/900330_ANDROID_FILE_GENERATION_REVIEW_CHECKLIST.md" \
  "$BASE/900.meta/900340_ANDROID_GENERATION_TARGET_FREEZE_REVIEW_CHECKLIST.md"
do
  append_file "$f"
done

echo "=== FINAL POLISH META ==="
find "$META" -maxdepth 1 -type f | sort
echo
echo "=== REBUILT BOOK ==="
ls -lh "$OUT"
echo
echo "=== ROOT FILES ==="
find "$BASE" -maxdepth 1 -type f | sort
