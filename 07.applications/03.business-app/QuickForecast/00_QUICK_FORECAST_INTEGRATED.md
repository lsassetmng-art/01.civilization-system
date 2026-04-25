
<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/000_QUICK_FORECAST_CURRENT_STATUS.md -->
# ============================================================
# QUICK FORECAST CURRENT STATUS
# ============================================================

status: canonical
layer: application
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Provides a one-page current status summary.

current_phase:
design-complete
implementation-deferred

current_state_summary:
QuickForecast is now treated as:
- design-closed
- handoff-ready
- implementation-later by explicit decision

design_completed_areas:
- constitution
- architecture
- model
- runtime
- flow
- integration
- operations
- policy
- interface
- security
- infrastructure
- implementation-boundary design
- development-phase design
- review and closure meta design

fixed_meanings:
- forecast-centered product identity
- ERP boundary
- cross-application boundary
- multilingual meaning
- multicurrency meaning
- multi-device meaning
- pricing and positioning meaning
- Phase 1 / Phase 2 separation

not_done:
- source implementation
- runtime validation
- build verification

rule:
Treat QuickForecast as a completed design set,
not as an implemented application.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/000_QUICK_FORECAST_CURRENT_STATUS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/000_QUICK_FORECAST_INDEX.md -->
# ============================================================
# QUICK FORECAST INDEX
# ============================================================

status: canonical
layer: application
application: QuickForecast
owner: Boss
prepared_by: Zero

root_files:
- 000_QUICK_FORECAST_OVERVIEW.md
- 000_QUICK_FORECAST_CURRENT_STATUS.md
- 000_QUICK_FORECAST_INDEX.md
- 00_QUICK_FORECAST_INTEGRATED.md
- 00_QUICK_FORECAST_INTEGRATED_REBUILT.md
- 9999_QUICK_FORECAST_DESIGN_COMPLETION_REPORT.md

layer_directories:
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

current_status:
- design_complete
- handoff_ready
- implementation_deferred

- 010.constitution/011110_QUICKFORECAST_COMPETITIVE_POSITIONING_NOTE.md

- 020.architecture/021120_QUICKFORECAST_FORECAST_SIGNAL_AGGREGATION_ARCHITECTURE.md

- 020.architecture/021130_QUICKFORECAST_SCENARIO_EXCEPTION_MANAGEMENT_ARCHITECTURE.md

- 030.model/030510_QUICKFORECAST_MANAGEMENT_FORECAST_TIMELINE_MODEL.md

- 060.integration/060290_QUICKFORECAST_FORECAST_COCKPIT_PAYLOAD.md

- 060.integration/060300_QUICKFORECAST_SCENARIO_EXCEPTION_REVIEW_PAYLOAD.md

- 090.interface/090330_QUICKFORECAST_FORECAST_COCKPIT_INTERFACE.md

- 120.implementation/120300_QUICKFORECAST_FORECAST_CONTROL_IMPLEMENTATION_GUIDE.md

- 900.meta/900410_QUICKFORECAST_20260416_DIFF_AUDIT_NOTE.md

- 020.architecture/021140_QUICKFORECAST_PHASE_A_FORECAST_TIMELINE_DDL_ADDITIVE_PLAN.md

- 060.integration/060320_QUICKFORECAST_PHASE_A_API_STARTER.md

- 060.integration/060330_QUICKFORECAST_PHASE_A_API_DTO_FIELD_FREEZE.md

- 120.implementation/120310_QUICKFORECAST_PHASE_A_FORECAST_TIMELINE_IMPLEMENTATION_SKELETON.md

- 120.implementation/120320_QUICKFORECAST_PHASE_A_STUB_FILE_PLAN.md

- 120.implementation/120330_QUICKFORECAST_PHASE_A_MODULE_TASK_BREAKDOWN.md

- 120.implementation/120340_QUICKFORECAST_PHASE_A_EXACT_STUB_CONTENT_ORDER_PLAN.md

- 120.implementation/120350_QUICKFORECAST_PHASE_A_SLICE_COMMAND_PACKS.md

- 120.implementation/120360_QUICKFORECAST_PHASE_A_SLICE_FIELD_FILL_PLAN.md

- 120.implementation/120370_QUICKFORECAST_PHASE_A_IMPLEMENTATION_READY_COMPLETION_MEMO.md

- 120.implementation/120380_QUICKFORECAST_PHASE_A_EXECUTION_ENTRY_PROTOCOL.md

- 900.meta/900420_QUICKFORECAST_20260416_BUNDLE02_PHASE_A_AUDIT_NOTE.md

- 900.meta/900430_QUICKFORECAST_20260416_BUNDLE03_STUB_AUDIT_NOTE.md

- 900.meta/900440_QUICKFORECAST_20260416_BUNDLE04_CLOSEOUT_AUDIT_NOTE.md

- 900.meta/900450_QUICKFORECAST_NEXT_APP_TRANSITION_HANDOFF.md

- 900.meta/900460_QUICKFORECAST_REUSABLE_PHASEA_REINFORCEMENT_RECIPE.md

- 900.meta/900470_QUICKFORECAST_PLANNING_STOP_RULE_NOTE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/000_QUICK_FORECAST_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/000_QUICK_FORECAST_OVERVIEW.md -->
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
and profit-image previews.

product_tiers:
- QuickForecast Basic
- QuickForecast Pro

canonical_value_chain:
Forecast
-> Action
-> Proposal
-> Profit

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

QuickForecast Basic:
Provides lightweight forecasting and proposal drafting
based on public/general information and manual assumptions.

QuickForecast Pro:
Extends Basic with ERP-linked reference usage,
sharing, approval handling, synchronization,
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
- generate proposal drafts
- preview revenue and profit image
- support mobile and interrupted work
- connect field thinking to governed enterprise operation

design_identity:
QuickForecast is a demand-forecast-originated
proposal drafting workbench.

current_scope_note:
The current body is implementation-ready design,
but active work remains within the design-only boundary.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/000_QUICK_FORECAST_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/00_QUICK_FORECAST_INTEGRATED_REBUILT.md -->
# ============================================================
# QUICK FORECAST INTEGRATED REBUILT
# ============================================================

status: rebuilt
system: QuickForecast
owner: Boss
prepared_by: Zero
rebuilt_at: 2026-04-14 12:52:54 +0900
source_root: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast
source_file_count: 377

source_files:
  - 000_QUICK_FORECAST_CURRENT_STATUS.md
  - 000_QUICK_FORECAST_INDEX.md
  - 000_QUICK_FORECAST_OVERVIEW.md
  - 010.constitution/010110_QUICK_FORECAST_BASIC_PRO_CONSTITUTION.md
  - 010.constitution/010120_QUICK_FORECAST_ERP_COEXISTENCE_CONSTITUTION.md
  - 010.constitution/010_QUICK_FORECAST_CONSTITUTION.md
  - 010.constitution/constitution_INDEX.md
  - 010.constitution/constitution_OVERVIEW.md
  - 019_PRICING_TIER_CANONICAL.md
  - 020.architecture/020110_FORECAST_ACTION_PROPOSAL_PROFIT_ARCHITECTURE.md
  - 020.architecture/020120_MOBILE_IMMEDIACY_ARCHITECTURE.md
  - 020.architecture/020130_FORECAST_TO_PROPOSAL_DIFFERENTIATION_ARCHITECTURE.md
  - 020.architecture/020140_QUICK_FORECAST_POSITIONING_ARCHITECTURE.md
  - 020.architecture/020150_QUICK_FORECAST_ERP_BOUNDARY_ARCHITECTURE.md
  - 020.architecture/020160_CROSS_APPLICATION_BOUNDARY_ARCHITECTURE.md
  - 020.architecture/020170_APP_ROLE_DIFFERENTIATION_ARCHITECTURE.md
  - 020.architecture/020_QUICK_FORECAST_ARCHITECTURE.md
  - 020.architecture/architecture_INDEX.md
  - 020.architecture/architecture_OVERVIEW.md
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
  - 030.model/030310_QUICK_FORECAST_PLAN_MODEL.md
  - 030.model/030320_QUICK_FORECAST_PLAN_CAPABILITY_MODEL.md
  - 030.model/030330_SCENARIO_SWITCHED_PROPOSAL_MODEL.md
  - 030.model/030340_PROPOSAL_BASIS_PANEL_MODEL.md
  - 030.model/030350_INTERNAL_EXPLANATION_DRAFT_MODEL.md
  - 030.model/030360_EXPLAINABLE_PROFIT_PREVIEW_MODEL.md
  - 030.model/030370_INTERNAL_RESPONSE_TRACKING_MODEL.md
  - 030.model/030380_MARKET_EVENT_INPUT_MODEL.md
  - 030.model/030390_PROPOSAL_TEMPLATE_SELECTION_MODEL.md
  - 030.model/030400_CONTENT_RECOMMENDATION_MODEL.md
  - 030.model/030450_CURRENCY_PREFERENCE_MODEL.md
  - 030.model/030460_MONEY_VALUE_MODEL.md
  - 030.model/030470_EXCHANGE_RATE_SNAPSHOT_MODEL.md
  - 030.model/030480_MULTICURRENCY_PROFIT_PREVIEW_MODEL.md
  - 030.model/030_QUICK_FORECAST_MODEL_OVERVIEW.md
  - 030.model/model_INDEX.md
  - 030.model/model_OVERVIEW.md
  - 040.runtime/040110_FORECAST_DRAFT_RUNTIME.md
  - 040.runtime/040120_ACTION_PROPOSAL_RUNTIME.md
  - 040.runtime/040130_SYNC_AND_SUBMISSION_RUNTIME.md
  - 040.runtime/040_QUICK_FORECAST_RUNTIME.md
  - 040.runtime/runtime_INDEX.md
  - 040.runtime/runtime_OVERVIEW.md
  - 050.flow/050110_FORECAST_CREATION_FLOW.md
  - 050.flow/050120_ACTION_IDEA_FLOW.md
  - 050.flow/050130_PROPOSAL_DRAFT_FLOW.md
  - 050.flow/050140_PROFIT_PREVIEW_FLOW.md
  - 050.flow/050150_PRO_APPROVAL_AND_SUBMISSION_FLOW.md
  - 050.flow/050160_PRO_SHARE_FLOW.md
  - 050.flow/050170_ERP_HANDOFF_FLOW.md
  - 050.flow/050180_SCENARIO_SWITCHED_PROPOSAL_FLOW.md
  - 050.flow/050190_INTERNAL_EXPLANATION_AND_TRACKING_FLOW.md
  - 050.flow/050200_MARKET_EVENT_AND_TEMPLATE_FLOW.md
  - 050.flow/050_QUICK_FORECAST_FLOW.md
  - 050.flow/flow_INDEX.md
  - 050.flow/flow_OVERVIEW.md
  - 060.integration/060110_GENERAL_SIGNAL_INTEGRATION_CONTRACT.md
  - 060.integration/060120_ERP_REFERENCE_INTEGRATION_CONTRACT.md
  - 060.integration/060130_PROPOSAL_EXPORT_INTEGRATION_CONTRACT.md
  - 060.integration/060140_PRO_APPROVAL_INTEGRATION_CONTRACT.md
  - 060.integration/060150_GOVERNED_SUBMISSION_INTEGRATION_CONTRACT.md
  - 060.integration/060160_SHARE_AND_PERMISSION_INTEGRATION_CONTRACT.md
  - 060.integration/060170_ERP_HANDOFF_INTEGRATION_CONTRACT.md
  - 060.integration/060_QUICK_FORECAST_INTEGRATION.md
  - 060.integration/integration_INDEX.md
  - 060.integration/integration_OVERVIEW.md
  - 070.operations/070110_QUICK_FORECAST_RUNBOOK.md
  - 070.operations/070120_SYNC_FAILURE_OPERATIONS.md
  - 070.operations/070130_SUBMISSION_FAILURE_OPERATIONS.md
  - 070.operations/070_QUICK_FORECAST_OPERATIONS.md
  - 070.operations/operations_INDEX.md
  - 070.operations/operations_OVERVIEW.md
  - 080.policy/080110_BASIC_PRO_FEATURE_POLICY.md
  - 080.policy/080120_PROPOSAL_DRAFT_POLICY.md
  - 080.policy/080130_PROFIT_PREVIEW_POLICY.md
  - 080.policy/080140_APPROVAL_AND_SUBMISSION_POLICY.md
  - 080.policy/080150_VALIDATION_POLICY.md
  - 080.policy/080160_UI_STATE_POLICY.md
  - 080.policy/080170_QUICK_FORECAST_PRICING_POLICY.md
  - 080.policy/080180_QUICK_FORECAST_TIER_POLICY.md
  - 080.policy/080190_QUICK_FORECAST_FREE_SCOPE_POLICY.md
  - 080.policy/080200_QUICK_FORECAST_PAID_SCOPE_POLICY.md
  - 080.policy/080210_QUICK_FORECAST_ERP_PRICING_BOUNDARY_POLICY.md
  - 080.policy/080220_FEATURE_EXPANSION_POLICY.md
  - 080.policy/080260_MULTICURRENCY_POLICY.md
  - 080.policy/080270_EXCHANGE_RATE_POLICY.md
  - 080.policy/080280_CURRENCY_FALLBACK_POLICY.md
  - 080.policy/080290_POSITIONING_POLICY.md
  - 080.policy/080300_FREE_PAID_ERP_BOUNDARY_POLICY.md
  - 080.policy/080310_PRICING_VALUE_JUSTIFICATION_POLICY.md
  - 080.policy/080320_CROSS_APPLICATION_OVERLAP_POLICY.md
  - 080.policy/080330_APP_BOUNDARY_DECISION_POLICY.md
  - 080.policy/080_QUICK_FORECAST_POLICY.md
  - 080.policy/policy_INDEX.md
  - 080.policy/policy_OVERVIEW.md
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
  - 090.interface/090380_SCENARIO_SWITCHED_PROPOSAL_INTERFACE.md
  - 090.interface/090390_INTERNAL_EXPLANATION_INTERFACE.md
  - 090.interface/090400_MARKET_EVENT_TEMPLATE_INTERFACE.md
  - 090.interface/090410_EXPANDED_SCREEN_INVENTORY_INTERFACE.md
  - 090.interface/090420_SCREEN_RESPONSIBILITY_REALIGNMENT_INTERFACE.md
  - 090.interface/090450_MULTICURRENCY_DISPLAY_INTERFACE.md
  - 090.interface/090460_PROPOSAL_CURRENCY_BASIS_INTERFACE.md
  - 090.interface/090470_MULTI_DEVICE_SUPPORT_INTERFACE.md
  - 090.interface/090480_ADAPTIVE_LAYOUT_POLICY_INTERFACE.md
  - 090.interface/090490_SCREEN_RESPONSIBILITY_HARDENING_INTERFACE.md
  - 090.interface/090500_MULTILINGUAL_MULTICURRENCY_DISPLAY_PRIORITY_INTERFACE.md
  - 090.interface/090_QUICK_FORECAST_INTERFACE_OVERVIEW.md
  - 090.interface/interface_INDEX.md
  - 090.interface/interface_OVERVIEW.md
  - 100.security/100110_TIER_BOUNDARY_SECURITY.md
  - 100.security/100120_SUBMISSION_INTEGRITY_SECURITY.md
  - 100.security/100_QUICK_FORECAST_SECURITY.md
  - 100.security/security_INDEX.md
  - 100.security/security_OVERVIEW.md
  - 110.infrastructure/110110_LOCAL_FIRST_INFRASTRUCTURE.md
  - 110.infrastructure/110120_PRO_ENTERPRISE_LINK_INFRASTRUCTURE.md
  - 110.infrastructure/110130_LOCAL_PERSISTENCE_INFRASTRUCTURE.md
  - 110.infrastructure/110140_PRO_CACHE_AND_SYNC_INFRASTRUCTURE.md
  - 110.infrastructure/110150_LOCAL_ENTITY_SET_INFRASTRUCTURE.md
  - 110.infrastructure/110_QUICK_FORECAST_INFRASTRUCTURE.md
  - 110.infrastructure/infrastructure_INDEX.md
  - 110.infrastructure/infrastructure_OVERVIEW.md
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
  - 120.implementation/120670_EXPANDED_VIEWMODEL_RESPONSIBILITY_IMPLEMENTATION.md
  - 120.implementation/120680_EXPANDED_REDUCER_RESPONSIBILITY_IMPLEMENTATION.md
  - 120.implementation/120690_EXPANDED_REPOSITORY_RESPONSIBILITY_IMPLEMENTATION.md
  - 120.implementation/120700_EXPANDED_FEATURE_BOUNDARY_IMPLEMENTATION.md
  - 120.implementation/120730_MULTICURRENCY_IMPLEMENTATION.md
  - 120.implementation/120740_MULTICURRENCY_VIEWMODEL_RESPONSIBILITY_IMPLEMENTATION.md
  - 120.implementation/120750_ANDROID_MINIMUM_I18N_I18NCURRENCY_IMPLEMENTATION.md
  - 120.implementation/120760_ANDROID_PHASE1_GENERATION_BOUNDARY_IMPLEMENTATION.md
  - 120.implementation/120770_MULTI_DEVICE_IMPLEMENTATION.md
  - 120.implementation/120780_ADAPTIVE_SCREEN_COMPOSITION_IMPLEMENTATION.md
  - 120.implementation/120790_ANDROID_TEMPLATE_GENERATION_IMPLEMENTATION.md
  - 120.implementation/120800_ANDROID_DOMAIN_TEMPLATE_IMPLEMENTATION.md
  - 120.implementation/120810_ANDROID_SETTINGS_AND_FORMATTER_TEMPLATE_IMPLEMENTATION.md
  - 120.implementation/120820_IMPLEMENTATION_BOUNDARY_HARDENING.md
  - 120.implementation/120830_ADAPTIVE_PRESENTATION_WITHOUT_FLOW_DIVERGENCE_IMPLEMENTATION.md
  - 120.implementation/120_QUICK_FORECAST_IMPLEMENTATION.md
  - 120.implementation/implementation_INDEX.md
  - 120.implementation/implementation_OVERVIEW.md
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
  - 130.development/130280_ANDROID_EXPANDED_IMPLEMENTATION_PRIORITY_PLAN.md
  - 130.development/130290_ANDROID_EXPANDED_PHASE2_PLAN.md
  - 130.development/130300_ANDROID_EXPANDED_PHASE3_PLAN.md
  - 130.development/130310_ANDROID_EXPANDED_PHASE4_PLAN.md
  - 130.development/130320_ANDROID_EXPANDED_IMPLEMENTATION_SEQUENCE_PLAN.md
  - 130.development/130330_ANDROID_IMPLEMENTATION_READING_ORDER_PLAN.md
  - 130.development/130340_ANDROID_PHASE_GATE_PLAN.md
  - 130.development/130350_ANDROID_EXPANDED_DONE_CRITERIA_PLAN.md
  - 130.development/130360_ANDROID_MINIMUM_FILESET_WITH_I18N_I18NCURRENCY_PLAN.md
  - 130.development/130370_ANDROID_MINIMUM_CLASSSET_WITH_I18N_I18NCURRENCY_PLAN.md
  - 130.development/130380_ANDROID_PHASE1_I18N_I18NCURRENCY_SEQUENCE_PLAN.md
  - 130.development/130390_PHASE1_GENERATION_TARGET_FILE_LIST_PLAN.md
  - 130.development/130400_PHASE1_ACCEPTANCE_CRITERIA_PLAN.md
  - 130.development/130410_PHASE2_ENTRY_DECISION_PLAN.md
  - 130.development/130420_DEVELOPMENT_RESTART_ENTRY_PLAN.md
  - 130.development/130430_ANDROID_PHASE1_DIRECTORY_STRUCTURE_PLAN.md
  - 130.development/130440_ANDROID_PHASE1_FILE_GENERATION_BATCH_PLAN.md
  - 130.development/130450_ANDROID_PHASE1_CONCRETE_FILESET_PLAN.md
  - 130.development/130460_ANDROID_PHASE1_GENERATION_SEQUENCE_DETAIL_PLAN.md
  - 130.development/130470_MULTI_DEVICE_DEVELOPMENT_PLAN.md
  - 130.development/130480_MULTI_DEVICE_ACCEPTANCE_PLAN.md
  - 130.development/130490_ANDROID_TEMPLATE_STARTER_PACK_PLAN.md
  - 130.development/130500_ANDROID_TEMPLATE_BATCH_ORDER_PLAN.md
  - 130.development/130510_PHASE1_PHASE2_SCOPE_HARDENING_PLAN.md
  - 130.development/130520_RESTART_AND_REVIEW_READING_ORDER_HARDENING_PLAN.md
  - 130.development/130_QUICK_FORECAST_DEVELOPMENT.md
  - 130.development/development_INDEX.md
  - 130.development/development_OVERVIEW.md
  - 900.meta/900100_QUICK_FORECAST_DESIGN_NOTE.md
  - 900.meta/900110_QUICK_FORECAST_REVIEW_CHECKLIST.md
  - 900.meta/900120_QUICK_FORECAST_CONSISTENCY_NOTE.md
  - 900.meta/900130_QUICK_FORECAST_UI_REVIEW_CHECKLIST.md
  - 900.meta/900140_QUICK_FORECAST_VALIDATION_CHECKLIST.md
  - 900.meta/900150_QUICK_FORECAST_SCREEN_INVENTORY.md
  - 900.meta/900160_QUICK_FORECAST_CODE_SEED_NOTE.md
  - 900.meta/900170_PRO_OPERATION_REVIEW_CHECKLIST.md
  - 900.meta/900180_SCREEN_TO_MODEL_TRACE_NOTE.md
  - 900.meta/900200_QUICK_FORECAST_CONSISTENCY_CHECK_NOTE.md
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
  - 900.meta/900350_FINAL_POLISH_NOTE.md
  - 900.meta/900360_OVERVIEW_ROLE_CLARIFICATION_NOTE.md
  - 900.meta/900370_DESIGN_ONLY_BOUNDARY_NOTE.md
  - 900.meta/900380_FINAL_REVIEW_CHECKLIST.md
  - 900.meta/900400_QUICK_FORECAST_HANDOVER_NOTE.md
  - 900.meta/900410_WORDING_CANONICAL_RULE.md
  - 900.meta/900420_STYLE_CANONICAL_RULE.md
  - 900.meta/900430_AMBIGUITY_AND_DUPLICATION_REVIEW_NOTE.md
  - 900.meta/900440_FINAL_POLISH_REVIEW_CHECKLIST.md
  - 900.meta/900450_POLISH_EXECUTION_NOTE.md
  - 900.meta/900460_SHORT_HANDOVER_SOURCE_NOTE.md
  - 900.meta/900470_WORDING_POLISH_EXECUTION_NOTE.md
  - 900.meta/900480_CROSS_APPLICATION_WORDING_ALIGNMENT_NOTE.md
  - 900.meta/900490_APPLICATION_POSITIONING_ALIGNMENT_RULE.md
  - 900.meta/900500_TIER_ALIGNMENT_RULE.md
  - 900.meta/900510_DESIGN_MATURITY_ALIGNMENT_RULE.md
  - 900.meta/900520_CROSS_APPLICATION_REVIEW_CHECKLIST.md
  - 900.meta/900530_CANONICAL_PHRASE_LIBRARY.md
  - 900.meta/900540_QUICK_FORECAST_CLOSE_NOTE.md
  - 900.meta/900550_QUICK_FORECAST_FINAL_VERIFY_REPORT.md
  - 900.meta/900560_QUICK_FORECAST_CLOSURE_STARTER_PACK.md
  - 900.meta/900570_QUICK_FORECAST_FINAL_MANIFEST.md
  - 900.meta/900580_QUICK_FORECAST_CLOSURE_DECLARATION.md
  - 900.meta/900590_PARENT_CANONICAL_ALIGNMENT_NOTE.md
  - 900.meta/900600_QUICK_FORECAST_COMMON_COMPONENT_ADOPTION_REGISTRY.md
  - 900.meta/900620_QUICK_FORECAST_PRICING_DESIGN_NOTE.md
  - 900.meta/900630_FEATURE_EXPANSION_DESIGN_NOTE.md
  - 900.meta/900640_EXPANDED_SCREEN_INVENTORY_NOTE.md
  - 900.meta/900650_SCREEN_ADDITION_DECISION_NOTE.md
  - 900.meta/900660_VM_REDUCER_REPOSITORY_REFRESH_NOTE.md
  - 900.meta/900670_ANDROID_PRIORITY_REFRESH_NOTE.md
  - 900.meta/900680_IMPLEMENTATION_RESTART_ENTRY_NOTE.md
  - 900.meta/900690_IMPLEMENTATION_START_CHECKLIST.md
  - 900.meta/900710_MULTICURRENCY_DESIGN_NOTE.md
  - 900.meta/900720_ANDROID_MINIMUM_FILESET_BUNDLE_NOTE.md
  - 900.meta/900730_DEVELOPMENT_130_COMPLETION_NOTE.md
  - 900.meta/900740_ANDROID_PHASE1_FILE_GENERATION_NOTE.md
  - 900.meta/900750_MULTI_DEVICE_SUPPORT_NOTE.md
  - 900.meta/900760_ANDROID_TEMPLATE_STARTER_NOTE.md
  - 900.meta/900770_DESIGN_HARDENING_NOTE.md
  - 900.meta/900780_PRICING_POSITIONING_BOUNDARY_NOTE.md
  - 900.meta/900790_CROSS_APPLICATION_OVERLAP_NOTE.md
  - 900.meta/900800_FINAL_REVIEW_HARDENING_CHECKLIST.md
  - 900.meta/900810_CLOSE_DECISION_GATE_NOTE.md
  - 900.meta/900820_REVIEWER_FOCUS_NOTE.md
  - 900.meta/900830_PRE_CLOSE_TOTAL_INSPECTION_CHECKLIST.md
  - 900.meta/900840_INDEX_AND_REBUILT_ALIGNMENT_NOTE.md
  - 900.meta/900850_SEMANTIC_DRIFT_FINAL_NOTE.md
  - 900.meta/900860_PRE_CLOSE_DECISION_SUMMARY_TEMPLATE.md
  - 900.meta/900870_CLOSE_DECISION_SUMMARY_NOTE.md
  - 900.meta/900880_REMAINING_RISK_DECISION_NOTE.md
  - 900.meta/900890_HANDOFF_READY_DECISION_NOTE.md
  - 900.meta/900900_CLOSE_RECOMMENDATION_TEMPLATE.md
  - 900.meta/900910_DESIGN_COMPLETION_CANDIDATE_NOTE.md
  - 900.meta/900920_DESIGN_COMPLETE_VS_IMPLEMENTATION_LATER_NOTE.md
  - 900.meta/900930_HANDOFF_CLOSE_IMPLEMENTATION_RELATION_NOTE.md
  - 900.meta/900940_FINAL_DESIGN_JUDGMENT_TEMPLATE.md
  - 900.meta/900950_FINAL_DESIGN_JUDGMENT_NOTE.md
  - 900.meta/900960_BLOCKER_STATUS_NOTE.md
  - 900.meta/900970_CLOSE_RECOMMENDATION_NOTE.md
  - 900.meta/900980_POST_CLOSE_HANDLING_NOTE.md
  - 900.meta/900990_DESIGN_CLOSURE_DECLARATION.md
  - 900.meta/901000_NEXT_PHASE_ENTRY_NOTE.md
  - 900.meta/meta_INDEX.md
  - 900.meta/meta_OVERVIEW.md
  - 9999_QUICK_FORECAST_DESIGN_COMPLETION_REPORT.md

# ============================================================
# MERGED SOURCE DOCUMENTS
# ============================================================




# ============================================================
# QUICK FORECAST CURRENT STATUS
# ============================================================

status: canonical
layer: application
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Provides a one-page current status summary.

current_phase:
design-complete
implementation-deferred

current_state_summary:
QuickForecast is now treated as:
- design-closed
- handoff-ready
- implementation-later by explicit decision

design_completed_areas:
- constitution
- architecture
- model
- runtime
- flow
- integration
- operations
- policy
- interface
- security
- infrastructure
- implementation-boundary design
- development-phase design
- review and closure meta design

fixed_meanings:
- forecast-centered product identity
- ERP boundary
- cross-application boundary
- multilingual meaning
- multicurrency meaning
- multi-device meaning
- pricing and positioning meaning
- Phase 1 / Phase 2 separation

not_done:
- source implementation
- runtime validation
- build verification

rule:
Treat QuickForecast as a completed design set,
not as an implemented application.




# ============================================================
# QUICK FORECAST INDEX
# ============================================================

status: canonical
layer: application
application: QuickForecast
owner: Boss
prepared_by: Zero

root_files:
- 000_QUICK_FORECAST_OVERVIEW.md
- 000_QUICK_FORECAST_CURRENT_STATUS.md
- 000_QUICK_FORECAST_INDEX.md
- 00_QUICK_FORECAST_INTEGRATED.md
- 00_QUICK_FORECAST_INTEGRATED_REBUILT.md
- 9999_QUICK_FORECAST_DESIGN_COMPLETION_REPORT.md

layer_directories:
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

current_status:
- design_complete
- handoff_ready
- implementation_deferred




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
and profit-image previews.

product_tiers:
- QuickForecast Basic
- QuickForecast Pro

canonical_value_chain:
Forecast
-> Action
-> Proposal
-> Profit

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

QuickForecast Basic:
Provides lightweight forecasting and proposal drafting
based on public/general information and manual assumptions.

QuickForecast Pro:
Extends Basic with ERP-linked reference usage,
sharing, approval handling, synchronization,
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
- generate proposal drafts
- preview revenue and profit image
- support mobile and interrupted work
- connect field thinking to governed enterprise operation

design_identity:
QuickForecast is a demand-forecast-originated
proposal drafting workbench.

current_scope_note:
The current body is implementation-ready design,
but active work remains within the design-only boundary.




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
# QuickForecast Pricing Tier Canonical
# ============================================================

status: canonical
system: QuickForecast
topic: pricing_tier
owner: Boss
prepared_by: Zero

tier_model:
  - name: Basic
    billing_type: monthly
    price_jpy_monthly: 0
    summary:
      - 一般データのみで需要予測を行う無料層
      - ERP未連携
    included:
      - 一般データベース予測
      - 簡易予測根拠表示
      - 企画書ドラフト
      - 提案書ドラフト
      - 保存と見返し
    excluded:
      - ERPデータ利用
      - 社内実績データ利用
      - ERP連携前提の高度分析

  - name: Pro
    billing_type: monthly
    price_jpy_monthly: 500
    summary:
      - ERPデータを含む実務向け上位層
      - 現場でそのまま業務提案に使う前提
    included:
      - Basic の全機能
      - ERPデータ利用
      - 社内実績データ利用
      - 商品別予測
      - 顧客別予測
      - 拠点別予測
      - 詳細提案ドラフト
      - 実績比較
      - 精度振り返り
    excluded:
      - ERP正本を自動確定する権限

pricing_policy_notes:
  currency: JPY
  billing_cycle: monthly
  fixed_tier_names:
    - Basic
    - Pro
  canonical_prices:
    Basic: 0
    Pro: 500




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
# FORECAST TO PROPOSAL DIFFERENTIATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the architectural differentiation of QuickForecast
after competitor-aware feature expansion.

architectural_position:
QuickForecast should not compete as:
- a pure demand-planning engine
- a pure proposal management tool
- a pure CRM replacement

architectural_strength:
QuickForecast should compete as:
a forecast-originated proposal drafting workbench
that connects:
- forecast
- scenario
- action
- proposal
- profit
- pre-approval internal operation

new_architecture_extensions:
- scenario-switched proposal generation
- proposal basis panel
- internal explanation draft generation
- explainable profit preview
- pre-handoff internal response tracking
- market event input
- proposal template switching
- content recommendation




# ============================================================
# QUICK FORECAST POSITIONING ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the architectural positioning of QuickForecast.

positioning:
QuickForecast is a lightweight forecast-first application
for fast business judgment support,
not a full ERP replacement.

core_identity:
- quick input
- quick review
- quick proposal drafting
- quick profit preview
- meeting-time and field-time usability

not_primary_identity:
- full master-data governance
- full enterprise workflow governance
- full accounting settlement ownership
- full ERP lifecycle ownership

architectural_role:
QuickForecast exists beside ERP,
not above ERP and not under ERP.
It accelerates early-stage judgment and draft formation.




# ============================================================
# QUICK FORECAST ERP BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Fixes the architectural boundary between QuickForecast and ERP.

quickforecast_side:
- rapid demand / opportunity estimation
- lightweight scenario inspection
- proposal draft creation
- quick profit preview
- local-first drafting support

erp_side:
- canonical enterprise record
- governed approval
- official enterprise workflow
- authoritative cross-function integration
- final enterprise operational ownership

boundary_rule:
QuickForecast may prepare, preview, and suggest,
but ERP remains the official governed system
where enterprise-authoritative lifecycle control is required.




# ============================================================
# CROSS APPLICATION BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines architectural boundaries between QuickForecast and nearby applications.

boundary_targets:
- ERP
- EstimateCreator
- ProjectFlow
- PocketSecretary
- BusinessOS common capability

quickforecast_primary_role:
- fast forecast-centered judgment support
- lightweight opportunity and demand estimation
- quick proposal starting point
- quick profit preview
- rapid scenario comparison

not_quickforecast_primary_role:
- full governed enterprise processing
- canonical enterprise estimate ownership
- project execution management
- secretary-style life assistance
- heavy workflow governance shell

architecture_rule:
QuickForecast may touch adjacent meanings,
but must not absorb their canonical product role.




# ============================================================
# APP ROLE DIFFERENTIATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Explains how QuickForecast differs from adjacent apps.

erp_difference:
ERP is enterprise-authoritative and workflow-governed.
QuickForecast is lightweight and judgment-speed centered.

estimatecreator_difference:
EstimateCreator specializes in estimate creation and estimate-format alignment.
QuickForecast specializes in earlier-stage opportunity / forecast / proposal acceleration.

projectflow_difference:
ProjectFlow manages project progress and execution coordination.
QuickForecast supports pre-execution judgment and proposal shaping.

pocketsecretary_difference:
PocketSecretary is local-first life / secretary support centered.
QuickForecast is business judgment and forecast support centered.

businessos_common_difference:
BusinessOS common capability provides shared operational foundations.
QuickForecast is an application-level judgment surface built on top of those foundations.

important_rule:
Overlap in shared concepts is acceptable.
Canonical ownership of product identity is not to be blurred.




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
- 020130_FORECAST_TO_PROPOSAL_DIFFERENTIATION_ARCHITECTURE.md
- 020140_QUICK_FORECAST_POSITIONING_ARCHITECTURE.md
- 020150_QUICK_FORECAST_ERP_BOUNDARY_ARCHITECTURE.md
- 020160_CROSS_APPLICATION_BOUNDARY_ARCHITECTURE.md
- 020170_APP_ROLE_DIFFERENTIATION_ARCHITECTURE.md




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
# QUICK FORECAST PLAN MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines pricing plan model for QuickForecast.

plans:
- BASIC
- PRO_PERSONAL
- PRO_TEAM

plan_meanings:

BASIC:
- free
- local-first
- single-user
- no governed team workflow

PRO_PERSONAL:
- paid
- individual productivity tier
- stronger continuity and storage
- sync-capable personal usage

PRO_TEAM:
- paid
- collaborative team tier
- governed workflow
- ERP-connected enterprise usage boundary

model_rule:
Plan model must remain independent
from business document state model.




# ============================================================
# QUICK FORECAST PLAN CAPABILITY MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines capability mapping by plan.

capability_groups:

core_draft_capability:
- forecast draft
- scenario comparison
- action drafting
- proposal drafting
- profit preview

continuity_capability:
- sync
- extended save capacity
- extended history retention

collaboration_capability:
- share
- review
- approval

enterprise_capability:
- ERP reference
- ERP handoff
- governed trace and notification

plan_mapping:

BASIC:
- core_draft_capability

PRO_PERSONAL:
- core_draft_capability
- continuity_capability

PRO_TEAM:
- core_draft_capability
- continuity_capability
- collaboration_capability
- enterprise_capability




# ============================================================
# SCENARIO SWITCHED PROPOSAL MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines proposal generation by selected scenario.

fields:
- scenario_switch_mode
- scenario_id
- proposal_variant_id
- proposal_variant_type
- proposal_variant_label
- variant_summary
- selected_flag
- generated_at
- updated_at

variant_examples:
- conservative
- standard
- aggressive

rule:
Proposal content and profit image must be switchable
by scenario without breaking source traceability.




# ============================================================
# PROPOSAL BASIS PANEL MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the evidence / basis panel attached to a proposal draft.

fields:
- proposal_basis_panel_id
- forecast_id
- scenario_id
- action_id
- selected_assumptions
- selected_basis_notes
- selected_market_events
- expected_effect_summary
- profit_basis_summary
- confidence_code
- updated_at

rule:
The basis panel must explain
why the proposal draft exists in its current form.




# ============================================================
# INTERNAL EXPLANATION DRAFT MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines internal explanation drafts for approval and review contexts.

draft_types:
- internal_summary
- approval_pre_read
- manager_explanation
- meeting_talking_points

fields:
- internal_explanation_draft_id
- forecast_id
- scenario_id
- action_id
- proposal_variant_id
- draft_type
- title
- short_summary
- explanation_body
- updated_at




# ============================================================
# EXPLAINABLE PROFIT PREVIEW MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines explainable profit preview.

fields:
- explainable_profit_preview_id
- profit_preview_id
- sales_driver_summary
- cost_driver_summary
- margin_driver_summary
- major_assumption_summary
- uncertainty_summary
- risk_summary
- updated_at

rule:
Profit preview must expose reasoning,
not only output values.




# ============================================================
# INTERNAL RESPONSE TRACKING MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines internal response tracking before formal enterprise handoff.

tracking_states:
- draft_only
- shared
- review_requested
- under_review
- returned
- approval_requested
- approved
- handoff_ready
- handed_off

fields:
- internal_response_tracking_id
- forecast_id
- proposal_variant_id
- current_tracking_state
- last_actor
- last_action_summary
- last_action_at
- updated_at




# ============================================================
# MARKET EVENT INPUT MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines market and business event inputs used in forecast basis.

event_types:
- seasonality
- local_event
- campaign
- competitor_move
- market_change
- manual_context

fields:
- market_event_input_id
- forecast_id
- event_type
- event_title
- event_summary
- expected_impact_summary
- impact_direction_code
- impact_strength_code
- updated_at




# ============================================================
# PROPOSAL TEMPLATE SELECTION MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines proposal template selection.

template_types:
- new_business
- existing_account_growth
- internal_approval
- campaign_proposal
- inventory_adjustment
- custom

fields:
- proposal_template_selection_id
- forecast_id
- template_type
- template_label
- selected_flag
- updated_at




# ============================================================
# CONTENT RECOMMENDATION MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines recommended content blocks for proposal drafting.

recommendation_types:
- key_message
- supporting_point
- risk_note
- expected_effect_phrase
- internal_summary_hint

fields:
- content_recommendation_id
- forecast_id
- scenario_id
- template_type
- recommendation_type
- recommendation_text
- recommendation_reason
- updated_at




# ============================================================
# CURRENCY PREFERENCE MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines multicurrency preference handling.

fields:
- currency_preference_id
- user_id
- preferred_display_currency_code
- preferred_base_currency_code
- currency_fallback_code
- rounding_policy_code
- updated_at

rule:
Currency preference affects display and comparison basis,
but does not rewrite canonical source money values.




# ============================================================
# MONEY VALUE MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines canonical money value structure.

fields:
- money_value_id
- amount_value
- currency_code
- scale_code
- amount_kind
- updated_at

amount_kind_examples:
- source_amount
- base_amount
- display_amount

rule:
Money must be handled as amount plus currency code,
never as naked numeric value only.




# ============================================================
# EXCHANGE RATE SNAPSHOT MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines exchange rate snapshot structure.

fields:
- exchange_rate_snapshot_id
- source_currency_code
- target_currency_code
- exchange_rate_value
- rate_source
- rate_timestamp
- conversion_method_code
- updated_at

rule:
Converted money must remain traceable
to the rate and timestamp used.




# ============================================================
# MULTICURRENCY PROFIT PREVIEW MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines profit preview under multicurrency conditions.

fields:
- multicurrency_profit_preview_id
- sales_source_amount
- cost_source_amount
- gross_profit_source_amount
- sales_base_amount
- cost_base_amount
- gross_profit_base_amount
- display_currency_code
- exchange_rate_snapshot_id
- updated_at

rule:
Profit comparison must be base-currency-centered,
while display may remain display-currency-centered.




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
- 030310_QUICK_FORECAST_PLAN_MODEL.md
- 030320_QUICK_FORECAST_PLAN_CAPABILITY_MODEL.md
- 030330_SCENARIO_SWITCHED_PROPOSAL_MODEL.md
- 030340_PROPOSAL_BASIS_PANEL_MODEL.md
- 030350_INTERNAL_EXPLANATION_DRAFT_MODEL.md
- 030360_EXPLAINABLE_PROFIT_PREVIEW_MODEL.md
- 030370_INTERNAL_RESPONSE_TRACKING_MODEL.md
- 030380_MARKET_EVENT_INPUT_MODEL.md
- 030390_PROPOSAL_TEMPLATE_SELECTION_MODEL.md
- 030400_CONTENT_RECOMMENDATION_MODEL.md
- 030410_LOCALE_PREFERENCE_MODEL.md
- 030420_TRANSLATION_VARIANT_MODEL.md
- 030430_TERMINOLOGY_GLOSSARY_MODEL.md
- 030440_FORMATTING_RULE_MODEL.md
- 030450_CURRENCY_PREFERENCE_MODEL.md
- 030460_MONEY_VALUE_MODEL.md
- 030470_EXCHANGE_RATE_SNAPSHOT_MODEL.md
- 030480_MULTICURRENCY_PROFIT_PREVIEW_MODEL.md




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
# SCENARIO SWITCHED PROPOSAL FLOW
# ============================================================

status: canonical
layer: flow
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines how proposal drafts switch by scenario.

flow:
1. user selects or edits scenario
2. proposal variant is generated or refreshed
3. basis panel is refreshed
4. profit explanation is refreshed
5. user compares variants
6. user selects final working variant




# ============================================================
# INTERNAL EXPLANATION AND TRACKING FLOW
# ============================================================

status: canonical
layer: flow
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines internal explanation draft and tracking flow.

flow:
1. proposal draft exists
2. internal explanation draft is generated
3. user edits internal summary
4. draft is shared or review-requested
5. internal response state is updated
6. handoff readiness is determined




# ============================================================
# MARKET EVENT AND TEMPLATE FLOW
# ============================================================

status: canonical
layer: flow
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines flow for market events, template selection, and content recommendation.

flow:
1. user adds market event inputs
2. user selects template type
3. recommendation blocks are suggested
4. proposal draft is regenerated or refined
5. basis panel is updated




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
- 050180_SCENARIO_SWITCHED_PROPOSAL_FLOW.md
- 050190_INTERNAL_EXPLANATION_AND_TRACKING_FLOW.md
- 050200_MARKET_EVENT_AND_TEMPLATE_FLOW.md




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
# QUICK FORECAST PRICING POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines pricing policy for QuickForecast.

pricing_principle:
QuickForecast should not charge primarily for forecasting itself.
It should charge for business operation value
such as synchronization, sharing, review, approval,
history visibility, and ERP-connected handoff.

core_pricing_boundary:
free_scope:
single-user, local-first, draft-centered usage

paid_scope:
shared, governed, synchronized, enterprise-connected usage

policy_statement:
QuickForecast Basic must remain meaningfully useful by itself.
QuickForecast Pro must represent operational business value,
not merely feature hiding.

important_boundary:
QuickForecast does not replace ERP.
Pricing must preserve ERP coexistence and non-replacement framing.




# ============================================================
# QUICK FORECAST TIER POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines tier structure for QuickForecast.

tier_structure:
- QuickForecast Basic
- QuickForecast Pro Personal
- QuickForecast Pro Team

tier_meaning:

QuickForecast Basic:
- free tier
- local-first usage
- single-user centered
- forecast to proposal to profit experience available
- no governed team operation

QuickForecast Pro Personal:
- monthly subscription app tier
- personal productivity expansion
- sync and storage expansion
- advanced output support
- stronger personal continuity

QuickForecast Pro Team:
- monthly subscription app tier
- team operation expansion
- sharing, approval, notification, and ERP-connected handoff
- governed business usage

tier_boundary_rule:
The tier boundary must separate
draft experience
from
governed operational experience.




# ============================================================
# QUICK FORECAST FREE SCOPE POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines what must remain available in the free tier.

free_scope_includes:
- forecast draft creation
- scenario comparison
- action idea drafting
- proposal draft creation
- profit preview creation
- manual assumption input
- local save
- single-user local editing

reason:
If the free tier does not preserve
Forecast -> Action -> Proposal -> Profit experience,
the value of QuickForecast becomes too weak to understand.

free_scope_goal:
The free tier must be strong enough
for a user to experience the application's core business value.




# ============================================================
# QUICK FORECAST PAID SCOPE POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines what belongs in paid scope.

paid_scope_candidates:
- cloud sync
- expanded storage and history
- advanced export or output options
- team sharing
- review routing
- approval request
- approval result handling
- notification
- ERP reference
- ERP handoff
- governed activity trace

strong_paid_value:
The strongest paid value is not prediction itself.
It is turning drafts into operational business workflow.

rule:
Paid scope should emphasize:
- continuity
- collaboration
- governance
- enterprise connection




# ============================================================
# QUICK FORECAST ERP PRICING BOUNDARY POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines pricing boundary between QuickForecast and ERP.

quickforecast_value_side:
- mobile immediacy
- field-ready drafting
- fast proposal generation
- lightweight profit-image preview
- handoff preparation

erp_value_side:
- formal enterprise operation
- denser master and transaction depth
- company-wide official management
- formal control and enterprise record

boundary_rule:
QuickForecast may charge for ERP-connected convenience
and governed handoff capability,
but must not redefine itself as the ERP primary system.




# ============================================================
# FEATURE EXPANSION POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines rules for competitor-aware feature expansion.

allowed_expansion_direction:
- strengthen forecast to proposal linkage
- strengthen scenario-driven proposal differentiation
- strengthen explanation and review support
- strengthen pre-ERP business operation

disallowed_expansion_direction:
- becoming a full CRM replacement
- becoming a pure proposal delivery platform
- becoming a pure forecasting engine arms race

rule:
Every added feature must strengthen
the canonical Forecast -> Action -> Proposal -> Profit chain.




# ============================================================
# MULTICURRENCY POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines multicurrency policy for QuickForecast.

policy_principles:
- canonical money meaning must remain stable
- source currency, base currency, and display currency must be separated
- exchange-rate context must be retained
- profit comparison must use base currency
- display formatting must not replace canonical money meaning

important_rule:
Multicurrency support must not break
proposal meaning, profit meaning,
or ERP-facing monetary integrity.




# ============================================================
# EXCHANGE RATE POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines exchange rate handling policy.

rules:
- no silent conversion without rate context
- rate source must be attributable
- rate timestamp must be preserved
- rounding policy must be explicit
- approximate display must be distinguishable when required




# ============================================================
# CURRENCY FALLBACK POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines fallback behavior for unsupported or unavailable currency display.

fallback_order:
1. preferred display currency
2. base currency
3. source currency
4. canonical fallback currency

rule:
Currency display fallback must never destroy
the original money meaning.




# ============================================================
# POSITIONING POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines product positioning policy.

policy_principles:
- QuickForecast must remain easy to open and easy to use
- speed and clarity are first-class values
- product scope must not drift into heavy ERP governance by accident
- additional features must preserve fast judgment support identity

important_rule:
Feature expansion is allowed only when
it strengthens fast forecast-centered judgment,
not when it turns the application into a heavy governance shell.




# ============================================================
# FREE PAID ERP BOUNDARY POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines boundary among free scope, paid scope, and ERP-linked scope.

free_scope_intent:
- lightweight standalone forecasting support
- simple scenario thinking
- simple local proposal draft support
- simple local profit visibility

paid_scope_intent:
- richer proposal support
- richer profit support
- richer multilingual and multicurrency support
- more advanced comparison and review support
- stronger device-adaptive professional usage

erp_linked_scope_intent:
- enterprise-connected reference use
- enterprise-facing handoff preparation
- governed enterprise continuation outside app primary scope

important_rule:
Paid expansion must deepen the app's own value first.
ERP linkage must not become the only reason the application is useful.




# ============================================================
# PRICING VALUE JUSTIFICATION POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines what pricing must be justified by.

pricing_value_sources:
- faster opportunity review
- faster decision support
- better proposal starting point
- better profit visibility
- better multilingual and multicurrency usability
- better tablet and review-heavy usability
- less friction in meeting-time and field-time use

must_not_be_primary_justification:
- mere lock-in to ERP
- accidental complexity
- features that only mimic heavier enterprise systems

rule:
Pricing must be explainable through direct user-facing speed,
clarity, and draft acceleration value.




# ============================================================
# CROSS APPLICATION OVERLAP POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines policy for preventing role overlap with nearby applications.

policy_principles:
- QuickForecast must remain forecast-centered
- overlap must be limited to supportive adjacency
- feature additions must not erase neighboring app identity
- when a nearby app already owns a canonical role, QuickForecast stays supportive

must_not_drift_into:
- enterprise-authoritative estimate ownership
- enterprise project-control ownership
- secretary-style personal assistance identity
- full enterprise governance identity

allowed_supportive_overlap:
- proposal-starting assistance
- lightweight financial visibility
- lightweight business explanation support
- cross-app handoff preparation




# ============================================================
# APP BOUNDARY DECISION POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines how to decide whether a feature belongs inside QuickForecast.

belongs_inside_when:
- it strengthens fast judgment
- it strengthens quick forecast creation
- it strengthens proposal starting support
- it strengthens quick profit understanding
- it improves multilingual or multicurrency review for those flows
- it improves phone / tablet review speed for those flows

belongs_outside_when:
- it becomes canonical enterprise workflow control
- it becomes estimate-authoritative processing
- it becomes execution/project-control management
- it becomes life-secretary centered support
- it becomes cross-enterprise governance as primary identity

decision_rule:
When in doubt,
prefer keeping QuickForecast lightweight and adjacent,
not centralizing all business meanings inside it.




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
- 080170_QUICK_FORECAST_PRICING_POLICY.md
- 080180_QUICK_FORECAST_TIER_POLICY.md
- 080190_QUICK_FORECAST_FREE_SCOPE_POLICY.md
- 080200_QUICK_FORECAST_PAID_SCOPE_POLICY.md
- 080210_QUICK_FORECAST_ERP_PRICING_BOUNDARY_POLICY.md
- 080220_FEATURE_EXPANSION_POLICY.md
- 080230_MULTILINGUAL_POLICY.md
- 080240_GENERATED_DRAFT_MULTILINGUAL_POLICY.md
- 080250_LANGUAGE_FALLBACK_POLICY.md
- 080260_MULTICURRENCY_POLICY.md
- 080270_EXCHANGE_RATE_POLICY.md
- 080280_CURRENCY_FALLBACK_POLICY.md
- 080290_POSITIONING_POLICY.md
- 080300_FREE_PAID_ERP_BOUNDARY_POLICY.md
- 080310_PRICING_VALUE_JUSTIFICATION_POLICY.md
- 080320_CROSS_APPLICATION_OVERLAP_POLICY.md
- 080330_APP_BOUNDARY_DECISION_POLICY.md




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
# SCENARIO SWITCHED PROPOSAL INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines interface requirements for scenario-switched proposal drafting.

ui_sections:
- scenario selector
- proposal variant tabs
- basis panel
- profit explanation panel
- final working variant selection

ui_rule:
The user must be able to compare
meaningfully different proposal variants
without losing editability.




# ============================================================
# INTERNAL EXPLANATION INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines interface for internal explanation drafts.

ui_sections:
- internal summary
- approval pre-read
- manager explanation
- talking points
- tracking state panel




# ============================================================
# MARKET EVENT TEMPLATE INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines interface for market event input,
template switching, and content recommendation.

ui_sections:
- market event input list
- template selector
- recommended content blocks
- apply-to-draft actions




# ============================================================
# EXPANDED SCREEN INVENTORY INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the expanded screen inventory after feature expansion review.

# ============================================================
# 1. CORE SCREENS
# ============================================================

core_screens:
- Dashboard
- Forecast List
- Forecast Editor
- Action Idea Board
- Proposal Draft Builder
- Profit Preview
- Forecast Detail
- History
- Settings

# ============================================================
# 2. PRO / GOVERNED SCREENS
# ============================================================

pro_governed_screens:
- Share Target
- Pro Approval Submission

# ============================================================
# 3. NEWLY EXPANDED SCREENS OR SUB-SURFACES
# ============================================================

expanded_surfaces:
- Scenario Switched Proposal Surface
- Proposal Basis Panel Surface
- Internal Explanation Draft Surface
- Explainable Profit Surface
- Internal Response Tracking Surface
- Market Event Input Surface
- Proposal Template Selection Surface
- Content Recommendation Surface

# ============================================================
# 4. SCREENIZATION RULE
# ============================================================

screenization_rule:
Not every expanded surface must become a fully independent screen.

default_rule:
- if the function is tightly coupled to proposal editing,
  embed it inside Proposal Draft Builder
- if the function is tightly coupled to profit review,
  embed it inside Profit Preview
- if the function is tightly coupled to handoff readiness,
  embed it inside Forecast Detail or Pro Approval Submission
- only create a fully separate screen when the surface becomes
  too dense for embedded operation

# ============================================================
# 5. CURRENT RECOMMENDED PLACEMENT
# ============================================================

recommended_placement:

Proposal Draft Builder:
- scenario switched proposal
- proposal template selection
- content recommendation
- proposal basis panel
- internal explanation draft

Profit Preview:
- explainable profit surface

Forecast Detail:
- internal response tracking summary
- proposal basis summary
- market event summary

Forecast Editor:
- market event input entry point

Pro Approval Submission:
- internal response tracking governed handoff state




# ============================================================
# SCREEN RESPONSIBILITY REALIGNMENT INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Realigns screen responsibility after feature expansion.

responsibility_realignments:

Forecast Editor:
- forecast assumptions
- market event capture entry
- forecast basis preparation

Action Idea Board:
- action candidate comparison
- selected action fixation

Proposal Draft Builder:
- proposal generation
- scenario-based proposal switching
- template switching
- recommended content insertion
- internal explanation draft generation
- proposal basis visibility

Profit Preview:
- profit values
- explainable profit reasons
- uncertainty and risk explanation

Forecast Detail:
- cross-object summary
- readiness summary
- internal response tracking summary

Pro Approval Submission:
- governed submission decision
- approval request
- handoff gating




# ============================================================
# MULTICURRENCY DISPLAY INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines multicurrency display requirements.

ui_targets:
- forecast amounts
- proposal amounts
- profit preview amounts
- internal explanation amounts
- currency basis labels
- rate snapshot reference

ui_rule:
The user must be able to distinguish:
- source currency
- base currency
- display currency




# ============================================================
# PROPOSAL CURRENCY BASIS INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines how proposal drafts expose monetary basis.

ui_sections:
- source money basis
- base currency comparison basis
- display currency rendering
- exchange rate snapshot reference
- approximation / rounding notice

rule:
Proposal text must make monetary basis understandable,
not merely formatted.




# ============================================================
# MULTI DEVICE SUPPORT INTERFACE
# iPhone / Android / Tablet
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines multi-device interface support for QuickForecast.

supported_devices:
- iPhone
- Android smartphone
- iPad-class tablet
- Android tablet

interface_principles:
- smartphone-first baseline
- adaptive expansion for larger screens
- no business meaning change across device sizes
- touch-first interaction on all supported devices

smartphone_rules:
- single-column baseline
- stacked sections
- compact summary first
- primary action reachability
- sequential detail navigation

tablet_rules:
- multi-pane allowed
- side-by-side comparison allowed
- proposal and basis panel may be visible together
- profit summary and breakdown may be visible together
- detail pane may remain visible while another panel is edited

screen_specific_guidance:
- dashboard supports wider quick-summary layout on tablet
- forecast list may use list-detail layout on tablet
- forecast editor may use side-by-side form and basis panel on tablet
- action board may use denser comparison layout on tablet
- proposal builder may use draft + basis + preview on tablet
- profit preview may use summary + breakdown + basis on tablet
- settings may use grouped list + detail pane on tablet




# ============================================================
# ADAPTIVE LAYOUT POLICY INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines adaptive layout policy by available width.

layout_classes:
- compact
- medium
- expanded

compact_intent:
- iPhone and Android smartphone baseline
- single-column and reduced density layout

medium_intent:
- large phone and transitional tablet width
- selectively expanded panels
- partial side-by-side comparison where safe

expanded_intent:
- tablet-optimized layout
- multi-pane and comparison-heavy rendering

important_rule:
Adaptive layout changes visibility and density only.
It must not introduce a different canonical workflow.




# ============================================================
# SCREEN RESPONSIBILITY HARDENING INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Hardens screen-level responsibility boundaries.

screen_responsibilities:

dashboard:
- entry summary only
- recent items and quick actions
- no deep editing responsibility

forecast_list:
- browsing and selecting forecasts
- lightweight filtering and ordering
- no editing responsibility
- detail transition responsibility allowed

forecast_detail:
- read-centered detail view
- summary, basis visibility, and navigation hub
- edit transition responsibility allowed
- direct heavy editing responsibility not primary

forecast_editor:
- forecast input and revision
- field validation visibility
- no profit explanation responsibility
- no proposal basis comparison responsibility

action_board:
- action candidate browsing and comparison
- no final proposal editing responsibility

proposal_builder:
- proposal draft editing is primary
- proposal basis visibility is secondary
- tablet may co-display basis and preview
- canonical role remains editor-centered

profit_preview:
- financial preview and breakdown
- monetary basis visibility
- no canonical editing ownership
- explanation support may be shown, but editing remains outside

settings:
- locale / currency / display preference adjustment
- no business data editing responsibility

important_rule:
No screen may silently absorb another screen's canonical role
only because larger device space is available.




# ============================================================
# MULTILINGUAL MULTICURRENCY DISPLAY PRIORITY INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines display priority under multilingual and multicurrency conditions.

compact_priority:
1. primary business content
2. key status or summary
3. display currency rendering
4. language-variant switch access
5. source / base / display comparison access behind explicit reveal

expanded_priority:
1. primary business content
2. source and translated visibility together when useful
3. source / base / display currency visibility together when useful
4. basis and preview side-by-side when useful

rules:
- compact layouts favor sequential access
- expanded layouts may favor comparative access
- business meaning must remain identical across both
- hidden comparative sections must still remain reachable




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
- 090380_SCENARIO_SWITCHED_PROPOSAL_INTERFACE.md
- 090390_INTERNAL_EXPLANATION_INTERFACE.md
- 090400_MARKET_EVENT_TEMPLATE_INTERFACE.md
- 090410_EXPANDED_SCREEN_INVENTORY_INTERFACE.md
- 090420_SCREEN_RESPONSIBILITY_REALIGNMENT_INTERFACE.md
- 090430_MULTILINGUAL_INTERFACE_POLICY.md
- 090440_MULTILINGUAL_DRAFT_INTERFACE.md
- 090450_MULTICURRENCY_DISPLAY_INTERFACE.md
- 090460_PROPOSAL_CURRENCY_BASIS_INTERFACE.md
- 090470_MULTI_DEVICE_SUPPORT_INTERFACE.md
- 090480_ADAPTIVE_LAYOUT_POLICY_INTERFACE.md
- 090490_SCREEN_RESPONSIBILITY_HARDENING_INTERFACE.md
- 090500_MULTILINGUAL_MULTICURRENCY_DISPLAY_PRIORITY_INTERFACE.md




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
# EXPANDED VIEWMODEL RESPONSIBILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines ViewModel responsibility after feature expansion.

viewmodel_responsibility:

ForecastEditorViewModel:
- forecast draft editing
- assumption editing
- market event input entry
- forecast basis preparation state

ActionBoardViewModel:
- action candidate comparison
- selected action fixation
- action reasoning summary

ProposalBuilderViewModel:
- proposal draft generation
- scenario switched proposal handling
- proposal template selection
- content recommendation application
- proposal basis panel state
- internal explanation draft state

ProfitPreviewViewModel:
- profit preview rendering
- explainable profit reasons
- uncertainty and risk explanation state

ForecastDetailViewModel:
- cross-object summary
- proposal basis summary
- internal response tracking summary
- readiness summary

ProApprovalSubmissionViewModel:
- governed submission
- approval request state
- handoff readiness state
- final governed transition state




# ============================================================
# EXPANDED REDUCER RESPONSIBILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines reducer responsibility after feature expansion.

reducer_rules:
- reducers own UI state transition
- reducers must not own persistence
- reducers must not own ERP handoff execution
- reducers may own selection, mode, and comparison state

expanded_reducer_scope:

ForecastEditorReducer:
- forecast edit state
- assumption edit state
- market event input state

ActionBoardReducer:
- action selection state
- action comparison state

ProposalBuilderReducer:
- scenario switch state
- proposal variant selection state
- template selection state
- content recommendation apply state
- internal explanation draft edit state
- basis panel visibility state

ProfitPreviewReducer:
- explainability panel state
- uncertainty panel state
- risk explanation visibility state

ForecastDetailReducer:
- detail section expansion state
- tracking summary display state
- readiness section state

ProApprovalSubmissionReducer:
- submission validation state
- approval request state
- governed transition confirmation state




# ============================================================
# EXPANDED REPOSITORY RESPONSIBILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines repository responsibility after feature expansion.

repository_rules:
- repositories mediate data access and composed business retrieval
- repositories do not own UI display logic
- repositories do not replace reducers
- governed operations remain explicitly separated from local draft operations

expanded_repositories:

ForecastRepository:
- forecast draft load/save
- market event input persistence
- assumption persistence

ActionRepository:
- action candidate retrieval
- selected action persistence

ProposalRepository:
- proposal variant generation request
- proposal basis panel data retrieval
- proposal template selection persistence
- content recommendation retrieval
- internal explanation draft persistence

ProfitRepository:
- profit preview retrieval
- explainable profit basis retrieval

TrackingRepository:
- internal response tracking retrieval
- tracking state update
- readiness summary retrieval

GovernedOperationRepository:
- approval request execution
- share execution
- ERP handoff preparation
- governed submission execution




# ============================================================
# EXPANDED FEATURE BOUNDARY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines boundaries for expanded features.

boundary_rules:
- scenario switched proposal is proposal-domain behavior
- proposal basis panel is explanation-domain behavior
- explainable profit is profit-domain behavior
- internal response tracking is governance-preparation behavior
- market event input is forecast-basis behavior
- template selection and content recommendation are proposal-support behavior

important_rule:
Expansion must not collapse
forecast domain,
proposal domain,
profit domain,
and governed operation domain
into one oversized class or state object.




# ============================================================
# MULTICURRENCY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines multicurrency implementation boundaries.

implementation_rules:
- money values are persisted canonically
- display formatting is presentation-layer behavior
- exchange-rate snapshot retrieval is separated from UI logic
- base-currency conversion is explicit
- repositories return canonical and converted values separately




# ============================================================
# MULTICURRENCY VIEWMODEL RESPONSIBILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines multicurrency responsibility by ViewModel.

responsibility:

SettingsViewModel:
- display currency preference
- base currency preference
- fallback currency preference

ProposalBuilderViewModel:
- proposal monetary basis display state
- source / base / display currency section control

ProfitPreviewViewModel:
- multicurrency profit rendering state
- base-currency comparison state
- exchange-rate snapshot visibility state

ForecastDetailViewModel:
- multicurrency detail rendering
- canonical money summary visibility




# ============================================================
# ANDROID MINIMUM I18N AND MULTICURRENCY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines implementation boundary for minimum multilingual and multicurrency support.

minimum_multilingual_scope:
- key-based UI text
- default language rendering
- fallback language rendering
- locale preference retrieval

minimum_multicurrency_scope:
- canonical money value handling
- display currency rendering
- base currency preference retention
- no advanced rate conversion yet unless explicitly available

important_rule:
Phase 1 may support multicurrency-safe structure
without full exchange-rate density.
Structure first, density later.




# ============================================================
# ANDROID PHASE 1 GENERATION BOUNDARY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines generation boundary for actual Phase 1 Android file creation.

must_generate_now:
- local-first core chain files
- locale preference files
- currency preference files
- formatter files
- key-based text resolution files
- settings flow files

must_not_generate_now:
- governed operation files
- ERP handoff files
- advanced translation variant persistence
- advanced exchange-rate density
- dedicated comparison boards
- advanced recommendation modules

reason:
Phase 1 should establish a safe skeleton
without overloading implementation density.




# ============================================================
# MULTI DEVICE IMPLEMENTATION
# iPhone / Android / Tablet
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines implementation direction for multi-device support.

implementation_principles:
- shared canonical business flow across all devices
- shared state and repository structure
- adaptive presentation by width / size class
- no device-specific business rule divergence
- touch-first implementation across phone and tablet

implementation_rules:
- smartphone is the baseline implementation target
- tablet support expands layout density and visibility
- proposal, profit, and detail screens must support wider review patterns
- source / translated / multicurrency comparison may be shown together on larger screens
- no hover-dependent essential interaction




# ============================================================
# ADAPTIVE SCREEN COMPOSITION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines screen-composition adaptation rules.

composition_rules:
- compact width uses single-pane composition
- medium width may promote secondary panel visibility
- expanded width may keep summary and detail visible together
- expanded width may keep proposal editor and basis panel visible together
- expanded width may keep profit summary and breakdown visible together

screen_examples:
- ForecastListScreen supports list-detail composition on tablet
- ProposalBuilderScreen supports editor-basis-preview composition on tablet
- ProfitPreviewScreen supports summary-breakdown composition on tablet
- ForecastDetailScreen supports sticky summary plus detail region on tablet




# ============================================================
# ANDROID TEMPLATE GENERATION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines template generation direction for Android Phase 1 files.

template_principles:
- generated files must be minimal but compilable-oriented
- domain models stay small and explicit
- ui text resolution must be key-based from the start
- money handling must be amount + currency code based
- settings foundation must exist before final screen locking
- templates must prefer additive expansion over later rewrite

template_groups:
- domain templates
- entity templates
- dao templates
- repository templates
- formatter templates
- navigation templates
- settings templates
- screen / reducer / viewmodel templates

important_rule:
Do not defer multilingual and multicurrency structure
to late-stage patching inside screen files.




# ============================================================
# ANDROID DOMAIN TEMPLATE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the minimum domain-template shape.

domain_template_direction:
- Kotlin data class centered
- explicit ids
- explicit core fields
- nullable fields only when meaningfully optional
- no UI-specific rendering logic inside domain model

minimum_domain_templates:
- ForecastDraft
- ActionIdea
- ProposalDraft
- ProfitPreview
- LocalePreference
- CurrencyPreference
- MoneyValue




# ============================================================
# ANDROID SETTINGS AND FORMATTER TEMPLATE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines templates for settings and formatting support.

settings_template_direction:
- settings repository owns persisted preference retrieval
- settings viewmodel owns screen state only
- locale preference and currency preference are separated but related

formatter_template_direction:
- UiTextResolver resolves key-based display text
- NumberFormatter formats plain numeric display
- CurrencyFormatter formats display-money safely
- DateTimeFormatter formats display-time safely

important_rule:
Formatter behavior is presentation support.
Canonical values stay outside formatter ownership.




# ============================================================
# IMPLEMENTATION BOUNDARY HARDENING
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Hardens implementation boundaries across layers and classes.

forbidden_boundary_violations:
- repository must not generate final UI wording
- formatter must not decide business meaning
- viewmodel must not rewrite canonical money meaning
- screen composables must not own canonical fallback rules
- adaptive layout code must not fork business flow
- locale and currency display helpers must not mutate canonical source data

required_boundaries:
- repository returns canonical data and requested variants separately
- formatter handles presentation formatting only
- resolver handles text-key resolution only
- viewmodel coordinates state and transitions only
- screen layer renders and emits intent only

important_rule:
Tablet expansion is presentation expansion,
not business-flow divergence.




# ============================================================
# ADAPTIVE PRESENTATION WITHOUT FLOW DIVERGENCE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Fixes the rule that adaptive presentation must not create device-specific flow divergence.

principles:
- one canonical business flow
- one canonical data meaning
- adaptive composition only changes visibility density
- smartphone and tablet share the same action order semantics

allowed_differences:
- pane count
- simultaneous visibility
- comparison density
- summary stickiness
- navigation compression on larger screens

forbidden_differences:
- different approval meaning
- different proposal meaning
- different money meaning
- different fallback meaning
- different save or submission semantics by device class




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
- 120670_EXPANDED_VIEWMODEL_RESPONSIBILITY_IMPLEMENTATION.md
- 120680_EXPANDED_REDUCER_RESPONSIBILITY_IMPLEMENTATION.md
- 120690_EXPANDED_REPOSITORY_RESPONSIBILITY_IMPLEMENTATION.md
- 120700_EXPANDED_FEATURE_BOUNDARY_IMPLEMENTATION.md
- 120710_MULTILINGUAL_IMPLEMENTATION.md
- 120720_MULTILINGUAL_VIEWMODEL_RESPONSIBILITY_IMPLEMENTATION.md
- 120730_MULTICURRENCY_IMPLEMENTATION.md
- 120740_MULTICURRENCY_VIEWMODEL_RESPONSIBILITY_IMPLEMENTATION.md
- 120750_ANDROID_MINIMUM_I18N_I18NCURRENCY_IMPLEMENTATION.md
- 120760_ANDROID_PHASE1_GENERATION_BOUNDARY_IMPLEMENTATION.md
- 120770_MULTI_DEVICE_IMPLEMENTATION.md
- 120780_ADAPTIVE_SCREEN_COMPOSITION_IMPLEMENTATION.md
- 120790_ANDROID_TEMPLATE_GENERATION_IMPLEMENTATION.md
- 120800_ANDROID_DOMAIN_TEMPLATE_IMPLEMENTATION.md
- 120810_ANDROID_SETTINGS_AND_FORMATTER_TEMPLATE_IMPLEMENTATION.md
- 120820_IMPLEMENTATION_BOUNDARY_HARDENING.md
- 120830_ADAPTIVE_PRESENTATION_WITHOUT_FLOW_DIVERGENCE_IMPLEMENTATION.md




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
# ANDROID EXPANDED IMPLEMENTATION PRIORITY PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Android implementation priority after feature expansion.

priority_principle:
Do not start from the widest feature set.
Start from the strongest business value chain
with the smallest stable implementation surface.

canonical_chain:
Forecast
-> Action
-> Proposal
-> Profit

implementation_rule:
Expanded features must be layered onto the canonical chain,
not implemented as detached side systems.

# ============================================================
# 1. PHASE 1
# ============================================================

phase_1_goal:
Deliver the local-first core chain.

phase_1_scope:
- Forecast Editor core
- Action Idea Board core
- Proposal Draft Builder core
- Profit Preview core
- local DB / DAO / repository base
- core ViewModels / reducers
- forecast detail core summary

phase_1_excludes:
- governed Pro workflow
- ERP handoff
- team sharing
- approval routing
- advanced recommendation
- full tracking board




# ============================================================
# ANDROID EXPANDED PHASE 2 PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the first expansion layer after phase 1 core chain.

phase_2_goal:
Strengthen proposal-centered decision support
without entering full governed operation.

phase_2_scope:
- scenario switched proposal
- proposal basis panel
- explainable profit surface
- market event input
- template selection
- internal explanation draft

phase_2_reason:
These features deepen QuickForecast's differentiation
while staying close to the local-first core chain.




# ============================================================
# ANDROID EXPANDED PHASE 3 PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the governed operation layer after proposal-centered expansion.

phase_3_goal:
Enable governed business operation.

phase_3_scope:
- internal response tracking
- share target flow
- Pro approval submission flow
- governed state transitions
- notification linkage
- sync-linked continuity
- ERP handoff readiness flow

phase_3_rule:
Governed workflow must be introduced only
after the local chain and proposal-centered support are stable.




# ============================================================
# ANDROID EXPANDED PHASE 4 PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines later-stage enhancement scope.

phase_4_scope:
- content recommendation refinement
- dedicated response tracking board
- dedicated proposal variant comparison surface
- advanced template families
- deeper sync and collaboration refinement
- ERP-connected optimization refinement

rule:
Phase 4 is optimization and density expansion,
not the starting point.




# ============================================================
# ANDROID EXPANDED IMPLEMENTATION SEQUENCE PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines concrete implementation sequence after feature expansion.

sequence:

1.
local entity and DAO reinforcement

2.
ForecastEditor core completion

3.
ActionBoard core completion

4.
ProposalBuilder core completion

5.
ProfitPreview core completion

6.
ForecastDetail core completion

7.
scenario switched proposal

8.
proposal basis panel

9.
explainable profit surface

10.
market event input

11.
template selection

12.
internal explanation draft

13.
tracking summary

14.
share / approval / governed transition

15.
sync / notification / ERP handoff linkage




# ============================================================
# ANDROID IMPLEMENTATION READING ORDER PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the recommended reading order before Android implementation starts.

reading_order:

1.
000_QUICK_FORECAST_OVERVIEW.md

2.
00_QUICK_FORECAST_INTEGRATED_REBUILT.md

3.
020110_FORECAST_ACTION_PROPOSAL_PROFIT_ARCHITECTURE.md

4.
020130_FORECAST_TO_PROPOSAL_DIFFERENTIATION_ARCHITECTURE.md

5.
030310_QUICK_FORECAST_PLAN_MODEL.md

6.
030320_QUICK_FORECAST_PLAN_CAPABILITY_MODEL.md

7.
090410_EXPANDED_SCREEN_INVENTORY_INTERFACE.md

8.
090420_SCREEN_RESPONSIBILITY_REALIGNMENT_INTERFACE.md

9.
120670_EXPANDED_VIEWMODEL_RESPONSIBILITY_IMPLEMENTATION.md

10.
120680_EXPANDED_REDUCER_RESPONSIBILITY_IMPLEMENTATION.md

11.
120690_EXPANDED_REPOSITORY_RESPONSIBILITY_IMPLEMENTATION.md

12.
130280_ANDROID_EXPANDED_IMPLEMENTATION_PRIORITY_PLAN.md

13.
130320_ANDROID_EXPANDED_IMPLEMENTATION_SEQUENCE_PLAN.md

reading_rule:
Read from meaning and boundary first,
then screen responsibility,
then state and repository responsibility,
then implementation order.




# ============================================================
# ANDROID PHASE GATE PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines phase gate conditions for Android implementation.

phase_1_gate:
- local-first chain only
- no governed workflow dependency
- no ERP handoff dependency
- no team sync dependency
- Forecast -> Action -> Proposal -> Profit must run locally

phase_2_gate:
- phase 1 stable
- proposal builder stable
- profit preview stable
- scenario switch ready to absorb safely
- basis / explainability features can be added without class collapse

phase_3_gate:
- phase 2 stable
- local and proposal-centered flow already usable
- governed workflow introduced explicitly
- no accidental merge of local save and governed submission

phase_4_gate:
- phase 3 stable
- optimization and density expansion only
- no premature expansion before earlier phases stabilize




# ============================================================
# ANDROID EXPANDED DONE CRITERIA PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines done criteria after feature expansion.

phase_1_done:
- local entities stable
- DAO stable
- repositories stable for core chain
- Forecast Editor usable
- Action Idea Board usable
- Proposal Builder usable
- Profit Preview usable
- Forecast Detail summary usable

phase_2_done:
- scenario switched proposal usable
- basis panel usable
- explainable profit usable
- market event input usable
- template selection usable
- internal explanation draft usable

phase_3_done:
- tracking summary usable
- share flow usable
- approval flow usable
- governed transition usable
- sync / notification / ERP handoff readiness integrated

phase_4_done:
- optimization surfaces stable
- optional dedicated boards stable
- refinement does not break earlier phases




# ============================================================
# ANDROID MINIMUM FILESET WITH MULTILINGUAL AND MULTICURRENCY PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the minimum Android file set
including multilingual and multicurrency foundations.

principle:
Do not fully implement all multilingual and multicurrency density at once.
Introduce only the minimum foundation required
to keep later expansion clean.

# ============================================================
# 1. PHASE 1 MINIMUM FILESET
# ============================================================

phase_1_minimum_files:

domain_models:
- ForecastDraft
- ActionIdea
- ProposalDraft
- ProfitPreview
- LocalePreference
- CurrencyPreference
- MoneyValue

data_local:
- ForecastDraftEntity
- ActionIdeaEntity
- ProposalDraftEntity
- ProfitPreviewEntity
- LocalePreferenceEntity
- CurrencyPreferenceEntity

dao:
- ForecastDraftDao
- ActionIdeaDao
- ProposalDraftDao
- ProfitPreviewDao
- LocalePreferenceDao
- CurrencyPreferenceDao

repositories:
- ForecastRepository
- ActionRepository
- ProposalRepository
- ProfitRepository
- SettingsRepository

ui_screens:
- DashboardScreen
- ForecastListScreen
- ForecastEditorScreen
- ActionBoardScreen
- ProposalBuilderScreen
- ProfitPreviewScreen
- ForecastDetailScreen
- SettingsScreen

viewmodels:
- DashboardViewModel
- ForecastListViewModel
- ForecastEditorViewModel
- ActionBoardViewModel
- ProposalBuilderViewModel
- ProfitPreviewViewModel
- ForecastDetailViewModel
- SettingsViewModel

formatters:
- CurrencyFormatter
- NumberFormatter
- DateTimeFormatter
- UiTextResolver

state_support:
- UiState
- UiEvent
- UiEffect
- ScreenReducer base

navigation:
- AppNavGraph
- Route definitions

minimum_i18n_assets:
- localization key set
- default language dictionary
- fallback language dictionary

minimum_multicurrency_assets:
- base currency setting
- display currency setting
- money display helpers

# ============================================================
# 2. DEFERRED FILES
# ============================================================

deferred_files:
- TranslationVariant persistence full set
- TerminologyGlossary persistence full set
- ExchangeRateSnapshot persistence full set
- multicurrency proposal comparison dedicated screen
- multilingual draft comparison dedicated screen
- governed approval / share / ERP handoff classes
- notification linkage classes
- advanced recommendation classes

# ============================================================
# 3. WHY THESE ARE MINIMUM
# ============================================================

why_minimum:
- preserves Forecast -> Action -> Proposal -> Profit chain
- preserves locale-aware UI from the start
- preserves currency-safe money handling from the start
- avoids later destructive rewrite
- avoids premature governed workflow expansion




# ============================================================
# ANDROID MINIMUM CLASSSET WITH MULTILINGUAL AND MULTICURRENCY PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the minimum class groups needed
for clean Phase 1 implementation.

class_groups:

core_domain:
- ForecastDraft
- ActionIdea
- ProposalDraft
- ProfitPreview

locale_currency_domain:
- LocalePreference
- CurrencyPreference
- MoneyValue

core_data:
- entities
- dao
- repository implementations

core_ui:
- screen composables
- screen state classes
- reducers
- viewmodels

formatting_support:
- currency formatter
- number formatter
- datetime formatter
- localized text resolver

config_support:
- language config
- fallback config
- currency config

rule:
Locale and currency support must enter as foundational classes,
not as later patches hidden inside UI files.




# ============================================================
# ANDROID PHASE 1 I18N AND MULTICURRENCY SEQUENCE PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines implementation sequence for Phase 1
with multilingual and multicurrency foundations.

sequence:

1.
MoneyValue / LocalePreference / CurrencyPreference model setup

2.
local entities and dao setup

3.
repositories for settings and core chain

4.
formatter and text resolver setup

5.
Settings screen and SettingsViewModel minimum setup

6.
Forecast Editor core

7.
Action Board core

8.
Proposal Builder core

9.
Profit Preview core

10.
Forecast Detail core

11.
Dashboard and Forecast List integration

rule:
Settings foundation for locale and currency must exist
before screen-level rendering is finalized.




# ============================================================
# PHASE 1 GENERATION TARGET FILE LIST PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the concrete file-generation target list for Android Phase 1.

phase_1_generation_targets:

domain_models:
- ForecastDraft.kt
- ActionIdea.kt
- ProposalDraft.kt
- ProfitPreview.kt
- LocalePreference.kt
- CurrencyPreference.kt
- MoneyValue.kt

entities:
- ForecastDraftEntity.kt
- ActionIdeaEntity.kt
- ProposalDraftEntity.kt
- ProfitPreviewEntity.kt
- LocalePreferenceEntity.kt
- CurrencyPreferenceEntity.kt

dao:
- ForecastDraftDao.kt
- ActionIdeaDao.kt
- ProposalDraftDao.kt
- ProfitPreviewDao.kt
- LocalePreferenceDao.kt
- CurrencyPreferenceDao.kt

repositories:
- ForecastRepository.kt
- ActionRepository.kt
- ProposalRepository.kt
- ProfitRepository.kt
- SettingsRepository.kt

viewmodels:
- DashboardViewModel.kt
- ForecastListViewModel.kt
- ForecastEditorViewModel.kt
- ActionBoardViewModel.kt
- ProposalBuilderViewModel.kt
- ProfitPreviewViewModel.kt
- ForecastDetailViewModel.kt
- SettingsViewModel.kt

reducers:
- DashboardReducer.kt
- ForecastListReducer.kt
- ForecastEditorReducer.kt
- ActionBoardReducer.kt
- ProposalBuilderReducer.kt
- ProfitPreviewReducer.kt
- ForecastDetailReducer.kt
- SettingsReducer.kt

screens:
- DashboardScreen.kt
- ForecastListScreen.kt
- ForecastEditorScreen.kt
- ActionBoardScreen.kt
- ProposalBuilderScreen.kt
- ProfitPreviewScreen.kt
- ForecastDetailScreen.kt
- SettingsScreen.kt

navigation:
- AppNavGraph.kt
- AppRoutes.kt

formatting_and_i18n:
- CurrencyFormatter.kt
- NumberFormatter.kt
- DateTimeFormatter.kt
- UiTextResolver.kt
- LocalizationKeys.kt

config_assets:
- strings_default.json
- strings_fallback.json

room_support:
- QuickForecastDatabase.kt

rule:
Phase 1 generation target list must remain focused on:
- local-first chain
- locale foundation
- currency-safe foundation
and must exclude governed workflow classes.




# ============================================================
# PHASE 1 ACCEPTANCE CRITERIA PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines acceptance criteria for Android Phase 1.

acceptance_criteria:
- Forecast -> Action -> Proposal -> Profit chain is operable locally
- local persistence works for core chain
- Dashboard / List / Editor / Action / Proposal / Profit / Detail / Settings screens exist
- basic navigation is stable
- locale preference can be changed and reflected in UI text
- fallback language rendering works safely
- money values are handled as amount + currency_code
- display currency preference can be retained
- profit preview does not collapse money meaning into naked numeric rendering
- reducers, viewmodels, and repositories remain responsibility-separated
- no governed approval / share / ERP handoff dependency exists in Phase 1

fail_conditions:
- UI text hardcoded across screens without key structure
- naked numeric amount handling without currency code
- screen logic directly owns persistence
- repository directly owns UI rendering logic
- governed workflow leaks into Phase 1




# ============================================================
# PHASE 2 ENTRY DECISION PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines conditions for moving from Phase 1 to Phase 2.

phase_2_entry_conditions:
- Phase 1 acceptance criteria all passed
- ProposalBuilder core is stable
- ProfitPreview core is stable
- locale and currency foundations are already embedded cleanly
- no structural rewrite is needed before scenario switch insertion
- no class collapse is visible around ProposalBuilderViewModel
- no money-meaning confusion remains in profit preview rendering

phase_2_allowed_scope:
- scenario switched proposal
- proposal basis panel
- explainable profit surface
- market event input
- template selection
- internal explanation draft

phase_2_blockers:
- unstable local persistence
- unstable navigation
- unstable settings / locale / currency preference
- proposal builder still mixing repository and UI logic




# ============================================================
# DEVELOPMENT RESTART ENTRY PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the formal 130-level restart entry when development resumes.

restart_reading_order:
- 130280_ANDROID_EXPANDED_IMPLEMENTATION_PRIORITY_PLAN.md
- 130320_ANDROID_EXPANDED_IMPLEMENTATION_SEQUENCE_PLAN.md
- 130330_ANDROID_IMPLEMENTATION_READING_ORDER_PLAN.md
- 130340_ANDROID_PHASE_GATE_PLAN.md
- 130350_ANDROID_EXPANDED_DONE_CRITERIA_PLAN.md
- 130360_ANDROID_MINIMUM_FILESET_WITH_I18N_I18NCURRENCY_PLAN.md
- 130370_ANDROID_MINIMUM_CLASSSET_WITH_I18N_I18NCURRENCY_PLAN.md
- 130380_ANDROID_PHASE1_I18N_I18NCURRENCY_SEQUENCE_PLAN.md
- 130390_PHASE1_GENERATION_TARGET_FILE_LIST_PLAN.md
- 130400_PHASE1_ACCEPTANCE_CRITERIA_PLAN.md
- 130410_PHASE2_ENTRY_DECISION_PLAN.md

restart_rule:
Development restart must begin from the 130-layer bundle,
not from scattered implementation files only.




# ============================================================
# ANDROID PHASE 1 DIRECTORY STRUCTURE PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the Android directory structure for Phase 1 generation.

root_package:
com.lsam.QuickForecast

directory_structure:
- app/src/main/java/com/lsam/QuickForecast/domain/model
- app/src/main/java/com/lsam/QuickForecast/data/local/entity
- app/src/main/java/com/lsam/QuickForecast/data/local/dao
- app/src/main/java/com/lsam/QuickForecast/data/local/db
- app/src/main/java/com/lsam/QuickForecast/data/repository
- app/src/main/java/com/lsam/QuickForecast/ui/navigation
- app/src/main/java/com/lsam/QuickForecast/ui/common
- app/src/main/java/com/lsam/QuickForecast/ui/formatter
- app/src/main/java/com/lsam/QuickForecast/ui/screen/dashboard
- app/src/main/java/com/lsam/QuickForecast/ui/screen/forecastlist
- app/src/main/java/com/lsam/QuickForecast/ui/screen/forecasteditor
- app/src/main/java/com/lsam/QuickForecast/ui/screen/actionboard
- app/src/main/java/com/lsam/QuickForecast/ui/screen/proposalbuilder
- app/src/main/java/com/lsam/QuickForecast/ui/screen/profitpreview
- app/src/main/java/com/lsam/QuickForecast/ui/screen/forecastdetail
- app/src/main/java/com/lsam/QuickForecast/ui/screen/settings
- app/src/main/java/com/lsam/QuickForecast/ui/state
- app/src/main/java/com/lsam/QuickForecast/ui/reducer
- app/src/main/java/com/lsam/QuickForecast/ui/viewmodel
- app/src/main/assets/i18n

rule:
Phase 1 must keep language and currency support foundational,
not patched into individual screen files later.




# ============================================================
# ANDROID PHASE 1 FILE GENERATION BATCH PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines batch groupings for Phase 1 file generation.

batch_1_foundation:
- domain models
- locale and currency models
- shared ui state contracts
- formatter and text resolver
- navigation route definitions

batch_2_persistence:
- entities
- dao
- database
- repository interfaces / implementations

batch_3_settings_and_configuration:
- settings screen
- settings viewmodel
- locale preference wiring
- currency preference wiring
- i18n asset files

batch_4_core_chain_screens:
- forecast editor
- action board
- proposal builder
- profit preview
- forecast detail

batch_5_shell_and_entry:
- dashboard
- forecast list
- nav graph
- app entry linkage

rule:
Generate from lower volatility foundation
toward higher volatility feature screens.




# ============================================================
# ANDROID PHASE 1 CONCRETE FILESET PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the concrete Phase 1 file set to generate.

files:

domain_model:
- domain/model/ForecastDraft.kt
- domain/model/ActionIdea.kt
- domain/model/ProposalDraft.kt
- domain/model/ProfitPreview.kt
- domain/model/LocalePreference.kt
- domain/model/CurrencyPreference.kt
- domain/model/MoneyValue.kt

data_entity:
- data/local/entity/ForecastDraftEntity.kt
- data/local/entity/ActionIdeaEntity.kt
- data/local/entity/ProposalDraftEntity.kt
- data/local/entity/ProfitPreviewEntity.kt
- data/local/entity/LocalePreferenceEntity.kt
- data/local/entity/CurrencyPreferenceEntity.kt

data_dao:
- data/local/dao/ForecastDraftDao.kt
- data/local/dao/ActionIdeaDao.kt
- data/local/dao/ProposalDraftDao.kt
- data/local/dao/ProfitPreviewDao.kt
- data/local/dao/LocalePreferenceDao.kt
- data/local/dao/CurrencyPreferenceDao.kt

data_db:
- data/local/db/QuickForecastDatabase.kt

data_repository:
- data/repository/ForecastRepository.kt
- data/repository/ActionRepository.kt
- data/repository/ProposalRepository.kt
- data/repository/ProfitRepository.kt
- data/repository/SettingsRepository.kt

ui_common:
- ui/common/LocalizationKeys.kt
- ui/common/UiTextResolver.kt

ui_formatter:
- ui/formatter/CurrencyFormatter.kt
- ui/formatter/NumberFormatter.kt
- ui/formatter/DateTimeFormatter.kt

ui_state:
- ui/state/UiState.kt
- ui/state/UiEvent.kt
- ui/state/UiEffect.kt

ui_reducer:
- ui/reducer/DashboardReducer.kt
- ui/reducer/ForecastListReducer.kt
- ui/reducer/ForecastEditorReducer.kt
- ui/reducer/ActionBoardReducer.kt
- ui/reducer/ProposalBuilderReducer.kt
- ui/reducer/ProfitPreviewReducer.kt
- ui/reducer/ForecastDetailReducer.kt
- ui/reducer/SettingsReducer.kt

ui_viewmodel:
- ui/viewmodel/DashboardViewModel.kt
- ui/viewmodel/ForecastListViewModel.kt
- ui/viewmodel/ForecastEditorViewModel.kt
- ui/viewmodel/ActionBoardViewModel.kt
- ui/viewmodel/ProposalBuilderViewModel.kt
- ui/viewmodel/ProfitPreviewViewModel.kt
- ui/viewmodel/ForecastDetailViewModel.kt
- ui/viewmodel/SettingsViewModel.kt

ui_screen:
- ui/screen/dashboard/DashboardScreen.kt
- ui/screen/forecastlist/ForecastListScreen.kt
- ui/screen/forecasteditor/ForecastEditorScreen.kt
- ui/screen/actionboard/ActionBoardScreen.kt
- ui/screen/proposalbuilder/ProposalBuilderScreen.kt
- ui/screen/profitpreview/ProfitPreviewScreen.kt
- ui/screen/forecastdetail/ForecastDetailScreen.kt
- ui/screen/settings/SettingsScreen.kt

ui_navigation:
- ui/navigation/AppRoutes.kt
- ui/navigation/AppNavGraph.kt

assets:
- assets/i18n/strings_default.json
- assets/i18n/strings_fallback.json

excluded_from_phase_1:
- translation variant persistence files
- terminology glossary persistence files
- exchange rate snapshot persistence files
- share / approval / ERP handoff files
- advanced recommendation files




# ============================================================
# ANDROID PHASE 1 GENERATION SEQUENCE DETAIL PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the detailed generation sequence for Phase 1.

sequence:
1. directory structure
2. domain models
3. ui common + formatters
4. entities
5. dao
6. database
7. repositories
8. ui state contracts
9. settings reducer / viewmodel / screen
10. forecast editor reducer / viewmodel / screen
11. action board reducer / viewmodel / screen
12. proposal builder reducer / viewmodel / screen
13. profit preview reducer / viewmodel / screen
14. forecast detail reducer / viewmodel / screen
15. dashboard reducer / viewmodel / screen
16. forecast list reducer / viewmodel / screen
17. routes and nav graph
18. i18n asset files

rule:
Settings and format foundation must be available
before final screen rendering is frozen.




# ============================================================
# MULTI DEVICE DEVELOPMENT PLAN
# iPhone / Android / Tablet
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines development direction for multi-device support.

development_principles:
- build smartphone baseline first
- expand to tablet without forking business flow
- verify adaptive composition on key review-heavy screens first

priority_order:
1. smartphone-safe baseline layout
2. settings / dashboard adaptive checks
3. forecast list list-detail tablet support
4. proposal builder tablet-expanded layout
5. profit preview tablet-expanded layout
6. forecast detail tablet-expanded layout

non_goal_in_first_pass:
- device-specific workflow branching
- platform-specific business meaning divergence
- special foldable-only optimization




# ============================================================
# MULTI DEVICE ACCEPTANCE PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines acceptance criteria for multi-device support.

acceptance_criteria:
- iPhone-class compact layout remains fully usable
- Android smartphone compact layout remains fully usable
- tablet expanded layout preserves canonical flow
- proposal builder remains editable on both phone and tablet
- profit preview remains understandable on both phone and tablet
- locale and currency presentation remain consistent across device classes
- no required action disappears on larger or smaller layout

failure_conditions:
- tablet introduces a different business flow
- compact layout hides critical actions without access path
- larger layout breaks source / base / display money meaning
- multilingual comparison becomes unavailable because of device class




# ============================================================
# ANDROID TEMPLATE STARTER PACK PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the first starter-pack template scope for Android generation.

starter_pack_scope:
- domain models
- settings foundation
- formatter foundation
- navigation foundation
- one screen template pattern
- one reducer template pattern
- one viewmodel template pattern
- one repository template pattern
- one dao template pattern
- one entity template pattern

why_this_scope:
This scope is large enough to freeze coding style,
responsibility split,
and multilingual / multicurrency entry shape,
without requiring full app generation at once.




# ============================================================
# ANDROID TEMPLATE BATCH ORDER PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines batch order for starter-pack template generation.

batch_order:
1. domain model templates
2. entity and dao templates
3. repository templates
4. formatter and text resolver templates
5. settings templates
6. navigation templates
7. reducer template
8. viewmodel template
9. screen template

rule:
Freeze lower-level patterns first,
then build visible UI templates on top.




# ============================================================
# PHASE 1 PHASE 2 SCOPE HARDENING PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Hardens scope boundaries between Phase 1 and Phase 2.

phase_1_must_contain:
- local-first forecast chain
- locale preference foundation
- currency preference foundation
- compact and expanded layout readiness in principle
- forecast list / detail / editor basic flow
- settings foundation

phase_1_must_not_expand_into:
- governed approval flow
- ERP handoff implementation
- advanced translation-variant persistence
- advanced exchange-rate density
- scenario-switched proposal surface
- internal explanation draft expansion

phase_2_allowed_targets:
- scenario switched proposal
- proposal basis panel
- internal explanation draft
- explainable profit surface
- market event input
- template selection




# ============================================================
# RESTART AND REVIEW READING ORDER HARDENING PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines hardened reading order for implementation restart and review.

restart_bundle_order:
1. 090490_SCREEN_RESPONSIBILITY_HARDENING_INTERFACE.md
2. 090500_MULTILINGUAL_MULTICURRENCY_DISPLAY_PRIORITY_INTERFACE.md
3. 120820_IMPLEMENTATION_BOUNDARY_HARDENING.md
4. 120830_ADAPTIVE_PRESENTATION_WITHOUT_FLOW_DIVERGENCE_IMPLEMENTATION.md
5. 130390_PHASE1_GENERATION_TARGET_FILE_LIST_PLAN.md
6. 130400_PHASE1_ACCEPTANCE_CRITERIA_PLAN.md
7. 130410_PHASE2_ENTRY_DECISION_PLAN.md
8. 130510_PHASE1_PHASE2_SCOPE_HARDENING_PLAN.md

review_focus:
- no screen role drift
- no repository / formatter / ViewModel drift
- no phone / tablet flow divergence
- no multilingual / multicurrency meaning collapse




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
- 130280_ANDROID_EXPANDED_IMPLEMENTATION_PRIORITY_PLAN.md
- 130290_ANDROID_EXPANDED_PHASE2_PLAN.md
- 130300_ANDROID_EXPANDED_PHASE3_PLAN.md
- 130310_ANDROID_EXPANDED_PHASE4_PLAN.md
- 130320_ANDROID_EXPANDED_IMPLEMENTATION_SEQUENCE_PLAN.md
- 130330_ANDROID_IMPLEMENTATION_READING_ORDER_PLAN.md
- 130340_ANDROID_PHASE_GATE_PLAN.md
- 130350_ANDROID_EXPANDED_DONE_CRITERIA_PLAN.md
- 130360_ANDROID_MINIMUM_FILESET_WITH_I18N_I18NCURRENCY_PLAN.md
- 130370_ANDROID_MINIMUM_CLASSSET_WITH_I18N_I18NCURRENCY_PLAN.md
- 130380_ANDROID_PHASE1_I18N_I18NCURRENCY_SEQUENCE_PLAN.md
- 130390_PHASE1_GENERATION_TARGET_FILE_LIST_PLAN.md
- 130400_PHASE1_ACCEPTANCE_CRITERIA_PLAN.md
- 130410_PHASE2_ENTRY_DECISION_PLAN.md
- 130420_DEVELOPMENT_RESTART_ENTRY_PLAN.md
- 130430_ANDROID_PHASE1_DIRECTORY_STRUCTURE_PLAN.md
- 130440_ANDROID_PHASE1_FILE_GENERATION_BATCH_PLAN.md
- 130450_ANDROID_PHASE1_CONCRETE_FILESET_PLAN.md
- 130460_ANDROID_PHASE1_GENERATION_SEQUENCE_DETAIL_PLAN.md
- 130470_MULTI_DEVICE_DEVELOPMENT_PLAN.md
- 130480_MULTI_DEVICE_ACCEPTANCE_PLAN.md
- 130490_ANDROID_TEMPLATE_STARTER_PACK_PLAN.md
- 130500_ANDROID_TEMPLATE_BATCH_ORDER_PLAN.md
- 130510_PHASE1_PHASE2_SCOPE_HARDENING_PLAN.md
- 130520_RESTART_AND_REVIEW_READING_ORDER_HARDENING_PLAN.md




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




# ============================================================
# FINAL POLISH NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the final-polish intent for QuickForecast design set.

polish_targets:
- wording consistency
- overview role clarity
- index and rebuilt consistency
- canonical readability
- implementation-ready but design-only boundary clarity

notes:
This phase does not add new functional scope.
It improves readability, consistency, and handoff quality.




# ============================================================
# OVERVIEW ROLE CLARIFICATION NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Clarifies the role difference between layer overview files
and content overview files.

role_definition:
- layer overview files such as model_OVERVIEW.md and interface_OVERVIEW.md
  are folder guidance documents
- content overview files such as
  030_QUICK_FORECAST_MODEL_OVERVIEW.md and
  090_QUICK_FORECAST_INTERFACE_OVERVIEW.md
  are content/body overview documents

rule:
Both may coexist if their roles remain distinct and non-conflicting.




# ============================================================
# DESIGN ONLY BOUNDARY NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Records the current boundary of the QuickForecast work.

current_boundary:
- canonical design is active
- implementation preparation design is active
- actual Java / Android source generation is intentionally deferred

rule:
No implementation files are required for design completion status.




# ============================================================
# FINAL REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the final review checklist for design-first completion.

check_items:
- root overview/index/integrated files exist
- each layer has overview and index
- index files reflect current file inventory
- integrated rebuilt reflects current index set
- wording is consistent across overview files
- Basic / Pro boundary remains explicit
- ERP coexistence remains explicit
- design-only boundary remains explicit




# ============================================================
# QUICK FORECAST HANDOVER NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Provides a direct handover note for continuing QuickForecast work
in another chat or by another contributor.

# ============================================================
# 1. CURRENT POSITION
# ============================================================

current_position:
QuickForecast has reached implementation-ready design completeness.

completed_scope:
- application overview / root index / integrated book
- constitution / architecture / model / runtime / flow
- integration / operations / policy / interface
- security / infrastructure / implementation / development
- meta review and consistency support
- Android implementation preparation design
- screen skeleton design
- ViewModel state/event/effect design
- reducer transition design
- repository responsibility design
- Android class inventory design
- Android file generation planning
- generation target freeze
- final polish meta support

current_status:
Design is complete enough to start implementation later,
but actual implementation is intentionally deferred.

# ============================================================
# 2. PRODUCT DEFINITION
# ============================================================

product_name:
QuickForecast

product_tiers:
- QuickForecast Basic
- QuickForecast Pro

core_identity:
QuickForecast is a demand-forecast-originated
proposal drafting workbench.

canonical_value_chain:
Forecast
-> Action
-> Proposal
-> Profit

extended_pro_chain:
Forecast
-> Action
-> Proposal
-> Profit
-> Share / Approval / Handoff

erp_relation:
ERP retains equivalent forecasting capability.
QuickForecast does not replace ERP.
QuickForecast exists as a mobile, high-immediacy companion application.

# ============================================================
# 3. MAIN DESIGN DECISIONS
# ============================================================

major_decisions:
- demand forecasting alone is not the main value
- the main value is turning forecast thinking into proposal output
- QuickForecast Basic uses public/general/manual assumptions
- QuickForecast Pro extends into ERP reference, sharing, approval, sync, and handoff
- local-first operation is the starting point
- QuickForecast Pro governed actions must remain explicitly separated from local draft save
- Android implementation should start from the core local chain first
- QuickForecast Pro implementation is deferred until the core local chain is stable

# ============================================================
# 4. DESIGN BOUNDARY
# ============================================================

design_boundary:
- design documents are complete enough for implementation start
- actual Java / Android source generation is not part of current completion
- no implementation file is required for design completion status

do_not_assume:
- that Java files already exist
- that DB schema is already physically implemented
- that gateway code is already written
- that QuickForecast Pro remote contracts are already coded on Android

# ============================================================
# 5. IMPORTANT STRUCTURAL RULES
# ============================================================

structural_rules:
- each layer has overview and index
- integrated rebuilt is the combined canonical reading file
- layer overview files and body overview files may coexist if role is distinct
- QuickForecast Basic / Pro boundary must remain explicit
- ERP coexistence must remain explicit
- local save success must not imply enterprise acceptance
- QuickForecast Pro-only navigation and actions must be gated

# ============================================================
# 6. IMPLEMENTATION PREPARATION STATE
# ============================================================

already_designed:
- screen transitions
- screen skeletons
- ViewModel state/event/effect
- reducer transition examples
- repository responsibility by screen
- local entities / DAO method families / repository method families
- Android package structure
- class inventory
- file generation batches
- phase 1 generation target freeze

phase_1_target_intent:
The first implementation pass should cover only the
Forecast -> Action -> Proposal -> Profit local-first chain.

phase_1_scope:
- core local entities
- core DAO
- core repositories
- core ViewModels
- core Activities or equivalent screen shells

deferred_scope:
- QuickForecast Pro cache entities
- QuickForecast Pro repositories
- QuickForecast Pro ViewModels
- QuickForecast Pro screens
- integration gateways

# ============================================================
# 7. RECOMMENDED NEXT STEP
# ============================================================

recommended_next_step:
Before implementation starts, run the final polish script
and confirm the rebuilt book and indexes are synchronized.

after_that:
When implementation is approved,
start from phase 1 generation targets only.

implementation_order:
1. core local data
2. core repositories
3. core ViewModels
4. core screens
5. common UI
6. QuickForecast Pro support
7. QuickForecast Pro repositories
8. QuickForecast Pro ViewModels
9. QuickForecast Pro screens
10. gateways

# ============================================================
# 8. FILES TO CHECK FIRST
# ============================================================

priority_files:
- 000_QUICK_FORECAST_OVERVIEW.md
- 000_QUICK_FORECAST_INDEX.md
- 00_QUICK_FORECAST_INTEGRATED_REBUILT.md
- 120640_ANDROID_GENERATION_TARGET_FREEZE_IMPLEMENTATION.md
- 120650_ANDROID_PHASE1_GENERATION_TARGET_IMPLEMENTATION.md
- 130260_ANDROID_GENERATION_TARGET_ORDER_PLAN.md
- 130270_ANDROID_GENERATION_DONE_CRITERIA_PLAN.md
- 900380_FINAL_REVIEW_CHECKLIST.md
- 900390_FINAL_POLISH_SCRIPT.sh

# ============================================================
# 9. HANDOVER WARNING
# ============================================================

handover_warning:
Do not expand scope casually.
QuickForecast is already deep enough at the design level.
Any new work should either:
- polish existing design, or
- implement phase 1 core only,
unless Boss explicitly expands the scope.

# ============================================================
# 10. CONCLUSION
# ============================================================

conclusion:
QuickForecast is no longer at rough concept stage.
It is at implementation-ready design stage,
with implementation intentionally deferred inside the design-only boundary.




# ============================================================
# WORDING CANONICAL RULE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines wording normalization rules for QuickForecast documents.

canonical_terms:
- QuickForecast
- QuickForecast Basic
- QuickForecast Pro
- Forecast
- Action
- Proposal
- Profit
- Share
- Approval
- Handoff
- ERP
- local-first
- mobile-first
- implementation-ready design
- design-only boundary

rules:
- Use "QuickForecast" as the canonical product name.
- Use "QuickForecast Basic" and "QuickForecast Pro" when tier names must be explicit.
- Use "Forecast -> Action -> Proposal -> Profit" as the canonical value chain order.
- Use "local-first" and "mobile-first" consistently with hyphen.
- Use "design-only boundary" when referring to the current non-implementation state.
- Use "governed action" for approval / handoff / enterprise-linked actions.
- Do not alternate casually between similar meanings such as:
  - proposal draft / planning draft / proposal output
  unless the distinction is intentional.
- Do not describe ERP as replaced by QuickForecast.
  ERP coexistence must remain explicit.




# ============================================================
# STYLE CANONICAL RULE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines style normalization rules for QuickForecast documents.

style_rules:
- Keep section titles explicit and functional.
- Prefer short declarative sentences.
- Prefer one concept per paragraph.
- Prefer bullet lists for controlled enumerations.
- Keep architectural statements separate from policy statements.
- Keep implementation-preparation statements separate from actual implementation statements.
- When describing a layer overview, summarize role first, then list focus points.
- When describing a model/implementation note, preserve identity, state, and boundary language clearly.
- Avoid mixing Basic and Pro behavior in one sentence unless explicitly comparing them.
- Prefer "summary", "focus", "principles", "rules", "notes" as stable subsection labels.




# ============================================================
# AMBIGUITY AND DUPLICATION REVIEW NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the main duplication and ambiguity review targets.

review_targets:
- overview files with similar roles
- repeated definition of Forecast -> Action -> Proposal -> Profit chain
- repeated explanation of Basic / Pro boundary
- repeated explanation of ERP coexistence
- repeated explanation of design-only boundary
- repeated explanation of local save vs governed action separation

review_rule:
Repetition is acceptable when it preserves local readability,
but wording should remain stable and role-consistent.

ambiguity_rule:
If two documents both explain the same thing,
one should act as folder guidance
and the other should act as content/body guidance.




# ============================================================
# FINAL POLISH REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the final polishing checklist for QuickForecast.

check_items:
- wording is canonical across root and layer overviews
- QuickForecast Basic / Pro naming is stable
- Forecast -> Action -> Proposal -> Profit order is stable
- ERP coexistence wording is stable
- local-first / mobile-first wording is stable
- design-only boundary is explicitly preserved
- duplicated overview roles are clarified
- implementation-preparation wording is not mistaken for implementation-complete wording
- root index reflects current file set
- integrated rebuilt reflects current file set
- handover note remains aligned with current design




# ============================================================
# POLISH EXECUTION NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines how polishing work should proceed.

polish_order:
1. wording normalization
2. overview role clarification
3. repeated concept stabilization
4. index / rebuilt synchronization
5. handover note synchronization
6. final review

important_boundary:
Polish work must not expand feature scope.
It exists to improve readability, consistency, and maintainability only.




# ============================================================
# SHORT HANDOVER SOURCE NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Provides the canonical source text policy for short handover summaries.

summary_rules:
- preserve the canonical value chain order
- preserve QuickForecast Basic / Pro naming
- preserve ERP coexistence wording
- preserve design-only boundary wording
- prefer concise wording without removing critical boundaries




# ============================================================
# WORDING POLISH EXECUTION NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Records the wording polish actions applied to core documents.

applied_targets:
- root overview
- integrated summary
- handover note
- short handover source policy

applied_focus:
- canonical QuickForecast Basic / Pro naming
- canonical value chain order
- explicit ERP coexistence wording
- explicit design-only boundary wording
- reduced wording drift across root/meta documents




# ============================================================
# CROSS APPLICATION WORDING ALIGNMENT NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Aligns QuickForecast wording with other Civilization application designs.

alignment_targets:
- application definition wording
- ERP relation wording
- tier wording
- design maturity wording
- coexistence wording
- companion wording
- workbench wording

rule:
QuickForecast wording should remain locally precise
while still fitting the broader Civilization application language.




# ============================================================
# APPLICATION POSITIONING ALIGNMENT RULE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines stable positioning language for QuickForecast.

canonical_positioning:
QuickForecast is a demand-forecast-originated
proposal drafting workbench.

support_positioning:
QuickForecast is a mobile, high-immediacy companion application.

erp_relation_rule:
QuickForecast coexists with ERP.
QuickForecast does not replace ERP.
ERP retains equivalent forecasting capability.

usage_rule:
Use "workbench" when emphasizing the internal working chain.
Use "companion application" when emphasizing relation to ERP and field use.
Use "coexists with ERP" when emphasizing system boundary.




# ============================================================
# TIER ALIGNMENT RULE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines stable tier wording.

canonical_tier_names:
- QuickForecast Basic
- QuickForecast Pro

tier_rule:
Use full tier names in overview, handover, and policy contexts.
Short forms "Basic" and "Pro" are acceptable only after
the full names are already clear in local context.

tier_meaning_rule:
QuickForecast Basic:
local-first, public/general/manual assumption-based drafting.

QuickForecast Pro:
ERP reference, share, approval, sync, history,
and governed enterprise handoff extension.




# ============================================================
# DESIGN MATURITY ALIGNMENT RULE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines stable maturity wording.

canonical_maturity_phrase:
implementation-ready design

canonical_boundary_phrase:
design-only boundary

rule:
Use "implementation-ready design"
when describing current design maturity.

Use "design-only boundary"
when clarifying that implementation has not started.

avoid:
- implementation complete
- already implemented
- build-ready product
when only design completion is true.




# ============================================================
# CROSS APPLICATION REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines review checklist for cross-application wording alignment.

check_items:
- QuickForecast is described as a workbench when internal chain is emphasized
- QuickForecast is described as a companion application when ERP relation is emphasized
- ERP coexistence wording is explicit and non-competitive
- QuickForecast Basic / Pro naming is stable
- implementation-ready design wording is stable
- design-only boundary wording is stable
- no accidental wording suggests ERP replacement




# ============================================================
# CANONICAL PHRASE LIBRARY
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Stores canonical reusable phrases for QuickForecast documents.

phrases:

application_definition:
QuickForecast is a demand-forecast-originated proposal drafting workbench.

erp_relation:
QuickForecast coexists with ERP.
QuickForecast does not replace ERP.
ERP retains equivalent forecasting capability.

field_positioning:
QuickForecast is a mobile, high-immediacy companion application.

maturity:
QuickForecast has reached implementation-ready design completeness.

boundary:
Actual Android / Java implementation remains outside the current design-only boundary.

value_chain:
Forecast -> Action -> Proposal -> Profit

pro_extension:
QuickForecast Pro extends the local drafting core into
ERP reference, sharing, approval, synchronization,
history visibility, and governed enterprise handoff.




# ============================================================
# QUICK FORECAST CLOSE NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Provides the closing note for the current QuickForecast design cycle.

# ============================================================
# 1. DESIGN CYCLE RESULT
# ============================================================

result:
QuickForecast has reached implementation-ready design completeness.

achieved_state:
- application definition fixed
- Basic / Pro boundary fixed
- ERP coexistence wording fixed
- canonical value chain fixed
- layer structure fixed
- Android implementation preparation design completed
- handover and polish materials completed
- cross-application wording alignment completed

# ============================================================
# 2. DESIGN IDENTITY
# ============================================================

design_identity:
QuickForecast is a demand-forecast-originated
proposal drafting workbench.

canonical_value_chain:
Forecast
-> Action
-> Proposal
-> Profit

positioning:
QuickForecast coexists with ERP.
QuickForecast does not replace ERP.
ERP retains equivalent forecasting capability.

field_positioning:
QuickForecast is a mobile, high-immediacy companion application.

# ============================================================
# 3. CURRENT BOUNDARY
# ============================================================

current_boundary:
The current work is complete as design.

explicit_non_scope:
- no Java source generation has been adopted as current completion
- no Android implementation has been adopted as current completion
- no DB physical implementation has been adopted as current completion
- no gateway implementation has been adopted as current completion

canonical_boundary_phrase:
Actual Android / Java implementation remains outside the current design-only boundary.

# ============================================================
# 4. IMPLEMENTATION READINESS
# ============================================================

implementation_readiness:
The design is deep enough to begin implementation later.

already_prepared:
- screen design
- ViewModel design
- reducer design
- repository responsibility design
- local data design
- Android class inventory
- file generation planning
- phase 1 target freeze

implementation_start_rule:
When implementation is approved,
start from phase 1 core local chain only.

# ============================================================
# 5. RESTART CONDITIONS
# ============================================================

restart_conditions:
Future work should follow one of these paths only:
- design polishing / consistency review
- approved phase 1 implementation start
- explicit scope expansion approved by Boss

do_not_restart_as:
- rough concept exploration
- uncontrolled feature addition
- premature Pro-heavy implementation
- ERP replacement framing

# ============================================================
# 6. RECOMMENDED FIRST FILES ON RESUME
# ============================================================

resume_priority_files:
- 000_QUICK_FORECAST_OVERVIEW.md
- 000_QUICK_FORECAST_INDEX.md
- 00_QUICK_FORECAST_INTEGRATED_REBUILT.md
- 120640_ANDROID_GENERATION_TARGET_FREEZE_IMPLEMENTATION.md
- 120650_ANDROID_PHASE1_GENERATION_TARGET_IMPLEMENTATION.md
- 130260_ANDROID_GENERATION_TARGET_ORDER_PLAN.md
- 130270_ANDROID_GENERATION_DONE_CRITERIA_PLAN.md
- 900400_QUICK_FORECAST_HANDOVER_NOTE.md
- 900540_QUICK_FORECAST_CLOSE_NOTE.md

# ============================================================
# 7. CLOSING CONCLUSION
# ============================================================

conclusion:
The current QuickForecast cycle is closed as a design-complete,
implementation-ready, design-only deliverable.

closing_message:
QuickForecast is no longer in rough planning state.
It is now a stable canonical design set,
ready either for careful maintenance
or for later phase 1 implementation start under approval.




# ============================================================
# QUICK FORECAST FINAL VERIFY REPORT
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Provides the final verification result for the current
QuickForecast design cycle closing state.

# ============================================================
# 1. ROOT FILE VERIFY
# ============================================================

root_files:
- 000_QUICK_FORECAST_OVERVIEW.md
- 000_QUICK_FORECAST_INDEX.md
- 00_QUICK_FORECAST_INTEGRATED.md
- 00_QUICK_FORECAST_INTEGRATED_REBUILT.md

root_verify_result:
PASS

# ============================================================
# 2. LAYER FILE COUNTS
# ============================================================

010.constitution: 5
020.architecture: 5
030.model: 24
040.runtime: 6
050.flow: 10
060.integration: 10
070.operations: 6
080.policy: 9
090.interface: 30
100.security: 5
110.infrastructure: 8
120.implementation: 59
130.development: 20
900.meta: 44

# ============================================================
# 3. CLOSING META VERIFY
# ============================================================

required_closing_meta:
- 900350_FINAL_POLISH_NOTE.md
- 900380_FINAL_REVIEW_CHECKLIST.md
- 900400_QUICK_FORECAST_HANDOVER_NOTE.md
- 900480_CROSS_APPLICATION_WORDING_ALIGNMENT_NOTE.md
- 900530_CANONICAL_PHRASE_LIBRARY.md
- 900540_QUICK_FORECAST_CLOSE_NOTE.md
- 900550_QUICK_FORECAST_FINAL_VERIFY_REPORT.md

closing_meta_verify_result:
PASS

# ============================================================
# 4. CURRENT DESIGN POSITION
# ============================================================

current_position:
QuickForecast has reached implementation-ready design completeness.

current_boundary:
Actual Android / Java implementation remains outside the current design-only boundary.

design_identity:
QuickForecast is a demand-forecast-originated
proposal drafting workbench.

canonical_value_chain:
Forecast
-> Action
-> Proposal
-> Profit

erp_relation:
QuickForecast coexists with ERP.
QuickForecast does not replace ERP.
ERP retains equivalent forecasting capability.

# ============================================================
# 5. FINAL RESULT
# ============================================================

final_result:
QuickForecast is in a close-ready canonical design state.

recommended_next_path:
- maintain as canonical design
or
- begin approved phase 1 implementation later

warning:
Do not reopen the design as rough concept work
unless Boss explicitly changes scope.




# ============================================================
# QUICK FORECAST CLOSURE STARTER PACK
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Provides the official starter pack for closing and later resuming
the current QuickForecast design set.

# ============================================================
# 1. OFFICIAL STATE
# ============================================================

official_state:
QuickForecast is closed as an implementation-ready,
design-only canonical deliverable.

state_meaning:
- design is complete enough for later implementation
- implementation is intentionally not part of the current completion
- the current design set should be treated as stable canonical input

# ============================================================
# 2. DESIGN IDENTITY
# ============================================================

design_identity:
QuickForecast is a demand-forecast-originated
proposal drafting workbench.

canonical_value_chain:
Forecast
-> Action
-> Proposal
-> Profit

field_positioning:
QuickForecast is a mobile, high-immediacy companion application.

erp_relation:
QuickForecast coexists with ERP.
QuickForecast does not replace ERP.
ERP retains equivalent forecasting capability.

# ============================================================
# 3. RESTART ENTRY FILES
# ============================================================

restart_entry_files:
- 000_QUICK_FORECAST_OVERVIEW.md
- 000_QUICK_FORECAST_INDEX.md
- 00_QUICK_FORECAST_INTEGRATED_REBUILT.md
- 900400_QUICK_FORECAST_HANDOVER_NOTE.md
- 900540_QUICK_FORECAST_CLOSE_NOTE.md
- 900550_QUICK_FORECAST_FINAL_VERIFY_REPORT.md

implementation_restart_files:
- 120640_ANDROID_GENERATION_TARGET_FREEZE_IMPLEMENTATION.md
- 120650_ANDROID_PHASE1_GENERATION_TARGET_IMPLEMENTATION.md
- 130260_ANDROID_GENERATION_TARGET_ORDER_PLAN.md
- 130270_ANDROID_GENERATION_DONE_CRITERIA_PLAN.md

# ============================================================
# 4. WHAT TO DO ON RESUME
# ============================================================

resume_paths:
path_01_design_maintenance:
- review close note
- review final verify report
- review wording/canonical phrase library
- patch only consistency issues

path_02_phase_1_implementation:
- confirm implementation approval exists
- start from core local chain only
- do not start from Pro-heavy scope
- do not treat design docs as optional

path_03_scope_expansion:
- allowed only if Boss explicitly expands scope
- expansion must preserve ERP coexistence and tier boundary clarity

# ============================================================
# 5. WHAT NOT TO DO
# ============================================================

do_not:
- reopen QuickForecast as rough concept work
- rewrite canonical positioning casually
- blur QuickForecast Basic / Pro boundary
- imply ERP replacement
- start with Pro-first implementation
- treat local save as enterprise acceptance

# ============================================================
# 6. PHASE 1 IMPLEMENTATION RULE
# ============================================================

phase_1_rule:
If implementation starts later,
begin only with the local-first core chain:

Forecast
-> Action
-> Proposal
-> Profit

phase_1_minimum_scope:
- local data
- DAO
- core repositories
- core ViewModels
- core screens

deferred_scope:
- Pro repositories
- Pro ViewModels
- Pro screens
- enterprise gateways

# ============================================================
# 7. CLOSING CONCLUSION
# ============================================================

closing_conclusion:
The QuickForecast design set should now be treated
as stable canonical material.

final_message:
Maintain it carefully,
or resume it deliberately under approval,
but do not reopen it casually.




# ============================================================
# QUICK FORECAST FINAL MANIFEST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the final manifest for the current QuickForecast design set.

# ============================================================
# 1. OFFICIAL CANONICAL SET
# ============================================================

official_canonical_set:
- 000_QUICK_FORECAST_OVERVIEW.md
- 000_QUICK_FORECAST_INDEX.md
- 00_QUICK_FORECAST_INTEGRATED.md
- 00_QUICK_FORECAST_INTEGRATED_REBUILT.md
- 900400_QUICK_FORECAST_HANDOVER_NOTE.md
- 900540_QUICK_FORECAST_CLOSE_NOTE.md
- 900550_QUICK_FORECAST_FINAL_VERIFY_REPORT.md
- 900560_QUICK_FORECAST_CLOSURE_STARTER_PACK.md
- 900570_QUICK_FORECAST_FINAL_MANIFEST.md

meaning:
These files define the current official closing state of QuickForecast.

# ============================================================
# 2. PRIMARY READING ORDER
# ============================================================

primary_reading_order:
1. 000_QUICK_FORECAST_OVERVIEW.md
2. 00_QUICK_FORECAST_INTEGRATED_REBUILT.md
3. 900400_QUICK_FORECAST_HANDOVER_NOTE.md
4. 900540_QUICK_FORECAST_CLOSE_NOTE.md
5. 900550_QUICK_FORECAST_FINAL_VERIFY_REPORT.md
6. 900560_QUICK_FORECAST_CLOSURE_STARTER_PACK.md

reading_rule:
Use the rebuilt integrated file for full reading,
and use handover / close / verify / starter pack
for operational understanding.

# ============================================================
# 3. CURRENT OFFICIAL STATE
# ============================================================

official_state:
QuickForecast is closed as an implementation-ready,
design-only canonical deliverable.

design_identity:
QuickForecast is a demand-forecast-originated
proposal drafting workbench.

canonical_value_chain:
Forecast
-> Action
-> Proposal
-> Profit

erp_relation:
QuickForecast coexists with ERP.
QuickForecast does not replace ERP.
ERP retains equivalent forecasting capability.

# ============================================================
# 4. CHANGE RULE
# ============================================================

allowed_change_types:
- wording polish
- consistency fix
- index sync
- rebuilt sync
- approved scope expansion
- approved implementation start

disallowed_change_types_without_approval:
- rough reconceptualization
- ERP replacement framing
- casual Basic / Pro boundary rewrite
- Pro-first implementation jump
- deletion of closing documents

# ============================================================
# 5. IMPLEMENTATION RULE
# ============================================================

implementation_rule:
If implementation starts later,
start from phase 1 local-first core only.

phase_1_chain:
Forecast
-> Action
-> Proposal
-> Profit

phase_1_support_files:
- 120640_ANDROID_GENERATION_TARGET_FREEZE_IMPLEMENTATION.md
- 120650_ANDROID_PHASE1_GENERATION_TARGET_IMPLEMENTATION.md
- 130260_ANDROID_GENERATION_TARGET_ORDER_PLAN.md
- 130270_ANDROID_GENERATION_DONE_CRITERIA_PLAN.md

# ============================================================
# 6. MAINTENANCE RULE
# ============================================================

maintenance_rule:
Until implementation begins,
QuickForecast should be maintained as a canonical design set.

maintenance_scope:
- wording stabilization
- trace consistency
- index / rebuilt maintenance
- handover material maintenance

# ============================================================
# 7. FINAL CONCLUSION
# ============================================================

final_conclusion:
The current QuickForecast set is stable enough
to be treated as a formal closed design package.

final_message:
Read it from the overview,
trust the rebuilt integrated file,
and resume only through the approved restart path.




# ============================================================
# QUICK FORECAST CLOSURE DECLARATION
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Declares the formal closure of the current QuickForecast design cycle.

# ============================================================
# 1. OFFICIAL DECLARATION
# ============================================================

declaration:
The current QuickForecast design cycle is formally closed.

closure_meaning:
- the current design set is treated as canonical
- the current design set is treated as stable
- the current design set is sufficient for later approved implementation start
- further casual concept expansion is not part of this closure state

# ============================================================
# 2. DESIGN STATUS
# ============================================================

design_status:
implementation-ready design

boundary_status:
design-only boundary

identity:
QuickForecast is a demand-forecast-originated
proposal drafting workbench.

canonical_value_chain:
Forecast
-> Action
-> Proposal
-> Profit

# ============================================================
# 3. ERP RELATION
# ============================================================

erp_relation:
QuickForecast coexists with ERP.
QuickForecast does not replace ERP.
ERP retains equivalent forecasting capability.

# ============================================================
# 4. REOPEN RULE
# ============================================================

reopen_allowed_only_if:
- Boss explicitly requests design maintenance
- Boss explicitly approves phase 1 implementation start
- Boss explicitly expands scope

reopen_not_allowed_as:
- rough concept restart
- uncontrolled feature expansion
- Pro-first implementation jump
- ERP replacement reframing

# ============================================================
# 5. CANONICAL ENTRY SET
# ============================================================

canonical_entry_set:
- 000_QUICK_FORECAST_OVERVIEW.md
- 00_QUICK_FORECAST_INTEGRATED_REBUILT.md
- 900400_QUICK_FORECAST_HANDOVER_NOTE.md
- 900540_QUICK_FORECAST_CLOSE_NOTE.md
- 900550_QUICK_FORECAST_FINAL_VERIFY_REPORT.md
- 900560_QUICK_FORECAST_CLOSURE_STARTER_PACK.md
- 900570_QUICK_FORECAST_FINAL_MANIFEST.md
- 900580_QUICK_FORECAST_CLOSURE_DECLARATION.md

# ============================================================
# 6. FINAL WORD
# ============================================================

final_word:
QuickForecast should now be handled as a closed canonical design package,
not as an open-ended concept draft.




# ============================================================
# PARENT CANONICAL ALIGNMENT NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines how QuickForecast aligns with higher-level canonical documents.

# ============================================================
# 1. ALIGNMENT TARGETS
# ============================================================

alignment_targets:
- Foundation Canonical
- Civilization System Rules Integrated
- Business OS Integrated Canonical
- ERP Design Bible Full

# ============================================================
# 2. FOUNDATION ALIGNMENT
# ============================================================

foundation_alignment:
QuickForecast must remain a governed application,
not an uncontrolled concept expansion.

alignment_points:
- explicit structure over uncontrolled evolution
- documented architecture and governed process
- explicit boundary over implicit behavior
- stable canonical reading order

QuickForecast implication:
QuickForecast must remain a clearly documented,
layered, and closed design package.

# ============================================================
# 3. CIVILIZATION SYSTEM RULE ALIGNMENT
# ============================================================

civilization_system_rule_alignment:
QuickForecast must comply with global canonical design rules.

alignment_points:
- canonical document discipline
- architecture / model / event / security separation
- explicit rule compliance
- no ambiguous cross-layer mixing
- stable root/index/rebuilt relationship

QuickForecast implication:
QuickForecast documents must preserve
overview / index / integrated / rebuilt consistency
and must not blur policy, architecture, implementation,
and operational meanings.

# ============================================================
# 4. BUSINESS OS ALIGNMENT
# ============================================================

business_os_alignment:
QuickForecast must be compatible with Business OS responsibility framing.

alignment_points:
- enterprise operation is governed
- approval boundary must remain explicit
- submission boundary must remain explicit
- AI or automation must not silently exceed authority
- application responsibility must stay explicit

QuickForecast implication:
QuickForecast Pro actions such as sharing,
approval routing, and enterprise handoff
must remain governed actions,
not implicit consequences of local draft save.

# ============================================================
# 5. ERP ALIGNMENT
# ============================================================

erp_alignment:
QuickForecast must coexist with ERP
without reframing itself as ERP replacement.

alignment_points:
- ERP retains formal enterprise density
- ERP remains suitable for deeper formal operation
- platform/business concerns should stay separated
- QuickForecast should not absorb ERP platform scope casually

QuickForecast implication:
QuickForecast is a mobile, high-immediacy companion application.
It may connect to ERP references and handoff routes,
but it must not redefine itself as the ERP primary system.

# ============================================================
# 6. CANONICAL POSITION SUMMARY
# ============================================================

canonical_position_summary:
QuickForecast is:

- foundation-aligned in governance
- civilization-rule-aligned in document discipline
- business-os-aligned in governed operation boundaries
- erp-aligned in coexistence and non-replacement framing

# ============================================================
# 7. DO NOT VIOLATE
# ============================================================

do_not_violate:
- do not reopen QuickForecast as uncontrolled concept work
- do not blur cross-layer responsibilities
- do not treat local save as enterprise acceptance
- do not imply ERP replacement
- do not bypass governed Pro action boundaries

# ============================================================
# 8. CONCLUSION
# ============================================================

conclusion:
QuickForecast is valid only when read as a governed,
layered, ERP-coexisting application design
inside the broader Civilization canonical system.




# ============================================================
# QUICK FORECAST COMMON COMPONENT ADOPTION REGISTRY
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines which common components QuickForecast uses,
which components are planned candidates,
which are not primary fits,
and which new common components QuickForecast can supply.

# ============================================================
# 1. ADOPTION STATUS LEGEND
# ============================================================

adoption_status_legend:
- adopted_now
- planned_later
- candidate_only
- not_primary_fit
- supplied_by_quickforecast_candidate

# ============================================================
# 2. ADOPTED NOW
# ============================================================

adopted_now:

- component:
  Draft / Work-in-progress Common
  status: adopted_now
  reason:
  QuickForecast is fundamentally a draft-heavy application.
  Forecast drafts, action drafts, proposal drafts,
  and profit preview drafts are all central.

- component:
  Template / Generated Output Common
  status: adopted_now
  reason:
  QuickForecast converts forecast thinking into proposal-oriented output.
  Generated business draft support is core.

- component:
  Submission Common
  status: adopted_now
  reason:
  QuickForecast Pro must distinguish local draft save
  from governed submission / enterprise-linked progression.

- component:
  Approval / Review Surface Common
  status: adopted_now
  reason:
  QuickForecast Pro requires explicit review,
  approval request, approval waiting, and return handling.

- component:
  Online Sync Common
  status: adopted_now
  reason:
  QuickForecast Pro must preserve synchronized state
  for shared, approved, and submitted work.

- component:
  App-internal Sharing Common
  status: adopted_now
  reason:
  Proposal drafts and forecast-derived outputs
  are natural sharing objects.

- component:
  Activity Log / Audit Trail Common
  status: adopted_now
  reason:
  Generated, edited, shared, approved, and handed-off actions
  need attributable history in QuickForecast Pro.

- component:
  External Notification Delivery Common
  status: adopted_now
  reason:
  Approval, return, and handoff notifications
  are naturally required in QuickForecast Pro.

- component:
  Channel Routing Common
  status: adopted_now
  reason:
  Notifications and enterprise-linked routing
  should not be app-hardcoded.

- component:
  ERP Publication Capability
  status: adopted_now
  reason:
  QuickForecast must support governed ERP-linked handoff/publication capability
  without positioning itself as ERP replacement.

# ============================================================
# 3. PLANNED LATER
# ============================================================

planned_later:

- component:
  Contact / Destination Common
  status: planned_later
  reason:
  Useful for proposal targets, share targets,
  review targets, and handoff destinations.

- component:
  Attachment / Evidence Common
  status: planned_later
  reason:
  Useful for forecast basis materials,
  supporting documents, and proposal evidence.

- component:
  Business AI Worker
  status: planned_later
  reason:
  Strong fit for proposal drafting assistance,
  summary assistance, and wording support,
  but should remain assistive, not authoritative.

- component:
  Summary / Digest Common
  status: planned_later
  reason:
  Useful for forecast summary,
  proposal summary, and profit preview summary.

- component:
  Reminder Common
  status: planned_later
  reason:
  Useful for pending review,
  pending handoff, and follow-up deadlines.

- component:
  Preference Common
  status: planned_later
  reason:
  Useful for default template settings,
  display preferences, and drafting defaults.

# ============================================================
# 4. CANDIDATE ONLY
# ============================================================

candidate_only:

- component:
  Publish Target Confirmation Common
  status: candidate_only
  reason:
  Can be useful in selected enterprise-linked cases,
  but is not core to the QuickForecast local-first chain.

# ============================================================
# 5. NOT PRIMARY FIT
# ============================================================

not_primary_fit:

- component:
  Secretary Interaction Common
  status: not_primary_fit
  reason:
  QuickForecast is not primarily a secretary-experience application.

- component:
  VisualRuntime Common
  status: not_primary_fit
  reason:
  Persona-driven visual experience is not a QuickForecast core requirement.

- component:
  Presence / Mood Presentation Common
  status: not_primary_fit
  reason:
  Not central to a forecast-originated proposal workbench.

- component:
  Companion Conversation Framing Common
  status: not_primary_fit
  reason:
  QuickForecast is business-draft oriented,
  not a companion-first conversational application.

- component:
  Schedule / Time-slot Planning Common
  status: not_primary_fit
  reason:
  Schedule structuring is secondary,
  not a primary QuickForecast value center.

# ============================================================
# 6. SUPPLIED BY QUICKFORECAST CANDIDATES
# ============================================================

supplied_by_quickforecast_candidates:

- component:
  Forecast Draft Common
  status: supplied_by_quickforecast_candidate
  reason:
  Forecast hypothesis drafting and editable forecast objects
  can be reused by other business applications.

- component:
  Scenario Comparison Common
  status: supplied_by_quickforecast_candidate
  reason:
  Multi-scenario comparison is broadly reusable.

- component:
  Action Recommendation Common
  status: supplied_by_quickforecast_candidate
  reason:
  Turning forecast meaning into action candidates
  has cross-application value.

- component:
  Proposal Draft Builder Common
  status: supplied_by_quickforecast_candidate
  reason:
  Proposal generation from business context
  can serve many applications.

- component:
  Profit Preview Common
  status: supplied_by_quickforecast_candidate
  reason:
  Revenue / cost / profit image generation
  has strong reuse potential.

- component:
  Assumption / Basis Common
  status: supplied_by_quickforecast_candidate
  reason:
  Explicit basis tracking is widely reusable
  across planning and estimation applications.

- component:
  Generated Business Draft Common
  status: supplied_by_quickforecast_candidate
  reason:
  Editable AI-assisted business draft generation
  can be shared across multiple apps.

- component:
  Forecast-to-Proposal Trace Common
  status: supplied_by_quickforecast_candidate
  reason:
  Traceability from forecast through proposal and profit
  is a strong reusable pattern.

# ============================================================
# 7. QUICKFORECAST-SPECIFIC RESIDUAL RESPONSIBILITY
# ============================================================

quickforecast_specific_residual_responsibility:
- preserve the canonical Forecast -> Action -> Proposal -> Profit chain
- preserve ERP coexistence and non-replacement framing
- preserve QuickForecast Basic / Pro tier boundary
- preserve local save and governed action separation
- preserve proposal-oriented business value identity

# ============================================================
# 8. CONCLUSION
# ============================================================

conclusion:
QuickForecast is primarily a Business OS common-component consumer,
with several strong opportunities to supply new reusable common components
back to the application ecosystem.




# ============================================================
# QUICK FORECAST PRICING DESIGN NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes pricing design decisions.

design_summary:
QuickForecast pricing is based on business-operation value,
not on restricting the app until it becomes unusable.

adopted_direction:
- free tier keeps core value chain visible
- paid personal tier expands continuity
- paid team tier expands collaboration and governance
- ERP-connected capability stays in paid team scope

important_notes:
- QuickForecast remains a monthly subscription app
- free tier should remain compelling
- paid tier should feel operationally stronger, not artificially unlocked




# ============================================================
# FEATURE EXPANSION DESIGN NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes the adopted expansion set.

priority_a:
- scenario-switched proposal generation
- proposal basis panel
- internal explanation draft
- explainable profit preview
- internal response tracking

priority_b:
- market event input
- proposal template switching
- content recommendation

design_intent:
These additions strengthen QuickForecast
as a forecast-originated proposal workbench,
not as a pure forecasting engine or CRM replacement.




# ============================================================
# EXPANDED SCREEN INVENTORY NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes screen inventory impact after expansion.

summary:
The competitor-aware feature expansion does not require
a full explosion of new top-level screens.

design_decision:
Most new capability should be absorbed as embedded surfaces
inside existing core screens.

why:
This preserves mobile immediacy and avoids UI fragmentation.

top_level_screen_growth_rule:
Only promote an embedded surface to its own screen
when edit density, review density, or operational complexity
becomes too high for the parent screen.




# ============================================================
# SCREEN ADDITION DECISION NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Records which additions are embedded surfaces
and which remain full screens.

embedded_surfaces_now:
- scenario switched proposal
- proposal basis panel
- internal explanation draft
- explainable profit surface
- market event input
- proposal template selection
- content recommendation

full_screen_candidates_later:
- internal response tracking full board
- market event dedicated management screen
- proposal variant comparison dedicated screen

decision_rule:
Preserve fast mobile flow first.
Do not increase screen count unless strong density justification exists.




# ============================================================
# VM REDUCER REPOSITORY REFRESH NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes implementation responsibility refresh after feature expansion.

summary:
The feature expansion is absorbed mainly by:
- ProposalBuilderViewModel
- ProfitPreviewViewModel
- ForecastDetailViewModel
- ProApprovalSubmissionViewModel

design_intent:
Preserve the original app structure,
but deepen responsibility where the proposal-centered value grows most.




# ============================================================
# ANDROID PRIORITY REFRESH NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes refreshed Android implementation priority.

summary:
After feature expansion,
implementation priority remains proposal-centered.

important_decision:
Do not begin with governance-heavy Pro behavior.
Do not begin with recommendation-heavy behavior.

start_here:
- local chain
- proposal builder
- profit preview

expand_next:
- scenario switch
- proposal basis
- explainable profit
- market event input
- template selection
- internal explanation

expand_later:
- tracking
- approval
- sync
- notification
- ERP handoff




# ============================================================
# IMPLEMENTATION RESTART ENTRY NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the formal entry set when implementation restarts.

restart_entry_set:
- 000_QUICK_FORECAST_OVERVIEW.md
- 00_QUICK_FORECAST_INTEGRATED_REBUILT.md
- 020110_FORECAST_ACTION_PROPOSAL_PROFIT_ARCHITECTURE.md
- 020130_FORECAST_TO_PROPOSAL_DIFFERENTIATION_ARCHITECTURE.md
- 090410_EXPANDED_SCREEN_INVENTORY_INTERFACE.md
- 120670_EXPANDED_VIEWMODEL_RESPONSIBILITY_IMPLEMENTATION.md
- 120680_EXPANDED_REDUCER_RESPONSIBILITY_IMPLEMENTATION.md
- 120690_EXPANDED_REPOSITORY_RESPONSIBILITY_IMPLEMENTATION.md
- 130280_ANDROID_EXPANDED_IMPLEMENTATION_PRIORITY_PLAN.md
- 130320_ANDROID_EXPANDED_IMPLEMENTATION_SEQUENCE_PLAN.md
- 130330_ANDROID_IMPLEMENTATION_READING_ORDER_PLAN.md
- 130340_ANDROID_PHASE_GATE_PLAN.md
- 130350_ANDROID_EXPANDED_DONE_CRITERIA_PLAN.md

restart_rule:
Do not restart implementation from scattered files.
Restart from this entry set only.




# ============================================================
# IMPLEMENTATION START CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Checklist before Android implementation starts.

checklist:
- canonical positioning is understood
- ERP coexistence is understood
- Basic / Pro boundary is understood
- local save and governed action separation is understood
- screen responsibility realignment is understood
- ViewModel / reducer / repository refresh is understood
- phase 1 scope is frozen
- phase 2 and later are deferred consciously
- implementation starts from local-first core only

blockers:
- starting from Pro-heavy workflow
- starting from notification / handoff first
- starting from recommendation-heavy features
- skipping canonical reading order




# ============================================================
# MULTICURRENCY DESIGN NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes multicurrency design direction.

summary:
QuickForecast multicurrency support is not simple display switching only.
It includes:
- source currency handling
- base currency comparison
- display currency rendering
- exchange rate traceability
- proposal monetary basis visibility
- multicurrency profit preview

important_decision:
Display currency and canonical money meaning remain separate.




# ============================================================
# ANDROID MINIMUM FILESET BUNDLE NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes the minimum Android fileset decision
after multilingual and multicurrency expansion.

summary:
Phase 1 must start with:
- core chain classes
- locale preference foundation
- currency preference foundation
- money-safe structure
- formatter and text resolver foundation

not_now:
- full translation-variant persistence
- full exchange-rate snapshot density
- governed workflow
- ERP handoff
- advanced recommendation




# ============================================================
# DEVELOPMENT 130 COMPLETION NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes the strengthened 130-layer development design.

summary:
The 130 layer now includes:
- expanded implementation priority
- phase breakdown
- reading order
- phase gates
- done criteria
- minimum fileset
- minimum classset
- phase 1 generation target list
- phase 1 acceptance criteria
- phase 2 entry decision rules
- development restart entry

result:
130 layer is now materially closer to implementation-direct guidance.




# ============================================================
# ANDROID PHASE 1 FILE GENERATION NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes actual Phase 1 generation intent.

summary:
Phase 1 generation is now fixed at the level of:
- directory structure
- concrete file list
- batch grouping
- detailed generation order
- generation boundary

result:
The design now supports direct file-generation planning
without collapsing later multilingual and multicurrency expansion.




# ============================================================
# MULTI DEVICE SUPPORT NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes the multi-device support decision.

summary:
QuickForecast is explicitly designed for:
- iPhone
- Android smartphones
- tablets including iPad-class and Android tablet-class devices

important_decision:
Use one canonical workflow and adaptive presentation,
not separate device-specific business flows.




# ============================================================
# ANDROID TEMPLATE STARTER NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes the Android template starter-pack decision.

summary:
The next generation step is not full app generation.
It is a starter-pack that freezes:
- model shape
- persistence shape
- settings shape
- formatter shape
- reducer / viewmodel / screen pattern
- multilingual entry
- multicurrency entry




# ============================================================
# DESIGN HARDENING NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes the current design hardening pass.

hardened_areas:
- screen responsibility boundaries
- multilingual and multicurrency display priority
- implementation boundary discipline
- adaptive presentation without flow divergence
- phase boundary hardening
- restart reading order hardening

result:
QuickForecast design is now better protected against
role drift,
device drift,
and multilingual / multicurrency boundary collapse.




# ============================================================
# PRICING POSITIONING BOUNDARY NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes the pricing, positioning, and ERP-boundary hardening pass.

summary:
QuickForecast is positioned as:
- fast forecast-centered judgment support
- proposal and profit draft accelerator
- lightweight companion beside ERP

key_decisions:
- ERP is not replaced
- free, paid, and ERP-linked scopes stay distinct
- pricing must be justified by speed, clarity, and draft value




# ============================================================
# CROSS APPLICATION OVERLAP NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes the cross-application overlap hardening pass.

summary:
QuickForecast is now more clearly separated from:
- ERP
- EstimateCreator
- ProjectFlow
- PocketSecretary
- BusinessOS common foundations

key_result:
QuickForecast may remain adjacent to proposal,
profit,
and handoff-related meanings
without losing its forecast-centered identity.




# ============================================================
# FINAL REVIEW HARDENING CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the hardened final review checklist for QuickForecast.

review_areas:

1_product_identity:
- [ ] QuickForecast remains forecast-centered
- [ ] product identity is still lightweight and judgment-speed centered
- [ ] no silent drift into heavy governance shell

2_positioning_and_boundary:
- [ ] ERP boundary remains clear
- [ ] EstimateCreator boundary remains clear
- [ ] ProjectFlow boundary remains clear
- [ ] PocketSecretary boundary remains clear
- [ ] BusinessOS common foundation boundary remains clear

3_free_paid_erp_scope:
- [ ] free scope is useful on its own
- [ ] paid scope deepens app value instead of only gating basics
- [ ] ERP linkage is additive and not the sole product reason to exist

4_multilingual:
- [ ] multilingual policy is reflected in screen design
- [ ] fallback behavior is explicit
- [ ] source and translated visibility rules are consistent
- [ ] compact vs expanded multilingual visibility rules are coherent

5_multicurrency:
- [ ] source / base / display currency meanings are distinct
- [ ] money meaning is not collapsed into naked number rendering
- [ ] compact vs expanded multicurrency visibility rules are coherent

6_multi_device:
- [ ] iPhone support is explicit
- [ ] Android support is explicit
- [ ] tablet support is explicit
- [ ] adaptive layout does not create business-flow divergence
- [ ] tablet expansion remains presentation expansion only

7_screen_responsibility:
- [ ] dashboard role remains entry-summary centered
- [ ] forecast list role remains browse-select centered
- [ ] forecast detail remains read-centered
- [ ] forecast editor remains edit-centered
- [ ] proposal builder remains proposal-edit centered
- [ ] profit preview remains preview-centered
- [ ] settings remains preference-centered

8_implementation_boundary:
- [ ] repository does not own final UI wording
- [ ] formatter does not own business meaning
- [ ] viewmodel does not rewrite canonical money meaning
- [ ] screen layer does not own canonical fallback policy
- [ ] adaptive layout code does not fork canonical workflow

9_phase_boundary:
- [ ] Phase 1 scope remains realistic
- [ ] Phase 2 targets remain additive and clean
- [ ] no Phase 2 concept was silently forced into Phase 1

10_pricing_value:
- [ ] pricing is justified by speed / clarity / draft acceleration
- [ ] pricing is not justified mainly by accidental complexity
- [ ] pricing is not justified mainly by ERP lock-in

11_canonical_quality:
- [ ] wording is consistent across files
- [ ] role names are stable
- [ ] no contradictory scope statement remains
- [ ] index / overview / rebuilt stay aligned

close_judgment_rule:
Close only when all major areas above pass
without role drift,
boundary blur,
or multilingual / multicurrency meaning collapse.




# ============================================================
# CLOSE DECISION GATE NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the gate for final close decision.

must_pass_before_close:
- product identity check
- cross-application boundary check
- multilingual check
- multicurrency check
- multi-device check
- screen responsibility check
- implementation boundary check
- phase boundary check
- pricing value check
- canonical consistency check

must_not_remain_before_close:
- hidden ERP-role drift
- hidden estimate-role drift
- hidden project-control-role drift
- hidden secretary-role drift
- device-based workflow divergence
- money meaning ambiguity
- fallback rule ambiguity

result_rule:
A near-complete file count is not enough.
Close requires semantic boundary integrity.




# ============================================================
# REVIEWER FOCUS NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Helps reviewers focus on high-risk areas.

high_risk_areas:
- app identity drift
- ERP overlap drift
- estimate overlap drift
- multilingual fallback ambiguity
- multicurrency meaning collapse
- tablet-only role drift
- pricing justification weakness

reviewer_prompt:
Review not only what files exist,
but whether QuickForecast still feels like
one coherent forecast-centered application.




# ============================================================
# PRE CLOSE TOTAL INSPECTION CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the total inspection checklist immediately before close judgment.

inspection_areas:

1_root_and_navigation:
- [ ] root overview exists and remains current
- [ ] root index exists and remains current
- [ ] rebuilt integrated file reflects current file set
- [ ] no newly added file is missing from relevant index

2_layer_integrity:
- [ ] architecture layer reflects current product identity
- [ ] policy layer reflects current pricing and boundary decisions
- [ ] interface layer reflects multilingual / multicurrency / multi-device rules
- [ ] implementation layer reflects boundary discipline only, not accidental runtime drift
- [ ] development layer reflects realistic Phase 1 and Phase 2 separation
- [ ] meta layer reflects current review state and not an older state

3_semantic_integrity:
- [ ] no product identity contradiction remains
- [ ] no ERP boundary contradiction remains
- [ ] no free / paid contradiction remains
- [ ] no multilingual contradiction remains
- [ ] no multicurrency contradiction remains
- [ ] no phone / tablet contradiction remains
- [ ] no cross-application overlap contradiction remains

4_screen_integrity:
- [ ] dashboard responsibility is stable
- [ ] forecast list responsibility is stable
- [ ] forecast detail responsibility is stable
- [ ] forecast editor responsibility is stable
- [ ] proposal builder responsibility is stable
- [ ] profit preview responsibility is stable
- [ ] settings responsibility is stable

5_scope_integrity:
- [ ] Phase 1 scope remains minimum and coherent
- [ ] Phase 2 scope remains additive and coherent
- [ ] advanced concepts did not silently collapse back into Phase 1
- [ ] app remains useful before ERP linkage

6_close_readiness:
- [ ] final review hardening checklist is passable
- [ ] close decision gate note is satisfiable
- [ ] reviewer focus note risks are addressed
- [ ] no unresolved major ambiguity remains

judgment_rule:
Close only if total inspection shows
index integrity,
semantic integrity,
and scope integrity together.




# ============================================================
# INDEX AND REBUILT ALIGNMENT NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the final alignment check between indexes and rebuilt output.

required_alignment:
- every canonical file should be represented in the correct layer index
- rebuilt output should not lag behind layer indexes
- rebuilt output should not imply stale scope
- no deleted concept should remain only in rebuilt output
- no newly hardened boundary should exist only in one location

important_rule:
A design set is not close-ready
if indexes and rebuilt output disagree on product meaning.




# ============================================================
# SEMANTIC DRIFT FINAL NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Provides the final semantic drift watchlist.

drift_watchlist:
- forecast-centered identity drifting into estimate-authoritative identity
- quick judgment support drifting into heavy enterprise workflow shell
- lightweight app identity drifting into ERP mimic behavior
- proposal assistance drifting into full estimate ownership
- profit preview drifting into accounting-authoritative ownership
- multi-device adaptation drifting into device-specific workflow divergence
- multilingual support drifting into inconsistent fallback meaning
- multicurrency support drifting into ambiguous money meaning

final_rule:
Close requires semantic stability,
not only documentation volume.




# ============================================================
# PRE CLOSE DECISION SUMMARY TEMPLATE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Template for summarizing the final pre-close decision.

template_fields:
- product_identity_status
- boundary_status
- multilingual_status
- multicurrency_status
- multi_device_status
- pricing_status
- phase_boundary_status
- index_alignment_status
- rebuilt_alignment_status
- remaining_major_risks
- close_recommendation

rule:
Use this template only after
pre-close total inspection has been completed.




# ============================================================
# CLOSE DECISION SUMMARY NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Provides a close-decision summary for QuickForecast design status.

current_summary:
QuickForecast has been strengthened across:
- multilingual support
- multicurrency support
- multi-device support
- screen responsibility hardening
- implementation boundary hardening
- phase boundary hardening
- pricing and positioning hardening
- ERP boundary hardening
- cross-application overlap hardening
- final review and pre-close inspection hardening

current_identity:
QuickForecast is a forecast-centered,
lightweight,
judgment-speed oriented application
for quick business review,
proposal starting support,
and quick profit preview.

close_readiness_view:
The design is materially close-ready
if no unresolved contradiction remains
between:
- root files
- layer indexes
- rebuilt output
- semantic boundary notes
- final review checklists

important_condition:
Close readiness is semantic readiness,
not only file-count readiness.




# ============================================================
# REMAINING RISK DECISION NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Captures remaining risk categories before final close recommendation.

major_risk_categories_to_recheck:
- hidden overlap with ERP
- hidden overlap with EstimateCreator
- hidden overlap with ProjectFlow
- hidden overlap with PocketSecretary
- hidden multilingual fallback ambiguity
- hidden multicurrency meaning ambiguity
- hidden device-based role drift
- hidden pricing-value weakness
- stale rebuilt or stale index references

close_blocking_rule:
If any remaining risk changes the canonical product meaning,
close should pause until resolved.

non_blocking_rule:
Minor wording polish alone
does not have to block close
unless it causes semantic confusion.




# ============================================================
# HANDOFF READY DECISION NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines when QuickForecast is ready for handoff as a design-complete set.

handoff_ready_when:
- the application identity is stable
- nearby app boundaries are stable
- multilingual and multicurrency meanings are stable
- multi-device meaning is stable
- phase boundaries are stable
- final review hardening checklist is passable
- pre-close total inspection is passable
- rebuilt output and indexes are aligned

handoff_note:
Handoff-ready does not mean implementation started.
It means the design set is coherent enough
to be resumed later without semantic confusion.




# ============================================================
# CLOSE RECOMMENDATION TEMPLATE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Template for issuing the final close recommendation.

template:
close_recommendation:
- recommended_status:
- reason_summary:
- identity_integrity:
- boundary_integrity:
- multilingual_integrity:
- multicurrency_integrity:
- multi_device_integrity:
- pricing_integrity:
- index_and_rebuilt_integrity:
- remaining_blockers:
- recommended_next_action:

rule:
Use only after
close decision summary note,
remaining risk decision note,
and pre-close total inspection checklist
have all been reviewed together.




# ============================================================
# DESIGN COMPLETION CANDIDATE NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
States whether QuickForecast can be treated as a design-completion candidate.

design_completion_candidate_definition:
A design-completion candidate is a design set that:
- has stable product identity
- has stable boundary definitions
- has stable scope definitions
- has stable multilingual / multicurrency / multi-device rules
- can be resumed later without semantic confusion
- does not require implementation to validate its core meaning

current_assessment:
QuickForecast may be treated as a design-completion candidate
when final semantic checks pass.

important_rule:
Design completion candidate
does not mean implementation started,
implementation finished,
or implementation guaranteed.
It means the design set itself is coherent enough to hand off and resume later.




# ============================================================
# DESIGN COMPLETE VS IMPLEMENTATION LATER NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Separates design completion from implementation timing.

design_complete_means:
- the app role is fixed
- the app boundary is fixed
- the layer meanings are fixed
- the major review risks are known
- later implementation can proceed from a stable design base

design_complete_does_not_mean:
- source code exists
- implementation started
- implementation priority is immediate
- build readiness is already verified
- runtime behavior is already validated

project_rule:
QuickForecast may be design-complete
while implementation remains explicitly deferred.




# ============================================================
# HANDOFF CLOSE IMPLEMENTATION RELATION NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Clarifies the relation among handoff, close, and later implementation.

handoff_meaning:
The design can be passed forward
without re-discovering its identity and boundaries.

close_meaning:
The design set is semantically settled enough
to stop adding design corrections for now.

implementation_later_meaning:
Actual source generation and build work
may happen in a later phase
without reopening core product meaning.

relation_rule:
handoff-ready and close-ready are design judgments.
implementation-later is a separate scheduling judgment.




# ============================================================
# FINAL DESIGN JUDGMENT TEMPLATE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Template for final design judgment.

template:
design_completion_candidate:
- yes_or_no:
- reason_summary:

handoff_ready:
- yes_or_no:
- reason_summary:

close_ready:
- yes_or_no:
- reason_summary:

implementation_status:
- deferred / not_started / in_scope_later

blocking_semantic_issues:
- item_1:
- item_2:
- item_3:

final_note:




# ============================================================
# FINAL DESIGN JUDGMENT NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Records the current final design judgment state for QuickForecast.

current_judgment:
- design_completion_candidate: yes
- handoff_ready: yes
- close_ready: conditional-yes
- implementation_status: deferred / not started

reason_summary:
QuickForecast has reached a state where:
- product identity is stable
- adjacent app boundaries are stable
- multilingual rules are explicit
- multicurrency rules are explicit
- multi-device rules are explicit
- pricing and positioning are explicit
- phase boundaries are explicit
- review and pre-close inspection criteria are explicit

conditional_close_meaning:
Close is appropriate
if no additional semantic contradiction is found
during the final human read-through of:
- root overview
- root index
- rebuilt integrated file
- latest meta judgment notes

important_rule:
This judgment is about design coherence,
not implementation progress.




# ============================================================
# BLOCKER STATUS NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
States whether any blocker remains before close recommendation.

blocking_items:
- no confirmed semantic blocker currently recorded

watch_items:
- stale index vs rebuilt mismatch
- hidden wording contradiction in root files
- hidden overlap wording with adjacent applications
- hidden ambiguity in free / paid / ERP-linked wording

rule:
Watch items require final human confirmation,
but are not automatic blockers unless they alter canonical meaning.




# ============================================================
# CLOSE RECOMMENDATION NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Provides the current close recommendation.

close_recommendation:
- recommended_status: recommend close after final human read-through
- reason_summary:
  QuickForecast appears semantically settled enough
  to stop active design expansion for now.
- identity_integrity: pass
- boundary_integrity: pass
- multilingual_integrity: pass
- multicurrency_integrity: pass
- multi_device_integrity: pass
- pricing_integrity: pass
- index_and_rebuilt_integrity: pending final human read-through
- remaining_blockers: none confirmed
- recommended_next_action:
  perform one final human read-through,
  then treat QuickForecast as design-closed and handoff-ready.

note:
This recommendation assumes
implementation remains explicitly deferred.




# ============================================================
# POST CLOSE HANDLING NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines how to treat the design after close.

post_close_rules:
- do not reopen closed scope casually
- future additions should be additive
- implementation work later must respect closed semantic boundaries
- if new feature requests change product identity,
  reopen architecture and policy review explicitly

normal_post_close_changes:
- wording polish
- additive clarifications
- implementation preparation references
- future phase notes

reopen_required_changes:
- identity change
- boundary change
- pricing logic change
- free / paid / ERP scope change
- multilingual or multicurrency meaning change
- multi-device flow meaning change




# ============================================================
# DESIGN CLOSURE DECLARATION
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Declares QuickForecast design closure status.

declaration:
QuickForecast is hereby treated as
a design-closed application set,
with implementation explicitly deferred.

closure_meaning:
- product identity is fixed
- application boundary is fixed
- multilingual meaning is fixed
- multicurrency meaning is fixed
- multi-device meaning is fixed
- pricing and positioning are fixed
- phase boundary is fixed enough for later restart
- handoff is allowed without semantic rediscovery

explicit_non_meaning:
This declaration does not mean:
- implementation has started
- implementation has completed
- runtime verification exists
- build verification exists

operational_rule_after_closure:
Future work should be treated as one of:
- additive clarification
- implementation preparation
- implementation execution
- explicit reopen due to product-meaning change

reopen_required_if:
- product identity changes
- ERP boundary changes
- free / paid / ERP-linked boundary changes
- multilingual meaning changes
- multicurrency meaning changes
- multi-device flow meaning changes
- adjacent-app boundary meaning changes

final_statement:
QuickForecast is closed as a design set,
handoff-ready,
and implementation-later by explicit decision.




# ============================================================
# NEXT PHASE ENTRY NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the correct entry point when implementation is resumed later.

restart_entry:
When implementation resumes later,
start from the design-closed meaning first,
not from ad-hoc source generation.

restart_order:
1. 000_QUICK_FORECAST_CURRENT_STATUS.md
2. 900950_FINAL_DESIGN_JUDGMENT_NOTE.md
3. 900970_CLOSE_RECOMMENDATION_NOTE.md
4. 900990_DESIGN_CLOSURE_DECLARATION.md
5. 130420_DEVELOPMENT_RESTART_ENTRY_PLAN.md
6. 130390_PHASE1_GENERATION_TARGET_FILE_LIST_PLAN.md
7. 130400_PHASE1_ACCEPTANCE_CRITERIA_PLAN.md

restart_rule:
Do not reopen product meaning casually.
Only implementation should restart,
unless an explicit reopen decision is made.

implementation_entry_scope:
- implementation preparation
- implementation execution
- test and validation planning
- additive clarifications only

reopen_required_scope:
- identity changes
- pricing changes
- ERP boundary changes
- multilingual meaning changes
- multicurrency meaning changes
- multi-device flow meaning changes




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
- 900350_FINAL_POLISH_NOTE.md
- 900360_OVERVIEW_ROLE_CLARIFICATION_NOTE.md
- 900370_DESIGN_ONLY_BOUNDARY_NOTE.md
- 900380_FINAL_REVIEW_CHECKLIST.md
- 900390_FINAL_POLISH_SCRIPT.sh
- 900400_QUICK_FORECAST_HANDOVER_NOTE.md
- 900410_WORDING_CANONICAL_RULE.md
- 900420_STYLE_CANONICAL_RULE.md
- 900430_AMBIGUITY_AND_DUPLICATION_REVIEW_NOTE.md
- 900440_FINAL_POLISH_REVIEW_CHECKLIST.md
- 900450_POLISH_EXECUTION_NOTE.md
- 900460_SHORT_HANDOVER_SOURCE_NOTE.md
- 900470_WORDING_POLISH_EXECUTION_NOTE.md
- 900480_CROSS_APPLICATION_WORDING_ALIGNMENT_NOTE.md
- 900490_APPLICATION_POSITIONING_ALIGNMENT_RULE.md
- 900500_TIER_ALIGNMENT_RULE.md
- 900510_DESIGN_MATURITY_ALIGNMENT_RULE.md
- 900520_CROSS_APPLICATION_REVIEW_CHECKLIST.md
- 900530_CANONICAL_PHRASE_LIBRARY.md
- 900540_QUICK_FORECAST_CLOSE_NOTE.md
- 900550_QUICK_FORECAST_FINAL_VERIFY_REPORT.md
- 900560_QUICK_FORECAST_CLOSURE_STARTER_PACK.md
- 900570_QUICK_FORECAST_FINAL_MANIFEST.md
- 900580_QUICK_FORECAST_CLOSURE_DECLARATION.md
- 900590_PARENT_CANONICAL_ALIGNMENT_NOTE.md
- 900600_QUICK_FORECAST_COMMON_COMPONENT_ADOPTION_REGISTRY.md
- 900610_COMMON_COMPONENT_LEDGER_SYNC_NOTE.md
- 900620_QUICK_FORECAST_PRICING_DESIGN_NOTE.md
- 900630_FEATURE_EXPANSION_DESIGN_NOTE.md
- 900640_EXPANDED_SCREEN_INVENTORY_NOTE.md
- 900650_SCREEN_ADDITION_DECISION_NOTE.md
- 900660_VM_REDUCER_REPOSITORY_REFRESH_NOTE.md
- 900670_ANDROID_PRIORITY_REFRESH_NOTE.md
- 900680_IMPLEMENTATION_RESTART_ENTRY_NOTE.md
- 900690_IMPLEMENTATION_START_CHECKLIST.md
- 900700_MULTILINGUAL_DESIGN_NOTE.md
- 900710_MULTICURRENCY_DESIGN_NOTE.md
- 900720_ANDROID_MINIMUM_FILESET_BUNDLE_NOTE.md
- 900730_DEVELOPMENT_130_COMPLETION_NOTE.md
- 900740_ANDROID_PHASE1_FILE_GENERATION_NOTE.md
- 900750_MULTI_DEVICE_SUPPORT_NOTE.md
- 900760_ANDROID_TEMPLATE_STARTER_NOTE.md
- 900770_DESIGN_HARDENING_NOTE.md
- 900780_PRICING_POSITIONING_BOUNDARY_NOTE.md
- 900790_CROSS_APPLICATION_OVERLAP_NOTE.md
- 900800_FINAL_REVIEW_HARDENING_CHECKLIST.md
- 900810_CLOSE_DECISION_GATE_NOTE.md
- 900820_REVIEWER_FOCUS_NOTE.md
- 900830_PRE_CLOSE_TOTAL_INSPECTION_CHECKLIST.md
- 900840_INDEX_AND_REBUILT_ALIGNMENT_NOTE.md
- 900850_SEMANTIC_DRIFT_FINAL_NOTE.md
- 900860_PRE_CLOSE_DECISION_SUMMARY_TEMPLATE.md
- 900870_CLOSE_DECISION_SUMMARY_NOTE.md
- 900880_REMAINING_RISK_DECISION_NOTE.md
- 900890_HANDOFF_READY_DECISION_NOTE.md
- 900900_CLOSE_RECOMMENDATION_TEMPLATE.md
- 900910_DESIGN_COMPLETION_CANDIDATE_NOTE.md
- 900920_DESIGN_COMPLETE_VS_IMPLEMENTATION_LATER_NOTE.md
- 900930_HANDOFF_CLOSE_IMPLEMENTATION_RELATION_NOTE.md
- 900940_FINAL_DESIGN_JUDGMENT_TEMPLATE.md
- 900950_FINAL_DESIGN_JUDGMENT_NOTE.md
- 900960_BLOCKER_STATUS_NOTE.md
- 900970_CLOSE_RECOMMENDATION_NOTE.md
- 900980_POST_CLOSE_HANDLING_NOTE.md
- 900990_DESIGN_CLOSURE_DECLARATION.md
- 901000_NEXT_PHASE_ENTRY_NOTE.md




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
# QUICK FORECAST DESIGN COMPLETION REPORT
# ============================================================

status: canonical
layer: application
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Records formal design completion for QuickForecast.

final_conclusion:
QuickForecast is design-complete.

completion_meaning:
The application now has a complete and coherent design set across:
- identity
- scope
- layer structure
- screen responsibility
- implementation boundary meaning
- pricing and positioning
- multilingual support
- multicurrency support
- multi-device support
- cross-application boundary
- review / handoff / close judgment

completion_non_meaning:
This does not mean:
- implementation has started
- implementation has completed
- runtime has been verified
- build has been verified

formal_status:
- design_complete: yes
- handoff_ready: yes
- close_ready: yes
- implementation_started: no
- implementation_deferred: yes

result:
QuickForecast should now be treated as
a completed design artifact set
ready for later implementation restart.


<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/00_QUICK_FORECAST_INTEGRATED_REBUILT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/010.constitution/010110_QUICK_FORECAST_BASIC_PRO_CONSTITUTION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/010.constitution/010110_QUICK_FORECAST_BASIC_PRO_CONSTITUTION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/010.constitution/010120_QUICK_FORECAST_ERP_COEXISTENCE_CONSTITUTION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/010.constitution/010120_QUICK_FORECAST_ERP_COEXISTENCE_CONSTITUTION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/010.constitution/010_QUICK_FORECAST_CONSTITUTION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/010.constitution/010_QUICK_FORECAST_CONSTITUTION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/010.constitution/011110_QUICKFORECAST_COMPETITIVE_POSITIONING_NOTE.md -->
# ============================================================
# QUICKFORECAST COMPETITIVE POSITIONING NOTE
# ============================================================

status: canonical
layer: constitution
system: applications
application: QuickForecast
directory: 010.constitution
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: competitive-positioning-note

purpose:
Clarifies the differentiator that should be made explicit in the
current QuickForecast design without rewriting its existing core.

positioning_summary:
- QuickForecast is not only a simple prediction dashboard.
- Its durable value is management control across forecast creation,
  scenario comparison, signal aggregation, exception surfacing,
  and decision-support visibility.
- The differentiator is not simple chart display, but forecast-level
  control that keeps management attention and business risk visible.

preserved_core:
- forecast and outlook operation identity
- existing business operation role
- existing management support direction
- existing platform direction
- existing separation of operational detail and management summary

differentiator_to_make_explicit:
- management forecast control
- scenario comparison visibility
- signal aggregation from adjacent business apps
- exception and decision-support surfacing

competitive_contrast:
- not merely a chart page
- not merely a KPI list
- not merely a spreadsheet viewer
- positioned as a management control layer that connects
  signal aggregation, scenario review, forecast visibility,
  and management attention routing

non_goals_of_this_note:
- no full constitutional rewrite
- no implementation start
- no destructive scope replacement
- no framework decision

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/010.constitution/011110_QUICKFORECAST_COMPETITIVE_POSITIONING_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/010.constitution/constitution_INDEX.md -->
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

- 011110_QUICKFORECAST_COMPETITIVE_POSITIONING_NOTE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/010.constitution/constitution_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/010.constitution/constitution_OVERVIEW.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/010.constitution/constitution_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/019_PRICING_TIER_CANONICAL.md -->
# ============================================================
# QuickForecast Pricing Tier Canonical
# ============================================================

status: canonical
system: QuickForecast
topic: pricing_tier
owner: Boss
prepared_by: Zero

tier_model:
  - name: Basic
    billing_type: monthly
    price_jpy_monthly: 0
    summary:
      - 一般データのみで需要予測を行う無料層
      - ERP未連携
    included:
      - 一般データベース予測
      - 簡易予測根拠表示
      - 企画書ドラフト
      - 提案書ドラフト
      - 保存と見返し
    excluded:
      - ERPデータ利用
      - 社内実績データ利用
      - ERP連携前提の高度分析

  - name: Pro
    billing_type: monthly
    price_jpy_monthly: 500
    summary:
      - ERPデータを含む実務向け上位層
      - 現場でそのまま業務提案に使う前提
    included:
      - Basic の全機能
      - ERPデータ利用
      - 社内実績データ利用
      - 商品別予測
      - 顧客別予測
      - 拠点別予測
      - 詳細提案ドラフト
      - 実績比較
      - 精度振り返り
    excluded:
      - ERP正本を自動確定する権限

pricing_policy_notes:
  currency: JPY
  billing_cycle: monthly
  fixed_tier_names:
    - Basic
    - Pro
  canonical_prices:
    Basic: 0
    Pro: 500

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/019_PRICING_TIER_CANONICAL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/020.architecture/020110_FORECAST_ACTION_PROPOSAL_PROFIT_ARCHITECTURE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/020.architecture/020110_FORECAST_ACTION_PROPOSAL_PROFIT_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/020.architecture/020120_MOBILE_IMMEDIACY_ARCHITECTURE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/020.architecture/020120_MOBILE_IMMEDIACY_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/020.architecture/020130_FORECAST_TO_PROPOSAL_DIFFERENTIATION_ARCHITECTURE.md -->
# ============================================================
# FORECAST TO PROPOSAL DIFFERENTIATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the architectural differentiation of QuickForecast
after competitor-aware feature expansion.

architectural_position:
QuickForecast should not compete as:
- a pure demand-planning engine
- a pure proposal management tool
- a pure CRM replacement

architectural_strength:
QuickForecast should compete as:
a forecast-originated proposal drafting workbench
that connects:
- forecast
- scenario
- action
- proposal
- profit
- pre-approval internal operation

new_architecture_extensions:
- scenario-switched proposal generation
- proposal basis panel
- internal explanation draft generation
- explainable profit preview
- pre-handoff internal response tracking
- market event input
- proposal template switching
- content recommendation

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/020.architecture/020130_FORECAST_TO_PROPOSAL_DIFFERENTIATION_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/020.architecture/020140_QUICK_FORECAST_POSITIONING_ARCHITECTURE.md -->
# ============================================================
# QUICK FORECAST POSITIONING ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the architectural positioning of QuickForecast.

positioning:
QuickForecast is a lightweight forecast-first application
for fast business judgment support,
not a full ERP replacement.

core_identity:
- quick input
- quick review
- quick proposal drafting
- quick profit preview
- meeting-time and field-time usability

not_primary_identity:
- full master-data governance
- full enterprise workflow governance
- full accounting settlement ownership
- full ERP lifecycle ownership

architectural_role:
QuickForecast exists beside ERP,
not above ERP and not under ERP.
It accelerates early-stage judgment and draft formation.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/020.architecture/020140_QUICK_FORECAST_POSITIONING_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/020.architecture/020150_QUICK_FORECAST_ERP_BOUNDARY_ARCHITECTURE.md -->
# ============================================================
# QUICK FORECAST ERP BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Fixes the architectural boundary between QuickForecast and ERP.

quickforecast_side:
- rapid demand / opportunity estimation
- lightweight scenario inspection
- proposal draft creation
- quick profit preview
- local-first drafting support

erp_side:
- canonical enterprise record
- governed approval
- official enterprise workflow
- authoritative cross-function integration
- final enterprise operational ownership

boundary_rule:
QuickForecast may prepare, preview, and suggest,
but ERP remains the official governed system
where enterprise-authoritative lifecycle control is required.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/020.architecture/020150_QUICK_FORECAST_ERP_BOUNDARY_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/020.architecture/020160_CROSS_APPLICATION_BOUNDARY_ARCHITECTURE.md -->
# ============================================================
# CROSS APPLICATION BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines architectural boundaries between QuickForecast and nearby applications.

boundary_targets:
- ERP
- EstimateCreator
- ProjectFlow
- PocketSecretary
- BusinessOS common capability

quickforecast_primary_role:
- fast forecast-centered judgment support
- lightweight opportunity and demand estimation
- quick proposal starting point
- quick profit preview
- rapid scenario comparison

not_quickforecast_primary_role:
- full governed enterprise processing
- canonical enterprise estimate ownership
- project execution management
- secretary-style life assistance
- heavy workflow governance shell

architecture_rule:
QuickForecast may touch adjacent meanings,
but must not absorb their canonical product role.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/020.architecture/020160_CROSS_APPLICATION_BOUNDARY_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/020.architecture/020170_APP_ROLE_DIFFERENTIATION_ARCHITECTURE.md -->
# ============================================================
# APP ROLE DIFFERENTIATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Explains how QuickForecast differs from adjacent apps.

erp_difference:
ERP is enterprise-authoritative and workflow-governed.
QuickForecast is lightweight and judgment-speed centered.

estimatecreator_difference:
EstimateCreator specializes in estimate creation and estimate-format alignment.
QuickForecast specializes in earlier-stage opportunity / forecast / proposal acceleration.

projectflow_difference:
ProjectFlow manages project progress and execution coordination.
QuickForecast supports pre-execution judgment and proposal shaping.

pocketsecretary_difference:
PocketSecretary is local-first life / secretary support centered.
QuickForecast is business judgment and forecast support centered.

businessos_common_difference:
BusinessOS common capability provides shared operational foundations.
QuickForecast is an application-level judgment surface built on top of those foundations.

important_rule:
Overlap in shared concepts is acceptable.
Canonical ownership of product identity is not to be blurred.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/020.architecture/020170_APP_ROLE_DIFFERENTIATION_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/020.architecture/020_QUICK_FORECAST_ARCHITECTURE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/020.architecture/020_QUICK_FORECAST_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/020.architecture/021120_QUICKFORECAST_FORECAST_SIGNAL_AGGREGATION_ARCHITECTURE.md -->
# ============================================================
# QUICKFORECAST FORECAST SIGNAL AGGREGATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: QuickForecast
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: forecast-signal-aggregation-architecture

purpose:
Makes signal aggregation and management forecast control explicit in the
current QuickForecast architecture.

architecture_intent:
- forecast work must be visible not only as calculated output,
  but as management movement
- source signals, scenario shifts, exceptions, and management attention
  points must remain explicit
- forecast readiness and blocker visibility must be queryable without
  reconstructing everything from raw source metrics only

flow_layers:
- signal intake:
  - source signal registration
  - source freshness evaluation
  - scenario baseline construction
  - forecast draft creation
- forecast control:
  - scenario comparison
  - exception detection
  - management threshold evaluation
  - attention routing
- management review:
  - forecast cockpit review
  - scenario exception visibility
  - confidence or freshness visibility
  - decision-support readiness
- control action:
  - approve scenario
  - hold scenario
  - escalate attention
  - publish management view
- closure:
  - active
  - superseded
  - archived
  - replaced_by_new_cycle

key_separations:
- raw source metrics are not the same as management forecast readiness
- scenario comparison is not the same as approval history
- exception review is not the same as chart rendering
- cockpit review is not the same as deep metric editing screen

recommended_runtime_objects:
- forecast_management_signal
- scenario_exception_review_item
- decision_support_readiness_item
- forecast_cockpit_summary

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/020.architecture/021120_QUICKFORECAST_FORECAST_SIGNAL_AGGREGATION_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/020.architecture/021130_QUICKFORECAST_SCENARIO_EXCEPTION_MANAGEMENT_ARCHITECTURE.md -->
# ============================================================
# QUICKFORECAST SCENARIO EXCEPTION MANAGEMENT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: QuickForecast
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: scenario-exception-management-architecture

purpose:
Defines the relationship between scenario review, forecast exception
handling, and management decision-support readiness in QuickForecast.

core_principle:
- management slippage often appears first through stale signals,
  scenario divergence, unresolved forecast exception, or attention-routing
  failure before it appears as final business outcome failure.

architecture_rules:
- scenario comparison must be represented explicitly
- exception items must be reviewable as first-class management objects
- decision-support blockers must survive beyond one screen or one session
- unresolved exceptions must be visible in the same review flow as forecast health

exception_categories:
- source freshness risk
- scenario divergence risk
- threshold breach risk
- decision-support blocker
- publication readiness risk

visibility_outputs:
- forecast cockpit
- scenario exception review screen
- management attention panel
- decision-support readiness overview

cross_module_relation:
- source signal layer feeds normalized management signals
- scenario layer captures comparative forecast states
- exception layer surfaces management attention points
- decision-support layer surfaces readiness for executive or manager use

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/020.architecture/021130_QUICKFORECAST_SCENARIO_EXCEPTION_MANAGEMENT_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/020.architecture/021140_QUICKFORECAST_PHASE_A_FORECAST_TIMELINE_DDL_ADDITIVE_PLAN.md -->
# ============================================================
# QUICKFORECAST PHASE A FORECAST TIMELINE DDL ADDITIVE PLAN
# ============================================================

status: canonical
layer: architecture
system: applications
application: QuickForecast
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-forecast-timeline-ddl-additive-plan

purpose:
Defines the additive-only Phase A DDL planning boundary for
forecast timeline visibility, scenario exception review,
and forecast cockpit assembly.

principles:
- additive only
- preserve existing QuickForecast core
- keep raw source metric handling separate from management readiness rows
- keep scenario and exception review separate from raw signal history
- no SQL execution in this document

phase_a_target_capabilities:
- persist management forecast timeline rows for cockpit and review
- persist scenario and decision-support blocker review rows for management visibility
- support forecast cockpit query without reconstructing everything from raw source metrics
- support management attention and decision-support review slices

proposed_additive_tables:
- business.quickforecast_management_forecast_timeline_item
- business.quickforecast_scenario_exception_review_item
- business.quickforecast_forecast_cockpit_snapshot

table_business_quickforecast_management_forecast_timeline_item:
  role:
    - stores normalized management forecast timeline rows
  recommended_columns:
    - management_forecast_timeline_item_id uuid pk
    - forecast_id uuid not null
    - related_scenario_id uuid null
    - related_exception_id uuid null
    - related_decision_support_blocker_id uuid null
    - item_type_code text not null
    - item_title text not null
    - item_summary text null
    - forecast_state_code text not null
    - priority_code text null
    - effective_at timestamptz null
    - published_at timestamptz null
    - superseded_at timestamptz null
    - exception_present boolean not null
    - owner_user_id uuid null
    - approval_required boolean not null
    - source_module_code text not null
    - created_at timestamptz not null
    - updated_at timestamptz not null

table_business_quickforecast_scenario_exception_review_item:
  role:
    - stores reviewable scenario and decision-support blocker rows
  recommended_columns:
    - scenario_exception_review_item_id uuid pk
    - forecast_id uuid not null
    - related_scenario_id uuid null
    - related_exception_id uuid null
    - related_decision_support_blocker_id uuid null
    - item_type_code text not null
    - item_title text not null
    - item_summary text null
    - forecast_state_code text not null
    - exception_present boolean not null
    - approval_required boolean not null
    - owner_user_id uuid null
    - resolved boolean not null
    - effective_at timestamptz null
    - created_at timestamptz not null
    - updated_at timestamptz not null

table_business_quickforecast_forecast_cockpit_snapshot:
  role:
    - stores generated forecast cockpit snapshots when caching or auditability is needed
  recommended_columns:
    - forecast_cockpit_snapshot_id uuid pk
    - forecast_id uuid not null
    - health_summary_message text not null
    - generated_at timestamptz not null
    - created_at timestamptz not null

recommended_indexes_phase_a:
- management_forecast_timeline_item:
  - idx on forecast_id, forecast_state_code, effective_at
  - idx on forecast_id, related_scenario_id
  - idx on forecast_id, related_exception_id
- scenario_exception_review_item:
  - idx on forecast_id, approval_required
  - idx on forecast_id, exception_present
  - idx on forecast_id, resolved
- forecast_cockpit_snapshot:
  - idx on forecast_id, generated_at desc

explicit_non_scope:
- no destructive schema rewrite
- no SQL execution here
- no prediction engine implementation here
- no external BI push execution here
- no client sync policy here

handoff_to_next_step:
- freeze API starter and DTOs against these row families
- create implementation skeleton and slice order on top of this plan

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/020.architecture/021140_QUICKFORECAST_PHASE_A_FORECAST_TIMELINE_DDL_ADDITIVE_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/020.architecture/architecture_INDEX.md -->
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
- 020130_FORECAST_TO_PROPOSAL_DIFFERENTIATION_ARCHITECTURE.md
- 020140_QUICK_FORECAST_POSITIONING_ARCHITECTURE.md
- 020150_QUICK_FORECAST_ERP_BOUNDARY_ARCHITECTURE.md
- 020160_CROSS_APPLICATION_BOUNDARY_ARCHITECTURE.md
- 020170_APP_ROLE_DIFFERENTIATION_ARCHITECTURE.md

- 021120_QUICKFORECAST_FORECAST_SIGNAL_AGGREGATION_ARCHITECTURE.md

- 021130_QUICKFORECAST_SCENARIO_EXCEPTION_MANAGEMENT_ARCHITECTURE.md

- 021140_QUICKFORECAST_PHASE_A_FORECAST_TIMELINE_DDL_ADDITIVE_PLAN.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/020.architecture/architecture_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/020.architecture/architecture_OVERVIEW.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/020.architecture/architecture_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030100_FORECAST_DRAFT_MODEL.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030100_FORECAST_DRAFT_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030110_FORECAST_SIGNAL_MODEL.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030110_FORECAST_SIGNAL_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030120_FORECAST_SCENARIO_MODEL.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030120_FORECAST_SCENARIO_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030130_ACTION_IDEA_MODEL.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030130_ACTION_IDEA_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030140_PROPOSAL_DRAFT_MODEL.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030140_PROPOSAL_DRAFT_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030150_PROFIT_PREVIEW_MODEL.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030150_PROFIT_PREVIEW_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030160_APPROVAL_REQUEST_MODEL.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030160_APPROVAL_REQUEST_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030170_SYNC_STATE_MODEL.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030170_SYNC_STATE_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030180_HISTORY_ENTRY_MODEL.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030180_HISTORY_ENTRY_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030190_VALIDATION_CODE_MODEL.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030190_VALIDATION_CODE_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030200_ERROR_CODE_MODEL.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030200_ERROR_CODE_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030210_UI_STATE_CODE_MODEL.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030210_UI_STATE_CODE_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030220_UI_LABEL_CODE_MODEL.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030220_UI_LABEL_CODE_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030230_VALIDATION_CODE_TABLE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030230_VALIDATION_CODE_TABLE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030240_ERROR_CODE_TABLE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030240_ERROR_CODE_TABLE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030250_UI_STATE_CODE_TABLE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030250_UI_STATE_CODE_TABLE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030260_SHARE_TARGET_MODEL.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030260_SHARE_TARGET_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030270_APPROVAL_EVENT_MODEL.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030270_APPROVAL_EVENT_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030280_ERP_HANDOFF_MODEL.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030280_ERP_HANDOFF_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030290_PROFIT_ASSUMPTION_MODEL.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030290_PROFIT_ASSUMPTION_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030300_LOCAL_ENTITY_MAPPING_MODEL.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030300_LOCAL_ENTITY_MAPPING_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030310_QUICK_FORECAST_PLAN_MODEL.md -->
# ============================================================
# QUICK FORECAST PLAN MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines pricing plan model for QuickForecast.

plans:
- BASIC
- PRO_PERSONAL
- PRO_TEAM

plan_meanings:

BASIC:
- free
- local-first
- single-user
- no governed team workflow

PRO_PERSONAL:
- paid
- individual productivity tier
- stronger continuity and storage
- sync-capable personal usage

PRO_TEAM:
- paid
- collaborative team tier
- governed workflow
- ERP-connected enterprise usage boundary

model_rule:
Plan model must remain independent
from business document state model.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030310_QUICK_FORECAST_PLAN_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030320_QUICK_FORECAST_PLAN_CAPABILITY_MODEL.md -->
# ============================================================
# QUICK FORECAST PLAN CAPABILITY MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines capability mapping by plan.

capability_groups:

core_draft_capability:
- forecast draft
- scenario comparison
- action drafting
- proposal drafting
- profit preview

continuity_capability:
- sync
- extended save capacity
- extended history retention

collaboration_capability:
- share
- review
- approval

enterprise_capability:
- ERP reference
- ERP handoff
- governed trace and notification

plan_mapping:

BASIC:
- core_draft_capability

PRO_PERSONAL:
- core_draft_capability
- continuity_capability

PRO_TEAM:
- core_draft_capability
- continuity_capability
- collaboration_capability
- enterprise_capability

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030320_QUICK_FORECAST_PLAN_CAPABILITY_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030330_SCENARIO_SWITCHED_PROPOSAL_MODEL.md -->
# ============================================================
# SCENARIO SWITCHED PROPOSAL MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines proposal generation by selected scenario.

fields:
- scenario_switch_mode
- scenario_id
- proposal_variant_id
- proposal_variant_type
- proposal_variant_label
- variant_summary
- selected_flag
- generated_at
- updated_at

variant_examples:
- conservative
- standard
- aggressive

rule:
Proposal content and profit image must be switchable
by scenario without breaking source traceability.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030330_SCENARIO_SWITCHED_PROPOSAL_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030340_PROPOSAL_BASIS_PANEL_MODEL.md -->
# ============================================================
# PROPOSAL BASIS PANEL MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the evidence / basis panel attached to a proposal draft.

fields:
- proposal_basis_panel_id
- forecast_id
- scenario_id
- action_id
- selected_assumptions
- selected_basis_notes
- selected_market_events
- expected_effect_summary
- profit_basis_summary
- confidence_code
- updated_at

rule:
The basis panel must explain
why the proposal draft exists in its current form.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030340_PROPOSAL_BASIS_PANEL_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030350_INTERNAL_EXPLANATION_DRAFT_MODEL.md -->
# ============================================================
# INTERNAL EXPLANATION DRAFT MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines internal explanation drafts for approval and review contexts.

draft_types:
- internal_summary
- approval_pre_read
- manager_explanation
- meeting_talking_points

fields:
- internal_explanation_draft_id
- forecast_id
- scenario_id
- action_id
- proposal_variant_id
- draft_type
- title
- short_summary
- explanation_body
- updated_at

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030350_INTERNAL_EXPLANATION_DRAFT_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030360_EXPLAINABLE_PROFIT_PREVIEW_MODEL.md -->
# ============================================================
# EXPLAINABLE PROFIT PREVIEW MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines explainable profit preview.

fields:
- explainable_profit_preview_id
- profit_preview_id
- sales_driver_summary
- cost_driver_summary
- margin_driver_summary
- major_assumption_summary
- uncertainty_summary
- risk_summary
- updated_at

rule:
Profit preview must expose reasoning,
not only output values.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030360_EXPLAINABLE_PROFIT_PREVIEW_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030370_INTERNAL_RESPONSE_TRACKING_MODEL.md -->
# ============================================================
# INTERNAL RESPONSE TRACKING MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines internal response tracking before formal enterprise handoff.

tracking_states:
- draft_only
- shared
- review_requested
- under_review
- returned
- approval_requested
- approved
- handoff_ready
- handed_off

fields:
- internal_response_tracking_id
- forecast_id
- proposal_variant_id
- current_tracking_state
- last_actor
- last_action_summary
- last_action_at
- updated_at

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030370_INTERNAL_RESPONSE_TRACKING_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030380_MARKET_EVENT_INPUT_MODEL.md -->
# ============================================================
# MARKET EVENT INPUT MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines market and business event inputs used in forecast basis.

event_types:
- seasonality
- local_event
- campaign
- competitor_move
- market_change
- manual_context

fields:
- market_event_input_id
- forecast_id
- event_type
- event_title
- event_summary
- expected_impact_summary
- impact_direction_code
- impact_strength_code
- updated_at

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030380_MARKET_EVENT_INPUT_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030390_PROPOSAL_TEMPLATE_SELECTION_MODEL.md -->
# ============================================================
# PROPOSAL TEMPLATE SELECTION MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines proposal template selection.

template_types:
- new_business
- existing_account_growth
- internal_approval
- campaign_proposal
- inventory_adjustment
- custom

fields:
- proposal_template_selection_id
- forecast_id
- template_type
- template_label
- selected_flag
- updated_at

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030390_PROPOSAL_TEMPLATE_SELECTION_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030400_CONTENT_RECOMMENDATION_MODEL.md -->
# ============================================================
# CONTENT RECOMMENDATION MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines recommended content blocks for proposal drafting.

recommendation_types:
- key_message
- supporting_point
- risk_note
- expected_effect_phrase
- internal_summary_hint

fields:
- content_recommendation_id
- forecast_id
- scenario_id
- template_type
- recommendation_type
- recommendation_text
- recommendation_reason
- updated_at

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030400_CONTENT_RECOMMENDATION_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030450_CURRENCY_PREFERENCE_MODEL.md -->
# ============================================================
# CURRENCY PREFERENCE MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines multicurrency preference handling.

fields:
- currency_preference_id
- user_id
- preferred_display_currency_code
- preferred_base_currency_code
- currency_fallback_code
- rounding_policy_code
- updated_at

rule:
Currency preference affects display and comparison basis,
but does not rewrite canonical source money values.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030450_CURRENCY_PREFERENCE_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030460_MONEY_VALUE_MODEL.md -->
# ============================================================
# MONEY VALUE MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines canonical money value structure.

fields:
- money_value_id
- amount_value
- currency_code
- scale_code
- amount_kind
- updated_at

amount_kind_examples:
- source_amount
- base_amount
- display_amount

rule:
Money must be handled as amount plus currency code,
never as naked numeric value only.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030460_MONEY_VALUE_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030470_EXCHANGE_RATE_SNAPSHOT_MODEL.md -->
# ============================================================
# EXCHANGE RATE SNAPSHOT MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines exchange rate snapshot structure.

fields:
- exchange_rate_snapshot_id
- source_currency_code
- target_currency_code
- exchange_rate_value
- rate_source
- rate_timestamp
- conversion_method_code
- updated_at

rule:
Converted money must remain traceable
to the rate and timestamp used.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030470_EXCHANGE_RATE_SNAPSHOT_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030480_MULTICURRENCY_PROFIT_PREVIEW_MODEL.md -->
# ============================================================
# MULTICURRENCY PROFIT PREVIEW MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines profit preview under multicurrency conditions.

fields:
- multicurrency_profit_preview_id
- sales_source_amount
- cost_source_amount
- gross_profit_source_amount
- sales_base_amount
- cost_base_amount
- gross_profit_base_amount
- display_currency_code
- exchange_rate_snapshot_id
- updated_at

rule:
Profit comparison must be base-currency-centered,
while display may remain display-currency-centered.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030480_MULTICURRENCY_PROFIT_PREVIEW_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030510_QUICKFORECAST_MANAGEMENT_FORECAST_TIMELINE_MODEL.md -->
# ============================================================
# QUICKFORECAST MANAGEMENT FORECAST TIMELINE MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: QuickForecast
directory: 030.model
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: management-forecast-timeline-model

purpose:
Defines the logical model for a unified management forecast timeline.

core_entity:
- management_forecast_timeline_item

recommended_fields:
- managementForecastTimelineItemId
- forecastId
- relatedScenarioId
- relatedExceptionId
- relatedDecisionSupportBlockerId
- itemTypeCode
- itemTitle
- itemSummary
- forecastStateCode
- priorityCode
- effectiveAt
- publishedAt
- supersededAt
- exceptionPresent
- ownerUserId
- approvalRequired
- sourceModuleCode
- createdAt
- updatedAt

state_meaning:
- draft
- pending_review
- approved
- published
- stale
- blocked_for_decision_support
- superseded
- archived

model_use_cases:
- forecast cockpit assembly
- scenario exception review
- approval review
- decision-support readiness visibility
- management trend visibility

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030510_QUICKFORECAST_MANAGEMENT_FORECAST_TIMELINE_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030_QUICK_FORECAST_MODEL_OVERVIEW.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/030_QUICK_FORECAST_MODEL_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/model_INDEX.md -->
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
- 030310_QUICK_FORECAST_PLAN_MODEL.md
- 030320_QUICK_FORECAST_PLAN_CAPABILITY_MODEL.md
- 030330_SCENARIO_SWITCHED_PROPOSAL_MODEL.md
- 030340_PROPOSAL_BASIS_PANEL_MODEL.md
- 030350_INTERNAL_EXPLANATION_DRAFT_MODEL.md
- 030360_EXPLAINABLE_PROFIT_PREVIEW_MODEL.md
- 030370_INTERNAL_RESPONSE_TRACKING_MODEL.md
- 030380_MARKET_EVENT_INPUT_MODEL.md
- 030390_PROPOSAL_TEMPLATE_SELECTION_MODEL.md
- 030400_CONTENT_RECOMMENDATION_MODEL.md
- 030410_LOCALE_PREFERENCE_MODEL.md
- 030420_TRANSLATION_VARIANT_MODEL.md
- 030430_TERMINOLOGY_GLOSSARY_MODEL.md
- 030440_FORMATTING_RULE_MODEL.md
- 030450_CURRENCY_PREFERENCE_MODEL.md
- 030460_MONEY_VALUE_MODEL.md
- 030470_EXCHANGE_RATE_SNAPSHOT_MODEL.md
- 030480_MULTICURRENCY_PROFIT_PREVIEW_MODEL.md

- 030510_QUICKFORECAST_MANAGEMENT_FORECAST_TIMELINE_MODEL.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/model_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/model_OVERVIEW.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/030.model/model_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/040.runtime/040110_FORECAST_DRAFT_RUNTIME.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/040.runtime/040110_FORECAST_DRAFT_RUNTIME.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/040.runtime/040120_ACTION_PROPOSAL_RUNTIME.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/040.runtime/040120_ACTION_PROPOSAL_RUNTIME.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/040.runtime/040130_SYNC_AND_SUBMISSION_RUNTIME.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/040.runtime/040130_SYNC_AND_SUBMISSION_RUNTIME.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/040.runtime/040_QUICK_FORECAST_RUNTIME.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/040.runtime/040_QUICK_FORECAST_RUNTIME.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/040.runtime/runtime_INDEX.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/040.runtime/runtime_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/040.runtime/runtime_OVERVIEW.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/040.runtime/runtime_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/050.flow/050110_FORECAST_CREATION_FLOW.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/050.flow/050110_FORECAST_CREATION_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/050.flow/050120_ACTION_IDEA_FLOW.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/050.flow/050120_ACTION_IDEA_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/050.flow/050130_PROPOSAL_DRAFT_FLOW.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/050.flow/050130_PROPOSAL_DRAFT_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/050.flow/050140_PROFIT_PREVIEW_FLOW.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/050.flow/050140_PROFIT_PREVIEW_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/050.flow/050150_PRO_APPROVAL_AND_SUBMISSION_FLOW.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/050.flow/050150_PRO_APPROVAL_AND_SUBMISSION_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/050.flow/050160_PRO_SHARE_FLOW.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/050.flow/050160_PRO_SHARE_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/050.flow/050170_ERP_HANDOFF_FLOW.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/050.flow/050170_ERP_HANDOFF_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/050.flow/050180_SCENARIO_SWITCHED_PROPOSAL_FLOW.md -->
# ============================================================
# SCENARIO SWITCHED PROPOSAL FLOW
# ============================================================

status: canonical
layer: flow
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines how proposal drafts switch by scenario.

flow:
1. user selects or edits scenario
2. proposal variant is generated or refreshed
3. basis panel is refreshed
4. profit explanation is refreshed
5. user compares variants
6. user selects final working variant

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/050.flow/050180_SCENARIO_SWITCHED_PROPOSAL_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/050.flow/050190_INTERNAL_EXPLANATION_AND_TRACKING_FLOW.md -->
# ============================================================
# INTERNAL EXPLANATION AND TRACKING FLOW
# ============================================================

status: canonical
layer: flow
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines internal explanation draft and tracking flow.

flow:
1. proposal draft exists
2. internal explanation draft is generated
3. user edits internal summary
4. draft is shared or review-requested
5. internal response state is updated
6. handoff readiness is determined

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/050.flow/050190_INTERNAL_EXPLANATION_AND_TRACKING_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/050.flow/050200_MARKET_EVENT_AND_TEMPLATE_FLOW.md -->
# ============================================================
# MARKET EVENT AND TEMPLATE FLOW
# ============================================================

status: canonical
layer: flow
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines flow for market events, template selection, and content recommendation.

flow:
1. user adds market event inputs
2. user selects template type
3. recommendation blocks are suggested
4. proposal draft is regenerated or refined
5. basis panel is updated

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/050.flow/050200_MARKET_EVENT_AND_TEMPLATE_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/050.flow/050_QUICK_FORECAST_FLOW.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/050.flow/050_QUICK_FORECAST_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/050.flow/flow_INDEX.md -->
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
- 050180_SCENARIO_SWITCHED_PROPOSAL_FLOW.md
- 050190_INTERNAL_EXPLANATION_AND_TRACKING_FLOW.md
- 050200_MARKET_EVENT_AND_TEMPLATE_FLOW.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/050.flow/flow_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/050.flow/flow_OVERVIEW.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/050.flow/flow_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/060.integration/060110_GENERAL_SIGNAL_INTEGRATION_CONTRACT.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/060.integration/060110_GENERAL_SIGNAL_INTEGRATION_CONTRACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/060.integration/060120_ERP_REFERENCE_INTEGRATION_CONTRACT.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/060.integration/060120_ERP_REFERENCE_INTEGRATION_CONTRACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/060.integration/060130_PROPOSAL_EXPORT_INTEGRATION_CONTRACT.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/060.integration/060130_PROPOSAL_EXPORT_INTEGRATION_CONTRACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/060.integration/060140_PRO_APPROVAL_INTEGRATION_CONTRACT.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/060.integration/060140_PRO_APPROVAL_INTEGRATION_CONTRACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/060.integration/060150_GOVERNED_SUBMISSION_INTEGRATION_CONTRACT.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/060.integration/060150_GOVERNED_SUBMISSION_INTEGRATION_CONTRACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/060.integration/060160_SHARE_AND_PERMISSION_INTEGRATION_CONTRACT.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/060.integration/060160_SHARE_AND_PERMISSION_INTEGRATION_CONTRACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/060.integration/060170_ERP_HANDOFF_INTEGRATION_CONTRACT.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/060.integration/060170_ERP_HANDOFF_INTEGRATION_CONTRACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/060.integration/060290_QUICKFORECAST_FORECAST_COCKPIT_PAYLOAD.md -->
# ============================================================
# QUICKFORECAST FORECAST COCKPIT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: QuickForecast
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: forecast-cockpit-payload

purpose:
Fixes the exact payload family for the forecast cockpit surface.

endpoint:
- POST /api/v1/quick-forecast/forecast-cockpit/query

request_fields:
- forecastId: uuid string, required
- timezone: string, required
- includeScenarioExceptions: boolean, required
- includeManagementAttention: boolean, required
- includeDecisionSupportReadiness: boolean, required
- pageSize: integer, required
- pageToken: string, optional

response_fields:
- forecastId: uuid string, required
- forecastTitle: string, required
- healthSummaryMessage: string, required
- scenarioExceptionItems: array, required
- managementAttentionItems: array, required
- decisionSupportItems: array, required
- nextPageToken: string, nullable
- generatedAt: ISO-8601 string, required

cockpitItem_fields:
- managementForecastTimelineItemId
- itemTypeCode
- itemTitle
- itemSummary
- forecastStateCode
- effectiveAt
- exceptionPresent
- ownerUserId
- approvalRequired

rules:
- timestamps use ISO-8601 strings
- nullable values return null, not omission
- arrays return empty arrays when no data

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/060.integration/060290_QUICKFORECAST_FORECAST_COCKPIT_PAYLOAD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/060.integration/060300_QUICKFORECAST_SCENARIO_EXCEPTION_REVIEW_PAYLOAD.md -->
# ============================================================
# QUICKFORECAST SCENARIO EXCEPTION REVIEW PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: QuickForecast
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: scenario-exception-review-payload

purpose:
Fixes the exact payload family for scenario and exception review.

endpoint:
- POST /api/v1/quick-forecast/scenario-exception-review/query

request_fields:
- forecastId: uuid string, required
- includeResolved: boolean, required
- includeThresholdBreaches: boolean, required
- includeDecisionSupportBlockers: boolean, required
- pageSize: integer, required
- pageToken: string, optional

response_fields:
- forecastId: uuid string, required
- reviewItems: array, required
- summaryMessage: string, required
- nextPageToken: string, nullable
- generatedAt: ISO-8601 string, required

reviewItem_fields:
- reviewItemId
- relatedScenarioId
- relatedExceptionId
- relatedDecisionSupportBlockerId
- itemTypeCode
- itemTitle
- itemSummary
- forecastStateCode
- exceptionPresent
- approvalRequired
- ownerUserId
- resolved
- effectiveAt

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/060.integration/060300_QUICKFORECAST_SCENARIO_EXCEPTION_REVIEW_PAYLOAD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/060.integration/060320_QUICKFORECAST_PHASE_A_API_STARTER.md -->
# ============================================================
# QUICKFORECAST PHASE A API STARTER
# ============================================================

status: canonical
layer: integration
system: applications
application: QuickForecast
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-api-starter

purpose:
Defines the initial Phase A endpoint set for management control in QuickForecast.

phase_a_api_goals:
- query forecast cockpit
- query scenario exception review
- prepare later approval and decision-support actions without reopening the contract

phase_a_endpoint_set:
- POST /api/v1/quick-forecast/forecast-cockpit/query
- POST /api/v1/quick-forecast/scenario-exception-review/query

endpoint_forecast_cockpit_query:
  purpose:
    - return scenario exceptions, management attention, and decision-support readiness in one surface
  minimum_request:
    - forecastId
    - timezone
    - includeScenarioExceptions
    - includeManagementAttention
    - includeDecisionSupportReadiness
    - pageSize
  minimum_response:
    - forecastId
    - forecastTitle
    - healthSummaryMessage
    - scenarioExceptionItems
    - managementAttentionItems
    - decisionSupportItems
    - generatedAt

endpoint_scenario_exception_review_query:
  purpose:
    - return scenario and decision-support blocker rows for management review
  minimum_request:
    - forecastId
    - includeResolved
    - includeThresholdBreaches
    - includeDecisionSupportBlockers
    - pageSize
  minimum_response:
    - forecastId
    - reviewItems
    - summaryMessage
    - generatedAt

response_rules:
- ids use uuid string form
- timestamps use ISO-8601 strings
- arrays return empty arrays, not omission
- nullable values return null once frozen
- no binary payloads in these responses

error_family_phase_a:
- invalid_request
- unauthorized
- forbidden
- not_found
- conflict
- validation_failed
- internal_error

explicit_non_scope:
- no source write endpoint in this slice
- no approval action write endpoint in this slice
- no publication execution endpoint in this slice
- no bulk import endpoint in this slice

implementation_handoff:
- use these two query endpoints as the only Phase A vertical-slice entry points first
- defer write-side approval and publication actions until query-side surfaces stabilize

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/060.integration/060320_QUICKFORECAST_PHASE_A_API_STARTER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/060.integration/060330_QUICKFORECAST_PHASE_A_API_DTO_FIELD_FREEZE.md -->
# ============================================================
# QUICKFORECAST PHASE A API DTO FIELD FREEZE
# ============================================================

status: canonical
layer: integration
system: applications
application: QuickForecast
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-api-dto-field-freeze

purpose:
Freezes the Phase A request and response DTO field set for
forecast cockpit and scenario exception review.

freezing_policy:
- additive only
- field names become implementation baseline once approved
- no casual local rename allowed
- timestamps are ISO-8601 strings
- ids are uuid strings
- arrays stay arrays even when empty

endpoint_01_forecast_cockpit_query:
  route: POST /api/v1/quick-forecast/forecast-cockpit/query
  request_fields:
    - forecastId: uuid string, required
    - timezone: string, required
    - includeScenarioExceptions: boolean, required
    - includeManagementAttention: boolean, required
    - includeDecisionSupportReadiness: boolean, required
    - pageSize: integer, required
    - pageToken: string, optional
  response_fields:
    - forecastId: uuid string, required
    - forecastTitle: string, required
    - healthSummaryMessage: string, required
    - scenarioExceptionItems: array, required
    - managementAttentionItems: array, required
    - decisionSupportItems: array, required
    - nextPageToken: string, nullable
    - generatedAt: ISO-8601 string, required

cockpitItem_fields:
- managementForecastTimelineItemId: uuid string, required
- itemTypeCode: string, required
- itemTitle: string, required
- itemSummary: string, nullable
- forecastStateCode: string, required
- effectiveAt: ISO-8601 string, nullable
- exceptionPresent: boolean, required
- ownerUserId: uuid string, nullable
- approvalRequired: boolean, required

endpoint_02_scenario_exception_review_query:
  route: POST /api/v1/quick-forecast/scenario-exception-review/query
  request_fields:
    - forecastId: uuid string, required
    - includeResolved: boolean, required
    - includeThresholdBreaches: boolean, required
    - includeDecisionSupportBlockers: boolean, required
    - pageSize: integer, required
    - pageToken: string, optional
  response_fields:
    - forecastId: uuid string, required
    - reviewItems: array, required
    - summaryMessage: string, required
    - nextPageToken: string, nullable
    - generatedAt: ISO-8601 string, required

reviewItem_fields:
- reviewItemId: uuid string, required
- relatedScenarioId: uuid string, nullable
- relatedExceptionId: uuid string, nullable
- relatedDecisionSupportBlockerId: uuid string, nullable
- itemTypeCode: string, required
- itemTitle: string, required
- itemSummary: string, nullable
- forecastStateCode: string, required
- exceptionPresent: boolean, required
- approvalRequired: boolean, required
- ownerUserId: uuid string, nullable
- resolved: boolean, required
- effectiveAt: ISO-8601 string, nullable

shared_error_response_fields:
- errorCode: string, required
- errorMessage: string, required
- requestId: string, required
- details: object, nullable

field_value_rules:
- itemTypeCode is a text code, not localized label
- forecastStateCode is a text code, not localized label
- nullable fields return null, not omission
- unknown response fields must not be silently added in Phase A

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/060.integration/060330_QUICKFORECAST_PHASE_A_API_DTO_FIELD_FREEZE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/060.integration/060_QUICK_FORECAST_INTEGRATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/060.integration/060_QUICK_FORECAST_INTEGRATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/060.integration/integration_INDEX.md -->
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

- 060290_QUICKFORECAST_FORECAST_COCKPIT_PAYLOAD.md

- 060300_QUICKFORECAST_SCENARIO_EXCEPTION_REVIEW_PAYLOAD.md

- 060320_QUICKFORECAST_PHASE_A_API_STARTER.md

- 060330_QUICKFORECAST_PHASE_A_API_DTO_FIELD_FREEZE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/060.integration/integration_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/060.integration/integration_OVERVIEW.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/060.integration/integration_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/070.operations/070110_QUICK_FORECAST_RUNBOOK.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/070.operations/070110_QUICK_FORECAST_RUNBOOK.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/070.operations/070120_SYNC_FAILURE_OPERATIONS.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/070.operations/070120_SYNC_FAILURE_OPERATIONS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/070.operations/070130_SUBMISSION_FAILURE_OPERATIONS.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/070.operations/070130_SUBMISSION_FAILURE_OPERATIONS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/070.operations/070_QUICK_FORECAST_OPERATIONS.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/070.operations/070_QUICK_FORECAST_OPERATIONS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/070.operations/operations_INDEX.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/070.operations/operations_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/070.operations/operations_OVERVIEW.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/070.operations/operations_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080110_BASIC_PRO_FEATURE_POLICY.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080110_BASIC_PRO_FEATURE_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080120_PROPOSAL_DRAFT_POLICY.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080120_PROPOSAL_DRAFT_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080130_PROFIT_PREVIEW_POLICY.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080130_PROFIT_PREVIEW_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080140_APPROVAL_AND_SUBMISSION_POLICY.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080140_APPROVAL_AND_SUBMISSION_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080150_VALIDATION_POLICY.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080150_VALIDATION_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080160_UI_STATE_POLICY.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080160_UI_STATE_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080170_QUICK_FORECAST_PRICING_POLICY.md -->
# ============================================================
# QUICK FORECAST PRICING POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines pricing policy for QuickForecast.

pricing_principle:
QuickForecast should not charge primarily for forecasting itself.
It should charge for business operation value
such as synchronization, sharing, review, approval,
history visibility, and ERP-connected handoff.

core_pricing_boundary:
free_scope:
single-user, local-first, draft-centered usage

paid_scope:
shared, governed, synchronized, enterprise-connected usage

policy_statement:
QuickForecast Basic must remain meaningfully useful by itself.
QuickForecast Pro must represent operational business value,
not merely feature hiding.

important_boundary:
QuickForecast does not replace ERP.
Pricing must preserve ERP coexistence and non-replacement framing.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080170_QUICK_FORECAST_PRICING_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080180_QUICK_FORECAST_TIER_POLICY.md -->
# ============================================================
# QUICK FORECAST TIER POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines tier structure for QuickForecast.

tier_structure:
- QuickForecast Basic
- QuickForecast Pro Personal
- QuickForecast Pro Team

tier_meaning:

QuickForecast Basic:
- free tier
- local-first usage
- single-user centered
- forecast to proposal to profit experience available
- no governed team operation

QuickForecast Pro Personal:
- monthly subscription app tier
- personal productivity expansion
- sync and storage expansion
- advanced output support
- stronger personal continuity

QuickForecast Pro Team:
- monthly subscription app tier
- team operation expansion
- sharing, approval, notification, and ERP-connected handoff
- governed business usage

tier_boundary_rule:
The tier boundary must separate
draft experience
from
governed operational experience.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080180_QUICK_FORECAST_TIER_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080190_QUICK_FORECAST_FREE_SCOPE_POLICY.md -->
# ============================================================
# QUICK FORECAST FREE SCOPE POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines what must remain available in the free tier.

free_scope_includes:
- forecast draft creation
- scenario comparison
- action idea drafting
- proposal draft creation
- profit preview creation
- manual assumption input
- local save
- single-user local editing

reason:
If the free tier does not preserve
Forecast -> Action -> Proposal -> Profit experience,
the value of QuickForecast becomes too weak to understand.

free_scope_goal:
The free tier must be strong enough
for a user to experience the application's core business value.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080190_QUICK_FORECAST_FREE_SCOPE_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080200_QUICK_FORECAST_PAID_SCOPE_POLICY.md -->
# ============================================================
# QUICK FORECAST PAID SCOPE POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines what belongs in paid scope.

paid_scope_candidates:
- cloud sync
- expanded storage and history
- advanced export or output options
- team sharing
- review routing
- approval request
- approval result handling
- notification
- ERP reference
- ERP handoff
- governed activity trace

strong_paid_value:
The strongest paid value is not prediction itself.
It is turning drafts into operational business workflow.

rule:
Paid scope should emphasize:
- continuity
- collaboration
- governance
- enterprise connection

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080200_QUICK_FORECAST_PAID_SCOPE_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080210_QUICK_FORECAST_ERP_PRICING_BOUNDARY_POLICY.md -->
# ============================================================
# QUICK FORECAST ERP PRICING BOUNDARY POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines pricing boundary between QuickForecast and ERP.

quickforecast_value_side:
- mobile immediacy
- field-ready drafting
- fast proposal generation
- lightweight profit-image preview
- handoff preparation

erp_value_side:
- formal enterprise operation
- denser master and transaction depth
- company-wide official management
- formal control and enterprise record

boundary_rule:
QuickForecast may charge for ERP-connected convenience
and governed handoff capability,
but must not redefine itself as the ERP primary system.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080210_QUICK_FORECAST_ERP_PRICING_BOUNDARY_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080220_FEATURE_EXPANSION_POLICY.md -->
# ============================================================
# FEATURE EXPANSION POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines rules for competitor-aware feature expansion.

allowed_expansion_direction:
- strengthen forecast to proposal linkage
- strengthen scenario-driven proposal differentiation
- strengthen explanation and review support
- strengthen pre-ERP business operation

disallowed_expansion_direction:
- becoming a full CRM replacement
- becoming a pure proposal delivery platform
- becoming a pure forecasting engine arms race

rule:
Every added feature must strengthen
the canonical Forecast -> Action -> Proposal -> Profit chain.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080220_FEATURE_EXPANSION_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080260_MULTICURRENCY_POLICY.md -->
# ============================================================
# MULTICURRENCY POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines multicurrency policy for QuickForecast.

policy_principles:
- canonical money meaning must remain stable
- source currency, base currency, and display currency must be separated
- exchange-rate context must be retained
- profit comparison must use base currency
- display formatting must not replace canonical money meaning

important_rule:
Multicurrency support must not break
proposal meaning, profit meaning,
or ERP-facing monetary integrity.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080260_MULTICURRENCY_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080270_EXCHANGE_RATE_POLICY.md -->
# ============================================================
# EXCHANGE RATE POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines exchange rate handling policy.

rules:
- no silent conversion without rate context
- rate source must be attributable
- rate timestamp must be preserved
- rounding policy must be explicit
- approximate display must be distinguishable when required

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080270_EXCHANGE_RATE_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080280_CURRENCY_FALLBACK_POLICY.md -->
# ============================================================
# CURRENCY FALLBACK POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines fallback behavior for unsupported or unavailable currency display.

fallback_order:
1. preferred display currency
2. base currency
3. source currency
4. canonical fallback currency

rule:
Currency display fallback must never destroy
the original money meaning.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080280_CURRENCY_FALLBACK_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080290_POSITIONING_POLICY.md -->
# ============================================================
# POSITIONING POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines product positioning policy.

policy_principles:
- QuickForecast must remain easy to open and easy to use
- speed and clarity are first-class values
- product scope must not drift into heavy ERP governance by accident
- additional features must preserve fast judgment support identity

important_rule:
Feature expansion is allowed only when
it strengthens fast forecast-centered judgment,
not when it turns the application into a heavy governance shell.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080290_POSITIONING_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080300_FREE_PAID_ERP_BOUNDARY_POLICY.md -->
# ============================================================
# FREE PAID ERP BOUNDARY POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines boundary among free scope, paid scope, and ERP-linked scope.

free_scope_intent:
- lightweight standalone forecasting support
- simple scenario thinking
- simple local proposal draft support
- simple local profit visibility

paid_scope_intent:
- richer proposal support
- richer profit support
- richer multilingual and multicurrency support
- more advanced comparison and review support
- stronger device-adaptive professional usage

erp_linked_scope_intent:
- enterprise-connected reference use
- enterprise-facing handoff preparation
- governed enterprise continuation outside app primary scope

important_rule:
Paid expansion must deepen the app's own value first.
ERP linkage must not become the only reason the application is useful.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080300_FREE_PAID_ERP_BOUNDARY_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080310_PRICING_VALUE_JUSTIFICATION_POLICY.md -->
# ============================================================
# PRICING VALUE JUSTIFICATION POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines what pricing must be justified by.

pricing_value_sources:
- faster opportunity review
- faster decision support
- better proposal starting point
- better profit visibility
- better multilingual and multicurrency usability
- better tablet and review-heavy usability
- less friction in meeting-time and field-time use

must_not_be_primary_justification:
- mere lock-in to ERP
- accidental complexity
- features that only mimic heavier enterprise systems

rule:
Pricing must be explainable through direct user-facing speed,
clarity, and draft acceleration value.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080310_PRICING_VALUE_JUSTIFICATION_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080320_CROSS_APPLICATION_OVERLAP_POLICY.md -->
# ============================================================
# CROSS APPLICATION OVERLAP POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines policy for preventing role overlap with nearby applications.

policy_principles:
- QuickForecast must remain forecast-centered
- overlap must be limited to supportive adjacency
- feature additions must not erase neighboring app identity
- when a nearby app already owns a canonical role, QuickForecast stays supportive

must_not_drift_into:
- enterprise-authoritative estimate ownership
- enterprise project-control ownership
- secretary-style personal assistance identity
- full enterprise governance identity

allowed_supportive_overlap:
- proposal-starting assistance
- lightweight financial visibility
- lightweight business explanation support
- cross-app handoff preparation

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080320_CROSS_APPLICATION_OVERLAP_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080330_APP_BOUNDARY_DECISION_POLICY.md -->
# ============================================================
# APP BOUNDARY DECISION POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines how to decide whether a feature belongs inside QuickForecast.

belongs_inside_when:
- it strengthens fast judgment
- it strengthens quick forecast creation
- it strengthens proposal starting support
- it strengthens quick profit understanding
- it improves multilingual or multicurrency review for those flows
- it improves phone / tablet review speed for those flows

belongs_outside_when:
- it becomes canonical enterprise workflow control
- it becomes estimate-authoritative processing
- it becomes execution/project-control management
- it becomes life-secretary centered support
- it becomes cross-enterprise governance as primary identity

decision_rule:
When in doubt,
prefer keeping QuickForecast lightweight and adjacent,
not centralizing all business meanings inside it.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080330_APP_BOUNDARY_DECISION_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080_QUICK_FORECAST_POLICY.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/080_QUICK_FORECAST_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/policy_INDEX.md -->
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
- 080170_QUICK_FORECAST_PRICING_POLICY.md
- 080180_QUICK_FORECAST_TIER_POLICY.md
- 080190_QUICK_FORECAST_FREE_SCOPE_POLICY.md
- 080200_QUICK_FORECAST_PAID_SCOPE_POLICY.md
- 080210_QUICK_FORECAST_ERP_PRICING_BOUNDARY_POLICY.md
- 080220_FEATURE_EXPANSION_POLICY.md
- 080230_MULTILINGUAL_POLICY.md
- 080240_GENERATED_DRAFT_MULTILINGUAL_POLICY.md
- 080250_LANGUAGE_FALLBACK_POLICY.md
- 080260_MULTICURRENCY_POLICY.md
- 080270_EXCHANGE_RATE_POLICY.md
- 080280_CURRENCY_FALLBACK_POLICY.md
- 080290_POSITIONING_POLICY.md
- 080300_FREE_PAID_ERP_BOUNDARY_POLICY.md
- 080310_PRICING_VALUE_JUSTIFICATION_POLICY.md
- 080320_CROSS_APPLICATION_OVERLAP_POLICY.md
- 080330_APP_BOUNDARY_DECISION_POLICY.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/policy_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/policy_OVERVIEW.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/080.policy/policy_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090110_DASHBOARD_INTERFACE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090110_DASHBOARD_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090120_FORECAST_EDITOR_INTERFACE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090120_FORECAST_EDITOR_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090130_ACTION_IDEA_BOARD_INTERFACE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090130_ACTION_IDEA_BOARD_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090140_PROPOSAL_DRAFT_BUILDER_INTERFACE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090140_PROPOSAL_DRAFT_BUILDER_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090150_PROFIT_PREVIEW_INTERFACE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090150_PROFIT_PREVIEW_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090160_PRO_APPROVAL_SUBMISSION_INTERFACE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090160_PRO_APPROVAL_SUBMISSION_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090170_FORECAST_EDITOR_FIELD_SPEC.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090170_FORECAST_EDITOR_FIELD_SPEC.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090180_ACTION_BOARD_FIELD_SPEC.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090180_ACTION_BOARD_FIELD_SPEC.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090190_PROPOSAL_BUILDER_FIELD_SPEC.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090190_PROPOSAL_BUILDER_FIELD_SPEC.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090200_PROFIT_PREVIEW_FIELD_SPEC.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090200_PROFIT_PREVIEW_FIELD_SPEC.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090210_PRO_SUBMISSION_FIELD_SPEC.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090210_PRO_SUBMISSION_FIELD_SPEC.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090220_FORECAST_LIST_INTERFACE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090220_FORECAST_LIST_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090230_FORECAST_DETAIL_INTERFACE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090230_FORECAST_DETAIL_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090240_SHARE_TARGET_INTERFACE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090240_SHARE_TARGET_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090250_HISTORY_INTERFACE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090250_HISTORY_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090260_SCREEN_TRANSITION_INTERFACE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090260_SCREEN_TRANSITION_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090270_DASHBOARD_SCREEN_SKELETON_INTERFACE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090270_DASHBOARD_SCREEN_SKELETON_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090280_FORECAST_LIST_SCREEN_SKELETON_INTERFACE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090280_FORECAST_LIST_SCREEN_SKELETON_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090290_FORECAST_EDITOR_SCREEN_SKELETON_INTERFACE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090290_FORECAST_EDITOR_SCREEN_SKELETON_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090300_ACTION_BOARD_SCREEN_SKELETON_INTERFACE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090300_ACTION_BOARD_SCREEN_SKELETON_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090310_PROPOSAL_BUILDER_SCREEN_SKELETON_INTERFACE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090310_PROPOSAL_BUILDER_SCREEN_SKELETON_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090320_PROFIT_PREVIEW_SCREEN_SKELETON_INTERFACE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090320_PROFIT_PREVIEW_SCREEN_SKELETON_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090330_FORECAST_DETAIL_SCREEN_SKELETON_INTERFACE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090330_FORECAST_DETAIL_SCREEN_SKELETON_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090330_QUICKFORECAST_FORECAST_COCKPIT_INTERFACE.md -->
# ============================================================
# QUICKFORECAST FORECAST COCKPIT INTERFACE
# ============================================================

status: canonical
layer: interface
system: applications
application: QuickForecast
directory: 090.interface
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: forecast-cockpit-interface

purpose:
Makes the forecast cockpit screen hierarchy explicit.

screen_goal:
- show what threatens forecast trust or decision-support readiness right now
- unify scenario exceptions, management attention, and decision-support readiness
- provide one management-control review pass before diving into detail screens

screen_sections:
- forecast summary header
- scenario exception stack
- management attention stack
- decision-support readiness panel
- quick jump to scenario exception review

item_card_fields:
- item title
- short summary
- state badge
- effective time
- owner badge
- approval badge
- quick action buttons

primary_actions:
- open forecast detail
- open exception review
- open approval review
- approve scenario
- hold scenario
- open decision-support detail

interface_rules:
- scenario exceptions must be separated visually from management attention items
- decision-support items must stay visible above long detail lists
- cockpit must be scannable in one vertical pass
- deep metric editing belongs elsewhere; cockpit is a control surface first

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090330_QUICKFORECAST_FORECAST_COCKPIT_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090340_PRO_APPROVAL_SUBMISSION_SCREEN_SKELETON_INTERFACE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090340_PRO_APPROVAL_SUBMISSION_SCREEN_SKELETON_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090350_HISTORY_SCREEN_SKELETON_INTERFACE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090350_HISTORY_SCREEN_SKELETON_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090360_SHARE_TARGET_SCREEN_SKELETON_INTERFACE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090360_SHARE_TARGET_SCREEN_SKELETON_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090370_SETTINGS_SCREEN_SKELETON_INTERFACE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090370_SETTINGS_SCREEN_SKELETON_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090380_SCENARIO_SWITCHED_PROPOSAL_INTERFACE.md -->
# ============================================================
# SCENARIO SWITCHED PROPOSAL INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines interface requirements for scenario-switched proposal drafting.

ui_sections:
- scenario selector
- proposal variant tabs
- basis panel
- profit explanation panel
- final working variant selection

ui_rule:
The user must be able to compare
meaningfully different proposal variants
without losing editability.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090380_SCENARIO_SWITCHED_PROPOSAL_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090390_INTERNAL_EXPLANATION_INTERFACE.md -->
# ============================================================
# INTERNAL EXPLANATION INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines interface for internal explanation drafts.

ui_sections:
- internal summary
- approval pre-read
- manager explanation
- talking points
- tracking state panel

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090390_INTERNAL_EXPLANATION_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090400_MARKET_EVENT_TEMPLATE_INTERFACE.md -->
# ============================================================
# MARKET EVENT TEMPLATE INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines interface for market event input,
template switching, and content recommendation.

ui_sections:
- market event input list
- template selector
- recommended content blocks
- apply-to-draft actions

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090400_MARKET_EVENT_TEMPLATE_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090410_EXPANDED_SCREEN_INVENTORY_INTERFACE.md -->
# ============================================================
# EXPANDED SCREEN INVENTORY INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the expanded screen inventory after feature expansion review.

# ============================================================
# 1. CORE SCREENS
# ============================================================

core_screens:
- Dashboard
- Forecast List
- Forecast Editor
- Action Idea Board
- Proposal Draft Builder
- Profit Preview
- Forecast Detail
- History
- Settings

# ============================================================
# 2. PRO / GOVERNED SCREENS
# ============================================================

pro_governed_screens:
- Share Target
- Pro Approval Submission

# ============================================================
# 3. NEWLY EXPANDED SCREENS OR SUB-SURFACES
# ============================================================

expanded_surfaces:
- Scenario Switched Proposal Surface
- Proposal Basis Panel Surface
- Internal Explanation Draft Surface
- Explainable Profit Surface
- Internal Response Tracking Surface
- Market Event Input Surface
- Proposal Template Selection Surface
- Content Recommendation Surface

# ============================================================
# 4. SCREENIZATION RULE
# ============================================================

screenization_rule:
Not every expanded surface must become a fully independent screen.

default_rule:
- if the function is tightly coupled to proposal editing,
  embed it inside Proposal Draft Builder
- if the function is tightly coupled to profit review,
  embed it inside Profit Preview
- if the function is tightly coupled to handoff readiness,
  embed it inside Forecast Detail or Pro Approval Submission
- only create a fully separate screen when the surface becomes
  too dense for embedded operation

# ============================================================
# 5. CURRENT RECOMMENDED PLACEMENT
# ============================================================

recommended_placement:

Proposal Draft Builder:
- scenario switched proposal
- proposal template selection
- content recommendation
- proposal basis panel
- internal explanation draft

Profit Preview:
- explainable profit surface

Forecast Detail:
- internal response tracking summary
- proposal basis summary
- market event summary

Forecast Editor:
- market event input entry point

Pro Approval Submission:
- internal response tracking governed handoff state

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090410_EXPANDED_SCREEN_INVENTORY_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090420_SCREEN_RESPONSIBILITY_REALIGNMENT_INTERFACE.md -->
# ============================================================
# SCREEN RESPONSIBILITY REALIGNMENT INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Realigns screen responsibility after feature expansion.

responsibility_realignments:

Forecast Editor:
- forecast assumptions
- market event capture entry
- forecast basis preparation

Action Idea Board:
- action candidate comparison
- selected action fixation

Proposal Draft Builder:
- proposal generation
- scenario-based proposal switching
- template switching
- recommended content insertion
- internal explanation draft generation
- proposal basis visibility

Profit Preview:
- profit values
- explainable profit reasons
- uncertainty and risk explanation

Forecast Detail:
- cross-object summary
- readiness summary
- internal response tracking summary

Pro Approval Submission:
- governed submission decision
- approval request
- handoff gating

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090420_SCREEN_RESPONSIBILITY_REALIGNMENT_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090450_MULTICURRENCY_DISPLAY_INTERFACE.md -->
# ============================================================
# MULTICURRENCY DISPLAY INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines multicurrency display requirements.

ui_targets:
- forecast amounts
- proposal amounts
- profit preview amounts
- internal explanation amounts
- currency basis labels
- rate snapshot reference

ui_rule:
The user must be able to distinguish:
- source currency
- base currency
- display currency

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090450_MULTICURRENCY_DISPLAY_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090460_PROPOSAL_CURRENCY_BASIS_INTERFACE.md -->
# ============================================================
# PROPOSAL CURRENCY BASIS INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines how proposal drafts expose monetary basis.

ui_sections:
- source money basis
- base currency comparison basis
- display currency rendering
- exchange rate snapshot reference
- approximation / rounding notice

rule:
Proposal text must make monetary basis understandable,
not merely formatted.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090460_PROPOSAL_CURRENCY_BASIS_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090470_MULTI_DEVICE_SUPPORT_INTERFACE.md -->
# ============================================================
# MULTI DEVICE SUPPORT INTERFACE
# iPhone / Android / Tablet
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines multi-device interface support for QuickForecast.

supported_devices:
- iPhone
- Android smartphone
- iPad-class tablet
- Android tablet

interface_principles:
- smartphone-first baseline
- adaptive expansion for larger screens
- no business meaning change across device sizes
- touch-first interaction on all supported devices

smartphone_rules:
- single-column baseline
- stacked sections
- compact summary first
- primary action reachability
- sequential detail navigation

tablet_rules:
- multi-pane allowed
- side-by-side comparison allowed
- proposal and basis panel may be visible together
- profit summary and breakdown may be visible together
- detail pane may remain visible while another panel is edited

screen_specific_guidance:
- dashboard supports wider quick-summary layout on tablet
- forecast list may use list-detail layout on tablet
- forecast editor may use side-by-side form and basis panel on tablet
- action board may use denser comparison layout on tablet
- proposal builder may use draft + basis + preview on tablet
- profit preview may use summary + breakdown + basis on tablet
- settings may use grouped list + detail pane on tablet

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090470_MULTI_DEVICE_SUPPORT_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090480_ADAPTIVE_LAYOUT_POLICY_INTERFACE.md -->
# ============================================================
# ADAPTIVE LAYOUT POLICY INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines adaptive layout policy by available width.

layout_classes:
- compact
- medium
- expanded

compact_intent:
- iPhone and Android smartphone baseline
- single-column and reduced density layout

medium_intent:
- large phone and transitional tablet width
- selectively expanded panels
- partial side-by-side comparison where safe

expanded_intent:
- tablet-optimized layout
- multi-pane and comparison-heavy rendering

important_rule:
Adaptive layout changes visibility and density only.
It must not introduce a different canonical workflow.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090480_ADAPTIVE_LAYOUT_POLICY_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090490_SCREEN_RESPONSIBILITY_HARDENING_INTERFACE.md -->
# ============================================================
# SCREEN RESPONSIBILITY HARDENING INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Hardens screen-level responsibility boundaries.

screen_responsibilities:

dashboard:
- entry summary only
- recent items and quick actions
- no deep editing responsibility

forecast_list:
- browsing and selecting forecasts
- lightweight filtering and ordering
- no editing responsibility
- detail transition responsibility allowed

forecast_detail:
- read-centered detail view
- summary, basis visibility, and navigation hub
- edit transition responsibility allowed
- direct heavy editing responsibility not primary

forecast_editor:
- forecast input and revision
- field validation visibility
- no profit explanation responsibility
- no proposal basis comparison responsibility

action_board:
- action candidate browsing and comparison
- no final proposal editing responsibility

proposal_builder:
- proposal draft editing is primary
- proposal basis visibility is secondary
- tablet may co-display basis and preview
- canonical role remains editor-centered

profit_preview:
- financial preview and breakdown
- monetary basis visibility
- no canonical editing ownership
- explanation support may be shown, but editing remains outside

settings:
- locale / currency / display preference adjustment
- no business data editing responsibility

important_rule:
No screen may silently absorb another screen's canonical role
only because larger device space is available.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090490_SCREEN_RESPONSIBILITY_HARDENING_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090500_MULTILINGUAL_MULTICURRENCY_DISPLAY_PRIORITY_INTERFACE.md -->
# ============================================================
# MULTILINGUAL MULTICURRENCY DISPLAY PRIORITY INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines display priority under multilingual and multicurrency conditions.

compact_priority:
1. primary business content
2. key status or summary
3. display currency rendering
4. language-variant switch access
5. source / base / display comparison access behind explicit reveal

expanded_priority:
1. primary business content
2. source and translated visibility together when useful
3. source / base / display currency visibility together when useful
4. basis and preview side-by-side when useful

rules:
- compact layouts favor sequential access
- expanded layouts may favor comparative access
- business meaning must remain identical across both
- hidden comparative sections must still remain reachable

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090500_MULTILINGUAL_MULTICURRENCY_DISPLAY_PRIORITY_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090_QUICK_FORECAST_INTERFACE_OVERVIEW.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/090_QUICK_FORECAST_INTERFACE_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/interface_INDEX.md -->
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
- 090380_SCENARIO_SWITCHED_PROPOSAL_INTERFACE.md
- 090390_INTERNAL_EXPLANATION_INTERFACE.md
- 090400_MARKET_EVENT_TEMPLATE_INTERFACE.md
- 090410_EXPANDED_SCREEN_INVENTORY_INTERFACE.md
- 090420_SCREEN_RESPONSIBILITY_REALIGNMENT_INTERFACE.md
- 090430_MULTILINGUAL_INTERFACE_POLICY.md
- 090440_MULTILINGUAL_DRAFT_INTERFACE.md
- 090450_MULTICURRENCY_DISPLAY_INTERFACE.md
- 090460_PROPOSAL_CURRENCY_BASIS_INTERFACE.md
- 090470_MULTI_DEVICE_SUPPORT_INTERFACE.md
- 090480_ADAPTIVE_LAYOUT_POLICY_INTERFACE.md
- 090490_SCREEN_RESPONSIBILITY_HARDENING_INTERFACE.md
- 090500_MULTILINGUAL_MULTICURRENCY_DISPLAY_PRIORITY_INTERFACE.md

- 090330_QUICKFORECAST_FORECAST_COCKPIT_INTERFACE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/interface_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/interface_OVERVIEW.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/090.interface/interface_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/100.security/100110_TIER_BOUNDARY_SECURITY.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/100.security/100110_TIER_BOUNDARY_SECURITY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/100.security/100120_SUBMISSION_INTEGRITY_SECURITY.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/100.security/100120_SUBMISSION_INTEGRITY_SECURITY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/100.security/100_QUICK_FORECAST_SECURITY.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/100.security/100_QUICK_FORECAST_SECURITY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/100.security/security_INDEX.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/100.security/security_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/100.security/security_OVERVIEW.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/100.security/security_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/110.infrastructure/110110_LOCAL_FIRST_INFRASTRUCTURE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/110.infrastructure/110110_LOCAL_FIRST_INFRASTRUCTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/110.infrastructure/110120_PRO_ENTERPRISE_LINK_INFRASTRUCTURE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/110.infrastructure/110120_PRO_ENTERPRISE_LINK_INFRASTRUCTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/110.infrastructure/110130_LOCAL_PERSISTENCE_INFRASTRUCTURE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/110.infrastructure/110130_LOCAL_PERSISTENCE_INFRASTRUCTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/110.infrastructure/110140_PRO_CACHE_AND_SYNC_INFRASTRUCTURE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/110.infrastructure/110140_PRO_CACHE_AND_SYNC_INFRASTRUCTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/110.infrastructure/110150_LOCAL_ENTITY_SET_INFRASTRUCTURE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/110.infrastructure/110150_LOCAL_ENTITY_SET_INFRASTRUCTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/110.infrastructure/110_QUICK_FORECAST_INFRASTRUCTURE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/110.infrastructure/110_QUICK_FORECAST_INFRASTRUCTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/110.infrastructure/infrastructure_INDEX.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/110.infrastructure/infrastructure_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/110.infrastructure/infrastructure_OVERVIEW.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/110.infrastructure/infrastructure_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120110_FORECAST_TO_PROPOSAL_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120110_FORECAST_TO_PROPOSAL_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120120_PROFIT_PREVIEW_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120120_PROFIT_PREVIEW_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120130_PRO_LINKED_OPERATION_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120130_PRO_LINKED_OPERATION_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120140_ANDROID_PACKAGE_STRUCTURE_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120140_ANDROID_PACKAGE_STRUCTURE_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120150_COMMON_COMPONENT_MAPPING_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120150_COMMON_COMPONENT_MAPPING_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120160_BASIC_PRO_FEATURE_FLAG_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120160_BASIC_PRO_FEATURE_FLAG_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120170_ANDROID_SCREEN_STATE_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120170_ANDROID_SCREEN_STATE_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120180_ANDROID_NAVIGATION_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120180_ANDROID_NAVIGATION_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120190_PRO_SCREEN_GATING_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120190_PRO_SCREEN_GATING_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120200_DETAIL_TO_PRO_FLOW_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120200_DETAIL_TO_PRO_FLOW_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120210_ANDROID_VIEWMODEL_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120210_ANDROID_VIEWMODEL_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120220_ANDROID_REPOSITORY_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120220_ANDROID_REPOSITORY_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120230_LOCAL_DB_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120230_LOCAL_DB_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120240_LOCAL_ENTITY_FIELD_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120240_LOCAL_ENTITY_FIELD_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120250_DAO_METHOD_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120250_DAO_METHOD_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120260_REPOSITORY_METHOD_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120260_REPOSITORY_METHOD_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120270_SCREEN_TO_REPOSITORY_MAPPING_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120270_SCREEN_TO_REPOSITORY_MAPPING_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120280_DASHBOARD_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120280_DASHBOARD_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120290_FORECAST_LIST_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120290_FORECAST_LIST_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120300_FORECAST_EDITOR_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120300_FORECAST_EDITOR_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120300_QUICKFORECAST_FORECAST_CONTROL_IMPLEMENTATION_GUIDE.md -->
# ============================================================
# QUICKFORECAST FORECAST CONTROL IMPLEMENTATION GUIDE
# ============================================================

status: canonical
layer: implementation
system: applications
application: QuickForecast
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: forecast-control-implementation-guide

purpose:
Provides the first implementation-oriented guide for the newly
clarified differentiator in QuickForecast.

implementation_priority:
- Phase A should begin from forecast cockpit and scenario visibility,
  not from generic chart expansion.
- Management control should become visible before deeper automation.

recommended_phase_a_entry:
- fix row families for forecast timeline, scenario exception review,
  and cockpit outputs
- freeze cockpit and exception-review DTOs
- separate raw source metric handling from management readiness aggregation
- create slice order:
  - forecast cockpit query
  - scenario exception review query
  - approval action
  - decision-support readiness review

hard_rules:
- keep raw source detail separate from forecast rollup state
- keep approval and exception review separate from raw history
- do not collapse threshold breaches into only notes
- do not bury decision-support blockers inside generic chart annotations

implementation_readiness_signal:
- once DDL, DTO, stub boundaries, and slice order are frozen,
  QuickForecast can follow the same bundled Phase A pattern used in
  the previously completed BusinessOS apps.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120300_QUICKFORECAST_FORECAST_CONTROL_IMPLEMENTATION_GUIDE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120310_ACTION_BOARD_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120310_ACTION_BOARD_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120310_QUICKFORECAST_PHASE_A_FORECAST_TIMELINE_IMPLEMENTATION_SKELETON.md -->
# ============================================================
# QUICKFORECAST PHASE A FORECAST TIMELINE IMPLEMENTATION SKELETON
# ============================================================

status: canonical
layer: implementation
system: applications
application: QuickForecast
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-forecast-timeline-implementation-skeleton

purpose:
Defines the first implementation skeleton for QuickForecast
Phase A management control without starting runtime generation.

implementation_policy:
- additive only
- exact DTOs first
- keep raw source metric handling separate from forecast rollup state
- keep audit append separate from review query repositories

recommended_server_modules:
- api/controller
- api/dto
- application/service
- application/validator
- application/mapper
- domain/model
- domain/port
- infrastructure/repository
- infrastructure/audit

phase_a_skeleton_units:
- ForecastCockpitQueryController
- ForecastCockpitQueryService
- ForecastCockpitQueryValidator
- ManagementForecastTimelineRepository
- ScenarioExceptionReviewController
- ScenarioExceptionReviewService
- ScenarioExceptionReviewValidator
- ScenarioExceptionReviewRepository
- ForecastCockpitSnapshotRepository
- QuickForecastAuditWriter

responsibility_split:
- controller:
  - request parsing
  - auth context handoff
  - response serialization
- service:
  - cockpit assembly
  - scenario review orchestration
  - summary message assembly
- validator:
  - required field checks
  - page boundary checks
  - Phase A scope rejection
- mapper:
  - dto to domain mapping
  - domain to response mapping
- repository:
  - persistence and query only
  - no business branching
- audit:
  - append events after relevant review operations when needed

phase_a_build_order:
- step_01_forecast_cockpit_query_path
- step_02_scenario_exception_review_query_path
- step_03_add snapshot and audit path
- step_04_add test baseline

minimum_test_families:
- forecast_cockpit_query_success
- forecast_cockpit_query_validation_failure
- scenario_exception_review_query_success
- scenario_exception_review_include_resolved_toggle
- scenario_exception_review_include_decision_support_blockers_toggle

phase_a_exit_ready_definition:
- DTO names compile against frozen contracts
- cockpit and exception review boundaries are explicit
- row-family assumptions align to the DDL additive plan
- audit append seam is present where needed

explicit_non_scope:
- no source write automation in this document
- no forecast publication workflow here
- no external BI execution here
- no Android client work here

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120310_QUICKFORECAST_PHASE_A_FORECAST_TIMELINE_IMPLEMENTATION_SKELETON.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120320_PROPOSAL_BUILDER_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120320_PROPOSAL_BUILDER_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120320_QUICKFORECAST_PHASE_A_STUB_FILE_PLAN.md -->
# ============================================================
# QUICKFORECAST PHASE A STUB FILE PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: QuickForecast
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-stub-file-plan

purpose:
Defines the implementation-ready stub file boundary for
QuickForecast Phase A management control.

implementation_policy:
- additive only
- exact DTOs first
- no Japanese literals in Java source
- controller remains thin
- service owns orchestration
- repository owns persistence and query only
- audit append stays separate

target_package_base:
- com.lsam.QuickForecast

target_server_source_root_example:
- src/main/java/com/lsam/QuickForecast

target_test_source_root_example:
- src/test/java/com/lsam/QuickForecast

phase_a_scope_modules:
- forecast cockpit query
- scenario exception review query
- cockpit snapshot and audit bridge

recommended_stub_tree:
- src/main/java/com/lsam/QuickForecast/api/controller/execution/ForecastCockpitQueryController.java
- src/main/java/com/lsam/QuickForecast/api/controller/execution/ScenarioExceptionReviewQueryController.java
- src/main/java/com/lsam/QuickForecast/api/dto/execution/request/ForecastCockpitQueryRequest.java
- src/main/java/com/lsam/QuickForecast/api/dto/execution/request/ScenarioExceptionReviewQueryRequest.java
- src/main/java/com/lsam/QuickForecast/api/dto/execution/response/ForecastCockpitQueryResponse.java
- src/main/java/com/lsam/QuickForecast/api/dto/execution/response/ScenarioExceptionReviewQueryResponse.java
- src/main/java/com/lsam/QuickForecast/api/dto/common/ErrorResponse.java
- src/main/java/com/lsam/QuickForecast/application/service/execution/ForecastCockpitQueryService.java
- src/main/java/com/lsam/QuickForecast/application/service/execution/ScenarioExceptionReviewQueryService.java
- src/main/java/com/lsam/QuickForecast/application/validator/execution/ForecastCockpitQueryValidator.java
- src/main/java/com/lsam/QuickForecast/application/validator/execution/ScenarioExceptionReviewQueryValidator.java
- src/main/java/com/lsam/QuickForecast/application/mapper/execution/ForecastCockpitQueryMapper.java
- src/main/java/com/lsam/QuickForecast/application/mapper/execution/ScenarioExceptionReviewQueryMapper.java
- src/main/java/com/lsam/QuickForecast/domain/model/execution/ManagementForecastTimelineItem.java
- src/main/java/com/lsam/QuickForecast/domain/model/execution/ScenarioExceptionReviewItem.java
- src/main/java/com/lsam/QuickForecast/domain/model/execution/ForecastCockpitSnapshot.java
- src/main/java/com/lsam/QuickForecast/domain/port/execution/ManagementForecastTimelineRepository.java
- src/main/java/com/lsam/QuickForecast/domain/port/execution/ScenarioExceptionReviewRepository.java
- src/main/java/com/lsam/QuickForecast/domain/port/execution/ForecastCockpitSnapshotRepository.java
- src/main/java/com/lsam/QuickForecast/domain/port/execution/QuickForecastAuditPort.java
- src/main/java/com/lsam/QuickForecast/infrastructure/repository/execution/JdbcManagementForecastTimelineRepository.java
- src/main/java/com/lsam/QuickForecast/infrastructure/repository/execution/JdbcScenarioExceptionReviewRepository.java
- src/main/java/com/lsam/QuickForecast/infrastructure/repository/execution/JdbcForecastCockpitSnapshotRepository.java
- src/main/java/com/lsam/QuickForecast/infrastructure/audit/execution/DatabaseQuickForecastAuditAdapter.java
- src/main/java/com/lsam/QuickForecast/config/execution/QuickForecastPhaseAConfig.java
- src/test/java/com/lsam/QuickForecast/application/service/execution/ForecastCockpitQueryServiceTest.java
- src/test/java/com/lsam/QuickForecast/application/service/execution/ScenarioExceptionReviewQueryServiceTest.java

alignment_requirements:
- DTO field names must follow the Phase A API DTO freeze
- row-family assumptions must follow the DDL additive plan
- cockpit and exception review responses must remain aligned to their fixed payload families

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120320_QUICKFORECAST_PHASE_A_STUB_FILE_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120330_PROFIT_PREVIEW_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120330_PROFIT_PREVIEW_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120330_QUICKFORECAST_PHASE_A_MODULE_TASK_BREAKDOWN.md -->
# ============================================================
# QUICKFORECAST PHASE A MODULE TASK BREAKDOWN
# ============================================================

status: canonical
layer: implementation
system: applications
application: QuickForecast
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-module-task-breakdown

purpose:
Breaks the QuickForecast Phase A stub plan into module-by-module
execution tasks.

baseline_dependencies:
- Phase A forecast timeline DDL additive plan
- Phase A API starter
- Phase A API DTO field freeze
- Phase A implementation skeleton

recommended_execution_order:
- module_01_request_response_dto
- module_02_validators
- module_03_forecast_cockpit_query
- module_04_scenario_exception_review_query
- module_05_snapshot_and_audit_bridge
- module_06_configuration
- module_07_tests

module_01_request_response_dto:
  goal:
    - create exact request and response DTO classes

module_02_validators:
  goal:
    - reject invalid request shapes before service entry

module_03_forecast_cockpit_query:
  goal:
    - assemble scenario exceptions, management attention, and decision-support visibility

module_04_scenario_exception_review_query:
  goal:
    - expose scenario and decision-support blocker review rows

module_05_snapshot_and_audit_bridge:
  goal:
    - define optional snapshot persistence and audit append boundary

module_06_configuration:
  goal:
    - provide minimum wiring boundary

module_07_tests:
  goal:
    - establish minimum Phase A test safety net

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120330_QUICKFORECAST_PHASE_A_MODULE_TASK_BREAKDOWN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120340_QUICKFORECAST_PHASE_A_EXACT_STUB_CONTENT_ORDER_PLAN.md -->
# ============================================================
# QUICKFORECAST PHASE A EXACT STUB CONTENT ORDER PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: QuickForecast
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-exact-stub-content-order-plan

purpose:
Defines the exact file content writing order for QuickForecast
Phase A stub generation.

content_order_strategy:
- start from dependency-light files
- lock contracts first
- write ports before adapters
- write tests after service boundaries are clear

first_slice_recommended_start:
- ErrorResponse
- ForecastCockpitQueryRequest
- ForecastCockpitQueryResponse
- ForecastCockpitQueryValidator
- ManagementForecastTimelineItem
- ManagementForecastTimelineRepository
- ForecastCockpitQueryMapper
- ForecastCockpitQueryService
- ForecastCockpitQueryController
- JdbcManagementForecastTimelineRepository
- DatabaseQuickForecastAuditAdapter
- QuickForecastPhaseAConfig
- ForecastCockpitQueryServiceTest

why_this_order:
- starts from contract-first
- keeps the first compile graph shallow
- enables the cockpit query as the narrowest first vertical slice
- delays exception review query until cockpit boundaries are stable

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120340_QUICKFORECAST_PHASE_A_EXACT_STUB_CONTENT_ORDER_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120340_VIEWMODEL_REDUCER_PATTERN_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120340_VIEWMODEL_REDUCER_PATTERN_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120350_FORECAST_DETAIL_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120350_FORECAST_DETAIL_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120350_QUICKFORECAST_PHASE_A_SLICE_COMMAND_PACKS.md -->
# ============================================================
# QUICKFORECAST PHASE A SLICE COMMAND PACKS
# ============================================================

status: canonical
layer: implementation
system: applications
application: QuickForecast
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-slice-command-packs

purpose:
Fixes the Termux-oriented stub generation packs for the QuickForecast
Phase A vertical slices.

execution_policy:
- design fixation only in this step
- actual execution is later
- Termux one-block style
- mkdir -p plus cat standard
- package base is com.lsam.QuickForecast
- no Japanese literals in Java source
- additive only

slice_01_forecast_cockpit_query:
  default_safe_output_root:
    - $HOME/.tmp/quickforecast-phase-a-slice01

slice_02_scenario_exception_review_query:
  default_safe_output_root:
    - $HOME/.tmp/quickforecast-phase-a-slice02

slice_03_snapshot_and_audit_bridge:
  default_safe_output_root:
    - $HOME/.tmp/quickforecast-phase-a-slice03

note:
- actual stub generation should follow the fixed stub file plan and content order plan
- command packs remain the only sequence authority during later execution

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120350_QUICKFORECAST_PHASE_A_SLICE_COMMAND_PACKS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120360_PRO_APPROVAL_SUBMISSION_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120360_PRO_APPROVAL_SUBMISSION_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120360_QUICKFORECAST_PHASE_A_SLICE_FIELD_FILL_PLAN.md -->
# ============================================================
# QUICKFORECAST PHASE A SLICE FIELD FILL PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: QuickForecast
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-slice-field-fill-plan

purpose:
Defines what each Phase A slice should contain once empty stubs move
into field-filled implementation-ready stubs.

global_rules:
- exact field names follow the DTO freeze exactly
- controller remains thin
- service owns orchestration
- repository owns persistence and query only
- audit append remains separate
- no Japanese literals in Java source

slice_01_forecast_cockpit_query:
  expected_fill:
    - request, response, validator, mapper, service, controller, repository, audit, config, tests

slice_02_scenario_exception_review_query:
  expected_fill:
    - request, response, validator, mapper, service, controller, repository, tests

slice_03_snapshot_and_audit_bridge:
  expected_fill:
    - snapshot model, snapshot repository, audit port, snapshot adapter, audit adapter

done_definition:
- all slice seams are fixed
- DTO and row-family alignment is explicit
- tests are named before runtime generation begins

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120360_QUICKFORECAST_PHASE_A_SLICE_FIELD_FILL_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120370_HISTORY_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120370_HISTORY_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120370_QUICKFORECAST_PHASE_A_IMPLEMENTATION_READY_COMPLETION_MEMO.md -->
# ============================================================
# QUICKFORECAST PHASE A IMPLEMENTATION READY COMPLETION MEMO
# ============================================================

status: canonical
layer: implementation
system: applications
application: QuickForecast
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-implementation-ready-completion

purpose:
Declares that QuickForecast Phase A planning has reached
implementation-ready status without starting real runtime generation.

completion_basis:
- competitive positioning note added
- forecast signal aggregation architecture added
- scenario exception management architecture added
- management forecast timeline model added
- forecast cockpit and scenario exception exact payloads added
- forecast cockpit interface added
- forecast control implementation guide added
- Phase A DDL additive plan added
- Phase A API starter added
- Phase A DTO field freeze added
- Phase A implementation skeleton added
- stub file plan added
- module task breakdown added
- exact stub content order plan added
- slice command packs added
- slice field-fill plan added

implementation_ready_definition_met:
- the design no longer depends on unresolved major architecture questions
- the remaining work is fill-in and generation, not rediscovery
- slice-by-slice execution order is fixed
- DTO and row-family drift is constrained
- audit separation remains explicit

conclusion:
- QuickForecast Phase A is implementation-ready at the design level.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120370_QUICKFORECAST_PHASE_A_IMPLEMENTATION_READY_COMPLETION_MEMO.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120380_QUICKFORECAST_PHASE_A_EXECUTION_ENTRY_PROTOCOL.md -->
# ============================================================
# QUICKFORECAST PHASE A EXECUTION ENTRY PROTOCOL
# ============================================================

status: canonical
layer: implementation
system: applications
application: QuickForecast
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-execution-entry-protocol

purpose:
Defines the exact protocol to follow when the project later moves
from planning artifacts into actual stub generation or SQL execution.

entry_principles:
- do not begin from slice_03
- do not generate all files at once without slice order
- do not execute SQL before review
- keep additive only
- keep command packs as the sole sequence authority
- do not reopen already frozen DTO names casually

execution_start_order:
- step_01:
  - execute slice_01 command pack into a safe output root
- step_02:
  - fill slice_01 contents according to the field-fill plan
- step_03:
  - review compile surface and naming consistency
- step_04:
  - execute slice_02 command pack
- step_05:
  - fill slice_02 contents according to the field-fill plan
- step_06:
  - review cockpit-to-exception-review seam
- step_07:
  - execute slice_03 command pack
- step_08:
  - fill slice_03 contents according to the field-fill plan
- step_09:
  - review snapshot and audit seams
- step_10:
  - only after design-to-code review, prepare SQL apply pack
- step_11:
  - only after review, execute additive SQL in controlled order

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120380_QUICKFORECAST_PHASE_A_EXECUTION_ENTRY_PROTOCOL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120380_SHARE_TARGET_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120380_SHARE_TARGET_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120390_SETTINGS_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120390_SETTINGS_VIEWMODEL_STATE_EVENT_EFFECT_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120400_PRO_VIEWMODEL_GATING_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120400_PRO_VIEWMODEL_GATING_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120410_DASHBOARD_REDUCER_TRANSITION_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120410_DASHBOARD_REDUCER_TRANSITION_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120420_FORECAST_LIST_REDUCER_TRANSITION_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120420_FORECAST_LIST_REDUCER_TRANSITION_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120430_FORECAST_EDITOR_REDUCER_TRANSITION_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120430_FORECAST_EDITOR_REDUCER_TRANSITION_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120440_ACTION_BOARD_REDUCER_TRANSITION_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120440_ACTION_BOARD_REDUCER_TRANSITION_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120450_PROPOSAL_BUILDER_REDUCER_TRANSITION_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120450_PROPOSAL_BUILDER_REDUCER_TRANSITION_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120460_PROFIT_PREVIEW_REDUCER_TRANSITION_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120460_PROFIT_PREVIEW_REDUCER_TRANSITION_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120470_CORE_SCREEN_REPOSITORY_RESPONSIBILITY_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120470_CORE_SCREEN_REPOSITORY_RESPONSIBILITY_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120480_FORECAST_DETAIL_REDUCER_TRANSITION_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120480_FORECAST_DETAIL_REDUCER_TRANSITION_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120490_PRO_APPROVAL_SUBMISSION_REDUCER_TRANSITION_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120490_PRO_APPROVAL_SUBMISSION_REDUCER_TRANSITION_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120500_HISTORY_REDUCER_TRANSITION_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120500_HISTORY_REDUCER_TRANSITION_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120510_SHARE_TARGET_REDUCER_TRANSITION_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120510_SHARE_TARGET_REDUCER_TRANSITION_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120520_SETTINGS_REDUCER_TRANSITION_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120520_SETTINGS_REDUCER_TRANSITION_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120530_PRO_SCREEN_REPOSITORY_RESPONSIBILITY_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120530_PRO_SCREEN_REPOSITORY_RESPONSIBILITY_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120540_ANDROID_CLASS_INVENTORY_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120540_ANDROID_CLASS_INVENTORY_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120550_ANDROID_FEATURE_CLASS_RESPONSIBILITY_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120550_ANDROID_FEATURE_CLASS_RESPONSIBILITY_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120560_ANDROID_DATA_CLASS_RESPONSIBILITY_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120560_ANDROID_DATA_CLASS_RESPONSIBILITY_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120570_ANDROID_DOMAIN_CLASS_RESPONSIBILITY_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120570_ANDROID_DOMAIN_CLASS_RESPONSIBILITY_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120580_ANDROID_INTEGRATION_CLASS_RESPONSIBILITY_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120580_ANDROID_INTEGRATION_CLASS_RESPONSIBILITY_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120590_ANDROID_COMMON_UI_CLASS_RESPONSIBILITY_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120590_ANDROID_COMMON_UI_CLASS_RESPONSIBILITY_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120600_SCREEN_TO_CLASS_MAPPING_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120600_SCREEN_TO_CLASS_MAPPING_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120610_ANDROID_FILE_GENERATION_UNIT_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120610_ANDROID_FILE_GENERATION_UNIT_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120620_ANDROID_MINIMUM_FILE_SET_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120620_ANDROID_MINIMUM_FILE_SET_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120630_ANDROID_FILE_TEMPLATE_RESPONSIBILITY_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120630_ANDROID_FILE_TEMPLATE_RESPONSIBILITY_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120640_ANDROID_GENERATION_TARGET_FREEZE_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120640_ANDROID_GENERATION_TARGET_FREEZE_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120650_ANDROID_PHASE1_GENERATION_TARGET_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120650_ANDROID_PHASE1_GENERATION_TARGET_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120660_ANDROID_DEFERRED_TARGET_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120660_ANDROID_DEFERRED_TARGET_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120670_EXPANDED_VIEWMODEL_RESPONSIBILITY_IMPLEMENTATION.md -->
# ============================================================
# EXPANDED VIEWMODEL RESPONSIBILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines ViewModel responsibility after feature expansion.

viewmodel_responsibility:

ForecastEditorViewModel:
- forecast draft editing
- assumption editing
- market event input entry
- forecast basis preparation state

ActionBoardViewModel:
- action candidate comparison
- selected action fixation
- action reasoning summary

ProposalBuilderViewModel:
- proposal draft generation
- scenario switched proposal handling
- proposal template selection
- content recommendation application
- proposal basis panel state
- internal explanation draft state

ProfitPreviewViewModel:
- profit preview rendering
- explainable profit reasons
- uncertainty and risk explanation state

ForecastDetailViewModel:
- cross-object summary
- proposal basis summary
- internal response tracking summary
- readiness summary

ProApprovalSubmissionViewModel:
- governed submission
- approval request state
- handoff readiness state
- final governed transition state

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120670_EXPANDED_VIEWMODEL_RESPONSIBILITY_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120680_EXPANDED_REDUCER_RESPONSIBILITY_IMPLEMENTATION.md -->
# ============================================================
# EXPANDED REDUCER RESPONSIBILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines reducer responsibility after feature expansion.

reducer_rules:
- reducers own UI state transition
- reducers must not own persistence
- reducers must not own ERP handoff execution
- reducers may own selection, mode, and comparison state

expanded_reducer_scope:

ForecastEditorReducer:
- forecast edit state
- assumption edit state
- market event input state

ActionBoardReducer:
- action selection state
- action comparison state

ProposalBuilderReducer:
- scenario switch state
- proposal variant selection state
- template selection state
- content recommendation apply state
- internal explanation draft edit state
- basis panel visibility state

ProfitPreviewReducer:
- explainability panel state
- uncertainty panel state
- risk explanation visibility state

ForecastDetailReducer:
- detail section expansion state
- tracking summary display state
- readiness section state

ProApprovalSubmissionReducer:
- submission validation state
- approval request state
- governed transition confirmation state

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120680_EXPANDED_REDUCER_RESPONSIBILITY_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120690_EXPANDED_REPOSITORY_RESPONSIBILITY_IMPLEMENTATION.md -->
# ============================================================
# EXPANDED REPOSITORY RESPONSIBILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines repository responsibility after feature expansion.

repository_rules:
- repositories mediate data access and composed business retrieval
- repositories do not own UI display logic
- repositories do not replace reducers
- governed operations remain explicitly separated from local draft operations

expanded_repositories:

ForecastRepository:
- forecast draft load/save
- market event input persistence
- assumption persistence

ActionRepository:
- action candidate retrieval
- selected action persistence

ProposalRepository:
- proposal variant generation request
- proposal basis panel data retrieval
- proposal template selection persistence
- content recommendation retrieval
- internal explanation draft persistence

ProfitRepository:
- profit preview retrieval
- explainable profit basis retrieval

TrackingRepository:
- internal response tracking retrieval
- tracking state update
- readiness summary retrieval

GovernedOperationRepository:
- approval request execution
- share execution
- ERP handoff preparation
- governed submission execution

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120690_EXPANDED_REPOSITORY_RESPONSIBILITY_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120700_EXPANDED_FEATURE_BOUNDARY_IMPLEMENTATION.md -->
# ============================================================
# EXPANDED FEATURE BOUNDARY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines boundaries for expanded features.

boundary_rules:
- scenario switched proposal is proposal-domain behavior
- proposal basis panel is explanation-domain behavior
- explainable profit is profit-domain behavior
- internal response tracking is governance-preparation behavior
- market event input is forecast-basis behavior
- template selection and content recommendation are proposal-support behavior

important_rule:
Expansion must not collapse
forecast domain,
proposal domain,
profit domain,
and governed operation domain
into one oversized class or state object.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120700_EXPANDED_FEATURE_BOUNDARY_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120730_MULTICURRENCY_IMPLEMENTATION.md -->
# ============================================================
# MULTICURRENCY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines multicurrency implementation boundaries.

implementation_rules:
- money values are persisted canonically
- display formatting is presentation-layer behavior
- exchange-rate snapshot retrieval is separated from UI logic
- base-currency conversion is explicit
- repositories return canonical and converted values separately

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120730_MULTICURRENCY_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120740_MULTICURRENCY_VIEWMODEL_RESPONSIBILITY_IMPLEMENTATION.md -->
# ============================================================
# MULTICURRENCY VIEWMODEL RESPONSIBILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines multicurrency responsibility by ViewModel.

responsibility:

SettingsViewModel:
- display currency preference
- base currency preference
- fallback currency preference

ProposalBuilderViewModel:
- proposal monetary basis display state
- source / base / display currency section control

ProfitPreviewViewModel:
- multicurrency profit rendering state
- base-currency comparison state
- exchange-rate snapshot visibility state

ForecastDetailViewModel:
- multicurrency detail rendering
- canonical money summary visibility

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120740_MULTICURRENCY_VIEWMODEL_RESPONSIBILITY_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120750_ANDROID_MINIMUM_I18N_I18NCURRENCY_IMPLEMENTATION.md -->
# ============================================================
# ANDROID MINIMUM I18N AND MULTICURRENCY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines implementation boundary for minimum multilingual and multicurrency support.

minimum_multilingual_scope:
- key-based UI text
- default language rendering
- fallback language rendering
- locale preference retrieval

minimum_multicurrency_scope:
- canonical money value handling
- display currency rendering
- base currency preference retention
- no advanced rate conversion yet unless explicitly available

important_rule:
Phase 1 may support multicurrency-safe structure
without full exchange-rate density.
Structure first, density later.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120750_ANDROID_MINIMUM_I18N_I18NCURRENCY_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120760_ANDROID_PHASE1_GENERATION_BOUNDARY_IMPLEMENTATION.md -->
# ============================================================
# ANDROID PHASE 1 GENERATION BOUNDARY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines generation boundary for actual Phase 1 Android file creation.

must_generate_now:
- local-first core chain files
- locale preference files
- currency preference files
- formatter files
- key-based text resolution files
- settings flow files

must_not_generate_now:
- governed operation files
- ERP handoff files
- advanced translation variant persistence
- advanced exchange-rate density
- dedicated comparison boards
- advanced recommendation modules

reason:
Phase 1 should establish a safe skeleton
without overloading implementation density.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120760_ANDROID_PHASE1_GENERATION_BOUNDARY_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120770_MULTI_DEVICE_IMPLEMENTATION.md -->
# ============================================================
# MULTI DEVICE IMPLEMENTATION
# iPhone / Android / Tablet
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines implementation direction for multi-device support.

implementation_principles:
- shared canonical business flow across all devices
- shared state and repository structure
- adaptive presentation by width / size class
- no device-specific business rule divergence
- touch-first implementation across phone and tablet

implementation_rules:
- smartphone is the baseline implementation target
- tablet support expands layout density and visibility
- proposal, profit, and detail screens must support wider review patterns
- source / translated / multicurrency comparison may be shown together on larger screens
- no hover-dependent essential interaction

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120770_MULTI_DEVICE_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120780_ADAPTIVE_SCREEN_COMPOSITION_IMPLEMENTATION.md -->
# ============================================================
# ADAPTIVE SCREEN COMPOSITION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines screen-composition adaptation rules.

composition_rules:
- compact width uses single-pane composition
- medium width may promote secondary panel visibility
- expanded width may keep summary and detail visible together
- expanded width may keep proposal editor and basis panel visible together
- expanded width may keep profit summary and breakdown visible together

screen_examples:
- ForecastListScreen supports list-detail composition on tablet
- ProposalBuilderScreen supports editor-basis-preview composition on tablet
- ProfitPreviewScreen supports summary-breakdown composition on tablet
- ForecastDetailScreen supports sticky summary plus detail region on tablet

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120780_ADAPTIVE_SCREEN_COMPOSITION_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120790_ANDROID_TEMPLATE_GENERATION_IMPLEMENTATION.md -->
# ============================================================
# ANDROID TEMPLATE GENERATION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines template generation direction for Android Phase 1 files.

template_principles:
- generated files must be minimal but compilable-oriented
- domain models stay small and explicit
- ui text resolution must be key-based from the start
- money handling must be amount + currency code based
- settings foundation must exist before final screen locking
- templates must prefer additive expansion over later rewrite

template_groups:
- domain templates
- entity templates
- dao templates
- repository templates
- formatter templates
- navigation templates
- settings templates
- screen / reducer / viewmodel templates

important_rule:
Do not defer multilingual and multicurrency structure
to late-stage patching inside screen files.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120790_ANDROID_TEMPLATE_GENERATION_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120800_ANDROID_DOMAIN_TEMPLATE_IMPLEMENTATION.md -->
# ============================================================
# ANDROID DOMAIN TEMPLATE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the minimum domain-template shape.

domain_template_direction:
- Kotlin data class centered
- explicit ids
- explicit core fields
- nullable fields only when meaningfully optional
- no UI-specific rendering logic inside domain model

minimum_domain_templates:
- ForecastDraft
- ActionIdea
- ProposalDraft
- ProfitPreview
- LocalePreference
- CurrencyPreference
- MoneyValue

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120800_ANDROID_DOMAIN_TEMPLATE_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120810_ANDROID_SETTINGS_AND_FORMATTER_TEMPLATE_IMPLEMENTATION.md -->
# ============================================================
# ANDROID SETTINGS AND FORMATTER TEMPLATE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines templates for settings and formatting support.

settings_template_direction:
- settings repository owns persisted preference retrieval
- settings viewmodel owns screen state only
- locale preference and currency preference are separated but related

formatter_template_direction:
- UiTextResolver resolves key-based display text
- NumberFormatter formats plain numeric display
- CurrencyFormatter formats display-money safely
- DateTimeFormatter formats display-time safely

important_rule:
Formatter behavior is presentation support.
Canonical values stay outside formatter ownership.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120810_ANDROID_SETTINGS_AND_FORMATTER_TEMPLATE_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120820_IMPLEMENTATION_BOUNDARY_HARDENING.md -->
# ============================================================
# IMPLEMENTATION BOUNDARY HARDENING
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Hardens implementation boundaries across layers and classes.

forbidden_boundary_violations:
- repository must not generate final UI wording
- formatter must not decide business meaning
- viewmodel must not rewrite canonical money meaning
- screen composables must not own canonical fallback rules
- adaptive layout code must not fork business flow
- locale and currency display helpers must not mutate canonical source data

required_boundaries:
- repository returns canonical data and requested variants separately
- formatter handles presentation formatting only
- resolver handles text-key resolution only
- viewmodel coordinates state and transitions only
- screen layer renders and emits intent only

important_rule:
Tablet expansion is presentation expansion,
not business-flow divergence.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120820_IMPLEMENTATION_BOUNDARY_HARDENING.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120830_ADAPTIVE_PRESENTATION_WITHOUT_FLOW_DIVERGENCE_IMPLEMENTATION.md -->
# ============================================================
# ADAPTIVE PRESENTATION WITHOUT FLOW DIVERGENCE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Fixes the rule that adaptive presentation must not create device-specific flow divergence.

principles:
- one canonical business flow
- one canonical data meaning
- adaptive composition only changes visibility density
- smartphone and tablet share the same action order semantics

allowed_differences:
- pane count
- simultaneous visibility
- comparison density
- summary stickiness
- navigation compression on larger screens

forbidden_differences:
- different approval meaning
- different proposal meaning
- different money meaning
- different fallback meaning
- different save or submission semantics by device class

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120830_ADAPTIVE_PRESENTATION_WITHOUT_FLOW_DIVERGENCE_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120_QUICK_FORECAST_IMPLEMENTATION.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/120_QUICK_FORECAST_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/implementation_INDEX.md -->
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
- 120670_EXPANDED_VIEWMODEL_RESPONSIBILITY_IMPLEMENTATION.md
- 120680_EXPANDED_REDUCER_RESPONSIBILITY_IMPLEMENTATION.md
- 120690_EXPANDED_REPOSITORY_RESPONSIBILITY_IMPLEMENTATION.md
- 120700_EXPANDED_FEATURE_BOUNDARY_IMPLEMENTATION.md
- 120710_MULTILINGUAL_IMPLEMENTATION.md
- 120720_MULTILINGUAL_VIEWMODEL_RESPONSIBILITY_IMPLEMENTATION.md
- 120730_MULTICURRENCY_IMPLEMENTATION.md
- 120740_MULTICURRENCY_VIEWMODEL_RESPONSIBILITY_IMPLEMENTATION.md
- 120750_ANDROID_MINIMUM_I18N_I18NCURRENCY_IMPLEMENTATION.md
- 120760_ANDROID_PHASE1_GENERATION_BOUNDARY_IMPLEMENTATION.md
- 120770_MULTI_DEVICE_IMPLEMENTATION.md
- 120780_ADAPTIVE_SCREEN_COMPOSITION_IMPLEMENTATION.md
- 120790_ANDROID_TEMPLATE_GENERATION_IMPLEMENTATION.md
- 120800_ANDROID_DOMAIN_TEMPLATE_IMPLEMENTATION.md
- 120810_ANDROID_SETTINGS_AND_FORMATTER_TEMPLATE_IMPLEMENTATION.md
- 120820_IMPLEMENTATION_BOUNDARY_HARDENING.md
- 120830_ADAPTIVE_PRESENTATION_WITHOUT_FLOW_DIVERGENCE_IMPLEMENTATION.md

- 120300_QUICKFORECAST_FORECAST_CONTROL_IMPLEMENTATION_GUIDE.md

- 120310_QUICKFORECAST_PHASE_A_FORECAST_TIMELINE_IMPLEMENTATION_SKELETON.md

- 120320_QUICKFORECAST_PHASE_A_STUB_FILE_PLAN.md

- 120330_QUICKFORECAST_PHASE_A_MODULE_TASK_BREAKDOWN.md

- 120340_QUICKFORECAST_PHASE_A_EXACT_STUB_CONTENT_ORDER_PLAN.md

- 120350_QUICKFORECAST_PHASE_A_SLICE_COMMAND_PACKS.md

- 120360_QUICKFORECAST_PHASE_A_SLICE_FIELD_FILL_PLAN.md

- 120370_QUICKFORECAST_PHASE_A_IMPLEMENTATION_READY_COMPLETION_MEMO.md

- 120380_QUICKFORECAST_PHASE_A_EXECUTION_ENTRY_PROTOCOL.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/implementation_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/implementation_OVERVIEW.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/120.implementation/implementation_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130110_MVP_DEVELOPMENT_PLAN.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130110_MVP_DEVELOPMENT_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130120_PRO_EXPANSION_DEVELOPMENT_PLAN.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130120_PRO_EXPANSION_DEVELOPMENT_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130130_ANDROID_IMPLEMENTATION_PREPARATION_PLAN.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130130_ANDROID_IMPLEMENTATION_PREPARATION_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130140_SCREEN_IMPLEMENTATION_ORDER_PLAN.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130140_SCREEN_IMPLEMENTATION_ORDER_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130150_CORE_SCREEN_SKELETON_DEVELOPMENT_PLAN.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130150_CORE_SCREEN_SKELETON_DEVELOPMENT_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130160_PRO_SCREEN_SKELETON_DEVELOPMENT_PLAN.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130160_PRO_SCREEN_SKELETON_DEVELOPMENT_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130170_VIEWMODEL_REPOSITORY_DB_DEVELOPMENT_PLAN.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130170_VIEWMODEL_REPOSITORY_DB_DEVELOPMENT_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130180_ENTITY_DAO_REPOSITORY_DEVELOPMENT_PLAN.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130180_ENTITY_DAO_REPOSITORY_DEVELOPMENT_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130190_VIEWMODEL_STATE_EVENT_EFFECT_DEVELOPMENT_PLAN.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130190_VIEWMODEL_STATE_EVENT_EFFECT_DEVELOPMENT_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130200_PRO_VIEWMODEL_STATE_EVENT_EFFECT_DEVELOPMENT_PLAN.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130200_PRO_VIEWMODEL_STATE_EVENT_EFFECT_DEVELOPMENT_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130210_REDUCER_AND_REPOSITORY_RESPONSIBILITY_DEVELOPMENT_PLAN.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130210_REDUCER_AND_REPOSITORY_RESPONSIBILITY_DEVELOPMENT_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130220_PRO_REDUCER_AND_REPOSITORY_RESPONSIBILITY_DEVELOPMENT_PLAN.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130220_PRO_REDUCER_AND_REPOSITORY_RESPONSIBILITY_DEVELOPMENT_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130230_ANDROID_CLASS_IMPLEMENTATION_ORDER_PLAN.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130230_ANDROID_CLASS_IMPLEMENTATION_ORDER_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130240_ANDROID_FILE_GENERATION_DEVELOPMENT_PLAN.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130240_ANDROID_FILE_GENERATION_DEVELOPMENT_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130250_ANDROID_FILE_BATCH_PLAN.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130250_ANDROID_FILE_BATCH_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130260_ANDROID_GENERATION_TARGET_ORDER_PLAN.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130260_ANDROID_GENERATION_TARGET_ORDER_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130270_ANDROID_GENERATION_DONE_CRITERIA_PLAN.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130270_ANDROID_GENERATION_DONE_CRITERIA_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130280_ANDROID_EXPANDED_IMPLEMENTATION_PRIORITY_PLAN.md -->
# ============================================================
# ANDROID EXPANDED IMPLEMENTATION PRIORITY PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Android implementation priority after feature expansion.

priority_principle:
Do not start from the widest feature set.
Start from the strongest business value chain
with the smallest stable implementation surface.

canonical_chain:
Forecast
-> Action
-> Proposal
-> Profit

implementation_rule:
Expanded features must be layered onto the canonical chain,
not implemented as detached side systems.

# ============================================================
# 1. PHASE 1
# ============================================================

phase_1_goal:
Deliver the local-first core chain.

phase_1_scope:
- Forecast Editor core
- Action Idea Board core
- Proposal Draft Builder core
- Profit Preview core
- local DB / DAO / repository base
- core ViewModels / reducers
- forecast detail core summary

phase_1_excludes:
- governed Pro workflow
- ERP handoff
- team sharing
- approval routing
- advanced recommendation
- full tracking board

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130280_ANDROID_EXPANDED_IMPLEMENTATION_PRIORITY_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130290_ANDROID_EXPANDED_PHASE2_PLAN.md -->
# ============================================================
# ANDROID EXPANDED PHASE 2 PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the first expansion layer after phase 1 core chain.

phase_2_goal:
Strengthen proposal-centered decision support
without entering full governed operation.

phase_2_scope:
- scenario switched proposal
- proposal basis panel
- explainable profit surface
- market event input
- template selection
- internal explanation draft

phase_2_reason:
These features deepen QuickForecast's differentiation
while staying close to the local-first core chain.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130290_ANDROID_EXPANDED_PHASE2_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130300_ANDROID_EXPANDED_PHASE3_PLAN.md -->
# ============================================================
# ANDROID EXPANDED PHASE 3 PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the governed operation layer after proposal-centered expansion.

phase_3_goal:
Enable governed business operation.

phase_3_scope:
- internal response tracking
- share target flow
- Pro approval submission flow
- governed state transitions
- notification linkage
- sync-linked continuity
- ERP handoff readiness flow

phase_3_rule:
Governed workflow must be introduced only
after the local chain and proposal-centered support are stable.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130300_ANDROID_EXPANDED_PHASE3_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130310_ANDROID_EXPANDED_PHASE4_PLAN.md -->
# ============================================================
# ANDROID EXPANDED PHASE 4 PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines later-stage enhancement scope.

phase_4_scope:
- content recommendation refinement
- dedicated response tracking board
- dedicated proposal variant comparison surface
- advanced template families
- deeper sync and collaboration refinement
- ERP-connected optimization refinement

rule:
Phase 4 is optimization and density expansion,
not the starting point.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130310_ANDROID_EXPANDED_PHASE4_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130320_ANDROID_EXPANDED_IMPLEMENTATION_SEQUENCE_PLAN.md -->
# ============================================================
# ANDROID EXPANDED IMPLEMENTATION SEQUENCE PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines concrete implementation sequence after feature expansion.

sequence:

1.
local entity and DAO reinforcement

2.
ForecastEditor core completion

3.
ActionBoard core completion

4.
ProposalBuilder core completion

5.
ProfitPreview core completion

6.
ForecastDetail core completion

7.
scenario switched proposal

8.
proposal basis panel

9.
explainable profit surface

10.
market event input

11.
template selection

12.
internal explanation draft

13.
tracking summary

14.
share / approval / governed transition

15.
sync / notification / ERP handoff linkage

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130320_ANDROID_EXPANDED_IMPLEMENTATION_SEQUENCE_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130330_ANDROID_IMPLEMENTATION_READING_ORDER_PLAN.md -->
# ============================================================
# ANDROID IMPLEMENTATION READING ORDER PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the recommended reading order before Android implementation starts.

reading_order:

1.
000_QUICK_FORECAST_OVERVIEW.md

2.
00_QUICK_FORECAST_INTEGRATED_REBUILT.md

3.
020110_FORECAST_ACTION_PROPOSAL_PROFIT_ARCHITECTURE.md

4.
020130_FORECAST_TO_PROPOSAL_DIFFERENTIATION_ARCHITECTURE.md

5.
030310_QUICK_FORECAST_PLAN_MODEL.md

6.
030320_QUICK_FORECAST_PLAN_CAPABILITY_MODEL.md

7.
090410_EXPANDED_SCREEN_INVENTORY_INTERFACE.md

8.
090420_SCREEN_RESPONSIBILITY_REALIGNMENT_INTERFACE.md

9.
120670_EXPANDED_VIEWMODEL_RESPONSIBILITY_IMPLEMENTATION.md

10.
120680_EXPANDED_REDUCER_RESPONSIBILITY_IMPLEMENTATION.md

11.
120690_EXPANDED_REPOSITORY_RESPONSIBILITY_IMPLEMENTATION.md

12.
130280_ANDROID_EXPANDED_IMPLEMENTATION_PRIORITY_PLAN.md

13.
130320_ANDROID_EXPANDED_IMPLEMENTATION_SEQUENCE_PLAN.md

reading_rule:
Read from meaning and boundary first,
then screen responsibility,
then state and repository responsibility,
then implementation order.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130330_ANDROID_IMPLEMENTATION_READING_ORDER_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130340_ANDROID_PHASE_GATE_PLAN.md -->
# ============================================================
# ANDROID PHASE GATE PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines phase gate conditions for Android implementation.

phase_1_gate:
- local-first chain only
- no governed workflow dependency
- no ERP handoff dependency
- no team sync dependency
- Forecast -> Action -> Proposal -> Profit must run locally

phase_2_gate:
- phase 1 stable
- proposal builder stable
- profit preview stable
- scenario switch ready to absorb safely
- basis / explainability features can be added without class collapse

phase_3_gate:
- phase 2 stable
- local and proposal-centered flow already usable
- governed workflow introduced explicitly
- no accidental merge of local save and governed submission

phase_4_gate:
- phase 3 stable
- optimization and density expansion only
- no premature expansion before earlier phases stabilize

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130340_ANDROID_PHASE_GATE_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130350_ANDROID_EXPANDED_DONE_CRITERIA_PLAN.md -->
# ============================================================
# ANDROID EXPANDED DONE CRITERIA PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines done criteria after feature expansion.

phase_1_done:
- local entities stable
- DAO stable
- repositories stable for core chain
- Forecast Editor usable
- Action Idea Board usable
- Proposal Builder usable
- Profit Preview usable
- Forecast Detail summary usable

phase_2_done:
- scenario switched proposal usable
- basis panel usable
- explainable profit usable
- market event input usable
- template selection usable
- internal explanation draft usable

phase_3_done:
- tracking summary usable
- share flow usable
- approval flow usable
- governed transition usable
- sync / notification / ERP handoff readiness integrated

phase_4_done:
- optimization surfaces stable
- optional dedicated boards stable
- refinement does not break earlier phases

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130350_ANDROID_EXPANDED_DONE_CRITERIA_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130360_ANDROID_MINIMUM_FILESET_WITH_I18N_I18NCURRENCY_PLAN.md -->
# ============================================================
# ANDROID MINIMUM FILESET WITH MULTILINGUAL AND MULTICURRENCY PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the minimum Android file set
including multilingual and multicurrency foundations.

principle:
Do not fully implement all multilingual and multicurrency density at once.
Introduce only the minimum foundation required
to keep later expansion clean.

# ============================================================
# 1. PHASE 1 MINIMUM FILESET
# ============================================================

phase_1_minimum_files:

domain_models:
- ForecastDraft
- ActionIdea
- ProposalDraft
- ProfitPreview
- LocalePreference
- CurrencyPreference
- MoneyValue

data_local:
- ForecastDraftEntity
- ActionIdeaEntity
- ProposalDraftEntity
- ProfitPreviewEntity
- LocalePreferenceEntity
- CurrencyPreferenceEntity

dao:
- ForecastDraftDao
- ActionIdeaDao
- ProposalDraftDao
- ProfitPreviewDao
- LocalePreferenceDao
- CurrencyPreferenceDao

repositories:
- ForecastRepository
- ActionRepository
- ProposalRepository
- ProfitRepository
- SettingsRepository

ui_screens:
- DashboardScreen
- ForecastListScreen
- ForecastEditorScreen
- ActionBoardScreen
- ProposalBuilderScreen
- ProfitPreviewScreen
- ForecastDetailScreen
- SettingsScreen

viewmodels:
- DashboardViewModel
- ForecastListViewModel
- ForecastEditorViewModel
- ActionBoardViewModel
- ProposalBuilderViewModel
- ProfitPreviewViewModel
- ForecastDetailViewModel
- SettingsViewModel

formatters:
- CurrencyFormatter
- NumberFormatter
- DateTimeFormatter
- UiTextResolver

state_support:
- UiState
- UiEvent
- UiEffect
- ScreenReducer base

navigation:
- AppNavGraph
- Route definitions

minimum_i18n_assets:
- localization key set
- default language dictionary
- fallback language dictionary

minimum_multicurrency_assets:
- base currency setting
- display currency setting
- money display helpers

# ============================================================
# 2. DEFERRED FILES
# ============================================================

deferred_files:
- TranslationVariant persistence full set
- TerminologyGlossary persistence full set
- ExchangeRateSnapshot persistence full set
- multicurrency proposal comparison dedicated screen
- multilingual draft comparison dedicated screen
- governed approval / share / ERP handoff classes
- notification linkage classes
- advanced recommendation classes

# ============================================================
# 3. WHY THESE ARE MINIMUM
# ============================================================

why_minimum:
- preserves Forecast -> Action -> Proposal -> Profit chain
- preserves locale-aware UI from the start
- preserves currency-safe money handling from the start
- avoids later destructive rewrite
- avoids premature governed workflow expansion

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130360_ANDROID_MINIMUM_FILESET_WITH_I18N_I18NCURRENCY_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130370_ANDROID_MINIMUM_CLASSSET_WITH_I18N_I18NCURRENCY_PLAN.md -->
# ============================================================
# ANDROID MINIMUM CLASSSET WITH MULTILINGUAL AND MULTICURRENCY PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the minimum class groups needed
for clean Phase 1 implementation.

class_groups:

core_domain:
- ForecastDraft
- ActionIdea
- ProposalDraft
- ProfitPreview

locale_currency_domain:
- LocalePreference
- CurrencyPreference
- MoneyValue

core_data:
- entities
- dao
- repository implementations

core_ui:
- screen composables
- screen state classes
- reducers
- viewmodels

formatting_support:
- currency formatter
- number formatter
- datetime formatter
- localized text resolver

config_support:
- language config
- fallback config
- currency config

rule:
Locale and currency support must enter as foundational classes,
not as later patches hidden inside UI files.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130370_ANDROID_MINIMUM_CLASSSET_WITH_I18N_I18NCURRENCY_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130380_ANDROID_PHASE1_I18N_I18NCURRENCY_SEQUENCE_PLAN.md -->
# ============================================================
# ANDROID PHASE 1 I18N AND MULTICURRENCY SEQUENCE PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines implementation sequence for Phase 1
with multilingual and multicurrency foundations.

sequence:

1.
MoneyValue / LocalePreference / CurrencyPreference model setup

2.
local entities and dao setup

3.
repositories for settings and core chain

4.
formatter and text resolver setup

5.
Settings screen and SettingsViewModel minimum setup

6.
Forecast Editor core

7.
Action Board core

8.
Proposal Builder core

9.
Profit Preview core

10.
Forecast Detail core

11.
Dashboard and Forecast List integration

rule:
Settings foundation for locale and currency must exist
before screen-level rendering is finalized.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130380_ANDROID_PHASE1_I18N_I18NCURRENCY_SEQUENCE_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130390_PHASE1_GENERATION_TARGET_FILE_LIST_PLAN.md -->
# ============================================================
# PHASE 1 GENERATION TARGET FILE LIST PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the concrete file-generation target list for Android Phase 1.

phase_1_generation_targets:

domain_models:
- ForecastDraft.kt
- ActionIdea.kt
- ProposalDraft.kt
- ProfitPreview.kt
- LocalePreference.kt
- CurrencyPreference.kt
- MoneyValue.kt

entities:
- ForecastDraftEntity.kt
- ActionIdeaEntity.kt
- ProposalDraftEntity.kt
- ProfitPreviewEntity.kt
- LocalePreferenceEntity.kt
- CurrencyPreferenceEntity.kt

dao:
- ForecastDraftDao.kt
- ActionIdeaDao.kt
- ProposalDraftDao.kt
- ProfitPreviewDao.kt
- LocalePreferenceDao.kt
- CurrencyPreferenceDao.kt

repositories:
- ForecastRepository.kt
- ActionRepository.kt
- ProposalRepository.kt
- ProfitRepository.kt
- SettingsRepository.kt

viewmodels:
- DashboardViewModel.kt
- ForecastListViewModel.kt
- ForecastEditorViewModel.kt
- ActionBoardViewModel.kt
- ProposalBuilderViewModel.kt
- ProfitPreviewViewModel.kt
- ForecastDetailViewModel.kt
- SettingsViewModel.kt

reducers:
- DashboardReducer.kt
- ForecastListReducer.kt
- ForecastEditorReducer.kt
- ActionBoardReducer.kt
- ProposalBuilderReducer.kt
- ProfitPreviewReducer.kt
- ForecastDetailReducer.kt
- SettingsReducer.kt

screens:
- DashboardScreen.kt
- ForecastListScreen.kt
- ForecastEditorScreen.kt
- ActionBoardScreen.kt
- ProposalBuilderScreen.kt
- ProfitPreviewScreen.kt
- ForecastDetailScreen.kt
- SettingsScreen.kt

navigation:
- AppNavGraph.kt
- AppRoutes.kt

formatting_and_i18n:
- CurrencyFormatter.kt
- NumberFormatter.kt
- DateTimeFormatter.kt
- UiTextResolver.kt
- LocalizationKeys.kt

config_assets:
- strings_default.json
- strings_fallback.json

room_support:
- QuickForecastDatabase.kt

rule:
Phase 1 generation target list must remain focused on:
- local-first chain
- locale foundation
- currency-safe foundation
and must exclude governed workflow classes.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130390_PHASE1_GENERATION_TARGET_FILE_LIST_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130400_PHASE1_ACCEPTANCE_CRITERIA_PLAN.md -->
# ============================================================
# PHASE 1 ACCEPTANCE CRITERIA PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines acceptance criteria for Android Phase 1.

acceptance_criteria:
- Forecast -> Action -> Proposal -> Profit chain is operable locally
- local persistence works for core chain
- Dashboard / List / Editor / Action / Proposal / Profit / Detail / Settings screens exist
- basic navigation is stable
- locale preference can be changed and reflected in UI text
- fallback language rendering works safely
- money values are handled as amount + currency_code
- display currency preference can be retained
- profit preview does not collapse money meaning into naked numeric rendering
- reducers, viewmodels, and repositories remain responsibility-separated
- no governed approval / share / ERP handoff dependency exists in Phase 1

fail_conditions:
- UI text hardcoded across screens without key structure
- naked numeric amount handling without currency code
- screen logic directly owns persistence
- repository directly owns UI rendering logic
- governed workflow leaks into Phase 1

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130400_PHASE1_ACCEPTANCE_CRITERIA_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130410_PHASE2_ENTRY_DECISION_PLAN.md -->
# ============================================================
# PHASE 2 ENTRY DECISION PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines conditions for moving from Phase 1 to Phase 2.

phase_2_entry_conditions:
- Phase 1 acceptance criteria all passed
- ProposalBuilder core is stable
- ProfitPreview core is stable
- locale and currency foundations are already embedded cleanly
- no structural rewrite is needed before scenario switch insertion
- no class collapse is visible around ProposalBuilderViewModel
- no money-meaning confusion remains in profit preview rendering

phase_2_allowed_scope:
- scenario switched proposal
- proposal basis panel
- explainable profit surface
- market event input
- template selection
- internal explanation draft

phase_2_blockers:
- unstable local persistence
- unstable navigation
- unstable settings / locale / currency preference
- proposal builder still mixing repository and UI logic

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130410_PHASE2_ENTRY_DECISION_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130420_DEVELOPMENT_RESTART_ENTRY_PLAN.md -->
# ============================================================
# DEVELOPMENT RESTART ENTRY PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the formal 130-level restart entry when development resumes.

restart_reading_order:
- 130280_ANDROID_EXPANDED_IMPLEMENTATION_PRIORITY_PLAN.md
- 130320_ANDROID_EXPANDED_IMPLEMENTATION_SEQUENCE_PLAN.md
- 130330_ANDROID_IMPLEMENTATION_READING_ORDER_PLAN.md
- 130340_ANDROID_PHASE_GATE_PLAN.md
- 130350_ANDROID_EXPANDED_DONE_CRITERIA_PLAN.md
- 130360_ANDROID_MINIMUM_FILESET_WITH_I18N_I18NCURRENCY_PLAN.md
- 130370_ANDROID_MINIMUM_CLASSSET_WITH_I18N_I18NCURRENCY_PLAN.md
- 130380_ANDROID_PHASE1_I18N_I18NCURRENCY_SEQUENCE_PLAN.md
- 130390_PHASE1_GENERATION_TARGET_FILE_LIST_PLAN.md
- 130400_PHASE1_ACCEPTANCE_CRITERIA_PLAN.md
- 130410_PHASE2_ENTRY_DECISION_PLAN.md

restart_rule:
Development restart must begin from the 130-layer bundle,
not from scattered implementation files only.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130420_DEVELOPMENT_RESTART_ENTRY_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130430_ANDROID_PHASE1_DIRECTORY_STRUCTURE_PLAN.md -->
# ============================================================
# ANDROID PHASE 1 DIRECTORY STRUCTURE PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the Android directory structure for Phase 1 generation.

root_package:
com.lsam.QuickForecast

directory_structure:
- app/src/main/java/com/lsam/QuickForecast/domain/model
- app/src/main/java/com/lsam/QuickForecast/data/local/entity
- app/src/main/java/com/lsam/QuickForecast/data/local/dao
- app/src/main/java/com/lsam/QuickForecast/data/local/db
- app/src/main/java/com/lsam/QuickForecast/data/repository
- app/src/main/java/com/lsam/QuickForecast/ui/navigation
- app/src/main/java/com/lsam/QuickForecast/ui/common
- app/src/main/java/com/lsam/QuickForecast/ui/formatter
- app/src/main/java/com/lsam/QuickForecast/ui/screen/dashboard
- app/src/main/java/com/lsam/QuickForecast/ui/screen/forecastlist
- app/src/main/java/com/lsam/QuickForecast/ui/screen/forecasteditor
- app/src/main/java/com/lsam/QuickForecast/ui/screen/actionboard
- app/src/main/java/com/lsam/QuickForecast/ui/screen/proposalbuilder
- app/src/main/java/com/lsam/QuickForecast/ui/screen/profitpreview
- app/src/main/java/com/lsam/QuickForecast/ui/screen/forecastdetail
- app/src/main/java/com/lsam/QuickForecast/ui/screen/settings
- app/src/main/java/com/lsam/QuickForecast/ui/state
- app/src/main/java/com/lsam/QuickForecast/ui/reducer
- app/src/main/java/com/lsam/QuickForecast/ui/viewmodel
- app/src/main/assets/i18n

rule:
Phase 1 must keep language and currency support foundational,
not patched into individual screen files later.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130430_ANDROID_PHASE1_DIRECTORY_STRUCTURE_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130440_ANDROID_PHASE1_FILE_GENERATION_BATCH_PLAN.md -->
# ============================================================
# ANDROID PHASE 1 FILE GENERATION BATCH PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines batch groupings for Phase 1 file generation.

batch_1_foundation:
- domain models
- locale and currency models
- shared ui state contracts
- formatter and text resolver
- navigation route definitions

batch_2_persistence:
- entities
- dao
- database
- repository interfaces / implementations

batch_3_settings_and_configuration:
- settings screen
- settings viewmodel
- locale preference wiring
- currency preference wiring
- i18n asset files

batch_4_core_chain_screens:
- forecast editor
- action board
- proposal builder
- profit preview
- forecast detail

batch_5_shell_and_entry:
- dashboard
- forecast list
- nav graph
- app entry linkage

rule:
Generate from lower volatility foundation
toward higher volatility feature screens.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130440_ANDROID_PHASE1_FILE_GENERATION_BATCH_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130450_ANDROID_PHASE1_CONCRETE_FILESET_PLAN.md -->
# ============================================================
# ANDROID PHASE 1 CONCRETE FILESET PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the concrete Phase 1 file set to generate.

files:

domain_model:
- domain/model/ForecastDraft.kt
- domain/model/ActionIdea.kt
- domain/model/ProposalDraft.kt
- domain/model/ProfitPreview.kt
- domain/model/LocalePreference.kt
- domain/model/CurrencyPreference.kt
- domain/model/MoneyValue.kt

data_entity:
- data/local/entity/ForecastDraftEntity.kt
- data/local/entity/ActionIdeaEntity.kt
- data/local/entity/ProposalDraftEntity.kt
- data/local/entity/ProfitPreviewEntity.kt
- data/local/entity/LocalePreferenceEntity.kt
- data/local/entity/CurrencyPreferenceEntity.kt

data_dao:
- data/local/dao/ForecastDraftDao.kt
- data/local/dao/ActionIdeaDao.kt
- data/local/dao/ProposalDraftDao.kt
- data/local/dao/ProfitPreviewDao.kt
- data/local/dao/LocalePreferenceDao.kt
- data/local/dao/CurrencyPreferenceDao.kt

data_db:
- data/local/db/QuickForecastDatabase.kt

data_repository:
- data/repository/ForecastRepository.kt
- data/repository/ActionRepository.kt
- data/repository/ProposalRepository.kt
- data/repository/ProfitRepository.kt
- data/repository/SettingsRepository.kt

ui_common:
- ui/common/LocalizationKeys.kt
- ui/common/UiTextResolver.kt

ui_formatter:
- ui/formatter/CurrencyFormatter.kt
- ui/formatter/NumberFormatter.kt
- ui/formatter/DateTimeFormatter.kt

ui_state:
- ui/state/UiState.kt
- ui/state/UiEvent.kt
- ui/state/UiEffect.kt

ui_reducer:
- ui/reducer/DashboardReducer.kt
- ui/reducer/ForecastListReducer.kt
- ui/reducer/ForecastEditorReducer.kt
- ui/reducer/ActionBoardReducer.kt
- ui/reducer/ProposalBuilderReducer.kt
- ui/reducer/ProfitPreviewReducer.kt
- ui/reducer/ForecastDetailReducer.kt
- ui/reducer/SettingsReducer.kt

ui_viewmodel:
- ui/viewmodel/DashboardViewModel.kt
- ui/viewmodel/ForecastListViewModel.kt
- ui/viewmodel/ForecastEditorViewModel.kt
- ui/viewmodel/ActionBoardViewModel.kt
- ui/viewmodel/ProposalBuilderViewModel.kt
- ui/viewmodel/ProfitPreviewViewModel.kt
- ui/viewmodel/ForecastDetailViewModel.kt
- ui/viewmodel/SettingsViewModel.kt

ui_screen:
- ui/screen/dashboard/DashboardScreen.kt
- ui/screen/forecastlist/ForecastListScreen.kt
- ui/screen/forecasteditor/ForecastEditorScreen.kt
- ui/screen/actionboard/ActionBoardScreen.kt
- ui/screen/proposalbuilder/ProposalBuilderScreen.kt
- ui/screen/profitpreview/ProfitPreviewScreen.kt
- ui/screen/forecastdetail/ForecastDetailScreen.kt
- ui/screen/settings/SettingsScreen.kt

ui_navigation:
- ui/navigation/AppRoutes.kt
- ui/navigation/AppNavGraph.kt

assets:
- assets/i18n/strings_default.json
- assets/i18n/strings_fallback.json

excluded_from_phase_1:
- translation variant persistence files
- terminology glossary persistence files
- exchange rate snapshot persistence files
- share / approval / ERP handoff files
- advanced recommendation files

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130450_ANDROID_PHASE1_CONCRETE_FILESET_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130460_ANDROID_PHASE1_GENERATION_SEQUENCE_DETAIL_PLAN.md -->
# ============================================================
# ANDROID PHASE 1 GENERATION SEQUENCE DETAIL PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the detailed generation sequence for Phase 1.

sequence:
1. directory structure
2. domain models
3. ui common + formatters
4. entities
5. dao
6. database
7. repositories
8. ui state contracts
9. settings reducer / viewmodel / screen
10. forecast editor reducer / viewmodel / screen
11. action board reducer / viewmodel / screen
12. proposal builder reducer / viewmodel / screen
13. profit preview reducer / viewmodel / screen
14. forecast detail reducer / viewmodel / screen
15. dashboard reducer / viewmodel / screen
16. forecast list reducer / viewmodel / screen
17. routes and nav graph
18. i18n asset files

rule:
Settings and format foundation must be available
before final screen rendering is frozen.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130460_ANDROID_PHASE1_GENERATION_SEQUENCE_DETAIL_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130470_MULTI_DEVICE_DEVELOPMENT_PLAN.md -->
# ============================================================
# MULTI DEVICE DEVELOPMENT PLAN
# iPhone / Android / Tablet
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines development direction for multi-device support.

development_principles:
- build smartphone baseline first
- expand to tablet without forking business flow
- verify adaptive composition on key review-heavy screens first

priority_order:
1. smartphone-safe baseline layout
2. settings / dashboard adaptive checks
3. forecast list list-detail tablet support
4. proposal builder tablet-expanded layout
5. profit preview tablet-expanded layout
6. forecast detail tablet-expanded layout

non_goal_in_first_pass:
- device-specific workflow branching
- platform-specific business meaning divergence
- special foldable-only optimization

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130470_MULTI_DEVICE_DEVELOPMENT_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130480_MULTI_DEVICE_ACCEPTANCE_PLAN.md -->
# ============================================================
# MULTI DEVICE ACCEPTANCE PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines acceptance criteria for multi-device support.

acceptance_criteria:
- iPhone-class compact layout remains fully usable
- Android smartphone compact layout remains fully usable
- tablet expanded layout preserves canonical flow
- proposal builder remains editable on both phone and tablet
- profit preview remains understandable on both phone and tablet
- locale and currency presentation remain consistent across device classes
- no required action disappears on larger or smaller layout

failure_conditions:
- tablet introduces a different business flow
- compact layout hides critical actions without access path
- larger layout breaks source / base / display money meaning
- multilingual comparison becomes unavailable because of device class

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130480_MULTI_DEVICE_ACCEPTANCE_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130490_ANDROID_TEMPLATE_STARTER_PACK_PLAN.md -->
# ============================================================
# ANDROID TEMPLATE STARTER PACK PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the first starter-pack template scope for Android generation.

starter_pack_scope:
- domain models
- settings foundation
- formatter foundation
- navigation foundation
- one screen template pattern
- one reducer template pattern
- one viewmodel template pattern
- one repository template pattern
- one dao template pattern
- one entity template pattern

why_this_scope:
This scope is large enough to freeze coding style,
responsibility split,
and multilingual / multicurrency entry shape,
without requiring full app generation at once.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130490_ANDROID_TEMPLATE_STARTER_PACK_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130500_ANDROID_TEMPLATE_BATCH_ORDER_PLAN.md -->
# ============================================================
# ANDROID TEMPLATE BATCH ORDER PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines batch order for starter-pack template generation.

batch_order:
1. domain model templates
2. entity and dao templates
3. repository templates
4. formatter and text resolver templates
5. settings templates
6. navigation templates
7. reducer template
8. viewmodel template
9. screen template

rule:
Freeze lower-level patterns first,
then build visible UI templates on top.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130500_ANDROID_TEMPLATE_BATCH_ORDER_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130510_PHASE1_PHASE2_SCOPE_HARDENING_PLAN.md -->
# ============================================================
# PHASE 1 PHASE 2 SCOPE HARDENING PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Hardens scope boundaries between Phase 1 and Phase 2.

phase_1_must_contain:
- local-first forecast chain
- locale preference foundation
- currency preference foundation
- compact and expanded layout readiness in principle
- forecast list / detail / editor basic flow
- settings foundation

phase_1_must_not_expand_into:
- governed approval flow
- ERP handoff implementation
- advanced translation-variant persistence
- advanced exchange-rate density
- scenario-switched proposal surface
- internal explanation draft expansion

phase_2_allowed_targets:
- scenario switched proposal
- proposal basis panel
- internal explanation draft
- explainable profit surface
- market event input
- template selection

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130510_PHASE1_PHASE2_SCOPE_HARDENING_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130520_RESTART_AND_REVIEW_READING_ORDER_HARDENING_PLAN.md -->
# ============================================================
# RESTART AND REVIEW READING ORDER HARDENING PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines hardened reading order for implementation restart and review.

restart_bundle_order:
1. 090490_SCREEN_RESPONSIBILITY_HARDENING_INTERFACE.md
2. 090500_MULTILINGUAL_MULTICURRENCY_DISPLAY_PRIORITY_INTERFACE.md
3. 120820_IMPLEMENTATION_BOUNDARY_HARDENING.md
4. 120830_ADAPTIVE_PRESENTATION_WITHOUT_FLOW_DIVERGENCE_IMPLEMENTATION.md
5. 130390_PHASE1_GENERATION_TARGET_FILE_LIST_PLAN.md
6. 130400_PHASE1_ACCEPTANCE_CRITERIA_PLAN.md
7. 130410_PHASE2_ENTRY_DECISION_PLAN.md
8. 130510_PHASE1_PHASE2_SCOPE_HARDENING_PLAN.md

review_focus:
- no screen role drift
- no repository / formatter / ViewModel drift
- no phone / tablet flow divergence
- no multilingual / multicurrency meaning collapse

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130520_RESTART_AND_REVIEW_READING_ORDER_HARDENING_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130_QUICK_FORECAST_DEVELOPMENT.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/130_QUICK_FORECAST_DEVELOPMENT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/development_INDEX.md -->
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
- 130280_ANDROID_EXPANDED_IMPLEMENTATION_PRIORITY_PLAN.md
- 130290_ANDROID_EXPANDED_PHASE2_PLAN.md
- 130300_ANDROID_EXPANDED_PHASE3_PLAN.md
- 130310_ANDROID_EXPANDED_PHASE4_PLAN.md
- 130320_ANDROID_EXPANDED_IMPLEMENTATION_SEQUENCE_PLAN.md
- 130330_ANDROID_IMPLEMENTATION_READING_ORDER_PLAN.md
- 130340_ANDROID_PHASE_GATE_PLAN.md
- 130350_ANDROID_EXPANDED_DONE_CRITERIA_PLAN.md
- 130360_ANDROID_MINIMUM_FILESET_WITH_I18N_I18NCURRENCY_PLAN.md
- 130370_ANDROID_MINIMUM_CLASSSET_WITH_I18N_I18NCURRENCY_PLAN.md
- 130380_ANDROID_PHASE1_I18N_I18NCURRENCY_SEQUENCE_PLAN.md
- 130390_PHASE1_GENERATION_TARGET_FILE_LIST_PLAN.md
- 130400_PHASE1_ACCEPTANCE_CRITERIA_PLAN.md
- 130410_PHASE2_ENTRY_DECISION_PLAN.md
- 130420_DEVELOPMENT_RESTART_ENTRY_PLAN.md
- 130430_ANDROID_PHASE1_DIRECTORY_STRUCTURE_PLAN.md
- 130440_ANDROID_PHASE1_FILE_GENERATION_BATCH_PLAN.md
- 130450_ANDROID_PHASE1_CONCRETE_FILESET_PLAN.md
- 130460_ANDROID_PHASE1_GENERATION_SEQUENCE_DETAIL_PLAN.md
- 130470_MULTI_DEVICE_DEVELOPMENT_PLAN.md
- 130480_MULTI_DEVICE_ACCEPTANCE_PLAN.md
- 130490_ANDROID_TEMPLATE_STARTER_PACK_PLAN.md
- 130500_ANDROID_TEMPLATE_BATCH_ORDER_PLAN.md
- 130510_PHASE1_PHASE2_SCOPE_HARDENING_PLAN.md
- 130520_RESTART_AND_REVIEW_READING_ORDER_HARDENING_PLAN.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/development_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/development_OVERVIEW.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/130.development/development_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900100_QUICK_FORECAST_DESIGN_NOTE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900100_QUICK_FORECAST_DESIGN_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900110_QUICK_FORECAST_REVIEW_CHECKLIST.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900110_QUICK_FORECAST_REVIEW_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900120_QUICK_FORECAST_CONSISTENCY_NOTE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900120_QUICK_FORECAST_CONSISTENCY_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900130_QUICK_FORECAST_UI_REVIEW_CHECKLIST.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900130_QUICK_FORECAST_UI_REVIEW_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900140_QUICK_FORECAST_VALIDATION_CHECKLIST.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900140_QUICK_FORECAST_VALIDATION_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900150_QUICK_FORECAST_SCREEN_INVENTORY.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900150_QUICK_FORECAST_SCREEN_INVENTORY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900160_QUICK_FORECAST_CODE_SEED_NOTE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900160_QUICK_FORECAST_CODE_SEED_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900170_PRO_OPERATION_REVIEW_CHECKLIST.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900170_PRO_OPERATION_REVIEW_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900180_SCREEN_TO_MODEL_TRACE_NOTE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900180_SCREEN_TO_MODEL_TRACE_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900200_QUICK_FORECAST_CONSISTENCY_CHECK_NOTE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900200_QUICK_FORECAST_CONSISTENCY_CHECK_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900220_IMPLEMENTATION_PREP_REVIEW_CHECKLIST.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900220_IMPLEMENTATION_PREP_REVIEW_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900230_ANDROID_PACKAGE_TO_SCREEN_TRACE_NOTE.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900230_ANDROID_PACKAGE_TO_SCREEN_TRACE_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900240_CORE_SCREEN_SKELETON_REVIEW_CHECKLIST.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900240_CORE_SCREEN_SKELETON_REVIEW_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900250_PRO_SCREEN_SKELETON_REVIEW_CHECKLIST.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900250_PRO_SCREEN_SKELETON_REVIEW_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900260_VIEWMODEL_REPOSITORY_DB_REVIEW_CHECKLIST.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900260_VIEWMODEL_REPOSITORY_DB_REVIEW_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900270_ENTITY_DAO_REPOSITORY_REVIEW_CHECKLIST.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900270_ENTITY_DAO_REPOSITORY_REVIEW_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900280_VIEWMODEL_STATE_EVENT_EFFECT_REVIEW_CHECKLIST.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900280_VIEWMODEL_STATE_EVENT_EFFECT_REVIEW_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900290_PRO_VIEWMODEL_STATE_EVENT_EFFECT_REVIEW_CHECKLIST.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900290_PRO_VIEWMODEL_STATE_EVENT_EFFECT_REVIEW_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900300_REDUCER_AND_REPOSITORY_RESPONSIBILITY_REVIEW_CHECKLIST.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900300_REDUCER_AND_REPOSITORY_RESPONSIBILITY_REVIEW_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900310_PRO_REDUCER_AND_REPOSITORY_RESPONSIBILITY_REVIEW_CHECKLIST.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900310_PRO_REDUCER_AND_REPOSITORY_RESPONSIBILITY_REVIEW_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900320_ANDROID_CLASS_INVENTORY_REVIEW_CHECKLIST.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900320_ANDROID_CLASS_INVENTORY_REVIEW_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900330_ANDROID_FILE_GENERATION_REVIEW_CHECKLIST.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900330_ANDROID_FILE_GENERATION_REVIEW_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900340_ANDROID_GENERATION_TARGET_FREEZE_REVIEW_CHECKLIST.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900340_ANDROID_GENERATION_TARGET_FREEZE_REVIEW_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900350_FINAL_POLISH_NOTE.md -->
# ============================================================
# FINAL POLISH NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the final-polish intent for QuickForecast design set.

polish_targets:
- wording consistency
- overview role clarity
- index and rebuilt consistency
- canonical readability
- implementation-ready but design-only boundary clarity

notes:
This phase does not add new functional scope.
It improves readability, consistency, and handoff quality.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900350_FINAL_POLISH_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900360_OVERVIEW_ROLE_CLARIFICATION_NOTE.md -->
# ============================================================
# OVERVIEW ROLE CLARIFICATION NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Clarifies the role difference between layer overview files
and content overview files.

role_definition:
- layer overview files such as model_OVERVIEW.md and interface_OVERVIEW.md
  are folder guidance documents
- content overview files such as
  030_QUICK_FORECAST_MODEL_OVERVIEW.md and
  090_QUICK_FORECAST_INTERFACE_OVERVIEW.md
  are content/body overview documents

rule:
Both may coexist if their roles remain distinct and non-conflicting.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900360_OVERVIEW_ROLE_CLARIFICATION_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900370_DESIGN_ONLY_BOUNDARY_NOTE.md -->
# ============================================================
# DESIGN ONLY BOUNDARY NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Records the current boundary of the QuickForecast work.

current_boundary:
- canonical design is active
- implementation preparation design is active
- actual Java / Android source generation is intentionally deferred

rule:
No implementation files are required for design completion status.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900370_DESIGN_ONLY_BOUNDARY_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900380_FINAL_REVIEW_CHECKLIST.md -->
# ============================================================
# FINAL REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the final review checklist for design-first completion.

check_items:
- root overview/index/integrated files exist
- each layer has overview and index
- index files reflect current file inventory
- integrated rebuilt reflects current index set
- wording is consistent across overview files
- Basic / Pro boundary remains explicit
- ERP coexistence remains explicit
- design-only boundary remains explicit

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900380_FINAL_REVIEW_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900400_QUICK_FORECAST_HANDOVER_NOTE.md -->
# ============================================================
# QUICK FORECAST HANDOVER NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Provides a direct handover note for continuing QuickForecast work
in another chat or by another contributor.

# ============================================================
# 1. CURRENT POSITION
# ============================================================

current_position:
QuickForecast has reached implementation-ready design completeness.

completed_scope:
- application overview / root index / integrated book
- constitution / architecture / model / runtime / flow
- integration / operations / policy / interface
- security / infrastructure / implementation / development
- meta review and consistency support
- Android implementation preparation design
- screen skeleton design
- ViewModel state/event/effect design
- reducer transition design
- repository responsibility design
- Android class inventory design
- Android file generation planning
- generation target freeze
- final polish meta support

current_status:
Design is complete enough to start implementation later,
but actual implementation is intentionally deferred.

# ============================================================
# 2. PRODUCT DEFINITION
# ============================================================

product_name:
QuickForecast

product_tiers:
- QuickForecast Basic
- QuickForecast Pro

core_identity:
QuickForecast is a demand-forecast-originated
proposal drafting workbench.

canonical_value_chain:
Forecast
-> Action
-> Proposal
-> Profit

extended_pro_chain:
Forecast
-> Action
-> Proposal
-> Profit
-> Share / Approval / Handoff

erp_relation:
ERP retains equivalent forecasting capability.
QuickForecast does not replace ERP.
QuickForecast exists as a mobile, high-immediacy companion application.

# ============================================================
# 3. MAIN DESIGN DECISIONS
# ============================================================

major_decisions:
- demand forecasting alone is not the main value
- the main value is turning forecast thinking into proposal output
- QuickForecast Basic uses public/general/manual assumptions
- QuickForecast Pro extends into ERP reference, sharing, approval, sync, and handoff
- local-first operation is the starting point
- QuickForecast Pro governed actions must remain explicitly separated from local draft save
- Android implementation should start from the core local chain first
- QuickForecast Pro implementation is deferred until the core local chain is stable

# ============================================================
# 4. DESIGN BOUNDARY
# ============================================================

design_boundary:
- design documents are complete enough for implementation start
- actual Java / Android source generation is not part of current completion
- no implementation file is required for design completion status

do_not_assume:
- that Java files already exist
- that DB schema is already physically implemented
- that gateway code is already written
- that QuickForecast Pro remote contracts are already coded on Android

# ============================================================
# 5. IMPORTANT STRUCTURAL RULES
# ============================================================

structural_rules:
- each layer has overview and index
- integrated rebuilt is the combined canonical reading file
- layer overview files and body overview files may coexist if role is distinct
- QuickForecast Basic / Pro boundary must remain explicit
- ERP coexistence must remain explicit
- local save success must not imply enterprise acceptance
- QuickForecast Pro-only navigation and actions must be gated

# ============================================================
# 6. IMPLEMENTATION PREPARATION STATE
# ============================================================

already_designed:
- screen transitions
- screen skeletons
- ViewModel state/event/effect
- reducer transition examples
- repository responsibility by screen
- local entities / DAO method families / repository method families
- Android package structure
- class inventory
- file generation batches
- phase 1 generation target freeze

phase_1_target_intent:
The first implementation pass should cover only the
Forecast -> Action -> Proposal -> Profit local-first chain.

phase_1_scope:
- core local entities
- core DAO
- core repositories
- core ViewModels
- core Activities or equivalent screen shells

deferred_scope:
- QuickForecast Pro cache entities
- QuickForecast Pro repositories
- QuickForecast Pro ViewModels
- QuickForecast Pro screens
- integration gateways

# ============================================================
# 7. RECOMMENDED NEXT STEP
# ============================================================

recommended_next_step:
Before implementation starts, run the final polish script
and confirm the rebuilt book and indexes are synchronized.

after_that:
When implementation is approved,
start from phase 1 generation targets only.

implementation_order:
1. core local data
2. core repositories
3. core ViewModels
4. core screens
5. common UI
6. QuickForecast Pro support
7. QuickForecast Pro repositories
8. QuickForecast Pro ViewModels
9. QuickForecast Pro screens
10. gateways

# ============================================================
# 8. FILES TO CHECK FIRST
# ============================================================

priority_files:
- 000_QUICK_FORECAST_OVERVIEW.md
- 000_QUICK_FORECAST_INDEX.md
- 00_QUICK_FORECAST_INTEGRATED_REBUILT.md
- 120640_ANDROID_GENERATION_TARGET_FREEZE_IMPLEMENTATION.md
- 120650_ANDROID_PHASE1_GENERATION_TARGET_IMPLEMENTATION.md
- 130260_ANDROID_GENERATION_TARGET_ORDER_PLAN.md
- 130270_ANDROID_GENERATION_DONE_CRITERIA_PLAN.md
- 900380_FINAL_REVIEW_CHECKLIST.md
- 900390_FINAL_POLISH_SCRIPT.sh

# ============================================================
# 9. HANDOVER WARNING
# ============================================================

handover_warning:
Do not expand scope casually.
QuickForecast is already deep enough at the design level.
Any new work should either:
- polish existing design, or
- implement phase 1 core only,
unless Boss explicitly expands the scope.

# ============================================================
# 10. CONCLUSION
# ============================================================

conclusion:
QuickForecast is no longer at rough concept stage.
It is at implementation-ready design stage,
with implementation intentionally deferred inside the design-only boundary.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900400_QUICK_FORECAST_HANDOVER_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900410_QUICKFORECAST_20260416_DIFF_AUDIT_NOTE.md -->
# ============================================================
# QUICKFORECAST 20260416 DIFF AUDIT NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: QuickForecast
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: diff-audit-note

purpose:
Records the first differential reinforcement bundle applied to the
existing QuickForecast design.

preserved_core:
- forecast and management support identity
- existing business flow role
- existing architecture layers
- existing management support direction
- existing platform direction

added_in_this_bundle:
- competitive positioning note
- forecast signal aggregation architecture
- scenario exception management architecture
- management forecast timeline model
- forecast cockpit exact payload
- scenario exception review exact payload
- forecast cockpit interface note
- forecast control implementation guide

why_this_bundle:
- existing QuickForecast design already had strong forecast output handling
- what was less explicit was the management-control layer above raw forecast presentation
- this bundle makes the app more implementation-ready without rewriting its base

recommended_next_step:
- proceed to Phase A entry documents for forecast timeline, DDL, DTO freeze,
  and slice-based execution planning

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900410_QUICKFORECAST_20260416_DIFF_AUDIT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900410_WORDING_CANONICAL_RULE.md -->
# ============================================================
# WORDING CANONICAL RULE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines wording normalization rules for QuickForecast documents.

canonical_terms:
- QuickForecast
- QuickForecast Basic
- QuickForecast Pro
- Forecast
- Action
- Proposal
- Profit
- Share
- Approval
- Handoff
- ERP
- local-first
- mobile-first
- implementation-ready design
- design-only boundary

rules:
- Use "QuickForecast" as the canonical product name.
- Use "QuickForecast Basic" and "QuickForecast Pro" when tier names must be explicit.
- Use "Forecast -> Action -> Proposal -> Profit" as the canonical value chain order.
- Use "local-first" and "mobile-first" consistently with hyphen.
- Use "design-only boundary" when referring to the current non-implementation state.
- Use "governed action" for approval / handoff / enterprise-linked actions.
- Do not alternate casually between similar meanings such as:
  - proposal draft / planning draft / proposal output
  unless the distinction is intentional.
- Do not describe ERP as replaced by QuickForecast.
  ERP coexistence must remain explicit.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900410_WORDING_CANONICAL_RULE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900420_QUICKFORECAST_20260416_BUNDLE02_PHASE_A_AUDIT_NOTE.md -->
# ============================================================
# QUICKFORECAST 20260416 BUNDLE02 PHASE A AUDIT NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: QuickForecast
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: bundle02-phase-a-audit

purpose:
Records the second reinforcement bundle applied to QuickForecast,
covering Phase A entry documents and exact implementation-start
boundaries.

bundle02_contents:
- 020.architecture/021140_QUICKFORECAST_PHASE_A_FORECAST_TIMELINE_DDL_ADDITIVE_PLAN.md
- 060.integration/060320_QUICKFORECAST_PHASE_A_API_STARTER.md
- 060.integration/060330_QUICKFORECAST_PHASE_A_API_DTO_FIELD_FREEZE.md
- 120.implementation/120310_QUICKFORECAST_PHASE_A_FORECAST_TIMELINE_IMPLEMENTATION_SKELETON.md

result:
- Phase A DDL direction fixed
- Phase A endpoint set fixed
- API DTO field set frozen
- implementation skeleton fixed
- QuickForecast now has the same kind of Phase A entry footing
  that made the previous apps easier to continue in bundled form

recommended_next_step:
- proceed to bundle_03 for stub file plan, module task breakdown, and content order

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900420_QUICKFORECAST_20260416_BUNDLE02_PHASE_A_AUDIT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900420_STYLE_CANONICAL_RULE.md -->
# ============================================================
# STYLE CANONICAL RULE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines style normalization rules for QuickForecast documents.

style_rules:
- Keep section titles explicit and functional.
- Prefer short declarative sentences.
- Prefer one concept per paragraph.
- Prefer bullet lists for controlled enumerations.
- Keep architectural statements separate from policy statements.
- Keep implementation-preparation statements separate from actual implementation statements.
- When describing a layer overview, summarize role first, then list focus points.
- When describing a model/implementation note, preserve identity, state, and boundary language clearly.
- Avoid mixing Basic and Pro behavior in one sentence unless explicitly comparing them.
- Prefer "summary", "focus", "principles", "rules", "notes" as stable subsection labels.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900420_STYLE_CANONICAL_RULE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900430_AMBIGUITY_AND_DUPLICATION_REVIEW_NOTE.md -->
# ============================================================
# AMBIGUITY AND DUPLICATION REVIEW NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the main duplication and ambiguity review targets.

review_targets:
- overview files with similar roles
- repeated definition of Forecast -> Action -> Proposal -> Profit chain
- repeated explanation of Basic / Pro boundary
- repeated explanation of ERP coexistence
- repeated explanation of design-only boundary
- repeated explanation of local save vs governed action separation

review_rule:
Repetition is acceptable when it preserves local readability,
but wording should remain stable and role-consistent.

ambiguity_rule:
If two documents both explain the same thing,
one should act as folder guidance
and the other should act as content/body guidance.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900430_AMBIGUITY_AND_DUPLICATION_REVIEW_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900430_QUICKFORECAST_20260416_BUNDLE03_STUB_AUDIT_NOTE.md -->
# ============================================================
# QUICKFORECAST 20260416 BUNDLE03 STUB AUDIT NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: QuickForecast
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: bundle03-stub-audit

purpose:
Records the third reinforcement bundle applied to QuickForecast,
covering the stub planning boundary for Phase A.

bundle03_contents:
- 120.implementation/120320_QUICKFORECAST_PHASE_A_STUB_FILE_PLAN.md
- 120.implementation/120330_QUICKFORECAST_PHASE_A_MODULE_TASK_BREAKDOWN.md
- 120.implementation/120340_QUICKFORECAST_PHASE_A_EXACT_STUB_CONTENT_ORDER_PLAN.md

result:
- stub file boundary fixed
- module task order fixed
- exact stub content order fixed
- QuickForecast now has a bundled Phase A planning posture
  similar to the previously completed apps before command-pack generation

recommended_next_step:
- proceed to bundle_04 for command packs, field-fill plans, and closure

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900430_QUICKFORECAST_20260416_BUNDLE03_STUB_AUDIT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900440_FINAL_POLISH_REVIEW_CHECKLIST.md -->
# ============================================================
# FINAL POLISH REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the final polishing checklist for QuickForecast.

check_items:
- wording is canonical across root and layer overviews
- QuickForecast Basic / Pro naming is stable
- Forecast -> Action -> Proposal -> Profit order is stable
- ERP coexistence wording is stable
- local-first / mobile-first wording is stable
- design-only boundary is explicitly preserved
- duplicated overview roles are clarified
- implementation-preparation wording is not mistaken for implementation-complete wording
- root index reflects current file set
- integrated rebuilt reflects current file set
- handover note remains aligned with current design

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900440_FINAL_POLISH_REVIEW_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900440_QUICKFORECAST_20260416_BUNDLE04_CLOSEOUT_AUDIT_NOTE.md -->
# ============================================================
# QUICKFORECAST 20260416 BUNDLE04 CLOSEOUT AUDIT NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: QuickForecast
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: bundle04-closeout-audit

purpose:
Records the fourth reinforcement bundle applied to QuickForecast,
closing the Phase A planning layer at an implementation-ready state.

bundle04_contents:
- 120.implementation/120350_QUICKFORECAST_PHASE_A_SLICE_COMMAND_PACKS.md
- 120.implementation/120360_QUICKFORECAST_PHASE_A_SLICE_FIELD_FILL_PLAN.md
- 120.implementation/120370_QUICKFORECAST_PHASE_A_IMPLEMENTATION_READY_COMPLETION_MEMO.md
- 120.implementation/120380_QUICKFORECAST_PHASE_A_EXECUTION_ENTRY_PROTOCOL.md

result:
- slice command packs fixed
- field-fill plan fixed
- implementation-ready completion declared
- execution entry protocol fixed
- QuickForecast planning can stop here cleanly unless execution begins or contradiction appears

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900440_QUICKFORECAST_20260416_BUNDLE04_CLOSEOUT_AUDIT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900450_POLISH_EXECUTION_NOTE.md -->
# ============================================================
# POLISH EXECUTION NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines how polishing work should proceed.

polish_order:
1. wording normalization
2. overview role clarification
3. repeated concept stabilization
4. index / rebuilt synchronization
5. handover note synchronization
6. final review

important_boundary:
Polish work must not expand feature scope.
It exists to improve readability, consistency, and maintainability only.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900450_POLISH_EXECUTION_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900450_QUICKFORECAST_NEXT_APP_TRANSITION_HANDOFF.md -->
# ============================================================
# QUICKFORECAST NEXT APP TRANSITION HANDOFF
# ============================================================

status: canonical
layer: meta
system: applications
application: QuickForecast
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: next-app-transition-handoff

purpose:
Closes the current QuickForecast planning stream cleanly and makes it
easy to move to the next BusinessOS application without reopening
already-settled QuickForecast planning questions.

current_status_summary:
- differential reinforcement completed
- bundle_01 completed
- bundle_02 Phase A entry completed
- bundle_03 stub planning completed
- bundle_04 closeout completed
- implementation-ready completion memo completed
- execution entry protocol completed

handoff_statement:
- QuickForecast can now be treated as planning-closed and
  next-app-transition-ready.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900450_QUICKFORECAST_NEXT_APP_TRANSITION_HANDOFF.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900460_QUICKFORECAST_REUSABLE_PHASEA_REINFORCEMENT_RECIPE.md -->
# ============================================================
# QUICKFORECAST REUSABLE PHASEA REINFORCEMENT RECIPE
# ============================================================

status: canonical
layer: meta
system: applications
application: QuickForecast
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: reusable-phasea-reinforcement-recipe

purpose:
Captures the reusable reinforcement recipe proven during the
QuickForecast planning work so the next BusinessOS app can be
advanced faster and with fewer unnecessary micro-iterations.

default_bundle_strategy_for_next_app:
- bundle_01:
  - diff reinforcement plus audit
- bundle_02:
  - Phase A entry plus DDL plus DTO freeze
- bundle_03:
  - stub plan plus module tasks plus content order
- bundle_04:
  - command packs plus field-fill plans plus closure

success_definition_for_next_app:
- the next app reaches implementation-ready planning state
- the BusinessOS ledger reflects the new status
- the app can move to execution later without rediscovering core design intent

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900460_QUICKFORECAST_REUSABLE_PHASEA_REINFORCEMENT_RECIPE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900460_SHORT_HANDOVER_SOURCE_NOTE.md -->
# ============================================================
# SHORT HANDOVER SOURCE NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Provides the canonical source text policy for short handover summaries.

summary_rules:
- preserve the canonical value chain order
- preserve QuickForecast Basic / Pro naming
- preserve ERP coexistence wording
- preserve design-only boundary wording
- prefer concise wording without removing critical boundaries

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900460_SHORT_HANDOVER_SOURCE_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900470_QUICKFORECAST_PLANNING_STOP_RULE_NOTE.md -->
# ============================================================
# QUICKFORECAST PLANNING STOP RULE NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: QuickForecast
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: planning-stop-rule-note

purpose:
Defines the stop rule for the QuickForecast planning layer so that
the project does not continue adding design documents without need.

default_stop_rule:
- stop adding planning artifacts once implementation-ready status,
  execution entry protocol, and transition handoff are all present

default_action_after_stop_rule:
- either begin actual generation using the execution entry protocol
- or move to the next BusinessOS application

closure_statement:
- QuickForecast planning should now be considered complete by default.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900470_QUICKFORECAST_PLANNING_STOP_RULE_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900470_WORDING_POLISH_EXECUTION_NOTE.md -->
# ============================================================
# WORDING POLISH EXECUTION NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Records the wording polish actions applied to core documents.

applied_targets:
- root overview
- integrated summary
- handover note
- short handover source policy

applied_focus:
- canonical QuickForecast Basic / Pro naming
- canonical value chain order
- explicit ERP coexistence wording
- explicit design-only boundary wording
- reduced wording drift across root/meta documents

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900470_WORDING_POLISH_EXECUTION_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900480_CROSS_APPLICATION_WORDING_ALIGNMENT_NOTE.md -->
# ============================================================
# CROSS APPLICATION WORDING ALIGNMENT NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Aligns QuickForecast wording with other Civilization application designs.

alignment_targets:
- application definition wording
- ERP relation wording
- tier wording
- design maturity wording
- coexistence wording
- companion wording
- workbench wording

rule:
QuickForecast wording should remain locally precise
while still fitting the broader Civilization application language.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900480_CROSS_APPLICATION_WORDING_ALIGNMENT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900490_APPLICATION_POSITIONING_ALIGNMENT_RULE.md -->
# ============================================================
# APPLICATION POSITIONING ALIGNMENT RULE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines stable positioning language for QuickForecast.

canonical_positioning:
QuickForecast is a demand-forecast-originated
proposal drafting workbench.

support_positioning:
QuickForecast is a mobile, high-immediacy companion application.

erp_relation_rule:
QuickForecast coexists with ERP.
QuickForecast does not replace ERP.
ERP retains equivalent forecasting capability.

usage_rule:
Use "workbench" when emphasizing the internal working chain.
Use "companion application" when emphasizing relation to ERP and field use.
Use "coexists with ERP" when emphasizing system boundary.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900490_APPLICATION_POSITIONING_ALIGNMENT_RULE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900500_TIER_ALIGNMENT_RULE.md -->
# ============================================================
# TIER ALIGNMENT RULE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines stable tier wording.

canonical_tier_names:
- QuickForecast Basic
- QuickForecast Pro

tier_rule:
Use full tier names in overview, handover, and policy contexts.
Short forms "Basic" and "Pro" are acceptable only after
the full names are already clear in local context.

tier_meaning_rule:
QuickForecast Basic:
local-first, public/general/manual assumption-based drafting.

QuickForecast Pro:
ERP reference, share, approval, sync, history,
and governed enterprise handoff extension.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900500_TIER_ALIGNMENT_RULE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900510_DESIGN_MATURITY_ALIGNMENT_RULE.md -->
# ============================================================
# DESIGN MATURITY ALIGNMENT RULE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines stable maturity wording.

canonical_maturity_phrase:
implementation-ready design

canonical_boundary_phrase:
design-only boundary

rule:
Use "implementation-ready design"
when describing current design maturity.

Use "design-only boundary"
when clarifying that implementation has not started.

avoid:
- implementation complete
- already implemented
- build-ready product
when only design completion is true.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900510_DESIGN_MATURITY_ALIGNMENT_RULE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900520_CROSS_APPLICATION_REVIEW_CHECKLIST.md -->
# ============================================================
# CROSS APPLICATION REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines review checklist for cross-application wording alignment.

check_items:
- QuickForecast is described as a workbench when internal chain is emphasized
- QuickForecast is described as a companion application when ERP relation is emphasized
- ERP coexistence wording is explicit and non-competitive
- QuickForecast Basic / Pro naming is stable
- implementation-ready design wording is stable
- design-only boundary wording is stable
- no accidental wording suggests ERP replacement

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900520_CROSS_APPLICATION_REVIEW_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900530_CANONICAL_PHRASE_LIBRARY.md -->
# ============================================================
# CANONICAL PHRASE LIBRARY
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Stores canonical reusable phrases for QuickForecast documents.

phrases:

application_definition:
QuickForecast is a demand-forecast-originated proposal drafting workbench.

erp_relation:
QuickForecast coexists with ERP.
QuickForecast does not replace ERP.
ERP retains equivalent forecasting capability.

field_positioning:
QuickForecast is a mobile, high-immediacy companion application.

maturity:
QuickForecast has reached implementation-ready design completeness.

boundary:
Actual Android / Java implementation remains outside the current design-only boundary.

value_chain:
Forecast -> Action -> Proposal -> Profit

pro_extension:
QuickForecast Pro extends the local drafting core into
ERP reference, sharing, approval, synchronization,
history visibility, and governed enterprise handoff.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900530_CANONICAL_PHRASE_LIBRARY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900540_QUICK_FORECAST_CLOSE_NOTE.md -->
# ============================================================
# QUICK FORECAST CLOSE NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Provides the closing note for the current QuickForecast design cycle.

# ============================================================
# 1. DESIGN CYCLE RESULT
# ============================================================

result:
QuickForecast has reached implementation-ready design completeness.

achieved_state:
- application definition fixed
- Basic / Pro boundary fixed
- ERP coexistence wording fixed
- canonical value chain fixed
- layer structure fixed
- Android implementation preparation design completed
- handover and polish materials completed
- cross-application wording alignment completed

# ============================================================
# 2. DESIGN IDENTITY
# ============================================================

design_identity:
QuickForecast is a demand-forecast-originated
proposal drafting workbench.

canonical_value_chain:
Forecast
-> Action
-> Proposal
-> Profit

positioning:
QuickForecast coexists with ERP.
QuickForecast does not replace ERP.
ERP retains equivalent forecasting capability.

field_positioning:
QuickForecast is a mobile, high-immediacy companion application.

# ============================================================
# 3. CURRENT BOUNDARY
# ============================================================

current_boundary:
The current work is complete as design.

explicit_non_scope:
- no Java source generation has been adopted as current completion
- no Android implementation has been adopted as current completion
- no DB physical implementation has been adopted as current completion
- no gateway implementation has been adopted as current completion

canonical_boundary_phrase:
Actual Android / Java implementation remains outside the current design-only boundary.

# ============================================================
# 4. IMPLEMENTATION READINESS
# ============================================================

implementation_readiness:
The design is deep enough to begin implementation later.

already_prepared:
- screen design
- ViewModel design
- reducer design
- repository responsibility design
- local data design
- Android class inventory
- file generation planning
- phase 1 target freeze

implementation_start_rule:
When implementation is approved,
start from phase 1 core local chain only.

# ============================================================
# 5. RESTART CONDITIONS
# ============================================================

restart_conditions:
Future work should follow one of these paths only:
- design polishing / consistency review
- approved phase 1 implementation start
- explicit scope expansion approved by Boss

do_not_restart_as:
- rough concept exploration
- uncontrolled feature addition
- premature Pro-heavy implementation
- ERP replacement framing

# ============================================================
# 6. RECOMMENDED FIRST FILES ON RESUME
# ============================================================

resume_priority_files:
- 000_QUICK_FORECAST_OVERVIEW.md
- 000_QUICK_FORECAST_INDEX.md
- 00_QUICK_FORECAST_INTEGRATED_REBUILT.md
- 120640_ANDROID_GENERATION_TARGET_FREEZE_IMPLEMENTATION.md
- 120650_ANDROID_PHASE1_GENERATION_TARGET_IMPLEMENTATION.md
- 130260_ANDROID_GENERATION_TARGET_ORDER_PLAN.md
- 130270_ANDROID_GENERATION_DONE_CRITERIA_PLAN.md
- 900400_QUICK_FORECAST_HANDOVER_NOTE.md
- 900540_QUICK_FORECAST_CLOSE_NOTE.md

# ============================================================
# 7. CLOSING CONCLUSION
# ============================================================

conclusion:
The current QuickForecast cycle is closed as a design-complete,
implementation-ready, design-only deliverable.

closing_message:
QuickForecast is no longer in rough planning state.
It is now a stable canonical design set,
ready either for careful maintenance
or for later phase 1 implementation start under approval.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900540_QUICK_FORECAST_CLOSE_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900550_QUICK_FORECAST_FINAL_VERIFY_REPORT.md -->
# ============================================================
# QUICK FORECAST FINAL VERIFY REPORT
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Provides the final verification result for the current
QuickForecast design cycle closing state.

# ============================================================
# 1. ROOT FILE VERIFY
# ============================================================

root_files:
- 000_QUICK_FORECAST_OVERVIEW.md
- 000_QUICK_FORECAST_INDEX.md
- 00_QUICK_FORECAST_INTEGRATED.md
- 00_QUICK_FORECAST_INTEGRATED_REBUILT.md

root_verify_result:
PASS

# ============================================================
# 2. LAYER FILE COUNTS
# ============================================================

010.constitution: 5
020.architecture: 5
030.model: 24
040.runtime: 6
050.flow: 10
060.integration: 10
070.operations: 6
080.policy: 9
090.interface: 30
100.security: 5
110.infrastructure: 8
120.implementation: 59
130.development: 20
900.meta: 44

# ============================================================
# 3. CLOSING META VERIFY
# ============================================================

required_closing_meta:
- 900350_FINAL_POLISH_NOTE.md
- 900380_FINAL_REVIEW_CHECKLIST.md
- 900400_QUICK_FORECAST_HANDOVER_NOTE.md
- 900480_CROSS_APPLICATION_WORDING_ALIGNMENT_NOTE.md
- 900530_CANONICAL_PHRASE_LIBRARY.md
- 900540_QUICK_FORECAST_CLOSE_NOTE.md
- 900550_QUICK_FORECAST_FINAL_VERIFY_REPORT.md

closing_meta_verify_result:
PASS

# ============================================================
# 4. CURRENT DESIGN POSITION
# ============================================================

current_position:
QuickForecast has reached implementation-ready design completeness.

current_boundary:
Actual Android / Java implementation remains outside the current design-only boundary.

design_identity:
QuickForecast is a demand-forecast-originated
proposal drafting workbench.

canonical_value_chain:
Forecast
-> Action
-> Proposal
-> Profit

erp_relation:
QuickForecast coexists with ERP.
QuickForecast does not replace ERP.
ERP retains equivalent forecasting capability.

# ============================================================
# 5. FINAL RESULT
# ============================================================

final_result:
QuickForecast is in a close-ready canonical design state.

recommended_next_path:
- maintain as canonical design
or
- begin approved phase 1 implementation later

warning:
Do not reopen the design as rough concept work
unless Boss explicitly changes scope.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900550_QUICK_FORECAST_FINAL_VERIFY_REPORT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900560_QUICK_FORECAST_CLOSURE_STARTER_PACK.md -->
# ============================================================
# QUICK FORECAST CLOSURE STARTER PACK
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Provides the official starter pack for closing and later resuming
the current QuickForecast design set.

# ============================================================
# 1. OFFICIAL STATE
# ============================================================

official_state:
QuickForecast is closed as an implementation-ready,
design-only canonical deliverable.

state_meaning:
- design is complete enough for later implementation
- implementation is intentionally not part of the current completion
- the current design set should be treated as stable canonical input

# ============================================================
# 2. DESIGN IDENTITY
# ============================================================

design_identity:
QuickForecast is a demand-forecast-originated
proposal drafting workbench.

canonical_value_chain:
Forecast
-> Action
-> Proposal
-> Profit

field_positioning:
QuickForecast is a mobile, high-immediacy companion application.

erp_relation:
QuickForecast coexists with ERP.
QuickForecast does not replace ERP.
ERP retains equivalent forecasting capability.

# ============================================================
# 3. RESTART ENTRY FILES
# ============================================================

restart_entry_files:
- 000_QUICK_FORECAST_OVERVIEW.md
- 000_QUICK_FORECAST_INDEX.md
- 00_QUICK_FORECAST_INTEGRATED_REBUILT.md
- 900400_QUICK_FORECAST_HANDOVER_NOTE.md
- 900540_QUICK_FORECAST_CLOSE_NOTE.md
- 900550_QUICK_FORECAST_FINAL_VERIFY_REPORT.md

implementation_restart_files:
- 120640_ANDROID_GENERATION_TARGET_FREEZE_IMPLEMENTATION.md
- 120650_ANDROID_PHASE1_GENERATION_TARGET_IMPLEMENTATION.md
- 130260_ANDROID_GENERATION_TARGET_ORDER_PLAN.md
- 130270_ANDROID_GENERATION_DONE_CRITERIA_PLAN.md

# ============================================================
# 4. WHAT TO DO ON RESUME
# ============================================================

resume_paths:
path_01_design_maintenance:
- review close note
- review final verify report
- review wording/canonical phrase library
- patch only consistency issues

path_02_phase_1_implementation:
- confirm implementation approval exists
- start from core local chain only
- do not start from Pro-heavy scope
- do not treat design docs as optional

path_03_scope_expansion:
- allowed only if Boss explicitly expands scope
- expansion must preserve ERP coexistence and tier boundary clarity

# ============================================================
# 5. WHAT NOT TO DO
# ============================================================

do_not:
- reopen QuickForecast as rough concept work
- rewrite canonical positioning casually
- blur QuickForecast Basic / Pro boundary
- imply ERP replacement
- start with Pro-first implementation
- treat local save as enterprise acceptance

# ============================================================
# 6. PHASE 1 IMPLEMENTATION RULE
# ============================================================

phase_1_rule:
If implementation starts later,
begin only with the local-first core chain:

Forecast
-> Action
-> Proposal
-> Profit

phase_1_minimum_scope:
- local data
- DAO
- core repositories
- core ViewModels
- core screens

deferred_scope:
- Pro repositories
- Pro ViewModels
- Pro screens
- enterprise gateways

# ============================================================
# 7. CLOSING CONCLUSION
# ============================================================

closing_conclusion:
The QuickForecast design set should now be treated
as stable canonical material.

final_message:
Maintain it carefully,
or resume it deliberately under approval,
but do not reopen it casually.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900560_QUICK_FORECAST_CLOSURE_STARTER_PACK.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900570_QUICK_FORECAST_FINAL_MANIFEST.md -->
# ============================================================
# QUICK FORECAST FINAL MANIFEST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the final manifest for the current QuickForecast design set.

# ============================================================
# 1. OFFICIAL CANONICAL SET
# ============================================================

official_canonical_set:
- 000_QUICK_FORECAST_OVERVIEW.md
- 000_QUICK_FORECAST_INDEX.md
- 00_QUICK_FORECAST_INTEGRATED.md
- 00_QUICK_FORECAST_INTEGRATED_REBUILT.md
- 900400_QUICK_FORECAST_HANDOVER_NOTE.md
- 900540_QUICK_FORECAST_CLOSE_NOTE.md
- 900550_QUICK_FORECAST_FINAL_VERIFY_REPORT.md
- 900560_QUICK_FORECAST_CLOSURE_STARTER_PACK.md
- 900570_QUICK_FORECAST_FINAL_MANIFEST.md

meaning:
These files define the current official closing state of QuickForecast.

# ============================================================
# 2. PRIMARY READING ORDER
# ============================================================

primary_reading_order:
1. 000_QUICK_FORECAST_OVERVIEW.md
2. 00_QUICK_FORECAST_INTEGRATED_REBUILT.md
3. 900400_QUICK_FORECAST_HANDOVER_NOTE.md
4. 900540_QUICK_FORECAST_CLOSE_NOTE.md
5. 900550_QUICK_FORECAST_FINAL_VERIFY_REPORT.md
6. 900560_QUICK_FORECAST_CLOSURE_STARTER_PACK.md

reading_rule:
Use the rebuilt integrated file for full reading,
and use handover / close / verify / starter pack
for operational understanding.

# ============================================================
# 3. CURRENT OFFICIAL STATE
# ============================================================

official_state:
QuickForecast is closed as an implementation-ready,
design-only canonical deliverable.

design_identity:
QuickForecast is a demand-forecast-originated
proposal drafting workbench.

canonical_value_chain:
Forecast
-> Action
-> Proposal
-> Profit

erp_relation:
QuickForecast coexists with ERP.
QuickForecast does not replace ERP.
ERP retains equivalent forecasting capability.

# ============================================================
# 4. CHANGE RULE
# ============================================================

allowed_change_types:
- wording polish
- consistency fix
- index sync
- rebuilt sync
- approved scope expansion
- approved implementation start

disallowed_change_types_without_approval:
- rough reconceptualization
- ERP replacement framing
- casual Basic / Pro boundary rewrite
- Pro-first implementation jump
- deletion of closing documents

# ============================================================
# 5. IMPLEMENTATION RULE
# ============================================================

implementation_rule:
If implementation starts later,
start from phase 1 local-first core only.

phase_1_chain:
Forecast
-> Action
-> Proposal
-> Profit

phase_1_support_files:
- 120640_ANDROID_GENERATION_TARGET_FREEZE_IMPLEMENTATION.md
- 120650_ANDROID_PHASE1_GENERATION_TARGET_IMPLEMENTATION.md
- 130260_ANDROID_GENERATION_TARGET_ORDER_PLAN.md
- 130270_ANDROID_GENERATION_DONE_CRITERIA_PLAN.md

# ============================================================
# 6. MAINTENANCE RULE
# ============================================================

maintenance_rule:
Until implementation begins,
QuickForecast should be maintained as a canonical design set.

maintenance_scope:
- wording stabilization
- trace consistency
- index / rebuilt maintenance
- handover material maintenance

# ============================================================
# 7. FINAL CONCLUSION
# ============================================================

final_conclusion:
The current QuickForecast set is stable enough
to be treated as a formal closed design package.

final_message:
Read it from the overview,
trust the rebuilt integrated file,
and resume only through the approved restart path.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900570_QUICK_FORECAST_FINAL_MANIFEST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900580_QUICK_FORECAST_CLOSURE_DECLARATION.md -->
# ============================================================
# QUICK FORECAST CLOSURE DECLARATION
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Declares the formal closure of the current QuickForecast design cycle.

# ============================================================
# 1. OFFICIAL DECLARATION
# ============================================================

declaration:
The current QuickForecast design cycle is formally closed.

closure_meaning:
- the current design set is treated as canonical
- the current design set is treated as stable
- the current design set is sufficient for later approved implementation start
- further casual concept expansion is not part of this closure state

# ============================================================
# 2. DESIGN STATUS
# ============================================================

design_status:
implementation-ready design

boundary_status:
design-only boundary

identity:
QuickForecast is a demand-forecast-originated
proposal drafting workbench.

canonical_value_chain:
Forecast
-> Action
-> Proposal
-> Profit

# ============================================================
# 3. ERP RELATION
# ============================================================

erp_relation:
QuickForecast coexists with ERP.
QuickForecast does not replace ERP.
ERP retains equivalent forecasting capability.

# ============================================================
# 4. REOPEN RULE
# ============================================================

reopen_allowed_only_if:
- Boss explicitly requests design maintenance
- Boss explicitly approves phase 1 implementation start
- Boss explicitly expands scope

reopen_not_allowed_as:
- rough concept restart
- uncontrolled feature expansion
- Pro-first implementation jump
- ERP replacement reframing

# ============================================================
# 5. CANONICAL ENTRY SET
# ============================================================

canonical_entry_set:
- 000_QUICK_FORECAST_OVERVIEW.md
- 00_QUICK_FORECAST_INTEGRATED_REBUILT.md
- 900400_QUICK_FORECAST_HANDOVER_NOTE.md
- 900540_QUICK_FORECAST_CLOSE_NOTE.md
- 900550_QUICK_FORECAST_FINAL_VERIFY_REPORT.md
- 900560_QUICK_FORECAST_CLOSURE_STARTER_PACK.md
- 900570_QUICK_FORECAST_FINAL_MANIFEST.md
- 900580_QUICK_FORECAST_CLOSURE_DECLARATION.md

# ============================================================
# 6. FINAL WORD
# ============================================================

final_word:
QuickForecast should now be handled as a closed canonical design package,
not as an open-ended concept draft.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900580_QUICK_FORECAST_CLOSURE_DECLARATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900590_PARENT_CANONICAL_ALIGNMENT_NOTE.md -->
# ============================================================
# PARENT CANONICAL ALIGNMENT NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines how QuickForecast aligns with higher-level canonical documents.

# ============================================================
# 1. ALIGNMENT TARGETS
# ============================================================

alignment_targets:
- Foundation Canonical
- Civilization System Rules Integrated
- Business OS Integrated Canonical
- ERP Design Bible Full

# ============================================================
# 2. FOUNDATION ALIGNMENT
# ============================================================

foundation_alignment:
QuickForecast must remain a governed application,
not an uncontrolled concept expansion.

alignment_points:
- explicit structure over uncontrolled evolution
- documented architecture and governed process
- explicit boundary over implicit behavior
- stable canonical reading order

QuickForecast implication:
QuickForecast must remain a clearly documented,
layered, and closed design package.

# ============================================================
# 3. CIVILIZATION SYSTEM RULE ALIGNMENT
# ============================================================

civilization_system_rule_alignment:
QuickForecast must comply with global canonical design rules.

alignment_points:
- canonical document discipline
- architecture / model / event / security separation
- explicit rule compliance
- no ambiguous cross-layer mixing
- stable root/index/rebuilt relationship

QuickForecast implication:
QuickForecast documents must preserve
overview / index / integrated / rebuilt consistency
and must not blur policy, architecture, implementation,
and operational meanings.

# ============================================================
# 4. BUSINESS OS ALIGNMENT
# ============================================================

business_os_alignment:
QuickForecast must be compatible with Business OS responsibility framing.

alignment_points:
- enterprise operation is governed
- approval boundary must remain explicit
- submission boundary must remain explicit
- AI or automation must not silently exceed authority
- application responsibility must stay explicit

QuickForecast implication:
QuickForecast Pro actions such as sharing,
approval routing, and enterprise handoff
must remain governed actions,
not implicit consequences of local draft save.

# ============================================================
# 5. ERP ALIGNMENT
# ============================================================

erp_alignment:
QuickForecast must coexist with ERP
without reframing itself as ERP replacement.

alignment_points:
- ERP retains formal enterprise density
- ERP remains suitable for deeper formal operation
- platform/business concerns should stay separated
- QuickForecast should not absorb ERP platform scope casually

QuickForecast implication:
QuickForecast is a mobile, high-immediacy companion application.
It may connect to ERP references and handoff routes,
but it must not redefine itself as the ERP primary system.

# ============================================================
# 6. CANONICAL POSITION SUMMARY
# ============================================================

canonical_position_summary:
QuickForecast is:

- foundation-aligned in governance
- civilization-rule-aligned in document discipline
- business-os-aligned in governed operation boundaries
- erp-aligned in coexistence and non-replacement framing

# ============================================================
# 7. DO NOT VIOLATE
# ============================================================

do_not_violate:
- do not reopen QuickForecast as uncontrolled concept work
- do not blur cross-layer responsibilities
- do not treat local save as enterprise acceptance
- do not imply ERP replacement
- do not bypass governed Pro action boundaries

# ============================================================
# 8. CONCLUSION
# ============================================================

conclusion:
QuickForecast is valid only when read as a governed,
layered, ERP-coexisting application design
inside the broader Civilization canonical system.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900590_PARENT_CANONICAL_ALIGNMENT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900600_QUICK_FORECAST_COMMON_COMPONENT_ADOPTION_REGISTRY.md -->
# ============================================================
# QUICK FORECAST COMMON COMPONENT ADOPTION REGISTRY
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines which common components QuickForecast uses,
which components are planned candidates,
which are not primary fits,
and which new common components QuickForecast can supply.

# ============================================================
# 1. ADOPTION STATUS LEGEND
# ============================================================

adoption_status_legend:
- adopted_now
- planned_later
- candidate_only
- not_primary_fit
- supplied_by_quickforecast_candidate

# ============================================================
# 2. ADOPTED NOW
# ============================================================

adopted_now:

- component:
  Draft / Work-in-progress Common
  status: adopted_now
  reason:
  QuickForecast is fundamentally a draft-heavy application.
  Forecast drafts, action drafts, proposal drafts,
  and profit preview drafts are all central.

- component:
  Template / Generated Output Common
  status: adopted_now
  reason:
  QuickForecast converts forecast thinking into proposal-oriented output.
  Generated business draft support is core.

- component:
  Submission Common
  status: adopted_now
  reason:
  QuickForecast Pro must distinguish local draft save
  from governed submission / enterprise-linked progression.

- component:
  Approval / Review Surface Common
  status: adopted_now
  reason:
  QuickForecast Pro requires explicit review,
  approval request, approval waiting, and return handling.

- component:
  Online Sync Common
  status: adopted_now
  reason:
  QuickForecast Pro must preserve synchronized state
  for shared, approved, and submitted work.

- component:
  App-internal Sharing Common
  status: adopted_now
  reason:
  Proposal drafts and forecast-derived outputs
  are natural sharing objects.

- component:
  Activity Log / Audit Trail Common
  status: adopted_now
  reason:
  Generated, edited, shared, approved, and handed-off actions
  need attributable history in QuickForecast Pro.

- component:
  External Notification Delivery Common
  status: adopted_now
  reason:
  Approval, return, and handoff notifications
  are naturally required in QuickForecast Pro.

- component:
  Channel Routing Common
  status: adopted_now
  reason:
  Notifications and enterprise-linked routing
  should not be app-hardcoded.

- component:
  ERP Publication Capability
  status: adopted_now
  reason:
  QuickForecast must support governed ERP-linked handoff/publication capability
  without positioning itself as ERP replacement.

# ============================================================
# 3. PLANNED LATER
# ============================================================

planned_later:

- component:
  Contact / Destination Common
  status: planned_later
  reason:
  Useful for proposal targets, share targets,
  review targets, and handoff destinations.

- component:
  Attachment / Evidence Common
  status: planned_later
  reason:
  Useful for forecast basis materials,
  supporting documents, and proposal evidence.

- component:
  Business AI Worker
  status: planned_later
  reason:
  Strong fit for proposal drafting assistance,
  summary assistance, and wording support,
  but should remain assistive, not authoritative.

- component:
  Summary / Digest Common
  status: planned_later
  reason:
  Useful for forecast summary,
  proposal summary, and profit preview summary.

- component:
  Reminder Common
  status: planned_later
  reason:
  Useful for pending review,
  pending handoff, and follow-up deadlines.

- component:
  Preference Common
  status: planned_later
  reason:
  Useful for default template settings,
  display preferences, and drafting defaults.

# ============================================================
# 4. CANDIDATE ONLY
# ============================================================

candidate_only:

- component:
  Publish Target Confirmation Common
  status: candidate_only
  reason:
  Can be useful in selected enterprise-linked cases,
  but is not core to the QuickForecast local-first chain.

# ============================================================
# 5. NOT PRIMARY FIT
# ============================================================

not_primary_fit:

- component:
  Secretary Interaction Common
  status: not_primary_fit
  reason:
  QuickForecast is not primarily a secretary-experience application.

- component:
  VisualRuntime Common
  status: not_primary_fit
  reason:
  Persona-driven visual experience is not a QuickForecast core requirement.

- component:
  Presence / Mood Presentation Common
  status: not_primary_fit
  reason:
  Not central to a forecast-originated proposal workbench.

- component:
  Companion Conversation Framing Common
  status: not_primary_fit
  reason:
  QuickForecast is business-draft oriented,
  not a companion-first conversational application.

- component:
  Schedule / Time-slot Planning Common
  status: not_primary_fit
  reason:
  Schedule structuring is secondary,
  not a primary QuickForecast value center.

# ============================================================
# 6. SUPPLIED BY QUICKFORECAST CANDIDATES
# ============================================================

supplied_by_quickforecast_candidates:

- component:
  Forecast Draft Common
  status: supplied_by_quickforecast_candidate
  reason:
  Forecast hypothesis drafting and editable forecast objects
  can be reused by other business applications.

- component:
  Scenario Comparison Common
  status: supplied_by_quickforecast_candidate
  reason:
  Multi-scenario comparison is broadly reusable.

- component:
  Action Recommendation Common
  status: supplied_by_quickforecast_candidate
  reason:
  Turning forecast meaning into action candidates
  has cross-application value.

- component:
  Proposal Draft Builder Common
  status: supplied_by_quickforecast_candidate
  reason:
  Proposal generation from business context
  can serve many applications.

- component:
  Profit Preview Common
  status: supplied_by_quickforecast_candidate
  reason:
  Revenue / cost / profit image generation
  has strong reuse potential.

- component:
  Assumption / Basis Common
  status: supplied_by_quickforecast_candidate
  reason:
  Explicit basis tracking is widely reusable
  across planning and estimation applications.

- component:
  Generated Business Draft Common
  status: supplied_by_quickforecast_candidate
  reason:
  Editable AI-assisted business draft generation
  can be shared across multiple apps.

- component:
  Forecast-to-Proposal Trace Common
  status: supplied_by_quickforecast_candidate
  reason:
  Traceability from forecast through proposal and profit
  is a strong reusable pattern.

# ============================================================
# 7. QUICKFORECAST-SPECIFIC RESIDUAL RESPONSIBILITY
# ============================================================

quickforecast_specific_residual_responsibility:
- preserve the canonical Forecast -> Action -> Proposal -> Profit chain
- preserve ERP coexistence and non-replacement framing
- preserve QuickForecast Basic / Pro tier boundary
- preserve local save and governed action separation
- preserve proposal-oriented business value identity

# ============================================================
# 8. CONCLUSION
# ============================================================

conclusion:
QuickForecast is primarily a Business OS common-component consumer,
with several strong opportunities to supply new reusable common components
back to the application ecosystem.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900600_QUICK_FORECAST_COMMON_COMPONENT_ADOPTION_REGISTRY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900620_QUICK_FORECAST_PRICING_DESIGN_NOTE.md -->
# ============================================================
# QUICK FORECAST PRICING DESIGN NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes pricing design decisions.

design_summary:
QuickForecast pricing is based on business-operation value,
not on restricting the app until it becomes unusable.

adopted_direction:
- free tier keeps core value chain visible
- paid personal tier expands continuity
- paid team tier expands collaboration and governance
- ERP-connected capability stays in paid team scope

important_notes:
- QuickForecast remains a monthly subscription app
- free tier should remain compelling
- paid tier should feel operationally stronger, not artificially unlocked

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900620_QUICK_FORECAST_PRICING_DESIGN_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900630_FEATURE_EXPANSION_DESIGN_NOTE.md -->
# ============================================================
# FEATURE EXPANSION DESIGN NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes the adopted expansion set.

priority_a:
- scenario-switched proposal generation
- proposal basis panel
- internal explanation draft
- explainable profit preview
- internal response tracking

priority_b:
- market event input
- proposal template switching
- content recommendation

design_intent:
These additions strengthen QuickForecast
as a forecast-originated proposal workbench,
not as a pure forecasting engine or CRM replacement.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900630_FEATURE_EXPANSION_DESIGN_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900640_EXPANDED_SCREEN_INVENTORY_NOTE.md -->
# ============================================================
# EXPANDED SCREEN INVENTORY NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes screen inventory impact after expansion.

summary:
The competitor-aware feature expansion does not require
a full explosion of new top-level screens.

design_decision:
Most new capability should be absorbed as embedded surfaces
inside existing core screens.

why:
This preserves mobile immediacy and avoids UI fragmentation.

top_level_screen_growth_rule:
Only promote an embedded surface to its own screen
when edit density, review density, or operational complexity
becomes too high for the parent screen.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900640_EXPANDED_SCREEN_INVENTORY_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900650_SCREEN_ADDITION_DECISION_NOTE.md -->
# ============================================================
# SCREEN ADDITION DECISION NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Records which additions are embedded surfaces
and which remain full screens.

embedded_surfaces_now:
- scenario switched proposal
- proposal basis panel
- internal explanation draft
- explainable profit surface
- market event input
- proposal template selection
- content recommendation

full_screen_candidates_later:
- internal response tracking full board
- market event dedicated management screen
- proposal variant comparison dedicated screen

decision_rule:
Preserve fast mobile flow first.
Do not increase screen count unless strong density justification exists.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900650_SCREEN_ADDITION_DECISION_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900660_VM_REDUCER_REPOSITORY_REFRESH_NOTE.md -->
# ============================================================
# VM REDUCER REPOSITORY REFRESH NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes implementation responsibility refresh after feature expansion.

summary:
The feature expansion is absorbed mainly by:
- ProposalBuilderViewModel
- ProfitPreviewViewModel
- ForecastDetailViewModel
- ProApprovalSubmissionViewModel

design_intent:
Preserve the original app structure,
but deepen responsibility where the proposal-centered value grows most.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900660_VM_REDUCER_REPOSITORY_REFRESH_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900670_ANDROID_PRIORITY_REFRESH_NOTE.md -->
# ============================================================
# ANDROID PRIORITY REFRESH NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes refreshed Android implementation priority.

summary:
After feature expansion,
implementation priority remains proposal-centered.

important_decision:
Do not begin with governance-heavy Pro behavior.
Do not begin with recommendation-heavy behavior.

start_here:
- local chain
- proposal builder
- profit preview

expand_next:
- scenario switch
- proposal basis
- explainable profit
- market event input
- template selection
- internal explanation

expand_later:
- tracking
- approval
- sync
- notification
- ERP handoff

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900670_ANDROID_PRIORITY_REFRESH_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900680_IMPLEMENTATION_RESTART_ENTRY_NOTE.md -->
# ============================================================
# IMPLEMENTATION RESTART ENTRY NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the formal entry set when implementation restarts.

restart_entry_set:
- 000_QUICK_FORECAST_OVERVIEW.md
- 00_QUICK_FORECAST_INTEGRATED_REBUILT.md
- 020110_FORECAST_ACTION_PROPOSAL_PROFIT_ARCHITECTURE.md
- 020130_FORECAST_TO_PROPOSAL_DIFFERENTIATION_ARCHITECTURE.md
- 090410_EXPANDED_SCREEN_INVENTORY_INTERFACE.md
- 120670_EXPANDED_VIEWMODEL_RESPONSIBILITY_IMPLEMENTATION.md
- 120680_EXPANDED_REDUCER_RESPONSIBILITY_IMPLEMENTATION.md
- 120690_EXPANDED_REPOSITORY_RESPONSIBILITY_IMPLEMENTATION.md
- 130280_ANDROID_EXPANDED_IMPLEMENTATION_PRIORITY_PLAN.md
- 130320_ANDROID_EXPANDED_IMPLEMENTATION_SEQUENCE_PLAN.md
- 130330_ANDROID_IMPLEMENTATION_READING_ORDER_PLAN.md
- 130340_ANDROID_PHASE_GATE_PLAN.md
- 130350_ANDROID_EXPANDED_DONE_CRITERIA_PLAN.md

restart_rule:
Do not restart implementation from scattered files.
Restart from this entry set only.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900680_IMPLEMENTATION_RESTART_ENTRY_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900690_IMPLEMENTATION_START_CHECKLIST.md -->
# ============================================================
# IMPLEMENTATION START CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Checklist before Android implementation starts.

checklist:
- canonical positioning is understood
- ERP coexistence is understood
- Basic / Pro boundary is understood
- local save and governed action separation is understood
- screen responsibility realignment is understood
- ViewModel / reducer / repository refresh is understood
- phase 1 scope is frozen
- phase 2 and later are deferred consciously
- implementation starts from local-first core only

blockers:
- starting from Pro-heavy workflow
- starting from notification / handoff first
- starting from recommendation-heavy features
- skipping canonical reading order

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900690_IMPLEMENTATION_START_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900710_MULTICURRENCY_DESIGN_NOTE.md -->
# ============================================================
# MULTICURRENCY DESIGN NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes multicurrency design direction.

summary:
QuickForecast multicurrency support is not simple display switching only.
It includes:
- source currency handling
- base currency comparison
- display currency rendering
- exchange rate traceability
- proposal monetary basis visibility
- multicurrency profit preview

important_decision:
Display currency and canonical money meaning remain separate.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900710_MULTICURRENCY_DESIGN_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900720_ANDROID_MINIMUM_FILESET_BUNDLE_NOTE.md -->
# ============================================================
# ANDROID MINIMUM FILESET BUNDLE NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes the minimum Android fileset decision
after multilingual and multicurrency expansion.

summary:
Phase 1 must start with:
- core chain classes
- locale preference foundation
- currency preference foundation
- money-safe structure
- formatter and text resolver foundation

not_now:
- full translation-variant persistence
- full exchange-rate snapshot density
- governed workflow
- ERP handoff
- advanced recommendation

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900720_ANDROID_MINIMUM_FILESET_BUNDLE_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900730_DEVELOPMENT_130_COMPLETION_NOTE.md -->
# ============================================================
# DEVELOPMENT 130 COMPLETION NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes the strengthened 130-layer development design.

summary:
The 130 layer now includes:
- expanded implementation priority
- phase breakdown
- reading order
- phase gates
- done criteria
- minimum fileset
- minimum classset
- phase 1 generation target list
- phase 1 acceptance criteria
- phase 2 entry decision rules
- development restart entry

result:
130 layer is now materially closer to implementation-direct guidance.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900730_DEVELOPMENT_130_COMPLETION_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900740_ANDROID_PHASE1_FILE_GENERATION_NOTE.md -->
# ============================================================
# ANDROID PHASE 1 FILE GENERATION NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes actual Phase 1 generation intent.

summary:
Phase 1 generation is now fixed at the level of:
- directory structure
- concrete file list
- batch grouping
- detailed generation order
- generation boundary

result:
The design now supports direct file-generation planning
without collapsing later multilingual and multicurrency expansion.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900740_ANDROID_PHASE1_FILE_GENERATION_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900750_MULTI_DEVICE_SUPPORT_NOTE.md -->
# ============================================================
# MULTI DEVICE SUPPORT NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes the multi-device support decision.

summary:
QuickForecast is explicitly designed for:
- iPhone
- Android smartphones
- tablets including iPad-class and Android tablet-class devices

important_decision:
Use one canonical workflow and adaptive presentation,
not separate device-specific business flows.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900750_MULTI_DEVICE_SUPPORT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900760_ANDROID_TEMPLATE_STARTER_NOTE.md -->
# ============================================================
# ANDROID TEMPLATE STARTER NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes the Android template starter-pack decision.

summary:
The next generation step is not full app generation.
It is a starter-pack that freezes:
- model shape
- persistence shape
- settings shape
- formatter shape
- reducer / viewmodel / screen pattern
- multilingual entry
- multicurrency entry

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900760_ANDROID_TEMPLATE_STARTER_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900770_DESIGN_HARDENING_NOTE.md -->
# ============================================================
# DESIGN HARDENING NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes the current design hardening pass.

hardened_areas:
- screen responsibility boundaries
- multilingual and multicurrency display priority
- implementation boundary discipline
- adaptive presentation without flow divergence
- phase boundary hardening
- restart reading order hardening

result:
QuickForecast design is now better protected against
role drift,
device drift,
and multilingual / multicurrency boundary collapse.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900770_DESIGN_HARDENING_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900780_PRICING_POSITIONING_BOUNDARY_NOTE.md -->
# ============================================================
# PRICING POSITIONING BOUNDARY NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes the pricing, positioning, and ERP-boundary hardening pass.

summary:
QuickForecast is positioned as:
- fast forecast-centered judgment support
- proposal and profit draft accelerator
- lightweight companion beside ERP

key_decisions:
- ERP is not replaced
- free, paid, and ERP-linked scopes stay distinct
- pricing must be justified by speed, clarity, and draft value

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900780_PRICING_POSITIONING_BOUNDARY_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900790_CROSS_APPLICATION_OVERLAP_NOTE.md -->
# ============================================================
# CROSS APPLICATION OVERLAP NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes the cross-application overlap hardening pass.

summary:
QuickForecast is now more clearly separated from:
- ERP
- EstimateCreator
- ProjectFlow
- PocketSecretary
- BusinessOS common foundations

key_result:
QuickForecast may remain adjacent to proposal,
profit,
and handoff-related meanings
without losing its forecast-centered identity.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900790_CROSS_APPLICATION_OVERLAP_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900800_FINAL_REVIEW_HARDENING_CHECKLIST.md -->
# ============================================================
# FINAL REVIEW HARDENING CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the hardened final review checklist for QuickForecast.

review_areas:

1_product_identity:
- [ ] QuickForecast remains forecast-centered
- [ ] product identity is still lightweight and judgment-speed centered
- [ ] no silent drift into heavy governance shell

2_positioning_and_boundary:
- [ ] ERP boundary remains clear
- [ ] EstimateCreator boundary remains clear
- [ ] ProjectFlow boundary remains clear
- [ ] PocketSecretary boundary remains clear
- [ ] BusinessOS common foundation boundary remains clear

3_free_paid_erp_scope:
- [ ] free scope is useful on its own
- [ ] paid scope deepens app value instead of only gating basics
- [ ] ERP linkage is additive and not the sole product reason to exist

4_multilingual:
- [ ] multilingual policy is reflected in screen design
- [ ] fallback behavior is explicit
- [ ] source and translated visibility rules are consistent
- [ ] compact vs expanded multilingual visibility rules are coherent

5_multicurrency:
- [ ] source / base / display currency meanings are distinct
- [ ] money meaning is not collapsed into naked number rendering
- [ ] compact vs expanded multicurrency visibility rules are coherent

6_multi_device:
- [ ] iPhone support is explicit
- [ ] Android support is explicit
- [ ] tablet support is explicit
- [ ] adaptive layout does not create business-flow divergence
- [ ] tablet expansion remains presentation expansion only

7_screen_responsibility:
- [ ] dashboard role remains entry-summary centered
- [ ] forecast list role remains browse-select centered
- [ ] forecast detail remains read-centered
- [ ] forecast editor remains edit-centered
- [ ] proposal builder remains proposal-edit centered
- [ ] profit preview remains preview-centered
- [ ] settings remains preference-centered

8_implementation_boundary:
- [ ] repository does not own final UI wording
- [ ] formatter does not own business meaning
- [ ] viewmodel does not rewrite canonical money meaning
- [ ] screen layer does not own canonical fallback policy
- [ ] adaptive layout code does not fork canonical workflow

9_phase_boundary:
- [ ] Phase 1 scope remains realistic
- [ ] Phase 2 targets remain additive and clean
- [ ] no Phase 2 concept was silently forced into Phase 1

10_pricing_value:
- [ ] pricing is justified by speed / clarity / draft acceleration
- [ ] pricing is not justified mainly by accidental complexity
- [ ] pricing is not justified mainly by ERP lock-in

11_canonical_quality:
- [ ] wording is consistent across files
- [ ] role names are stable
- [ ] no contradictory scope statement remains
- [ ] index / overview / rebuilt stay aligned

close_judgment_rule:
Close only when all major areas above pass
without role drift,
boundary blur,
or multilingual / multicurrency meaning collapse.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900800_FINAL_REVIEW_HARDENING_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900810_CLOSE_DECISION_GATE_NOTE.md -->
# ============================================================
# CLOSE DECISION GATE NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the gate for final close decision.

must_pass_before_close:
- product identity check
- cross-application boundary check
- multilingual check
- multicurrency check
- multi-device check
- screen responsibility check
- implementation boundary check
- phase boundary check
- pricing value check
- canonical consistency check

must_not_remain_before_close:
- hidden ERP-role drift
- hidden estimate-role drift
- hidden project-control-role drift
- hidden secretary-role drift
- device-based workflow divergence
- money meaning ambiguity
- fallback rule ambiguity

result_rule:
A near-complete file count is not enough.
Close requires semantic boundary integrity.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900810_CLOSE_DECISION_GATE_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900820_REVIEWER_FOCUS_NOTE.md -->
# ============================================================
# REVIEWER FOCUS NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Helps reviewers focus on high-risk areas.

high_risk_areas:
- app identity drift
- ERP overlap drift
- estimate overlap drift
- multilingual fallback ambiguity
- multicurrency meaning collapse
- tablet-only role drift
- pricing justification weakness

reviewer_prompt:
Review not only what files exist,
but whether QuickForecast still feels like
one coherent forecast-centered application.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900820_REVIEWER_FOCUS_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900830_PRE_CLOSE_TOTAL_INSPECTION_CHECKLIST.md -->
# ============================================================
# PRE CLOSE TOTAL INSPECTION CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the total inspection checklist immediately before close judgment.

inspection_areas:

1_root_and_navigation:
- [ ] root overview exists and remains current
- [ ] root index exists and remains current
- [ ] rebuilt integrated file reflects current file set
- [ ] no newly added file is missing from relevant index

2_layer_integrity:
- [ ] architecture layer reflects current product identity
- [ ] policy layer reflects current pricing and boundary decisions
- [ ] interface layer reflects multilingual / multicurrency / multi-device rules
- [ ] implementation layer reflects boundary discipline only, not accidental runtime drift
- [ ] development layer reflects realistic Phase 1 and Phase 2 separation
- [ ] meta layer reflects current review state and not an older state

3_semantic_integrity:
- [ ] no product identity contradiction remains
- [ ] no ERP boundary contradiction remains
- [ ] no free / paid contradiction remains
- [ ] no multilingual contradiction remains
- [ ] no multicurrency contradiction remains
- [ ] no phone / tablet contradiction remains
- [ ] no cross-application overlap contradiction remains

4_screen_integrity:
- [ ] dashboard responsibility is stable
- [ ] forecast list responsibility is stable
- [ ] forecast detail responsibility is stable
- [ ] forecast editor responsibility is stable
- [ ] proposal builder responsibility is stable
- [ ] profit preview responsibility is stable
- [ ] settings responsibility is stable

5_scope_integrity:
- [ ] Phase 1 scope remains minimum and coherent
- [ ] Phase 2 scope remains additive and coherent
- [ ] advanced concepts did not silently collapse back into Phase 1
- [ ] app remains useful before ERP linkage

6_close_readiness:
- [ ] final review hardening checklist is passable
- [ ] close decision gate note is satisfiable
- [ ] reviewer focus note risks are addressed
- [ ] no unresolved major ambiguity remains

judgment_rule:
Close only if total inspection shows
index integrity,
semantic integrity,
and scope integrity together.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900830_PRE_CLOSE_TOTAL_INSPECTION_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900840_INDEX_AND_REBUILT_ALIGNMENT_NOTE.md -->
# ============================================================
# INDEX AND REBUILT ALIGNMENT NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the final alignment check between indexes and rebuilt output.

required_alignment:
- every canonical file should be represented in the correct layer index
- rebuilt output should not lag behind layer indexes
- rebuilt output should not imply stale scope
- no deleted concept should remain only in rebuilt output
- no newly hardened boundary should exist only in one location

important_rule:
A design set is not close-ready
if indexes and rebuilt output disagree on product meaning.

- 900410_QUICKFORECAST_20260416_DIFF_AUDIT_NOTE.md

- 900420_QUICKFORECAST_20260416_BUNDLE02_PHASE_A_AUDIT_NOTE.md

- 900430_QUICKFORECAST_20260416_BUNDLE03_STUB_AUDIT_NOTE.md

- 900440_QUICKFORECAST_20260416_BUNDLE04_CLOSEOUT_AUDIT_NOTE.md

- 900450_QUICKFORECAST_NEXT_APP_TRANSITION_HANDOFF.md

- 900460_QUICKFORECAST_REUSABLE_PHASEA_REINFORCEMENT_RECIPE.md

- 900470_QUICKFORECAST_PLANNING_STOP_RULE_NOTE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900840_INDEX_AND_REBUILT_ALIGNMENT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900850_SEMANTIC_DRIFT_FINAL_NOTE.md -->
# ============================================================
# SEMANTIC DRIFT FINAL NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Provides the final semantic drift watchlist.

drift_watchlist:
- forecast-centered identity drifting into estimate-authoritative identity
- quick judgment support drifting into heavy enterprise workflow shell
- lightweight app identity drifting into ERP mimic behavior
- proposal assistance drifting into full estimate ownership
- profit preview drifting into accounting-authoritative ownership
- multi-device adaptation drifting into device-specific workflow divergence
- multilingual support drifting into inconsistent fallback meaning
- multicurrency support drifting into ambiguous money meaning

final_rule:
Close requires semantic stability,
not only documentation volume.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900850_SEMANTIC_DRIFT_FINAL_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900860_PRE_CLOSE_DECISION_SUMMARY_TEMPLATE.md -->
# ============================================================
# PRE CLOSE DECISION SUMMARY TEMPLATE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Template for summarizing the final pre-close decision.

template_fields:
- product_identity_status
- boundary_status
- multilingual_status
- multicurrency_status
- multi_device_status
- pricing_status
- phase_boundary_status
- index_alignment_status
- rebuilt_alignment_status
- remaining_major_risks
- close_recommendation

rule:
Use this template only after
pre-close total inspection has been completed.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900860_PRE_CLOSE_DECISION_SUMMARY_TEMPLATE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900870_CLOSE_DECISION_SUMMARY_NOTE.md -->
# ============================================================
# CLOSE DECISION SUMMARY NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Provides a close-decision summary for QuickForecast design status.

current_summary:
QuickForecast has been strengthened across:
- multilingual support
- multicurrency support
- multi-device support
- screen responsibility hardening
- implementation boundary hardening
- phase boundary hardening
- pricing and positioning hardening
- ERP boundary hardening
- cross-application overlap hardening
- final review and pre-close inspection hardening

current_identity:
QuickForecast is a forecast-centered,
lightweight,
judgment-speed oriented application
for quick business review,
proposal starting support,
and quick profit preview.

close_readiness_view:
The design is materially close-ready
if no unresolved contradiction remains
between:
- root files
- layer indexes
- rebuilt output
- semantic boundary notes
- final review checklists

important_condition:
Close readiness is semantic readiness,
not only file-count readiness.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900870_CLOSE_DECISION_SUMMARY_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900880_REMAINING_RISK_DECISION_NOTE.md -->
# ============================================================
# REMAINING RISK DECISION NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Captures remaining risk categories before final close recommendation.

major_risk_categories_to_recheck:
- hidden overlap with ERP
- hidden overlap with EstimateCreator
- hidden overlap with ProjectFlow
- hidden overlap with PocketSecretary
- hidden multilingual fallback ambiguity
- hidden multicurrency meaning ambiguity
- hidden device-based role drift
- hidden pricing-value weakness
- stale rebuilt or stale index references

close_blocking_rule:
If any remaining risk changes the canonical product meaning,
close should pause until resolved.

non_blocking_rule:
Minor wording polish alone
does not have to block close
unless it causes semantic confusion.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900880_REMAINING_RISK_DECISION_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900890_HANDOFF_READY_DECISION_NOTE.md -->
# ============================================================
# HANDOFF READY DECISION NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines when QuickForecast is ready for handoff as a design-complete set.

handoff_ready_when:
- the application identity is stable
- nearby app boundaries are stable
- multilingual and multicurrency meanings are stable
- multi-device meaning is stable
- phase boundaries are stable
- final review hardening checklist is passable
- pre-close total inspection is passable
- rebuilt output and indexes are aligned

handoff_note:
Handoff-ready does not mean implementation started.
It means the design set is coherent enough
to be resumed later without semantic confusion.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900890_HANDOFF_READY_DECISION_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900900_CLOSE_RECOMMENDATION_TEMPLATE.md -->
# ============================================================
# CLOSE RECOMMENDATION TEMPLATE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Template for issuing the final close recommendation.

template:
close_recommendation:
- recommended_status:
- reason_summary:
- identity_integrity:
- boundary_integrity:
- multilingual_integrity:
- multicurrency_integrity:
- multi_device_integrity:
- pricing_integrity:
- index_and_rebuilt_integrity:
- remaining_blockers:
- recommended_next_action:

rule:
Use only after
close decision summary note,
remaining risk decision note,
and pre-close total inspection checklist
have all been reviewed together.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900900_CLOSE_RECOMMENDATION_TEMPLATE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900910_DESIGN_COMPLETION_CANDIDATE_NOTE.md -->
# ============================================================
# DESIGN COMPLETION CANDIDATE NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
States whether QuickForecast can be treated as a design-completion candidate.

design_completion_candidate_definition:
A design-completion candidate is a design set that:
- has stable product identity
- has stable boundary definitions
- has stable scope definitions
- has stable multilingual / multicurrency / multi-device rules
- can be resumed later without semantic confusion
- does not require implementation to validate its core meaning

current_assessment:
QuickForecast may be treated as a design-completion candidate
when final semantic checks pass.

important_rule:
Design completion candidate
does not mean implementation started,
implementation finished,
or implementation guaranteed.
It means the design set itself is coherent enough to hand off and resume later.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900910_DESIGN_COMPLETION_CANDIDATE_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900920_DESIGN_COMPLETE_VS_IMPLEMENTATION_LATER_NOTE.md -->
# ============================================================
# DESIGN COMPLETE VS IMPLEMENTATION LATER NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Separates design completion from implementation timing.

design_complete_means:
- the app role is fixed
- the app boundary is fixed
- the layer meanings are fixed
- the major review risks are known
- later implementation can proceed from a stable design base

design_complete_does_not_mean:
- source code exists
- implementation started
- implementation priority is immediate
- build readiness is already verified
- runtime behavior is already validated

project_rule:
QuickForecast may be design-complete
while implementation remains explicitly deferred.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900920_DESIGN_COMPLETE_VS_IMPLEMENTATION_LATER_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900930_HANDOFF_CLOSE_IMPLEMENTATION_RELATION_NOTE.md -->
# ============================================================
# HANDOFF CLOSE IMPLEMENTATION RELATION NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Clarifies the relation among handoff, close, and later implementation.

handoff_meaning:
The design can be passed forward
without re-discovering its identity and boundaries.

close_meaning:
The design set is semantically settled enough
to stop adding design corrections for now.

implementation_later_meaning:
Actual source generation and build work
may happen in a later phase
without reopening core product meaning.

relation_rule:
handoff-ready and close-ready are design judgments.
implementation-later is a separate scheduling judgment.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900930_HANDOFF_CLOSE_IMPLEMENTATION_RELATION_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900940_FINAL_DESIGN_JUDGMENT_TEMPLATE.md -->
# ============================================================
# FINAL DESIGN JUDGMENT TEMPLATE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Template for final design judgment.

template:
design_completion_candidate:
- yes_or_no:
- reason_summary:

handoff_ready:
- yes_or_no:
- reason_summary:

close_ready:
- yes_or_no:
- reason_summary:

implementation_status:
- deferred / not_started / in_scope_later

blocking_semantic_issues:
- item_1:
- item_2:
- item_3:

final_note:

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900940_FINAL_DESIGN_JUDGMENT_TEMPLATE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900950_FINAL_DESIGN_JUDGMENT_NOTE.md -->
# ============================================================
# FINAL DESIGN JUDGMENT NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Records the current final design judgment state for QuickForecast.

current_judgment:
- design_completion_candidate: yes
- handoff_ready: yes
- close_ready: conditional-yes
- implementation_status: deferred / not started

reason_summary:
QuickForecast has reached a state where:
- product identity is stable
- adjacent app boundaries are stable
- multilingual rules are explicit
- multicurrency rules are explicit
- multi-device rules are explicit
- pricing and positioning are explicit
- phase boundaries are explicit
- review and pre-close inspection criteria are explicit

conditional_close_meaning:
Close is appropriate
if no additional semantic contradiction is found
during the final human read-through of:
- root overview
- root index
- rebuilt integrated file
- latest meta judgment notes

important_rule:
This judgment is about design coherence,
not implementation progress.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900950_FINAL_DESIGN_JUDGMENT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900960_BLOCKER_STATUS_NOTE.md -->
# ============================================================
# BLOCKER STATUS NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
States whether any blocker remains before close recommendation.

blocking_items:
- no confirmed semantic blocker currently recorded

watch_items:
- stale index vs rebuilt mismatch
- hidden wording contradiction in root files
- hidden overlap wording with adjacent applications
- hidden ambiguity in free / paid / ERP-linked wording

rule:
Watch items require final human confirmation,
but are not automatic blockers unless they alter canonical meaning.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900960_BLOCKER_STATUS_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900970_CLOSE_RECOMMENDATION_NOTE.md -->
# ============================================================
# CLOSE RECOMMENDATION NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Provides the current close recommendation.

close_recommendation:
- recommended_status: recommend close after final human read-through
- reason_summary:
  QuickForecast appears semantically settled enough
  to stop active design expansion for now.
- identity_integrity: pass
- boundary_integrity: pass
- multilingual_integrity: pass
- multicurrency_integrity: pass
- multi_device_integrity: pass
- pricing_integrity: pass
- index_and_rebuilt_integrity: pending final human read-through
- remaining_blockers: none confirmed
- recommended_next_action:
  perform one final human read-through,
  then treat QuickForecast as design-closed and handoff-ready.

note:
This recommendation assumes
implementation remains explicitly deferred.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900970_CLOSE_RECOMMENDATION_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900980_POST_CLOSE_HANDLING_NOTE.md -->
# ============================================================
# POST CLOSE HANDLING NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines how to treat the design after close.

post_close_rules:
- do not reopen closed scope casually
- future additions should be additive
- implementation work later must respect closed semantic boundaries
- if new feature requests change product identity,
  reopen architecture and policy review explicitly

normal_post_close_changes:
- wording polish
- additive clarifications
- implementation preparation references
- future phase notes

reopen_required_changes:
- identity change
- boundary change
- pricing logic change
- free / paid / ERP scope change
- multilingual or multicurrency meaning change
- multi-device flow meaning change

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900980_POST_CLOSE_HANDLING_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900990_DESIGN_CLOSURE_DECLARATION.md -->
# ============================================================
# DESIGN CLOSURE DECLARATION
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Declares QuickForecast design closure status.

declaration:
QuickForecast is hereby treated as
a design-closed application set,
with implementation explicitly deferred.

closure_meaning:
- product identity is fixed
- application boundary is fixed
- multilingual meaning is fixed
- multicurrency meaning is fixed
- multi-device meaning is fixed
- pricing and positioning are fixed
- phase boundary is fixed enough for later restart
- handoff is allowed without semantic rediscovery

explicit_non_meaning:
This declaration does not mean:
- implementation has started
- implementation has completed
- runtime verification exists
- build verification exists

operational_rule_after_closure:
Future work should be treated as one of:
- additive clarification
- implementation preparation
- implementation execution
- explicit reopen due to product-meaning change

reopen_required_if:
- product identity changes
- ERP boundary changes
- free / paid / ERP-linked boundary changes
- multilingual meaning changes
- multicurrency meaning changes
- multi-device flow meaning changes
- adjacent-app boundary meaning changes

final_statement:
QuickForecast is closed as a design set,
handoff-ready,
and implementation-later by explicit decision.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/900990_DESIGN_CLOSURE_DECLARATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/901000_NEXT_PHASE_ENTRY_NOTE.md -->
# ============================================================
# NEXT PHASE ENTRY NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the correct entry point when implementation is resumed later.

restart_entry:
When implementation resumes later,
start from the design-closed meaning first,
not from ad-hoc source generation.

restart_order:
1. 000_QUICK_FORECAST_CURRENT_STATUS.md
2. 900950_FINAL_DESIGN_JUDGMENT_NOTE.md
3. 900970_CLOSE_RECOMMENDATION_NOTE.md
4. 900990_DESIGN_CLOSURE_DECLARATION.md
5. 130420_DEVELOPMENT_RESTART_ENTRY_PLAN.md
6. 130390_PHASE1_GENERATION_TARGET_FILE_LIST_PLAN.md
7. 130400_PHASE1_ACCEPTANCE_CRITERIA_PLAN.md

restart_rule:
Do not reopen product meaning casually.
Only implementation should restart,
unless an explicit reopen decision is made.

implementation_entry_scope:
- implementation preparation
- implementation execution
- test and validation planning
- additive clarifications only

reopen_required_scope:
- identity changes
- pricing changes
- ERP boundary changes
- multilingual meaning changes
- multicurrency meaning changes
- multi-device flow meaning changes

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/901000_NEXT_PHASE_ENTRY_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/meta_INDEX.md -->
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
- 900350_FINAL_POLISH_NOTE.md
- 900360_OVERVIEW_ROLE_CLARIFICATION_NOTE.md
- 900370_DESIGN_ONLY_BOUNDARY_NOTE.md
- 900380_FINAL_REVIEW_CHECKLIST.md
- 900390_FINAL_POLISH_SCRIPT.sh
- 900400_QUICK_FORECAST_HANDOVER_NOTE.md
- 900410_WORDING_CANONICAL_RULE.md
- 900420_STYLE_CANONICAL_RULE.md
- 900430_AMBIGUITY_AND_DUPLICATION_REVIEW_NOTE.md
- 900440_FINAL_POLISH_REVIEW_CHECKLIST.md
- 900450_POLISH_EXECUTION_NOTE.md
- 900460_SHORT_HANDOVER_SOURCE_NOTE.md
- 900470_WORDING_POLISH_EXECUTION_NOTE.md
- 900480_CROSS_APPLICATION_WORDING_ALIGNMENT_NOTE.md
- 900490_APPLICATION_POSITIONING_ALIGNMENT_RULE.md
- 900500_TIER_ALIGNMENT_RULE.md
- 900510_DESIGN_MATURITY_ALIGNMENT_RULE.md
- 900520_CROSS_APPLICATION_REVIEW_CHECKLIST.md
- 900530_CANONICAL_PHRASE_LIBRARY.md
- 900540_QUICK_FORECAST_CLOSE_NOTE.md
- 900550_QUICK_FORECAST_FINAL_VERIFY_REPORT.md
- 900560_QUICK_FORECAST_CLOSURE_STARTER_PACK.md
- 900570_QUICK_FORECAST_FINAL_MANIFEST.md
- 900580_QUICK_FORECAST_CLOSURE_DECLARATION.md
- 900590_PARENT_CANONICAL_ALIGNMENT_NOTE.md
- 900600_QUICK_FORECAST_COMMON_COMPONENT_ADOPTION_REGISTRY.md
- 900610_COMMON_COMPONENT_LEDGER_SYNC_NOTE.md
- 900620_QUICK_FORECAST_PRICING_DESIGN_NOTE.md
- 900630_FEATURE_EXPANSION_DESIGN_NOTE.md
- 900640_EXPANDED_SCREEN_INVENTORY_NOTE.md
- 900650_SCREEN_ADDITION_DECISION_NOTE.md
- 900660_VM_REDUCER_REPOSITORY_REFRESH_NOTE.md
- 900670_ANDROID_PRIORITY_REFRESH_NOTE.md
- 900680_IMPLEMENTATION_RESTART_ENTRY_NOTE.md
- 900690_IMPLEMENTATION_START_CHECKLIST.md
- 900700_MULTILINGUAL_DESIGN_NOTE.md
- 900710_MULTICURRENCY_DESIGN_NOTE.md
- 900720_ANDROID_MINIMUM_FILESET_BUNDLE_NOTE.md
- 900730_DEVELOPMENT_130_COMPLETION_NOTE.md
- 900740_ANDROID_PHASE1_FILE_GENERATION_NOTE.md
- 900750_MULTI_DEVICE_SUPPORT_NOTE.md
- 900760_ANDROID_TEMPLATE_STARTER_NOTE.md
- 900770_DESIGN_HARDENING_NOTE.md
- 900780_PRICING_POSITIONING_BOUNDARY_NOTE.md
- 900790_CROSS_APPLICATION_OVERLAP_NOTE.md
- 900800_FINAL_REVIEW_HARDENING_CHECKLIST.md
- 900810_CLOSE_DECISION_GATE_NOTE.md
- 900820_REVIEWER_FOCUS_NOTE.md
- 900830_PRE_CLOSE_TOTAL_INSPECTION_CHECKLIST.md
- 900840_INDEX_AND_REBUILT_ALIGNMENT_NOTE.md
- 900850_SEMANTIC_DRIFT_FINAL_NOTE.md
- 900860_PRE_CLOSE_DECISION_SUMMARY_TEMPLATE.md
- 900870_CLOSE_DECISION_SUMMARY_NOTE.md
- 900880_REMAINING_RISK_DECISION_NOTE.md
- 900890_HANDOFF_READY_DECISION_NOTE.md
- 900900_CLOSE_RECOMMENDATION_TEMPLATE.md
- 900910_DESIGN_COMPLETION_CANDIDATE_NOTE.md
- 900920_DESIGN_COMPLETE_VS_IMPLEMENTATION_LATER_NOTE.md
- 900930_HANDOFF_CLOSE_IMPLEMENTATION_RELATION_NOTE.md
- 900940_FINAL_DESIGN_JUDGMENT_TEMPLATE.md
- 900950_FINAL_DESIGN_JUDGMENT_NOTE.md
- 900960_BLOCKER_STATUS_NOTE.md
- 900970_CLOSE_RECOMMENDATION_NOTE.md
- 900980_POST_CLOSE_HANDLING_NOTE.md
- 900990_DESIGN_CLOSURE_DECLARATION.md
- 901000_NEXT_PHASE_ENTRY_NOTE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/meta_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/meta_OVERVIEW.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/900.meta/meta_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/9999_QUICK_FORECAST_DESIGN_COMPLETION_REPORT.md -->
# ============================================================
# QUICK FORECAST DESIGN COMPLETION REPORT
# ============================================================

status: canonical
layer: application
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Records formal design completion for QuickForecast.

final_conclusion:
QuickForecast is design-complete.

completion_meaning:
The application now has a complete and coherent design set across:
- identity
- scope
- layer structure
- screen responsibility
- implementation boundary meaning
- pricing and positioning
- multilingual support
- multicurrency support
- multi-device support
- cross-application boundary
- review / handoff / close judgment

completion_non_meaning:
This does not mean:
- implementation has started
- implementation has completed
- runtime has been verified
- build has been verified

formal_status:
- design_complete: yes
- handoff_ready: yes
- close_ready: yes
- implementation_started: no
- implementation_deferred: yes

result:
QuickForecast should now be treated as
a completed design artifact set
ready for later implementation restart.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/QuickForecast/9999_QUICK_FORECAST_DESIGN_COMPLETION_REPORT.md -->
