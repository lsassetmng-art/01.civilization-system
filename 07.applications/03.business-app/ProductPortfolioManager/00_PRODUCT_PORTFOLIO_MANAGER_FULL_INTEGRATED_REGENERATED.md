
<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER INDEX
# ============================================================

status: canonical
system: applications
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

root_documents:
- 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
- 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
- 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md

layer_map:
- 010.constitution
- 020.architecture
- 030.model
- 040.runtime
- 050.flow
- 060.integration
- 070.operations
- 080.policy
- 100.security
- 110.infrastructure
- 120.implementation
- 130.development
- 900.meta

layer_entry_points:
  010.constitution:
    - 0100000_PRODUCT_PORTFOLIO_MANAGER_CONSTITUTION_OVERVIEW.md
    - 0100001_PRODUCT_PORTFOLIO_MANAGER_CONSTITUTION.md
    - 0100002_PRODUCT_PORTFOLIO_MANAGER_BOUNDARY_CONSTITUTION.md
    - 0100003_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_AND_LIFECYCLE_CONSTITUTION.md
    - 0100004_PRODUCT_PORTFOLIO_MANAGER_PROPOSAL_CONSTITUTION.md
    - 0100005_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_CONSTITUTION.md
    - 0100006_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_CONSTITUTION.md

  020.architecture:
    - 0200000_PRODUCT_PORTFOLIO_MANAGER_ARCHITECTURE_OVERVIEW.md
    - 0200001_PRODUCT_PORTFOLIO_MANAGER_ARCHITECTURE.md
    - 0200002_PRODUCT_PORTFOLIO_MANAGER_COMPETITIVE_POSITION_ARCHITECTURE.md
    - 0200003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_ARCHITECTURE.md
    - 0200004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_ARCHITECTURE.md
    - 0200005_PRODUCT_PORTFOLIO_MANAGER_SCREEN_ARCHITECTURE.md
    - 0200006_PRODUCT_PORTFOLIO_MANAGER_KPI_AND_SCORING_ARCHITECTURE.md
    - 0200007_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_AND_LIFECYCLE_ARCHITECTURE.md
    - 0200008_PRODUCT_PORTFOLIO_MANAGER_REVIEW_SESSION_ARCHITECTURE.md
    - 0200009_PRODUCT_PORTFOLIO_MANAGER_PROPOSAL_ARCHITECTURE.md
    - 0200010_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_ARCHITECTURE_FORMAL_DESIGN.md
    - 0200011_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_ARCHITECTURE_FORMAL_DESIGN.md
    - 0200012_PRODUCT_PORTFOLIO_MANAGER_DASHBOARD_LIST_COMPARISON_ARCHITECTURE.md
    - 0200013_PRODUCT_PORTFOLIO_MANAGER_PRODUCT_DETAIL_AND_SCORE_DETAIL_ARCHITECTURE.md
    - 0200014_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_CHANGE_AND_PROPOSAL_DETAIL_ARCHITECTURE.md
    - 0200015_PRODUCT_PORTFOLIO_MANAGER_APPROVAL_ALERT_AUDIT_LIST_ARCHITECTURE.md
    - 0200016_PRODUCT_PORTFOLIO_MANAGER_SETTINGS_LOCALE_CURRENCY_PRESET_ARCHITECTURE.md

  030.model:
    - 0300000_PRODUCT_PORTFOLIO_MANAGER_MODEL_OVERVIEW.md
    - 0300001_PRODUCT_PORTFOLIO_ITEM_MODEL.md
    - 0300002_PRODUCT_METRIC_SNAPSHOT_MODEL.md
    - 0300003_PRODUCT_SCORE_MODEL.md
    - 0300004_PRODUCT_CLASSIFICATION_MODELS.md
    - 0300005_PRODUCT_PROPOSAL_MODELS.md
    - 0300006_PRODUCT_REVIEW_APPROVAL_AUDIT_MODELS.md
    - 0300007_PRODUCT_PORTFOLIO_MANAGER_EXACT_TABLES_AND_ENUMS.md
    - 0300008_PRODUCT_PORTFOLIO_MANAGER_ENTITY_RELATION_MATRIX.md
    - 0300009_PRODUCT_PORTFOLIO_MANAGER_MODEL_TO_API_MAPPING.md
    - 0300010_PRODUCT_PORTFOLIO_MANAGER_KPI_AND_SCORE_MODEL_FORMAL_DESIGN.md
    - 0300011_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_AND_LIFECYCLE_MODEL_FORMAL_DESIGN.md
    - 0300012_PRODUCT_PORTFOLIO_MANAGER_SETTINGS_LOCALE_CURRENCY_PRESET_MODEL_FORMAL_DESIGN.md

  040.runtime:
    - 0400000_PRODUCT_PORTFOLIO_MANAGER_RUNTIME_OVERVIEW.md
    - 0400001_SCORE_RUNTIME.md
    - 0400002_CLASSIFICATION_RUNTIME.md
    - 0400003_REVIEW_AND_APPROVAL_RUNTIME.md

  050.flow:
    - 0500000_PRODUCT_PORTFOLIO_MANAGER_FLOW_OVERVIEW.md
    - 0500001_PORTFOLIO_LIST_AND_DETAIL_FLOW.md
    - 0500002_SCORE_AND_CLASSIFICATION_FLOW.md
    - 0500003_PROPOSAL_FLOW.md
    - 0500004_REVIEW_SESSION_FLOW.md
    - 0500005_APPROVAL_FLOW.md
    - 0500006_PRODUCT_PORTFOLIO_MANAGER_EXACT_FLOW_PAYLOADS.md
    - 0500007_PRODUCT_PORTFOLIO_MANAGER_BUSINESS_FLOW_FORMAL_DESIGN.md
    - 0500008_PRODUCT_PORTFOLIO_MANAGER_REVIEW_SESSION_FORMAL_FLOW.md
    - 0500009_PRODUCT_PORTFOLIO_MANAGER_PROPOSAL_FORMAL_FLOW.md
    - 0500010_PRODUCT_PORTFOLIO_MANAGER_DASHBOARD_LIST_COMPARISON_FORMAL_FLOW.md
    - 0500011_PRODUCT_PORTFOLIO_MANAGER_PRODUCT_DETAIL_AND_SCORE_DETAIL_FORMAL_FLOW.md
    - 0500012_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_CHANGE_AND_PROPOSAL_DETAIL_FORMAL_FLOW.md
    - 0500013_PRODUCT_PORTFOLIO_MANAGER_APPROVAL_ALERT_AUDIT_LIST_FORMAL_FLOW.md

  060.integration:
    - 0600000_PRODUCT_PORTFOLIO_MANAGER_INTEGRATION_OVERVIEW.md
    - 0600001_ERP_REFERENCE_INTEGRATION.md
    - 0600002_FORECAST_REFERENCE_INTEGRATION.md
    - 0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
    - 0600004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md

  070.operations:
    - 0700000_PRODUCT_PORTFOLIO_MANAGER_OPERATIONS_OVERVIEW.md
    - 0700001_REVIEW_AND_REFRESH_OPERATIONS.md
    - 0700002_PRODUCT_PORTFOLIO_MANAGER_ALERT_AND_NOTIFICATION_OPERATIONS.md
    - 0700003_PRODUCT_PORTFOLIO_MANAGER_AUDIT_AND_HISTORY_OPERATIONS.md
    - 0700004_PRODUCT_PORTFOLIO_MANAGER_REVIEW_SESSION_OPERATIONS.md

  080.policy:
    - 0800000_PRODUCT_PORTFOLIO_MANAGER_POLICY_OVERVIEW.md
    - 0800001_CLASSIFICATION_AND_APPROVAL_POLICY.md
    - 0800002_LOCALIZATION_CURRENCY_AND_SOURCE_POLICY.md
    - 0800003_PRODUCT_PORTFOLIO_MANAGER_ROLE_AND_APPROVAL_POLICY.md
    - 0800004_PRODUCT_PORTFOLIO_MANAGER_ALERT_AND_NOTIFICATION_POLICY.md
    - 0800005_PRODUCT_PORTFOLIO_MANAGER_SHARE_SCOPE_POLICY.md
    - 0800006_PRODUCT_PORTFOLIO_MANAGER_AUDIT_AND_HISTORY_POLICY.md
    - 0800007_PRODUCT_PORTFOLIO_MANAGER_KPI_AND_SCORING_POLICY.md
    - 0800008_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_AND_LIFECYCLE_POLICY.md
    - 0800009_PRODUCT_PORTFOLIO_MANAGER_REVIEW_SESSION_POLICY.md
    - 0800010_PRODUCT_PORTFOLIO_MANAGER_PROPOSAL_POLICY.md
    - 0800011_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_POLICY.md
    - 0800012_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_POLICY.md
    - 0800013_PRODUCT_PORTFOLIO_MANAGER_SETTINGS_LOCALE_CURRENCY_PRESET_POLICY.md

  100.security:
    - 1000000_PRODUCT_PORTFOLIO_MANAGER_SECURITY_OVERVIEW.md
    - 1000001_ACCESS_AND_AUDIT_SECURITY.md
    - 1000002_PRODUCT_PORTFOLIO_MANAGER_AUTHORIZATION_FORMAL_DESIGN.md
    - 1000003_PRODUCT_PORTFOLIO_MANAGER_SHARE_SCOPE_SECURITY.md
    - 1000004_PRODUCT_PORTFOLIO_MANAGER_AUDIT_HISTORY_SECURITY.md

  110.infrastructure:
    - 1100000_PRODUCT_PORTFOLIO_MANAGER_INFRASTRUCTURE_OVERVIEW.md

  120.implementation:
    - 1200000_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_OVERVIEW.md
    - 1200001_FUNCTIONAL_REQUIREMENTS.md
    - 1200002_SCREEN_REQUIREMENTS.md
    - 1200003_DATA_MODEL_REQUIREMENTS.md
    - 1200004_PRODUCT_PORTFOLIO_MANAGER_API_CONTRACT_EXACT.md
    - 1200005_PRODUCT_PORTFOLIO_MANAGER_SCREEN_TO_API_MAPPING.md
    - 1200006_PRODUCT_PORTFOLIO_MANAGER_ALERT_AND_NOTIFICATION_REQUIREMENTS.md
    - 1200007_PRODUCT_PORTFOLIO_MANAGER_SHARE_SCOPE_REQUIREMENTS.md
    - 1200008_PRODUCT_PORTFOLIO_MANAGER_AUDIT_AND_HISTORY_REQUIREMENTS.md
    - 1200009_PRODUCT_PORTFOLIO_MANAGER_KPI_AND_SCORING_REQUIREMENTS.md
    - 1200010_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_AND_LIFECYCLE_REQUIREMENTS.md
    - 1200011_PRODUCT_PORTFOLIO_MANAGER_REVIEW_SESSION_REQUIREMENTS.md
    - 1200012_PRODUCT_PORTFOLIO_MANAGER_PROPOSAL_REQUIREMENTS.md
    - 1200013_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_REQUIREMENTS.md
    - 1200014_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_REQUIREMENTS.md
    - 1200015_PRODUCT_PORTFOLIO_MANAGER_DASHBOARD_LIST_COMPARISON_REQUIREMENTS.md
    - 1200016_PRODUCT_PORTFOLIO_MANAGER_PRODUCT_DETAIL_AND_SCORE_DETAIL_REQUIREMENTS.md
    - 1200017_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_CHANGE_AND_PROPOSAL_DETAIL_REQUIREMENTS.md
    - 1200018_PRODUCT_PORTFOLIO_MANAGER_APPROVAL_ALERT_AUDIT_LIST_REQUIREMENTS.md
    - 1200019_PRODUCT_PORTFOLIO_MANAGER_SETTINGS_LOCALE_CURRENCY_PRESET_REQUIREMENTS.md

  130.development:
    - 1300000_PRODUCT_PORTFOLIO_MANAGER_DEVELOPMENT_OVERVIEW.md
    - 1300001_PHASE_PLAN.md
    - 1300002_DEVELOPMENT_GUARDRAILS.md

  900.meta:
    - 9000000_PRODUCT_PORTFOLIO_MANAGER_META_OVERVIEW.md
    - 9000001_PRODUCT_PORTFOLIO_MANAGER_DESIGN_PROGRESS_NOTE.md

design_status_summary:
- application definition fixed
- competitive positioning fixed
- functional requirements fixed
- screen requirements fixed
- data model fixed
- exact payloads fixed
- exact table and enum contracts fixed
- governance/policy/security design expanded
- implementation not started

- 010.constitution/011110_PRODUCTPORTFOLIOMANAGER_COMPETITIVE_POSITIONING_NOTE.md

- 020.architecture/021120_PRODUCTPORTFOLIOMANAGER_PORTFOLIO_SIGNAL_AGGREGATION_ARCHITECTURE.md

- 020.architecture/021130_PRODUCTPORTFOLIOMANAGER_PRIORITIZATION_SCENARIO_EXCEPTION_ARCHITECTURE.md

- 030.model/030510_PRODUCTPORTFOLIOMANAGER_PORTFOLIO_CONTROL_TIMELINE_MODEL.md

- 060.integration/060290_PRODUCTPORTFOLIOMANAGER_PORTFOLIO_COCKPIT_PAYLOAD.md

- 060.integration/060300_PRODUCTPORTFOLIOMANAGER_SCENARIO_EXCEPTION_REVIEW_PAYLOAD.md

- 090.interface/090330_PRODUCTPORTFOLIOMANAGER_PORTFOLIO_COCKPIT_INTERFACE.md

- 120.implementation/120300_PRODUCTPORTFOLIOMANAGER_PORTFOLIO_CONTROL_IMPLEMENTATION_GUIDE.md

- 900.meta/900410_PRODUCTPORTFOLIOMANAGER_20260416_DIFF_AUDIT_NOTE.md

- 020.architecture/021140_PRODUCTPORTFOLIOMANAGER_PHASE_A_PORTFOLIO_TIMELINE_DDL_ADDITIVE_PLAN.md

- 060.integration/060320_PRODUCTPORTFOLIOMANAGER_PHASE_A_API_STARTER.md

- 060.integration/060330_PRODUCTPORTFOLIOMANAGER_PHASE_A_API_DTO_FIELD_FREEZE.md

- 120.implementation/120310_PRODUCTPORTFOLIOMANAGER_PHASE_A_PORTFOLIO_TIMELINE_IMPLEMENTATION_SKELETON.md

- 120.implementation/120320_PRODUCTPORTFOLIOMANAGER_PHASE_A_STUB_FILE_PLAN.md

- 120.implementation/120330_PRODUCTPORTFOLIOMANAGER_PHASE_A_MODULE_TASK_BREAKDOWN.md

- 120.implementation/120340_PRODUCTPORTFOLIOMANAGER_PHASE_A_EXACT_STUB_CONTENT_ORDER_PLAN.md

- 120.implementation/120350_PRODUCTPORTFOLIOMANAGER_PHASE_A_SLICE_COMMAND_PACKS.md

- 120.implementation/120360_PRODUCTPORTFOLIOMANAGER_PHASE_A_SLICE_FIELD_FILL_PLAN.md

- 120.implementation/120370_PRODUCTPORTFOLIOMANAGER_PHASE_A_IMPLEMENTATION_READY_COMPLETION_MEMO.md

- 120.implementation/120380_PRODUCTPORTFOLIOMANAGER_PHASE_A_EXECUTION_ENTRY_PROTOCOL.md

- 900.meta/900420_PRODUCTPORTFOLIOMANAGER_20260416_BUNDLE02_PHASE_A_AUDIT_NOTE.md

- 900.meta/900430_PRODUCTPORTFOLIOMANAGER_20260416_BUNDLE03_STUB_AUDIT_NOTE.md

- 900.meta/900440_PRODUCTPORTFOLIOMANAGER_20260416_BUNDLE04_CLOSEOUT_AUDIT_NOTE.md

- 900.meta/900450_PRODUCTPORTFOLIOMANAGER_NEXT_APP_TRANSITION_HANDOFF.md

- 900.meta/900460_PRODUCTPORTFOLIOMANAGER_REUSABLE_PHASEA_REINFORCEMENT_RECIPE.md

- 900.meta/900470_PRODUCTPORTFOLIOMANAGER_PLANNING_STOP_RULE_NOTE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER OVERVIEW
# ============================================================

status: canonical
system: applications
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
ProductPortfolioManager is a lightweight product strategy judgment application.
It helps organizations evaluate products,
classify strategic importance,
prepare actions,
conduct reviews,
handle approvals,
and preserve decision history.

core_definition:
This application is not a mere product master UI.
This application is not ERP itself.
This application is not a heavy merchandise planning platform.
This application is a product portfolio decision front.

global_requirements:
- multilingual support is mandatory
- multi-currency support is mandatory
- iphone support is mandatory
- android support is mandatory
- pc support is mandatory
- tablet support is mandatory

positioning_against_market:
- lighter than heavy merchandise planning platforms
- deeper in strategy judgment than PIM/PXM-centric tools
- review- and approval-friendly for practical business use
- suited for subscription-style application delivery

core_capabilities:
- product portfolio visibility
- KPI and score-based evaluation
- strategic classification
- product action proposals
- review session management
- approval-oriented decision handling
- alert and notification handling
- audit and history visibility
- ERP reference usage
- forecast reference usage
- multilingual / multi-currency display control
- saved view presets and operator-facing settings

source_of_truth_boundary:
ERP owns:
- product master identity
- formal sales truth
- formal cost truth
- formal inventory truth
- formal accounting truth

ProductPortfolioManager owns:
- portfolio scope
- metric snapshots for judgment reproducibility
- scoring
- classification
- proposals
- reviews
- approvals
- alerts
- audit/history
- share scope
- operator presentation preferences

current_design_focus:
- architecture-first
- additive-only
- no implementation yet
- explicit business meaning and governance separation

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER INTEGRATED
# ============================================================

status: canonical
system: applications
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

integrated_entry_point_purpose:
This file is the canonical top-level navigation entry
for the ProductPortfolioManager design set.

design_identity:
ProductPortfolioManager is a lightweight product strategy judgment application.
It sits on top of ERP facts,
uses forecast as advisory reference,
and governs portfolio-scoped artifacts such as
scores, classifications, proposals, reviews, approvals, alerts, and audit history.

global_requirements:
- multilingual support
- multi-currency support
- iphone support
- android support
- pc support
- tablet support

core_judgment_loop:
- onboarding
- fact reference
- evaluation refresh
- classification review
- proposal
- review
- approval
- audit preservation

layer_summary:

  010.constitution:
    role:
      Defines meaning boundaries, including classification, lifecycle, proposal, ERP boundary, and forecast boundary.

  020.architecture:
    role:
      Defines major surfaces and domain structure, including dashboard, list, comparison, detail, review, proposal, KPI/scoring, and boundaries.

  030.model:
    role:
      Defines portfolio entities, exact tables/enums, relation semantics, API mapping, and preset/settings semantics.

  040.runtime:
    role:
      Defines runtime behavior for score refresh, classification state handling, and review/approval progression.

  050.flow:
    role:
      Defines business flow, exact payload flow, and formal operator flows across major surfaces.

  060.integration:
    role:
      Defines ERP and forecast reference integration boundaries and source-attributed data handling.

  070.operations:
    role:
      Defines cadence, alert/notification handling, review operations, audit/history operations, freshness-by-surface, and recipient-resolution operations.

  080.policy:
    role:
      Defines interpretation rules across classification, approval, localization, currency, share, audit, scoring, lifecycle, proposal, ERP, forecast, presets, freshness, and notification recipients.

  100.security:
    role:
      Defines access, authorization, share security, audit-history security, and notification-recipient security.

  110.infrastructure:
    role:
      Defines infrastructure shape for persistence, gateways, and draft/sync support.

  120.implementation:
    role:
      Defines non-code implementation requirements, API contracts, screen/API mappings, screen-level requirements, freshness rules, and recipient-resolution requirements.

  130.development:
    role:
      Defines phase plan and development guardrails.

  900.meta:
    role:
      Defines progress tracking, restart support, wide-index reflection, compression guidance, copy blocks, closure note, handoff bundle, reflection planning, patch proposals, draft review assets, implementation-preparation notes, implementation phase opening notes, and phase 1 start-order assets.

top_priority_documents:
- 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
- 050.flow/0500006_PRODUCT_PORTFOLIO_MANAGER_EXACT_FLOW_PAYLOADS.md
- 030.model/0300007_PRODUCT_PORTFOLIO_MANAGER_EXACT_TABLES_AND_ENUMS.md
- 120.implementation/1200004_PRODUCT_PORTFOLIO_MANAGER_API_CONTRACT_EXACT.md
- 120.implementation/1200005_PRODUCT_PORTFOLIO_MANAGER_SCREEN_TO_API_MAPPING.md
- 100.security/1000002_PRODUCT_PORTFOLIO_MANAGER_AUTHORIZATION_FORMAL_DESIGN.md
- 060.integration/0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
- 060.integration/0600004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
- 900.meta/phase1-entry-pack/9000068_PRODUCT_PORTFOLIO_MANAGER_PHASE1_IMPLEMENTATION_ENTRY_PACK.md
- 900.meta/phase1-entry-pack/9000073_PRODUCT_PORTFOLIO_MANAGER_PHASE1_START_ORDER_NOTE.md
- 900.meta/phase1-entry-pack/9000075_PRODUCT_PORTFOLIO_MANAGER_PHASE1_READY_TO_CODE_NOTE.md

current_closure_note:
The design set is broad across constitution, architecture, model, flow,
integration, operations, policy, security, and implementation requirements.
Phase 1 start order is now fixed.
Actual coding remains a later explicit step.

next_natural_topics:
- explicit Phase 1 coding start
- or stop here until coding phase opens

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/010.constitution/0100000_PRODUCT_PORTFOLIO_MANAGER_CONSTITUTION_INDEX.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER CONSTITUTION INDEX
# ============================================================

files:

- 011110_PRODUCTPORTFOLIOMANAGER_COMPETITIVE_POSITIONING_NOTE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/010.constitution/0100000_PRODUCT_PORTFOLIO_MANAGER_CONSTITUTION_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/010.constitution/0100000_PRODUCT_PORTFOLIO_MANAGER_CONSTITUTION_OVERVIEW.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER CONSTITUTION OVERVIEW
# ============================================================

status: canonical
layer: constitution
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

constitutional_role:
ProductPortfolioManager exists to support explainable,
reviewable, and auditable product portfolio decisions.

mandatory_requirements:
- multilingual support
- multi-currency support
- iphone support
- android support
- pc support
- tablet support

constitutional_principles:
- ERP truth must remain protected
- strategy classification must be reviewable
- proposal and approval must remain separable
- forecast values are advisory
- decision history must be auditable
- cross-device business meaning must remain equivalent

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/010.constitution/0100000_PRODUCT_PORTFOLIO_MANAGER_CONSTITUTION_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/010.constitution/0100001_PRODUCT_PORTFOLIO_MANAGER_CONSTITUTION.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER CONSTITUTION
# ============================================================

status: canonical
layer: constitution
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

mission:
Provide a practical application layer
for product portfolio evaluation, classification,
proposal management, review support, and approval traceability.

in_scope:
- product portfolio visibility
- score-based evaluation
- strategic product classification
- action proposal support
- review meeting support
- approval-oriented workflow
- history and audit support

out_of_scope:
- replacing ERP product master
- replacing ERP accounting or inventory logic
- acting as a full merchandise planning platform
- acting as a full PIM/PXM platform
- silently mutating ERP truth

constitutional_rules:
1. ERP remains the source of truth for formal product, sales, cost, and inventory facts.
2. Portfolio classifications are strategy labels, not ERP master categories.
3. A suggested classification is not a final classification.
4. Proposals must not auto-apply without explicit approval where policy requires it.
5. Important decisions must remain attributable to actors and times.
6. Multi-language and multi-currency readiness are first-class requirements.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/010.constitution/0100001_PRODUCT_PORTFOLIO_MANAGER_CONSTITUTION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/010.constitution/0100002_PRODUCT_PORTFOLIO_MANAGER_BOUNDARY_CONSTITUTION.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER BOUNDARY CONSTITUTION
# ============================================================

status: canonical
layer: constitution
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

boundary_summary:
ProductPortfolioManager uses ERP facts and forecast references
to support business-side portfolio judgment.

erp_side_authority:
- product master identity
- formal sales values
- formal cost values
- formal inventory values
- formal accounting meaning

application_side_authority:
- product scores
- strategic classifications
- product action proposals
- review decisions
- approval history
- comments and notes
- alerts and audit records

integration_rule:
ERP-affecting actions must traverse an explicit controlled route.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/010.constitution/0100002_PRODUCT_PORTFOLIO_MANAGER_BOUNDARY_CONSTITUTION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/010.constitution/0100003_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_AND_LIFECYCLE_CONSTITUTION.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER CLASSIFICATION AND LIFECYCLE CONSTITUTION
# ============================================================

status: canonical
layer: constitution
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the constitutional meaning of classification and lifecycle
inside ProductPortfolioManager.

constitutional_principles:
- lifecycle and classification are not the same thing
- lifecycle expresses product-phase meaning
- classification expresses strategy judgment meaning
- ERP category and portfolio classification are not the same thing
- classification must remain reviewable and explainable
- lifecycle may influence judgment but must not silently decide strategy
- draft classification and approved classification must remain distinct

# ============================================================
# 1. LIFECYCLE MEANING
# ============================================================

lifecycle_meaning:
Lifecycle expresses where a product stands in its business life,
such as launch, growth, mature, decline, or retired.

lifecycle_is_not:
- not a proposal
- not a final strategy decision
- not identical to sales strength
- not identical to classification

# ============================================================
# 2. CLASSIFICATION MEANING
# ============================================================

classification_meaning:
Classification expresses the strategic portfolio position
assigned to a product by the application and its governance flow.

classification_examples:
- focus
- growth
- profit_core
- maintain
- improve
- risk_watch
- retire_candidate
- seasonal
- test

classification_is_not:
- not an ERP master category
- not a hidden automation result
- not automatically implied by lifecycle alone

# ============================================================
# 3. RELATION BETWEEN LIFECYCLE AND CLASSIFICATION
# ============================================================

relationship_principles:
- lifecycle may inform classification
- classification may differ across products with the same lifecycle
- a launch product is not automatically focus
- a mature product is not automatically maintain
- a decline product is not automatically retire_candidate
- strategy judgment must remain explicit

# ============================================================
# 4. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must treat lifecycle and classification
as distinct but related meanings,
with lifecycle describing product phase
and classification describing portfolio judgment.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/010.constitution/0100003_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_AND_LIFECYCLE_CONSTITUTION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/010.constitution/0100004_PRODUCT_PORTFOLIO_MANAGER_PROPOSAL_CONSTITUTION.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER PROPOSAL CONSTITUTION
# ============================================================

status: canonical
layer: constitution
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the constitutional meaning of proposals
inside ProductPortfolioManager.

constitutional_principles:
- proposal is an explicit business action candidate
- proposal is different from classification
- proposal is different from approval
- proposal is different from ERP execution truth
- proposal must remain explainable, reviewable, and traceable
- proposal lifecycle must preserve draft and final separation

proposal_meaning:
A proposal expresses a candidate business action
for a product portfolio target.

proposal_examples:
- increase_price
- decrease_price
- strengthen_promotion
- revise_channel
- reduce_inventory
- revise_sourcing
- maintain
- shrink
- retire

proposal_is_not:
- not the same as product lifecycle
- not the same as product classification
- not an automatic final decision
- not direct proof that ERP-side execution happened

formal_conclusion:
ProductPortfolioManager must treat proposals
as governed action candidates,
not as silent automation outputs or hidden execution commands.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/010.constitution/0100004_PRODUCT_PORTFOLIO_MANAGER_PROPOSAL_CONSTITUTION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/010.constitution/0100005_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_CONSTITUTION.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER ERP BOUNDARY CONSTITUTION
# ============================================================

status: canonical
layer: constitution
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the constitutional boundary between
ProductPortfolioManager and ERP.

constitutional_principles:
- ERP remains the formal source of truth for product operational facts
- ProductPortfolioManager remains the source of truth for portfolio judgment artifacts
- reference and mutation responsibilities must remain distinct
- convenience must not erase source ownership
- application judgment must not masquerade as ERP fact
- ERP-related side effects must remain explicit and governed

# ============================================================
# 1. ERP-SIDE AUTHORITY
# ============================================================

erp_side_authority:
- product master identity
- formal product code meaning
- formal sales truth
- formal cost truth
- formal gross profit basis truth
- formal inventory truth
- formal accounting truth
- other ERP-governed operational truth

# ============================================================
# 2. APPLICATION-SIDE AUTHORITY
# ============================================================

application_side_authority:
- product portfolio scope
- metric snapshot copies for judgment reproducibility
- KPI interpretation surfaces
- product scoring
- strategic classification
- proposals
- review sessions
- approval requests and decisions
- alerts
- audit and history surfaces
- share scope

# ============================================================
# 3. CONSTITUTIONAL BOUNDARY RULES
# ============================================================

boundary_rules:
- ERP truth may be referenced here, but not silently re-owned here
- application-side score does not become ERP truth
- application-side classification does not become ERP master category
- proposal approval does not automatically prove ERP execution
- review completion does not automatically mutate ERP state
- any ERP-affecting handoff must be explicit and policy-governed

# ============================================================
# 4. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must remain a judgment front over ERP facts,
not an ambiguous replacement for ERP authority.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/010.constitution/0100005_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_CONSTITUTION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/010.constitution/0100006_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_CONSTITUTION.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER FORECAST BOUNDARY CONSTITUTION
# ============================================================

status: canonical
layer: constitution
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the constitutional boundary between
ProductPortfolioManager and forecast-capable systems.

constitutional_principles:
- forecast remains advisory reference
- forecast is not formal ERP truth
- forecast is not final portfolio judgment
- forecast may inform review, scoring interpretation, alerting, and proposals
- forecast confidence and timing matter
- forecast reference must remain explicitly source-attributed

# ============================================================
# 1. FORECAST-SIDE AUTHORITY
# ============================================================

forecast_side_authority:
- forecast generation logic
- model identity or source identity where exposed
- forecast-period interpretation
- forecast confidence production
- forecast-produced quantity or sales expectations

# ============================================================
# 2. APPLICATION-SIDE AUTHORITY
# ============================================================

application_side_authority:
- forecast reference storage for judgment support
- forecast visibility in product detail and comparison
- forecast-informed alerting where policy allows
- forecast-informed score interpretation where policy allows
- proposal and review interpretation using forecast context
- audit/history of forecast-relevant application actions

# ============================================================
# 3. CONSTITUTIONAL BOUNDARY RULES
# ============================================================

boundary_rules:
- forecast reference does not become ERP truth
- forecast reference does not silently become final classification
- forecast reference does not silently approve a proposal
- weak-confidence forecast should not be treated as deterministic truth
- forecast-derived context must remain visibly advisory

# ============================================================
# 4. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must treat forecast systems
as advisory reference providers,
not as hidden final decision engines.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/010.constitution/0100006_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_CONSTITUTION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/010.constitution/011110_PRODUCTPORTFOLIOMANAGER_COMPETITIVE_POSITIONING_NOTE.md -->
# ============================================================
# PRODUCTPORTFOLIOMANAGER COMPETITIVE POSITIONING NOTE
# ============================================================

status: canonical
layer: constitution
system: applications
application: ProductPortfolioManager
directory: 010.constitution
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: competitive-positioning-note

purpose:
Clarifies the differentiator that should be made explicit in the
current ProductPortfolioManager design without rewriting its existing core.

positioning_summary:
- ProductPortfolioManager is not only a product list manager.
- Its durable value is portfolio control across prioritization,
  lifecycle balancing, investment visibility, scenario comparison,
  and management decision routing.
- The differentiator is not simple catalog maintenance, but portfolio-level
  control that keeps prioritization and portfolio risk visible.

preserved_core:
- portfolio and product planning identity
- existing business operation role
- existing management support direction
- existing platform direction
- existing separation of item detail and management summary

differentiator_to_make_explicit:
- portfolio lifecycle control
- prioritization visibility
- scenario comparison and investment attention routing
- exception and management review surfacing

competitive_contrast:
- not merely a product list
- not merely a roadmap board
- not merely a spreadsheet view
- positioned as a portfolio control layer that connects
  signal aggregation, prioritization review, scenario comparison,
  and management attention routing

non_goals_of_this_note:
- no full constitutional rewrite
- no implementation start
- no destructive scope replacement
- no framework decision

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/010.constitution/011110_PRODUCTPORTFOLIOMANAGER_COMPETITIVE_POSITIONING_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200000_PRODUCT_PORTFOLIO_MANAGER_ARCHITECTURE_INDEX.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER ARCHITECTURE INDEX
# ============================================================

files:

- 021120_PRODUCTPORTFOLIOMANAGER_PORTFOLIO_SIGNAL_AGGREGATION_ARCHITECTURE.md

- 021130_PRODUCTPORTFOLIOMANAGER_PRIORITIZATION_SCENARIO_EXCEPTION_ARCHITECTURE.md

- 021140_PRODUCTPORTFOLIOMANAGER_PHASE_A_PORTFOLIO_TIMELINE_DDL_ADDITIVE_PLAN.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200000_PRODUCT_PORTFOLIO_MANAGER_ARCHITECTURE_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200000_PRODUCT_PORTFOLIO_MANAGER_ARCHITECTURE_OVERVIEW.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER ARCHITECTURE OVERVIEW
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

architecture_summary:
The application is centered on portfolio items and organized around:
- portfolio visibility
- metric snapshots
- score generation
- classification workflows
- proposal workflows
- review workflows
- approval workflows
- audit visibility
- ERP and forecast references

cross_cutting_architecture_requirements:
- multilingual-ready resource model
- multi-currency-aware monetary model
- responsive and adaptive layouts for phone, tablet, and pc

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200000_PRODUCT_PORTFOLIO_MANAGER_ARCHITECTURE_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200001_PRODUCT_PORTFOLIO_MANAGER_ARCHITECTURE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

major_modules:
1. portfolio dashboard
2. portfolio list
3. product detail
4. score detail
5. classification management
6. proposal management
7. review meeting management
8. approval queue
9. alert visibility
10. audit visibility
11. ERP reference gateway
12. forecast reference gateway

module_responsibilities:
portfolio_dashboard:
- show portfolio health summary
- surface top priorities
- link quickly to problem and review targets

portfolio_list:
- support cross-product comparison
- support search, filter, sort, and presets
- enable quick navigation to detail and comparison

product_detail:
- unify facts, scores, classifications, proposals, comments, and alerts
- make source-of-truth context visible

classification_management:
- support suggested and approved classification states
- preserve before/after visibility
- separate draft from final

review_meeting_management:
- gather review targets
- support comparison and decisions
- preserve responsibility and due dates

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200001_PRODUCT_PORTFOLIO_MANAGER_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200002_PRODUCT_PORTFOLIO_MANAGER_COMPETITIVE_POSITION_ARCHITECTURE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER COMPETITIVE POSITION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

competitive_position:
The application is intentionally positioned between:
- heavy merchandise planning platforms
- product information / product experience management platforms

design_consequences:
- keep implementation lighter than enterprise planning suites
- focus on strategy judgment instead of full planning depth
- focus on decision support instead of content distribution depth
- preserve practical review and approval usability

differentiation_requirements:
- product judgment must be central
- ERP reference boundary must remain explicit
- review and approval usability must be first-class
- proposal and classification depth must exceed simple catalog tools

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200002_PRODUCT_PORTFOLIO_MANAGER_COMPETITIVE_POSITION_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200002_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_ARCHITECTURE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER ERP BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

erp_boundary_objective:
Protect authoritative ERP values while enabling BusinessOS-side portfolio analysis.

erp_reference_data:
- product master snapshot
- sales metrics
- margin-related metrics
- inventory indicators
- purchasing indicators where exposed
- category and brand context

allowed_patterns:
- read ERP values
- derive application-side scores
- prepare proposals for human review
- request approved downstream actions through controlled integration

forbidden_patterns:
- silent ERP overwrite
- uncontrolled master mutation
- approval bypass
- hidden correction of ERP truth inside the app

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200002_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_ARCHITECTURE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER ERP BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

erp_boundary_objective:
Allow BusinessOS-side judgment without eroding ERP authority.

read_reference_scope:
- product identity
- sales aggregates
- cost aggregates
- gross profit indicators
- inventory indicators
- lifecycle-related indicators where exposed

forbidden_patterns:
- silent overwrite of ERP truth
- hidden correction of ERP facts in local state
- implicit approval bypass
- ambiguous source ownership

allowed_patterns:
- read ERP values
- create metric snapshots for judgment reproducibility
- derive scores
- prepare proposals
- route downstream actions through approved paths

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200003_PRODUCT_PORTFOLIO_MANAGER_FORECAST_ARCHITECTURE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER FORECAST ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

forecast_role:
Forecasting is consumed as a reference capability.
The application does not require forecast generation to reside internally.

forecast_usage:
- demand trend reference
- expected sales reference
- seasonal pattern reference
- confidence-based management support

forecast_design_rule:
All forecast values must carry source metadata,
generation timestamp, and confidence semantics.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200003_PRODUCT_PORTFOLIO_MANAGER_FORECAST_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_ARCHITECTURE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER FORECAST ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

forecast_role:
Forecasting is consumed as a reference capability.
Forecast generation itself does not need to live inside this application.

forecast_usage:
- demand trend visibility
- expected sales visibility
- seasonality context
- forecast-versus-actual comparison
- advisory input into classification and proposal judgment

required_forecast_metadata:
- source
- generated_at
- period
- confidence
- scope

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200005_PRODUCT_PORTFOLIO_MANAGER_SCREEN_ARCHITECTURE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER SCREEN ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

screen_list:
- dashboard
- portfolio list
- product detail
- score detail
- classification change
- proposal list
- proposal detail
- review session list
- review session detail
- approval queue
- alert list
- filter detail
- comparison board
- settings
- share scope
- audit history

screen_architecture_rules:
- screens must support the full judgment loop:
  visibility -> comparison -> proposal -> review -> approval -> audit
- phone layouts may reduce simultaneous density but not business capability
- pc and tablet layouts should strengthen comparison and review efficiency

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200005_PRODUCT_PORTFOLIO_MANAGER_SCREEN_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200006_PRODUCT_PORTFOLIO_MANAGER_KPI_AND_SCORING_ARCHITECTURE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER KPI AND SCORING ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the architectural role of KPIs and scoring in ProductPortfolioManager.
KPI visibility and scoring are central to product judgment,
but they must remain explainable, versioned, and bounded by source context.

architecture_principles:
- KPI visibility and scoring are judgment-support architecture, not ERP truth replacement
- score generation must remain explainable
- score outputs must remain attributable to period and version
- KPI inputs and score outputs must remain distinguishable
- scoring should support comparison, classification, proposal, and review flows
- forecast references may inform scoring context but must remain advisory

# ============================================================
# 1. KPI ARCHITECTURAL ROLE
# ============================================================

kpi_architectural_role:
- provide product performance visibility
- support cross-product comparison
- support classification review
- support proposal prioritization
- support review-session comparison
- support management explanation

kpi_is_not:
- a replacement for formal ERP accounting truth
- a hidden automation engine for final business decisions
- a permission to skip review or approval

# ============================================================
# 2. KPI FAMILIES
# ============================================================

official_kpi_families:
- sales scale KPIs
- profitability KPIs
- growth KPIs
- inventory health KPIs
- forecast comparison KPIs
- strategic weighting KPIs
- review-operation KPIs

sales_scale_kpis:
- sales_amount
- sales_quantity
- previous_period_sales_amount
- previous_year_sales_amount

profitability_kpis:
- gross_profit_amount
- gross_profit_rate
- cost_amount

growth_kpis:
- growth_rate
- period_over_period_change
- year_over_year_change

inventory_health_kpis:
- inventory_quantity
- inventory_amount
- inventory-related risk indicators where available

forecast_comparison_kpis:
- forecast_quantity
- forecast_sales_amount
- forecast_gap indicators
- confidence_level context

strategic_weighting_kpis:
- strategic_score
- risk_score
- total_score
- priority rank support outputs

review_operation_kpis:
- review target counts
- proposal counts
- alert counts
- overdue counts

# ============================================================
# 3. SCORING ARCHITECTURAL ROLE
# ============================================================

scoring_architectural_role:
Scoring converts KPI and contextual judgment inputs
into explainable comparison outputs used by the application.

scoring_outputs:
- sales_score
- margin_score
- growth_score
- inventory_score
- risk_score
- strategic_score
- total_score

scoring_usage:
- list ranking
- product detail explanation
- classification suggestion support
- proposal prioritization support
- review-session comparison support

# ============================================================
# 4. SCORE INPUT LAYERS
# ============================================================

score_input_layers:
- fact input layer
- reference input layer
- policy/configuration layer
- version layer

fact_input_layer:
- product_metric_snapshot values
- ERP-derived product performance indicators

reference_input_layer:
- forecast references
- lifecycle context
- issue context where policy allows bounded use

policy_configuration_layer:
- score_version
- weighting profile
- threshold profile
- classification suggestion rules

version_layer:
- score_version must remain explicit
- score interpretation depends on version identity

# ============================================================
# 5. ARCHITECTURAL BOUNDARIES
# ============================================================

architectural_boundaries:
- raw ERP facts remain authoritative outside score ownership
- score outputs are application-owned judgment artifacts
- classification suggestions may use scores but are not identical to scores
- proposals may be informed by scores but are not identical to scores
- review decisions may use scores but must remain human-visible and attributable

# ============================================================
# 6. EXPLAINABILITY REQUIREMENTS
# ============================================================

explainability_requirements:
- score period must be visible
- score version must be visible
- score refresh timing must be visible
- component scores must be visible where policy requires
- score should not appear as unexplained magic output

# ============================================================
# 7. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
KPI and scoring architecture in ProductPortfolioManager
must support strong comparison and judgment usability
without blurring the boundary between source facts and application-owned evaluation.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200006_PRODUCT_PORTFOLIO_MANAGER_KPI_AND_SCORING_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200007_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_AND_LIFECYCLE_ARCHITECTURE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER CLASSIFICATION AND LIFECYCLE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines architectural structure for lifecycle handling
and strategic classification handling.

architecture_principles:
- lifecycle is contextual input
- classification is managed judgment output
- classification architecture must support suggestion, draft, approval, and final history
- lifecycle architecture must support visibility and comparison
- both meanings must remain usable in list, detail, review, and audit surfaces

# ============================================================
# 1. LIFECYCLE ARCHITECTURAL ROLE
# ============================================================

lifecycle_role:
- provide product-phase context
- support comparison across products
- contextualize score interpretation
- contextualize proposal relevance
- support review-session understanding

official_lifecycle_stages:
- unknown
- launch
- growth
- mature
- decline
- retired

# ============================================================
# 2. CLASSIFICATION ARCHITECTURAL ROLE
# ============================================================

classification_role:
- represent product strategy position
- support portfolio balancing
- support review and proposal prioritization
- support ranking and dashboard segmentation
- support audit and history explanation

official_classification_codes:
- focus
- growth
- profit_core
- maintain
- improve
- risk_watch
- retire_candidate
- seasonal
- test

# ============================================================
# 3. CLASSIFICATION LIFECYCLE STATES
# ============================================================

classification_management_states:
- draft
- submitted
- approved
- rejected
- withdrawn
- superseded

architectural_rule:
Management state of a classification draft
is different from business meaning of classification code itself.

# ============================================================
# 4. SCREEN USAGE ARCHITECTURE
# ============================================================

screen_usage:
portfolio_list:
- show lifecycle_stage
- show current_classification_code
- allow filtering by both

product_detail:
- explain lifecycle context
- explain current classification
- show classification history

review_session:
- compare products across lifecycle and classification combinations
- allow decisions based on both contexts

audit_history:
- preserve before/after classification meaning
- preserve lifecycle context where relevant to explanation

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Lifecycle is an input architecture.
Classification is a managed decision architecture.
Both must remain visible, comparable, and historically explainable.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200007_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_AND_LIFECYCLE_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200008_PRODUCT_PORTFOLIO_MANAGER_REVIEW_SESSION_ARCHITECTURE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER REVIEW SESSION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the architecture of review sessions in ProductPortfolioManager.
Review sessions are the structured forum where
products, scores, classifications, proposals, alerts,
and follow-up actions are compared and discussed.

architecture_principles:
- review session is a governed decision-support surface
- review session is not identical to final approval
- review session must support multi-product comparison
- review session must support attribution and follow-up ownership
- review session must preserve explicit connection to scores, proposals, and alerts
- review session must remain usable on phone, tablet, and pc with equivalent meaning

# ============================================================
# 1. ARCHITECTURAL ROLE
# ============================================================

review_session_role:
- gather targets into one governed discussion context
- support ranking and comparison across products
- support discussion, comments, and decision capture
- support assignment of owners and due dates
- create approval handoff when policy requires

review_session_is_not:
- not merely a note collection page
- not an automatic classifier
- not a hidden approval substitute
- not a freeform meeting artifact without structure

# ============================================================
# 2. CORE ARCHITECTURAL COMPONENTS
# ============================================================

core_components:
- review session header
- review target list
- product comparison area
- proposal comparison area
- alert context area
- discussion/comment area
- decision recording area
- follow-up assignment area
- approval handoff area

# ============================================================
# 3. TARGET GATHERING ARCHITECTURE
# ============================================================

target_gathering_architecture:
Review sessions may gather targets from:
- manual selection
- saved filters
- alert-driven selection
- score-driven selection
- proposal-driven selection
- scheduled review scope selection

architectural_rule:
Target gathering criteria must remain explainable.
A review session should not appear to include products arbitrarily.

# ============================================================
# 4. DECISION ARCHITECTURE
# ============================================================

decision_architecture:
Review decisions may include:
- classification_change
- proposal_adopted
- proposal_rejected
- hold
- recheck
- assign_action

decision_architecture_rules:
- review decision must keep before/after context where relevant
- decision note should remain attributable
- follow-up owner and due date should be first-class where needed
- decision may require later approval depending on policy

# ============================================================
# 5. STATE ARCHITECTURE
# ============================================================

review_session_states:
- draft
- scheduled
- in_progress
- completed
- archived

state_rules:
- draft allows preparation
- scheduled indicates organized future execution
- in_progress indicates active discussion and decision capture
- completed indicates session record stabilized
- archived indicates read-oriented retained history

# ============================================================
# 6. SCREEN ARCHITECTURE
# ============================================================

screen_architecture:
phone:
- focus on sequential review of one target at a time
- preserve access to decision capture and comments

tablet:
- strengthen list plus detail comparison
- support meeting-oriented split-view usage

pc:
- strengthen dense comparison
- support broader simultaneous context visibility

cross_device_rule:
Device class may change layout density,
but not review meaning, available decisions, or authority boundaries.

# ============================================================
# 7. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Review session architecture in ProductPortfolioManager
must support structured comparison,
decision capture,
follow-up ownership,
and explicit separation from final approval.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200008_PRODUCT_PORTFOLIO_MANAGER_REVIEW_SESSION_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200009_PRODUCT_PORTFOLIO_MANAGER_PROPOSAL_ARCHITECTURE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER PROPOSAL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the architecture of product action proposals
inside ProductPortfolioManager.

architecture_principles:
- proposal architecture must support creation, review, approval, and status traceability
- proposal must remain connected to product context, KPI context, and review context
- proposal architecture must preserve business meaning across devices
- proposal status must remain distinct from approval status
- proposal architecture must support comparison and prioritization

# ============================================================
# 1. ARCHITECTURAL ROLE
# ============================================================

proposal_role:
- capture action ideas tied to products
- support prioritization of actions
- support review-session comparison
- support approval handoff where required
- support execution-oriented state progression after adoption
- preserve proposal history

proposal_is_not:
- not merely a comment
- not merely an alert
- not a hidden implementation command
- not the same as classification change itself

# ============================================================
# 2. PROPOSAL TYPES
# ============================================================

official_proposal_types:
- increase_price
- decrease_price
- strengthen_promotion
- revise_channel
- reduce_inventory
- revise_sourcing
- maintain
- shrink
- retire

architecture_rule:
Proposal type should remain explicit and machine-readable.
Freeform proposal text may exist,
but typed meaning is required for workflow clarity.

# ============================================================
# 3. PROPOSAL STATE ARCHITECTURE
# ============================================================

official_proposal_states:
- draft
- submitted
- in_review
- approved
- rejected
- in_progress
- completed

state_meanings:
draft:
  editable working state
submitted:
  formally entered for review
in_review:
  actively under evaluation
approved:
  adopted at proposal-governance level
rejected:
  not adopted
in_progress:
  accepted and being worked on
completed:
  proposal lifecycle outcome reached

architecture_rule:
Proposal state and approval request state
must not be collapsed into a single concept.

# ============================================================
# 4. PROPOSAL CONTEXT ARCHITECTURE
# ============================================================

proposal_context_requirements:
- linked product context
- linked KPI and score context where relevant
- linked classification context where relevant
- linked alert context where relevant
- linked review-session context where relevant
- expected effect and risk note support
- owner and due-date support

# ============================================================
# 5. SCREEN ARCHITECTURE
# ============================================================

screen_usage:
proposal_list:
- show status
- show type
- show owner
- show due date
- support filtering and prioritization

proposal_detail:
- show proposal meaning
- show related product context
- show expected effect and risk
- show history and approval context

review_session:
- compare proposals across products
- record proposal adoption/rejection decisions

cross_device_rule:
Phone, tablet, and pc may vary in density,
but proposal meaning, states, and authority must remain equivalent.

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Proposal architecture in ProductPortfolioManager
must support typed action candidates,
stateful governance,
comparison,
and traceable progression from idea to outcome.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200009_PRODUCT_PORTFOLIO_MANAGER_PROPOSAL_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200010_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_ARCHITECTURE_FORMAL_DESIGN.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER ERP BOUNDARY ARCHITECTURE FORMAL DESIGN
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the architectural boundary and data-flow meaning
between ProductPortfolioManager and ERP.

architecture_principles:
- ERP facts are consumed through a reference boundary
- ProductPortfolioManager builds judgment artifacts on top of referenced facts
- source-of-truth visibility must remain explicit in UI and data flow
- ERP-affecting intentions must remain separated from ERP execution truth
- architecture must support reproducibility via snapshots without redefining source ownership

# ============================================================
# 1. REFERENCE LAYERS
# ============================================================

reference_layers:
- ERP fact reference layer
- application judgment layer
- handoff/request layer for downstream action where relevant

erp_fact_reference_layer:
- product identity
- category and brand context
- lifecycle-related context where ERP exposes it
- sales values
- cost values
- gross profit basis values
- inventory-related values

application_judgment_layer:
- product_metric_snapshot
- product_score
- product_classification
- product_classification_draft
- product_action_proposal
- product_review_session
- product_review_decision
- product_approval_request
- product_alert
- product_audit_event

handoff_request_layer:
- explicit downstream requests or linked actions where future integration requires them
- not silent ERP mutation

# ============================================================
# 2. ARCHITECTURAL DATA FLOW
# ============================================================

architectural_data_flow:
1. reference ERP fact
2. materialize judgment-time snapshot where needed
3. produce application-owned evaluation artifacts
4. support review and approval
5. optionally prepare explicit downstream handoff
6. preserve history and source context

# ============================================================
# 3. UI/ARCHITECTURE SOURCE VISIBILITY
# ============================================================

source_visibility_requirements:
- ERP-derived facts should be visibly distinguishable from application judgment outputs
- metric snapshot should be identifiable as snapshot/reference context
- score should be identifiable as evaluation artifact
- classification should be identifiable as strategy artifact
- forecast should be identifiable as advisory reference, not ERP truth

# ============================================================
# 4. FORBIDDEN ARCHITECTURAL PATTERNS
# ============================================================

forbidden_patterns:
- silent overwrite of ERP fact through application save
- implicit ERP mutation hidden behind proposal completion
- implicit ERP mutation hidden behind review completion
- mixing classification and ERP master category semantics
- presenting score as if it were formal ERP accounting truth

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ERP boundary architecture in ProductPortfolioManager
must preserve explicit reference,
explicit judgment ownership,
and explicit downstream handoff separation.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200010_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_ARCHITECTURE_FORMAL_DESIGN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200011_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_ARCHITECTURE_FORMAL_DESIGN.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER FORECAST BOUNDARY ARCHITECTURE FORMAL DESIGN
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the architectural boundary and interpretation role
of forecast references inside ProductPortfolioManager.

architecture_principles:
- forecast enters the application as reference context
- forecast must remain distinguishable from ERP fact and application judgment
- forecast confidence, generation time, and scope must remain visible
- forecast may influence comparison and prioritization
- forecast should not collapse into hidden automation of final business actions

# ============================================================
# 1. FORECAST ARCHITECTURAL ROLE
# ============================================================

forecast_architectural_role:
- support demand-oriented interpretation
- support comparison of forecast vs actual context
- support risk and opportunity discussion
- support alert generation where policy allows
- support review-session context
- support proposal reasoning context

forecast_is_not:
- not a replacement for ERP truth
- not a final judgment record
- not an approval result
- not a guarantee of future business outcome

# ============================================================
# 2. FORECAST REFERENCE OBJECTS
# ============================================================

forecast_reference_objects:
- forecast scope type
- forecast period type
- forecast period start
- forecast period end
- forecast quantity
- forecast sales amount
- forecast currency code
- confidence level
- forecast source code
- forecast generated at
- fetched at

# ============================================================
# 3. ARCHITECTURAL DATA FLOW
# ============================================================

architectural_data_flow:
1. fetch forecast reference from forecast-capable source
2. store or attach forecast reference context
3. compare forecast with KPI or actual context where relevant
4. expose forecast context in detail, comparison, alert, and review surfaces
5. preserve advisory meaning in interpretation and history

# ============================================================
# 4. SOURCE VISIBILITY REQUIREMENTS
# ============================================================

source_visibility_requirements:
- forecast-derived values must be visually distinguishable from ERP-derived values
- confidence should be visible where supported
- generated_at and fetched_at context should be available where supported
- forecast should be presented as advisory context in UI and process language

# ============================================================
# 5. FORBIDDEN ARCHITECTURAL PATTERNS
# ============================================================

forbidden_patterns:
- silently converting forecast into final classification
- silently converting forecast into approved proposal
- presenting forecast as if it were ERP fact
- ignoring forecast confidence while still implying deterministic certainty

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Forecast boundary architecture in ProductPortfolioManager
must preserve advisory interpretation,
source clarity,
confidence visibility,
and explicit separation from fact and final judgment.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200011_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_ARCHITECTURE_FORMAL_DESIGN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200012_PRODUCT_PORTFOLIO_MANAGER_DASHBOARD_LIST_COMPARISON_ARCHITECTURE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER DASHBOARD LIST COMPARISON ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the architecture of dashboard, portfolio list,
and comparison surfaces in ProductPortfolioManager.

architecture_principles:
- these surfaces are judgment surfaces, not mere browsing surfaces
- dashboard must accelerate recognition of priorities
- list must support search, filter, sort, and triage
- comparison must support explainable multi-target judgment
- density may differ by device, but meaning must remain equivalent
- facts, scores, classifications, proposals, alerts, and forecast context must remain distinguishable

# ============================================================
# 1. DASHBOARD ARCHITECTURAL ROLE
# ============================================================

dashboard_role:
- provide overall portfolio health visibility
- surface urgent and important products
- surface action-oriented counts
- link rapidly into list, detail, review, approval, and alert workflows

dashboard_is_not:
- not a full-detail replacement for list or product detail
- not a hidden decision engine
- not a single-screen substitute for review governance

dashboard_core_sections:
- KPI summary section
- strategic segmentation section
- top-ranked products section
- alert summary section
- review/approval workload section
- quick navigation actions

# ============================================================
# 2. PORTFOLIO LIST ARCHITECTURAL ROLE
# ============================================================

portfolio_list_role:
- provide cross-product visibility
- support operational narrowing through search and filters
- support ranking and prioritization
- support multi-select and comparison initiation
- serve as the main triage surface

portfolio_list_core_dimensions:
- identity dimension
- category/brand/lifecycle dimension
- strategy/classification dimension
- KPI dimension
- score dimension
- alert/proposal/review state dimension

# ============================================================
# 3. COMPARISON SURFACE ARCHITECTURAL ROLE
# ============================================================

comparison_role:
- support product-to-product comparison
- support proposal-to-proposal comparison where needed
- support classification reasoning comparison
- support review-oriented discussion

comparison_is_not:
- not merely duplicated list rows
- not a static report
- not a substitute for decision history

comparison_core_dimensions:
- KPI comparison
- score comparison
- lifecycle comparison
- classification comparison
- proposal comparison
- alert/forecast context comparison

# ============================================================
# 4. CROSS-SURFACE RELATION
# ============================================================

cross_surface_relation:
dashboard:
- entry and prioritization surface

portfolio_list:
- exploration and triage surface

comparison:
- deeper judgment surface for multiple targets

architectural_rule:
These surfaces form a continuous judgment path:
dashboard -> list -> detail/comparison -> review/proposal/classification/approval

# ============================================================
# 5. DEVICE ARCHITECTURE
# ============================================================

device_architecture:
phone:
- compressed KPI cards
- prioritized columns and expandable details
- comparison with reduced simultaneous density

tablet:
- stronger split-view and side-by-side context
- review-friendly dense comparison

pc:
- highest density list and comparison support
- larger simultaneous context window

cross_device_rule:
No device class may remove the meaning of key states or change authority boundaries.

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Dashboard, list, and comparison architecture in ProductPortfolioManager
must support fast recognition,
structured triage,
and explainable multi-target judgment.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200012_PRODUCT_PORTFOLIO_MANAGER_DASHBOARD_LIST_COMPARISON_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200013_PRODUCT_PORTFOLIO_MANAGER_PRODUCT_DETAIL_AND_SCORE_DETAIL_ARCHITECTURE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER PRODUCT DETAIL AND SCORE DETAIL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the architecture of product detail and score detail surfaces
inside ProductPortfolioManager.

architecture_principles:
- product detail is the primary single-product judgment surface
- score detail is the primary explainability surface for evaluation outputs
- facts, snapshots, scores, classification, proposals, alerts, and forecast references must remain distinguishable
- product detail must support navigation into proposal, classification, review, approval, and history flows
- score detail must support explainability without masquerading as ERP truth
- device differences may change density, not meaning

# ============================================================
# 1. PRODUCT DETAIL ARCHITECTURAL ROLE
# ============================================================

product_detail_role:
- unify one product's operational and judgment context
- provide decision-ready visibility for a single product
- connect product facts, evaluations, classifications, proposals, alerts, and history
- serve as the main launch point for next actions on that product

product_detail_is_not:
- not merely a static profile page
- not a substitute for portfolio-wide comparison
- not a hidden approval or mutation shortcut

product_detail_core_sections:
- product identity section
- metric snapshot summary section
- KPI trend context section
- current score summary section
- lifecycle and classification section
- proposal summary section
- alert summary section
- forecast reference section
- comment/note section
- history / audit entry points
- source context section

# ============================================================
# 2. SCORE DETAIL ARCHITECTURAL ROLE
# ============================================================

score_detail_role:
- explain the evaluated meaning of scores
- show score component structure
- show version, period, and calculation timing
- support comparison of evaluation logic at the product level
- support review and classification reasoning

score_detail_is_not:
- not a replacement for KPI source detail
- not a hidden scoring configuration console
- not formal ERP accounting truth

score_detail_core_sections:
- score header section
- component score section
- score rationale summary section
- version and timing section
- period and currency context section
- classification suggestion context where supported
- related KPI basis entry points

# ============================================================
# 3. DETAIL SURFACE RELATION
# ============================================================

surface_relation:
product_detail:
- broad single-product judgment context

score_detail:
- narrow deep explanation context for evaluation outputs

architectural_rule:
Users should be able to move from product detail to score detail
without losing product identity, period context, or currency context.

# ============================================================
# 4. SOURCE VISIBILITY ARCHITECTURE
# ============================================================

source_visibility_architecture:
- ERP-derived facts must be visibly distinguishable
- product_metric_snapshot must be identifiable as snapshot/reference context
- product_score must be identifiable as application evaluation output
- forecast context must be identifiable as advisory reference
- classification must be identifiable as governed strategy meaning

# ============================================================
# 5. DEVICE ARCHITECTURE
# ============================================================

device_architecture:
phone:
- stacked sections
- condensed summary first
- drill-in emphasis

tablet:
- stronger section pairing
- quicker cross-section scanning

pc:
- broader simultaneous section visibility
- denser score explanation and history visibility

cross_device_rule:
No device class may conceal the business meaning
of facts, scores, lifecycle, classification, or source boundaries.

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Product detail and score detail architecture in ProductPortfolioManager
must support single-product judgment,
evaluation explainability,
and explicit source-boundary visibility.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200013_PRODUCT_PORTFOLIO_MANAGER_PRODUCT_DETAIL_AND_SCORE_DETAIL_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200014_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_CHANGE_AND_PROPOSAL_DETAIL_ARCHITECTURE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER CLASSIFICATION CHANGE AND PROPOSAL DETAIL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the architecture of classification-change
and proposal-detail surfaces inside ProductPortfolioManager.

architecture_principles:
- classification change is a governed strategy-change surface
- proposal detail is a governed action-candidate surface
- both surfaces must preserve before/after meaning where relevant
- both surfaces must support draft, review, approval, and history awareness
- both surfaces must distinguish judgment state from execution truth
- device differences may change density, not meaning or authority

# ============================================================
# 1. CLASSIFICATION-CHANGE ARCHITECTURAL ROLE
# ============================================================

classification_change_role:
- show current approved classification
- show proposed classification context
- show supporting score / KPI / lifecycle / alert / proposal context
- support draft creation and update
- support submission and approval handoff where required
- preserve explicit reason capture

classification_change_is_not:
- not a hidden auto-classification tool
- not an ERP category editing surface
- not a silent finalization shortcut

classification_change_core_sections:
- product identity section
- current classification section
- proposed classification section
- reason section
- support-context section
- approval requirement section
- history entry section

# ============================================================
# 2. PROPOSAL-DETAIL ARCHITECTURAL ROLE
# ============================================================

proposal_detail_role:
- show proposal meaning and status
- show related product and judgment context
- show expected effect, risk, owner, and due date
- support proposal editing while state permits
- support approval linkage and history visibility
- support outcome interpretation

proposal_detail_is_not:
- not merely a long note page
- not a hidden execution engine
- not proof that ERP-side action has already occurred

proposal_detail_core_sections:
- proposal identity section
- proposal type and meaning section
- related product section
- effect/risk section
- owner and due-date section
- status and approval section
- history section
- linked review / alert context section

# ============================================================
# 3. SURFACE RELATION
# ============================================================

surface_relation:
classification_change:
- strategy-position change surface

proposal_detail:
- action-candidate meaning surface

architectural_rule:
A classification change and a proposal may be related,
but must remain separate governed meanings.

# ============================================================
# 4. SOURCE / STATE VISIBILITY ARCHITECTURE
# ============================================================

source_state_visibility_architecture:
- current approved classification must be clearly distinguishable from draft classification
- proposal status must be clearly distinguishable from approval status
- approved proposal must be distinguishable from completed proposal
- score context must be distinguishable from classification/proposal decisions
- ERP truth must remain distinct from application judgment records

# ============================================================
# 5. DEVICE ARCHITECTURE
# ============================================================

device_architecture:
phone:
- sequential editing and review emphasis
- condensed support context with drill-down

tablet:
- stronger side-by-side support context
- easier switching across judgment sections

pc:
- denser contextual visibility
- easier before/after and history inspection

cross_device_rule:
No device class may hide the distinction between
current approved state,
draft state,
approval state,
and outcome state.

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Classification-change and proposal-detail architecture
in ProductPortfolioManager
must support governed strategy/action judgment
with explicit state meaning and clear context.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200014_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_CHANGE_AND_PROPOSAL_DETAIL_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200015_PRODUCT_PORTFOLIO_MANAGER_APPROVAL_ALERT_AUDIT_LIST_ARCHITECTURE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER APPROVAL ALERT AUDIT LIST ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the architecture of approval queue,
alert list,
and audit/history list surfaces inside ProductPortfolioManager.

architecture_principles:
- these list surfaces are operational control surfaces, not simple archives
- approval queue must prioritize pending business decisions
- alert list must prioritize attention and follow-up
- audit/history list must prioritize explainability and chronology
- each surface must preserve explicit distinction among state, severity, priority, and authority
- device differences may change density, not operational meaning

# ============================================================
# 1. APPROVAL QUEUE ARCHITECTURAL ROLE
# ============================================================

approval_queue_role:
- surface pending approval work
- support efficient review and decision
- connect approvers to target entity context
- preserve explicit approval state meaning

approval_queue_is_not:
- not a generic inbox for all workflow items
- not a substitute for review session history
- not an edit surface for target authorship

approval_queue_core_dimensions:
- request type
- target entity identity
- requester identity
- approval status
- due timing
- priority/urgency context where available
- navigation to target context

# ============================================================
# 2. ALERT LIST ARCHITECTURAL ROLE
# ============================================================

alert_list_role:
- surface operational attention needs
- support triage and ownership
- connect alerts to product, review, and proposal flows
- preserve distinction between severity and status

alert_list_is_not:
- not a final decision surface
- not a substitute for product detail
- not proof that a business issue is resolved simply because it was acknowledged

alert_list_core_dimensions:
- alert type
- target product identity
- severity
- status
- owner/assignee
- detected time
- due/follow-up context where relevant
- navigation to related product or action context

# ============================================================
# 3. AUDIT/HISTORY LIST ARCHITECTURAL ROLE
# ============================================================

audit_history_list_role:
- surface chronological explainability
- support investigation and accountability
- support filtering by actor, entity, time, and event type
- connect history to live entity context where appropriate

audit_history_list_is_not:
- not a hidden admin-only raw dump by default
- not a business editing surface
- not a substitute for source-of-truth fact storage

audit_history_list_core_dimensions:
- event type
- entity identity
- actor identity
- event time
- before/after summary where meaningful
- linked navigation to related target

# ============================================================
# 4. CROSS-SURFACE RELATION
# ============================================================

cross_surface_relation:
approval_queue:
- decision workload surface

alert_list:
- attention workload surface

audit_history_list:
- explanation and accountability surface

architectural_rule:
These surfaces should be reachable from dashboard and detail contexts
and should connect operators to the next appropriate governed action.

# ============================================================
# 5. DEVICE ARCHITECTURE
# ============================================================

device_architecture:
phone:
- prioritize essential columns
- use drill-in for full context
- emphasize explicit next actions

tablet:
- stronger split-view list plus detail patterns
- faster triage and inspection

pc:
- denser columns
- stronger simultaneous filter and context visibility
- stronger analyst-style audit scanning

cross_device_rule:
No device class may hide the difference among
approval status,
alert severity,
alert status,
and audit chronology.

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Approval queue, alert list, and audit/history list architecture
in ProductPortfolioManager
must support decision workload,
attention workload,
and explainability workload
as distinct but connected operational surfaces.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200015_PRODUCT_PORTFOLIO_MANAGER_APPROVAL_ALERT_AUDIT_LIST_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200016_PRODUCT_PORTFOLIO_MANAGER_SETTINGS_LOCALE_CURRENCY_PRESET_ARCHITECTURE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER SETTINGS LOCALE CURRENCY PRESET ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the architecture of settings,
display language,
display/reporting currency,
and saved view preset handling inside ProductPortfolioManager.

architecture_principles:
- settings must affect presentation, not silently redefine source truth
- locale affects labels and explanations, not business authority
- reporting/display currency affects presentation context, not source ownership
- saved view presets affect operator efficiency, not business meaning
- user preference and shared operational preset concepts must remain distinguishable
- cross-device meaning must remain stable even if layout or default density differs

# ============================================================
# 1. SETTINGS ARCHITECTURAL ROLE
# ============================================================

settings_role:
- provide operator-facing control of display context
- provide stable personalization of presentation behavior
- support efficient return to recurring work patterns
- reduce repetitive filtering and reconfiguration effort

settings_is_not:
- not an authority escalation surface
- not a hidden data-mutation surface
- not a source-of-truth rewriting surface
- not a substitute for workflow governance

# ============================================================
# 2. LOCALE ARCHITECTURAL ROLE
# ============================================================

locale_role:
- control UI language presentation
- control translated labels and explanations
- support multilingual-ready business surfaces
- preserve consistent code meaning independent of language rendering

locale_rule:
Localization changes visible expression,
but must not change the underlying business code meaning.

# ============================================================
# 3. CURRENCY ARCHITECTURAL ROLE
# ============================================================

currency_role:
- control reporting/display currency context for presentation
- support multi-currency-safe viewing and comparison
- preserve explicit distinction between transaction currency and reporting currency

currency_rule:
Changing display/reporting currency
must not imply mutation of stored ERP-origin money facts.

# ============================================================
# 4. PRESET ARCHITECTURAL ROLE
# ============================================================

preset_role:
- preserve reusable list/filter/sort/column setups
- support personal efficiency
- support recurring operational triage patterns
- optionally support team-level repeatable views where policy allows

preset_rule:
Preset changes affect how work is seen,
not what the underlying business state is.

# ============================================================
# 5. SETTINGS SURFACE ARCHITECTURE
# ============================================================

settings_surface_scope:
- display language
- display/reporting currency
- default period context
- default list density or layout preference where supported
- default target screen preferences where supported
- saved view preset access and management

architectural_rule:
User preference settings and shared operational presets
must remain conceptually separable.

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Settings, locale, currency, and presets in ProductPortfolioManager
must remain explicit presentation and operator-efficiency architecture,
not hidden business-state mutation architecture.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/0200016_PRODUCT_PORTFOLIO_MANAGER_SETTINGS_LOCALE_CURRENCY_PRESET_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/021120_PRODUCTPORTFOLIOMANAGER_PORTFOLIO_SIGNAL_AGGREGATION_ARCHITECTURE.md -->
# ============================================================
# PRODUCTPORTFOLIOMANAGER PORTFOLIO SIGNAL AGGREGATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: ProductPortfolioManager
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: portfolio-signal-aggregation-architecture

purpose:
Makes portfolio signal aggregation and management control explicit in the
current ProductPortfolioManager architecture.

architecture_intent:
- portfolio work must be visible not only as items, but as management movement
- source signals, prioritization shifts, exceptions, and management attention
  points must remain explicit
- portfolio readiness and blocker visibility must be queryable without
  reconstructing everything from raw product detail only

flow_layers:
- signal intake:
  - source signal registration
  - source freshness evaluation
  - portfolio baseline construction
  - prioritization draft creation
- portfolio control:
  - prioritization comparison
  - exception detection
  - investment threshold evaluation
  - management attention routing
- management review:
  - portfolio cockpit review
  - prioritization exception visibility
  - freshness and confidence visibility
  - decision-support readiness
- control action:
  - approve prioritization
  - hold prioritization
  - escalate attention
  - publish portfolio view
- closure:
  - active
  - superseded
  - archived
  - replaced_by_new_cycle

key_separations:
- raw product detail is not the same as portfolio readiness
- scenario comparison is not the same as approval history
- exception review is not the same as board rendering
- cockpit review is not the same as deep item editing screen

recommended_runtime_objects:
- portfolio_management_signal
- prioritization_exception_review_item
- decision_support_readiness_item
- portfolio_cockpit_summary

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/021120_PRODUCTPORTFOLIOMANAGER_PORTFOLIO_SIGNAL_AGGREGATION_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/021130_PRODUCTPORTFOLIOMANAGER_PRIORITIZATION_SCENARIO_EXCEPTION_ARCHITECTURE.md -->
# ============================================================
# PRODUCTPORTFOLIOMANAGER PRIORITIZATION SCENARIO EXCEPTION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: ProductPortfolioManager
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: prioritization-scenario-exception-architecture

purpose:
Defines the relationship between prioritization review, scenario exception
handling, and management decision-support readiness in ProductPortfolioManager.

core_principle:
- portfolio slippage often appears first through stale signals,
  prioritization divergence, unresolved portfolio exception, or attention-routing
  failure before it appears as final business outcome failure.

architecture_rules:
- prioritization comparison must be represented explicitly
- exception items must be reviewable as first-class management objects
- decision-support blockers must survive beyond one screen or one session
- unresolved exceptions must be visible in the same review flow as portfolio health

exception_categories:
- source freshness risk
- prioritization divergence risk
- investment threshold breach risk
- decision-support blocker
- publication readiness risk

visibility_outputs:
- portfolio cockpit
- prioritization exception review screen
- management attention panel
- decision-support readiness overview

cross_module_relation:
- source signal layer feeds normalized portfolio signals
- prioritization layer captures comparative portfolio states
- exception layer surfaces management attention points
- decision-support layer surfaces readiness for executive or manager use

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/021130_PRODUCTPORTFOLIOMANAGER_PRIORITIZATION_SCENARIO_EXCEPTION_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/021140_PRODUCTPORTFOLIOMANAGER_PHASE_A_PORTFOLIO_TIMELINE_DDL_ADDITIVE_PLAN.md -->
# ============================================================
# PRODUCTPORTFOLIOMANAGER PHASE A PORTFOLIO TIMELINE DDL ADDITIVE PLAN
# ============================================================

status: canonical
layer: architecture
system: applications
application: ProductPortfolioManager
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-portfolio-timeline-ddl-additive-plan

purpose:
Defines the additive-only Phase A DDL planning boundary for
portfolio timeline visibility, prioritization exception review,
and portfolio cockpit assembly.

principles:
- additive only
- preserve existing ProductPortfolioManager core
- keep raw product detail handling separate from management readiness rows
- keep scenario and exception review separate from raw portfolio history
- no SQL execution in this document

phase_a_target_capabilities:
- persist portfolio control timeline rows for cockpit and review
- persist prioritization and decision-support blocker review rows for management visibility
- support portfolio cockpit query without reconstructing everything from raw product detail
- support management attention and decision-support review slices

proposed_additive_tables:
- business.productportfoliomanager_portfolio_control_timeline_item
- business.productportfoliomanager_prioritization_exception_review_item
- business.productportfoliomanager_portfolio_cockpit_snapshot

table_business_productportfoliomanager_portfolio_control_timeline_item:
  role:
    - stores normalized portfolio control timeline rows
  recommended_columns:
    - portfolio_control_timeline_item_id uuid pk
    - portfolio_id uuid not null
    - related_scenario_id uuid null
    - related_exception_id uuid null
    - related_decision_support_blocker_id uuid null
    - item_type_code text not null
    - item_title text not null
    - item_summary text null
    - portfolio_state_code text not null
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

table_business_productportfoliomanager_prioritization_exception_review_item:
  role:
    - stores reviewable prioritization and decision-support blocker rows
  recommended_columns:
    - prioritization_exception_review_item_id uuid pk
    - portfolio_id uuid not null
    - related_scenario_id uuid null
    - related_exception_id uuid null
    - related_decision_support_blocker_id uuid null
    - item_type_code text not null
    - item_title text not null
    - item_summary text null
    - portfolio_state_code text not null
    - exception_present boolean not null
    - approval_required boolean not null
    - owner_user_id uuid null
    - resolved boolean not null
    - effective_at timestamptz null
    - created_at timestamptz not null
    - updated_at timestamptz not null

table_business_productportfoliomanager_portfolio_cockpit_snapshot:
  role:
    - stores generated portfolio cockpit snapshots when caching or auditability is needed
  recommended_columns:
    - portfolio_cockpit_snapshot_id uuid pk
    - portfolio_id uuid not null
    - health_summary_message text not null
    - generated_at timestamptz not null
    - created_at timestamptz not null

recommended_indexes_phase_a:
- portfolio_control_timeline_item:
  - idx on portfolio_id, portfolio_state_code, effective_at
  - idx on portfolio_id, related_scenario_id
  - idx on portfolio_id, related_exception_id
- prioritization_exception_review_item:
  - idx on portfolio_id, approval_required
  - idx on portfolio_id, exception_present
  - idx on portfolio_id, resolved
- portfolio_cockpit_snapshot:
  - idx on portfolio_id, generated_at desc

explicit_non_scope:
- no destructive schema rewrite
- no SQL execution here
- no optimization engine implementation here
- no external BI push execution here
- no client sync policy here

handoff_to_next_step:
- freeze API starter and DTOs against these row families
- create implementation skeleton and slice order on top of this plan

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/020.architecture/021140_PRODUCTPORTFOLIOMANAGER_PHASE_A_PORTFOLIO_TIMELINE_DDL_ADDITIVE_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300000_PRODUCT_PORTFOLIO_MANAGER_MODEL_INDEX.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER MODEL INDEX
# ============================================================

files:

- 030510_PRODUCTPORTFOLIOMANAGER_PORTFOLIO_CONTROL_TIMELINE_MODEL.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300000_PRODUCT_PORTFOLIO_MANAGER_MODEL_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300000_PRODUCT_PORTFOLIO_MANAGER_MODEL_OVERVIEW.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER MODEL OVERVIEW
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

model_layers:
1. ERP reference layer
2. application judgment layer
3. operational support layer

core_entities:
- product_portfolio_item
- product_metric_snapshot
- product_score
- product_classification
- product_classification_draft
- product_action_proposal
- product_review_session
- product_review_decision
- product_approval_request
- product_audit_event

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300000_PRODUCT_PORTFOLIO_MANAGER_MODEL_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300001_PRODUCT_PORTFOLIO_ITEM_MODEL.md -->
# ============================================================
# PRODUCT PORTFOLIO ITEM MODEL
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

entity: product_portfolio_item

purpose:
Represents one product as a portfolio-managed target inside the application.

fields:
- portfolio_item_id
- company_id
- workspace_id
- product_id
- product_code
- product_name
- category_code
- category_name
- brand_code
- brand_name
- series_code
- series_name
- lifecycle_stage
- owner_user_id
- current_classification_code
- current_priority_rank
- active_flag
- created_at
- updated_at

notes:
- ERP identity remains external authority
- displayed names may be cached for usability
- strategic classification meaning is application-specific

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300001_PRODUCT_PORTFOLIO_ITEM_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300002_PRODUCT_METRIC_SNAPSHOT_MODEL.md -->
# ============================================================
# PRODUCT METRIC SNAPSHOT MODEL
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

entity: product_metric_snapshot

purpose:
Preserves a judgment-time snapshot of product metrics
for explainability and reproducibility.

fields:
- metric_snapshot_id
- portfolio_item_id
- metric_period_type
- metric_period_start
- metric_period_end
- transaction_currency_code
- reporting_currency_code
- sales_amount
- sales_quantity
- gross_profit_amount
- gross_profit_rate
- cost_amount
- inventory_quantity
- inventory_amount
- growth_rate
- previous_period_sales_amount
- previous_year_sales_amount
- source_system_code
- source_generated_at
- fetched_at

rules:
- monetary values require explicit currency semantics
- snapshot values are not ERP truth ownership

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300002_PRODUCT_METRIC_SNAPSHOT_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300002_PRODUCT_SCORE_MODEL.md -->
# ============================================================
# PRODUCT SCORE MODEL
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

entity: product_score

fields:
- product_score_id
- portfolio_item_id
- score_period_type
- score_period_start
- score_period_end
- transaction_currency_code
- reporting_currency_code
- sales_score
- margin_score
- growth_score
- inventory_score
- strategic_score
- risk_score
- opportunity_score
- total_score
- score_version
- calculated_at

meaning:
Stores explainable scoring outputs for a portfolio item.

currency_rule:
Monetary interpretation must never rely on an implicit single currency assumption.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300002_PRODUCT_SCORE_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300003_PRODUCT_CLASSIFICATION_MODEL.md -->
# ============================================================
# PRODUCT CLASSIFICATION MODEL
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

entity: product_classification

fields:
- classification_id
- portfolio_item_id
- classification_code
- effective_from
- effective_to
- decided_by
- decision_reason
- decision_source
- created_at

classification_examples:
- focus
- growth
- profit-core
- maintain
- improve
- risk-watch
- retire-candidate
- seasonal

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300003_PRODUCT_CLASSIFICATION_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300003_PRODUCT_SCORE_MODEL.md -->
# ============================================================
# PRODUCT SCORE MODEL
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

entity: product_score

purpose:
Stores product evaluation outputs used for explanation,
comparison, and classification support.

fields:
- product_score_id
- portfolio_item_id
- score_period_type
- score_period_start
- score_period_end
- score_version
- sales_score
- margin_score
- growth_score
- inventory_score
- risk_score
- strategic_score
- total_score
- score_summary_text_key
- calculated_at
- calculation_basis_ref

rules:
- score version is mandatory
- explanation metadata must be preserved
- resource-key-based descriptions are preferred for multilingual support

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300003_PRODUCT_SCORE_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300004_PRODUCT_ACTION_PROPOSAL_MODEL.md -->
# ============================================================
# PRODUCT ACTION PROPOSAL MODEL
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

entity: product_action_proposal

fields:
- proposal_id
- portfolio_item_id
- proposal_type
- proposal_title
- proposal_detail
- expected_effect
- priority_level
- status
- proposed_by
- approved_by
- approved_at
- created_at
- updated_at

proposal_examples:
- increase-price
- decrease-price
- strengthen-promotion
- reduce-stock
- revise-sourcing
- bundle-product
- retire-product

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300004_PRODUCT_ACTION_PROPOSAL_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300004_PRODUCT_CLASSIFICATION_MODELS.md -->
# ============================================================
# PRODUCT CLASSIFICATION MODELS
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

entities:
- product_classification
- product_classification_draft

product_classification_fields:
- classification_id
- portfolio_item_id
- classification_code
- classification_reason
- decided_by_user_id
- decision_source_type
- effective_from
- effective_to
- current_flag
- created_at

product_classification_draft_fields:
- classification_draft_id
- portfolio_item_id
- proposed_classification_code
- proposed_reason
- based_score_id
- draft_by_user_id
- draft_status
- last_saved_at

classification_examples:
- focus
- growth
- profit_core
- maintain
- improve
- risk_watch
- retire_candidate
- seasonal
- test

rules:
- draft and final must remain separate
- approved classification history must not be erased

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300004_PRODUCT_CLASSIFICATION_MODELS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300005_PRODUCT_PROPOSAL_MODELS.md -->
# ============================================================
# PRODUCT PROPOSAL MODELS
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

entities:
- product_action_proposal
- product_action_proposal_history

product_action_proposal_fields:
- proposal_id
- portfolio_item_id
- proposal_type_code
- proposal_title
- proposal_detail
- expected_effect
- risk_note
- priority_level
- due_date
- owner_user_id
- proposal_status
- created_by_user_id
- created_at
- updated_at

product_action_proposal_history_fields:
- proposal_history_id
- proposal_id
- before_status
- after_status
- changed_by_user_id
- change_reason
- changed_at

proposal_examples:
- increase_price
- decrease_price
- strengthen_promotion
- revise_channel
- reduce_inventory
- revise_sourcing
- maintain
- shrink
- retire

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300005_PRODUCT_PROPOSAL_MODELS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300005_PRODUCT_REVIEW_MODEL.md -->
# ============================================================
# PRODUCT REVIEW MODEL
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

entities:
- product_review_session
- product_review_decision
- product_issue_note
- product_forecast_reference
- product_alert

purpose:
Defines management review structures,
decision records, issue tracking, and forecast references.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300005_PRODUCT_REVIEW_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300006_PRODUCT_REVIEW_APPROVAL_AUDIT_MODELS.md -->
# ============================================================
# PRODUCT REVIEW APPROVAL AUDIT MODELS
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

entities:
- product_review_session
- product_review_session_item
- product_review_decision
- product_approval_request
- product_approval_decision
- product_alert
- product_forecast_reference
- product_comment
- product_issue_note
- product_share_scope
- product_audit_event
- product_view_preset
- product_sync_state

review_session_fields:
- review_session_id
- company_id
- workspace_id
- review_title
- target_period_start
- target_period_end
- target_scope_description
- scheduled_at
- status
- created_by_user_id
- created_at
- updated_at

review_decision_fields:
- review_decision_id
- review_session_id
- portfolio_item_id
- decision_type
- before_classification_code
- after_classification_code
- proposal_action
- assigned_user_id
- due_date
- decision_note
- decided_by_user_id
- decided_at

approval_request_fields:
- approval_request_id
- request_type
- target_entity_type
- target_entity_id
- requested_by_user_id
- current_status
- requested_at
- due_at

audit_event_fields:
- audit_event_id
- entity_type
- entity_id
- event_type
- before_payload
- after_payload
- actor_user_id
- event_at
- source_channel

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300006_PRODUCT_REVIEW_APPROVAL_AUDIT_MODELS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300007_PRODUCT_PORTFOLIO_MANAGER_EXACT_TABLES_AND_ENUMS.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER EXACT TABLES AND ENUMS
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Fix exact table, column, enum, key, and relationship contracts
for the first stable model boundary.

modeling_principles:
- additive only
- ERP truth stays outside application-owned tables
- application judgment stays inside application-owned tables
- draft and final states are separated where business meaning differs
- auditability is mandatory
- multilingual / multi-currency readiness is mandatory

# ============================================================
# 1. ENUM DEFINITIONS
# ============================================================

enums:

  ppm_period_type:
    - monthly
    - quarterly
    - half_year
    - yearly
    - custom

  ppm_lifecycle_stage:
    - unknown
    - launch
    - growth
    - mature
    - decline
    - retired

  ppm_classification_code:
    - focus
    - growth
    - profit_core
    - maintain
    - improve
    - risk_watch
    - retire_candidate
    - seasonal
    - test

  ppm_classification_draft_status:
    - draft
    - submitted
    - withdrawn
    - superseded

  ppm_proposal_type_code:
    - increase_price
    - decrease_price
    - strengthen_promotion
    - revise_channel
    - reduce_inventory
    - revise_sourcing
    - maintain
    - shrink
    - retire

  ppm_priority_level:
    - low
    - medium
    - high
    - critical

  ppm_proposal_status:
    - draft
    - submitted
    - in_review
    - approved
    - rejected
    - in_progress
    - completed

  ppm_issue_type_code:
    - pricing
    - inventory
    - promotion
    - profitability
    - demand
    - lifecycle
    - competition
    - other

  ppm_severity_level:
    - info
    - low
    - medium
    - high
    - critical

  ppm_resolution_status:
    - open
    - in_progress
    - resolved
    - closed

  ppm_comment_context_type:
    - product_note
    - review_comment
    - proposal_comment
    - approval_comment
    - internal_comment

  ppm_visibility_scope:
    - private
    - team
    - org
    - limited

  ppm_alert_type_code:
    - sales_drop
    - margin_drop
    - growth_slowdown
    - inventory_risk
    - forecast_gap
    - review_overdue
    - proposal_overdue

  ppm_alert_status:
    - open
    - acknowledged
    - resolved
    - dismissed

  ppm_forecast_scope_type:
    - product
    - category
    - brand

  ppm_review_session_status:
    - draft
    - scheduled
    - in_progress
    - completed
    - archived

  ppm_decision_type:
    - classification_change
    - proposal_adopted
    - proposal_rejected
    - hold
    - recheck
    - assign_action

  ppm_request_type:
    - classification_approval
    - proposal_approval
    - review_decision_approval

  ppm_approval_status:
    - pending
    - approved
    - rejected
    - sent_back
    - on_hold

  ppm_share_type:
    - private
    - team
    - org
    - limited

  ppm_shared_to_type:
    - user
    - role
    - team
    - org

  ppm_sync_status:
    - local_draft
    - pending_sync
    - synced
    - conflict
    - retry_required

# ============================================================
# 2. TABLE DEFINITIONS
# ============================================================

tables:

  - table_name: product_portfolio_item
    purpose:
      Core product portfolio target managed by the application.
    primary_key:
      - portfolio_item_id
    unique_keys:
      - [company_id, workspace_id, product_id]
    columns:
      - { name: portfolio_item_id, type: uuid, null: false }
      - { name: company_id, type: uuid, null: false }
      - { name: workspace_id, type: uuid, null: false }
      - { name: product_id, type: uuid, null: false }
      - { name: product_code, type: text, null: false }
      - { name: product_name, type: text, null: false }
      - { name: category_code, type: text, null: true }
      - { name: category_name, type: text, null: true }
      - { name: brand_code, type: text, null: true }
      - { name: brand_name, type: text, null: true }
      - { name: series_code, type: text, null: true }
      - { name: series_name, type: text, null: true }
      - { name: lifecycle_stage, type: ppm_lifecycle_stage, null: false, default: unknown }
      - { name: owner_user_id, type: uuid, null: true }
      - { name: current_classification_code, type: ppm_classification_code, null: true }
      - { name: current_priority_rank, type: integer, null: true }
      - { name: active_flag, type: boolean, null: false, default: true }
      - { name: created_at, type: timestamptz, null: false }
      - { name: updated_at, type: timestamptz, null: false }
    indexes:
      - [company_id, workspace_id]
      - [company_id, workspace_id, category_code]
      - [company_id, workspace_id, brand_code]
      - [company_id, workspace_id, current_classification_code]

  - table_name: product_metric_snapshot
    purpose:
      Frozen metrics used for judgment reproducibility.
    primary_key:
      - metric_snapshot_id
    columns:
      - { name: metric_snapshot_id, type: uuid, null: false }
      - { name: portfolio_item_id, type: uuid, null: false }
      - { name: metric_period_type, type: ppm_period_type, null: false }
      - { name: metric_period_start, type: date, null: false }
      - { name: metric_period_end, type: date, null: false }
      - { name: transaction_currency_code, type: text, null: true }
      - { name: reporting_currency_code, type: text, null: true }
      - { name: sales_amount, type: numeric(18,2), null: true }
      - { name: sales_quantity, type: numeric(18,4), null: true }
      - { name: gross_profit_amount, type: numeric(18,2), null: true }
      - { name: gross_profit_rate, type: numeric(9,4), null: true }
      - { name: cost_amount, type: numeric(18,2), null: true }
      - { name: inventory_quantity, type: numeric(18,4), null: true }
      - { name: inventory_amount, type: numeric(18,2), null: true }
      - { name: growth_rate, type: numeric(9,4), null: true }
      - { name: previous_period_sales_amount, type: numeric(18,2), null: true }
      - { name: previous_year_sales_amount, type: numeric(18,2), null: true }
      - { name: source_system_code, type: text, null: true }
      - { name: source_generated_at, type: timestamptz, null: true }
      - { name: fetched_at, type: timestamptz, null: false }
    indexes:
      - [portfolio_item_id, metric_period_type, metric_period_start, metric_period_end]
      - [portfolio_item_id, fetched_at]

  - table_name: product_score
    purpose:
      Stored score output for product comparison and classification support.
    primary_key:
      - product_score_id
    columns:
      - { name: product_score_id, type: uuid, null: false }
      - { name: portfolio_item_id, type: uuid, null: false }
      - { name: score_period_type, type: ppm_period_type, null: false }
      - { name: score_period_start, type: date, null: false }
      - { name: score_period_end, type: date, null: false }
      - { name: score_version, type: text, null: false }
      - { name: sales_score, type: numeric(9,4), null: true }
      - { name: margin_score, type: numeric(9,4), null: true }
      - { name: growth_score, type: numeric(9,4), null: true }
      - { name: inventory_score, type: numeric(9,4), null: true }
      - { name: risk_score, type: numeric(9,4), null: true }
      - { name: strategic_score, type: numeric(9,4), null: true }
      - { name: total_score, type: numeric(9,4), null: true }
      - { name: score_summary_text_key, type: text, null: true }
      - { name: calculation_basis_ref, type: text, null: true }
      - { name: calculated_at, type: timestamptz, null: false }
    indexes:
      - [portfolio_item_id, score_period_type, score_period_start, score_period_end]
      - [portfolio_item_id, calculated_at]
      - [score_version]

  - table_name: product_classification
    purpose:
      Approved strategic classification history.
    primary_key:
      - classification_id
    columns:
      - { name: classification_id, type: uuid, null: false }
      - { name: portfolio_item_id, type: uuid, null: false }
      - { name: classification_code, type: ppm_classification_code, null: false }
      - { name: classification_reason, type: text, null: true }
      - { name: decided_by_user_id, type: uuid, null: false }
      - { name: decision_source_type, type: text, null: false }
      - { name: effective_from, type: timestamptz, null: false }
      - { name: effective_to, type: timestamptz, null: true }
      - { name: current_flag, type: boolean, null: false, default: true }
      - { name: created_at, type: timestamptz, null: false }
    indexes:
      - [portfolio_item_id, current_flag]
      - [portfolio_item_id, effective_from]

  - table_name: product_classification_draft
    purpose:
      Draft or submitted classification change before approval/finalization.
    primary_key:
      - classification_draft_id
    columns:
      - { name: classification_draft_id, type: uuid, null: false }
      - { name: portfolio_item_id, type: uuid, null: false }
      - { name: proposed_classification_code, type: ppm_classification_code, null: false }
      - { name: proposed_reason, type: text, null: true }
      - { name: based_score_id, type: uuid, null: true }
      - { name: draft_by_user_id, type: uuid, null: false }
      - { name: draft_status, type: ppm_classification_draft_status, null: false }
      - { name: last_saved_at, type: timestamptz, null: false }
    indexes:
      - [portfolio_item_id, draft_status]
      - [draft_by_user_id, draft_status]

  - table_name: product_action_proposal
    purpose:
      Product-level action proposal.
    primary_key:
      - proposal_id
    columns:
      - { name: proposal_id, type: uuid, null: false }
      - { name: portfolio_item_id, type: uuid, null: false }
      - { name: proposal_type_code, type: ppm_proposal_type_code, null: false }
      - { name: proposal_title, type: text, null: false }
      - { name: proposal_detail, type: text, null: false }
      - { name: expected_effect, type: text, null: true }
      - { name: risk_note, type: text, null: true }
      - { name: priority_level, type: ppm_priority_level, null: true }
      - { name: due_date, type: date, null: true }
      - { name: owner_user_id, type: uuid, null: true }
      - { name: proposal_status, type: ppm_proposal_status, null: false }
      - { name: created_by_user_id, type: uuid, null: false }
      - { name: created_at, type: timestamptz, null: false }
      - { name: updated_at, type: timestamptz, null: false }
    indexes:
      - [portfolio_item_id, proposal_status]
      - [owner_user_id, proposal_status]
      - [due_date]

  - table_name: product_action_proposal_history
    purpose:
      State change history for proposals.
    primary_key:
      - proposal_history_id
    columns:
      - { name: proposal_history_id, type: uuid, null: false }
      - { name: proposal_id, type: uuid, null: false }
      - { name: before_status, type: ppm_proposal_status, null: true }
      - { name: after_status, type: ppm_proposal_status, null: false }
      - { name: changed_by_user_id, type: uuid, null: false }
      - { name: change_reason, type: text, null: true }
      - { name: changed_at, type: timestamptz, null: false }
    indexes:
      - [proposal_id, changed_at]

  - table_name: product_issue_note
    purpose:
      Structured issue tracking by product.
    primary_key:
      - issue_note_id
    columns:
      - { name: issue_note_id, type: uuid, null: false }
      - { name: portfolio_item_id, type: uuid, null: false }
      - { name: issue_type_code, type: ppm_issue_type_code, null: false }
      - { name: severity_level, type: ppm_severity_level, null: false }
      - { name: issue_title, type: text, null: false }
      - { name: issue_detail, type: text, null: true }
      - { name: owner_user_id, type: uuid, null: true }
      - { name: resolution_status, type: ppm_resolution_status, null: false, default: open }
      - { name: created_at, type: timestamptz, null: false }
      - { name: updated_at, type: timestamptz, null: false }
    indexes:
      - [portfolio_item_id, resolution_status]
      - [owner_user_id, resolution_status]

  - table_name: product_comment
    purpose:
      Contextual comments and notes.
    primary_key:
      - comment_id
    columns:
      - { name: comment_id, type: uuid, null: false }
      - { name: portfolio_item_id, type: uuid, null: false }
      - { name: context_type, type: ppm_comment_context_type, null: false }
      - { name: related_entity_type, type: text, null: true }
      - { name: related_entity_id, type: uuid, null: true }
      - { name: comment_body, type: text, null: false }
      - { name: visibility_scope, type: ppm_visibility_scope, null: false, default: private }
      - { name: created_by_user_id, type: uuid, null: false }
      - { name: created_at, type: timestamptz, null: false }
      - { name: updated_at, type: timestamptz, null: false }
    indexes:
      - [portfolio_item_id, context_type]
      - [related_entity_type, related_entity_id]
      - [created_by_user_id]

  - table_name: product_alert
    purpose:
      Alert records surfaced by the application.
    primary_key:
      - alert_id
    columns:
      - { name: alert_id, type: uuid, null: false }
      - { name: portfolio_item_id, type: uuid, null: false }
      - { name: alert_type_code, type: ppm_alert_type_code, null: false }
      - { name: severity_level, type: ppm_severity_level, null: false }
      - { name: alert_title_key, type: text, null: false }
      - { name: alert_message_key, type: text, null: false }
      - { name: alert_status, type: ppm_alert_status, null: false, default: open }
      - { name: detected_at, type: timestamptz, null: false }
      - { name: resolved_at, type: timestamptz, null: true }
      - { name: assigned_user_id, type: uuid, null: true }
    indexes:
      - [portfolio_item_id, alert_status]
      - [severity_level, alert_status]
      - [assigned_user_id, alert_status]

  - table_name: product_forecast_reference
    purpose:
      Forecast values consumed as advisory references.
    primary_key:
      - forecast_reference_id
    columns:
      - { name: forecast_reference_id, type: uuid, null: false }
      - { name: portfolio_item_id, type: uuid, null: false }
      - { name: forecast_scope_type, type: ppm_forecast_scope_type, null: false }
      - { name: forecast_period_type, type: ppm_period_type, null: false }
      - { name: forecast_period_start, type: date, null: false }
      - { name: forecast_period_end, type: date, null: false }
      - { name: forecast_quantity, type: numeric(18,4), null: true }
      - { name: forecast_sales_amount, type: numeric(18,2), null: true }
      - { name: forecast_currency_code, type: text, null: true }
      - { name: confidence_level, type: numeric(9,4), null: true }
      - { name: forecast_source_code, type: text, null: false }
      - { name: forecast_generated_at, type: timestamptz, null: true }
      - { name: fetched_at, type: timestamptz, null: false }
    indexes:
      - [portfolio_item_id, forecast_period_type, forecast_period_start, forecast_period_end]
      - [forecast_source_code, forecast_generated_at]

  - table_name: product_review_session
    purpose:
      Review meeting parent entity.
    primary_key:
      - review_session_id
    columns:
      - { name: review_session_id, type: uuid, null: false }
      - { name: company_id, type: uuid, null: false }
      - { name: workspace_id, type: uuid, null: false }
      - { name: review_title, type: text, null: false }
      - { name: target_period_start, type: date, null: false }
      - { name: target_period_end, type: date, null: false }
      - { name: target_scope_description, type: text, null: true }
      - { name: scheduled_at, type: timestamptz, null: true }
      - { name: status, type: ppm_review_session_status, null: false }
      - { name: created_by_user_id, type: uuid, null: false }
      - { name: created_at, type: timestamptz, null: false }
      - { name: updated_at, type: timestamptz, null: false }
    indexes:
      - [company_id, workspace_id, status]
      - [scheduled_at]

  - table_name: product_review_session_item
    purpose:
      Product membership in a review session.
    primary_key:
      - review_session_item_id
    unique_keys:
      - [review_session_id, portfolio_item_id]
    columns:
      - { name: review_session_item_id, type: uuid, null: false }
      - { name: review_session_id, type: uuid, null: false }
      - { name: portfolio_item_id, type: uuid, null: false }
      - { name: item_order_no, type: integer, null: true }
      - { name: added_reason, type: text, null: true }
      - { name: added_by_user_id, type: uuid, null: false }
      - { name: created_at, type: timestamptz, null: false }
    indexes:
      - [review_session_id, item_order_no]

  - table_name: product_review_decision
    purpose:
      Decision captured during a review session.
    primary_key:
      - review_decision_id
    columns:
      - { name: review_decision_id, type: uuid, null: false }
      - { name: review_session_id, type: uuid, null: false }
      - { name: portfolio_item_id, type: uuid, null: false }
      - { name: decision_type, type: ppm_decision_type, null: false }
      - { name: before_classification_code, type: ppm_classification_code, null: true }
      - { name: after_classification_code, type: ppm_classification_code, null: true }
      - { name: proposal_action, type: text, null: true }
      - { name: assigned_user_id, type: uuid, null: true }
      - { name: due_date, type: date, null: true }
      - { name: decision_note, type: text, null: true }
      - { name: decided_by_user_id, type: uuid, null: false }
      - { name: decided_at, type: timestamptz, null: false }
    indexes:
      - [review_session_id, decided_at]
      - [portfolio_item_id, decided_at]
      - [assigned_user_id, due_date]

  - table_name: product_approval_request
    purpose:
      Approval request parent entity.
    primary_key:
      - approval_request_id
    columns:
      - { name: approval_request_id, type: uuid, null: false }
      - { name: request_type, type: ppm_request_type, null: false }
      - { name: target_entity_type, type: text, null: false }
      - { name: target_entity_id, type: uuid, null: false }
      - { name: requested_by_user_id, type: uuid, null: false }
      - { name: current_status, type: ppm_approval_status, null: false, default: pending }
      - { name: requested_at, type: timestamptz, null: false }
      - { name: due_at, type: timestamptz, null: true }
    indexes:
      - [current_status, due_at]
      - [target_entity_type, target_entity_id]
      - [requested_by_user_id, current_status]

  - table_name: product_approval_decision
    purpose:
      Approval decision trail.
    primary_key:
      - approval_decision_id
    columns:
      - { name: approval_decision_id, type: uuid, null: false }
      - { name: approval_request_id, type: uuid, null: false }
      - { name: decision_status, type: ppm_approval_status, null: false }
      - { name: decision_comment, type: text, null: true }
      - { name: decided_by_user_id, type: uuid, null: false }
      - { name: decided_at, type: timestamptz, null: false }
    indexes:
      - [approval_request_id, decided_at]

  - table_name: product_share_scope
    purpose:
      Explicit sharing scope registry.
    primary_key:
      - share_scope_id
    columns:
      - { name: share_scope_id, type: uuid, null: false }
      - { name: target_entity_type, type: text, null: false }
      - { name: target_entity_id, type: uuid, null: false }
      - { name: share_type, type: ppm_share_type, null: false }
      - { name: shared_to_type, type: ppm_shared_to_type, null: false }
      - { name: shared_to_id, type: text, null: false }
      - { name: created_by_user_id, type: uuid, null: false }
      - { name: created_at, type: timestamptz, null: false }
      - { name: revoked_at, type: timestamptz, null: true }
    indexes:
      - [target_entity_type, target_entity_id]
      - [shared_to_type, shared_to_id]
      - [revoked_at]

  - table_name: product_audit_event
    purpose:
      Important audit trail for high-value actions.
    primary_key:
      - audit_event_id
    columns:
      - { name: audit_event_id, type: uuid, null: false }
      - { name: entity_type, type: text, null: false }
      - { name: entity_id, type: uuid, null: false }
      - { name: event_type, type: text, null: false }
      - { name: before_payload, type: jsonb, null: true }
      - { name: after_payload, type: jsonb, null: true }
      - { name: actor_user_id, type: uuid, null: false }
      - { name: event_at, type: timestamptz, null: false }
      - { name: source_channel, type: text, null: true }
    indexes:
      - [entity_type, entity_id, event_at]
      - [event_type, event_at]
      - [actor_user_id, event_at]

  - table_name: product_view_preset
    purpose:
      Saved view/filter/sort preset.
    primary_key:
      - view_preset_id
    columns:
      - { name: view_preset_id, type: uuid, null: false }
      - { name: user_id, type: uuid, null: false }
      - { name: preset_name, type: text, null: false }
      - { name: target_screen_code, type: text, null: false }
      - { name: filter_payload, type: jsonb, null: true }
      - { name: sort_payload, type: jsonb, null: true }
      - { name: column_payload, type: jsonb, null: true }
      - { name: is_default, type: boolean, null: false, default: false }
      - { name: created_at, type: timestamptz, null: false }
      - { name: updated_at, type: timestamptz, null: false }
    indexes:
      - [user_id, target_screen_code]
      - [user_id, is_default]

  - table_name: product_sync_state
    purpose:
      Draft/sync/conflict state tracker.
    primary_key:
      - sync_state_id
    columns:
      - { name: sync_state_id, type: uuid, null: false }
      - { name: entity_type, type: text, null: false }
      - { name: entity_id, type: uuid, null: false }
      - { name: local_state, type: text, null: true }
      - { name: sync_status, type: ppm_sync_status, null: false }
      - { name: conflict_flag, type: boolean, null: false, default: false }
      - { name: last_synced_at, type: timestamptz, null: true }
      - { name: last_local_updated_at, type: timestamptz, null: true }
    indexes:
      - [entity_type, entity_id]
      - [sync_status, conflict_flag]

# ============================================================
# 3. FOREIGN KEY CONTRACTS
# ============================================================

foreign_keys:

  - from: product_metric_snapshot.portfolio_item_id
    to: product_portfolio_item.portfolio_item_id

  - from: product_score.portfolio_item_id
    to: product_portfolio_item.portfolio_item_id

  - from: product_classification.portfolio_item_id
    to: product_portfolio_item.portfolio_item_id

  - from: product_classification_draft.portfolio_item_id
    to: product_portfolio_item.portfolio_item_id

  - from: product_classification_draft.based_score_id
    to: product_score.product_score_id

  - from: product_action_proposal.portfolio_item_id
    to: product_portfolio_item.portfolio_item_id

  - from: product_action_proposal_history.proposal_id
    to: product_action_proposal.proposal_id

  - from: product_issue_note.portfolio_item_id
    to: product_portfolio_item.portfolio_item_id

  - from: product_comment.portfolio_item_id
    to: product_portfolio_item.portfolio_item_id

  - from: product_alert.portfolio_item_id
    to: product_portfolio_item.portfolio_item_id

  - from: product_forecast_reference.portfolio_item_id
    to: product_portfolio_item.portfolio_item_id

  - from: product_review_session_item.review_session_id
    to: product_review_session.review_session_id

  - from: product_review_session_item.portfolio_item_id
    to: product_portfolio_item.portfolio_item_id

  - from: product_review_decision.review_session_id
    to: product_review_session.review_session_id

  - from: product_review_decision.portfolio_item_id
    to: product_portfolio_item.portfolio_item_id

  - from: product_approval_decision.approval_request_id
    to: product_approval_request.approval_request_id

# ============================================================
# 4. STATE TRANSITION RULES
# ============================================================

state_transition_rules:

  classification_draft:
    allowed_transitions:
      draft:
        - submitted
        - withdrawn
        - superseded
      submitted:
        - withdrawn
        - superseded
      withdrawn: []
      superseded: []

  proposal_status:
    allowed_transitions:
      draft:
        - submitted
      submitted:
        - in_review
        - rejected
      in_review:
        - approved
        - rejected
        - draft
      approved:
        - in_progress
      in_progress:
        - completed
      rejected: []
      completed: []

  approval_status:
    allowed_transitions:
      pending:
        - approved
        - rejected
        - sent_back
        - on_hold
      on_hold:
        - approved
        - rejected
        - sent_back
      sent_back: []
      approved: []
      rejected: []

# ============================================================
# 5. BUSINESS CONSTRAINT RULES
# ============================================================

business_constraints:
- product_portfolio_item must remain unique per company/workspace/product_id
- current approved classification must be represented by at most one product_classification row with current_flag=true per portfolio_item_id
- product_classification_draft and product_classification must not be merged
- product_metric_snapshot date range must satisfy metric_period_start <= metric_period_end
- product_score date range must satisfy score_period_start <= score_period_end
- product_forecast_reference date range must satisfy forecast_period_start <= forecast_period_end
- monetary values must not be interpreted without currency context
- product_approval_request with current_status in approved/rejected/sent_back must be treated as closed
- product_review_session_item must be unique per review session and product
- share scope revocation must remain traceable through revoked_at rather than deletion-first design

# ============================================================
# 6. QUERY HOTSPOTS
# ============================================================

query_hotspots:
- portfolio list by company/workspace with filters on classification/category/brand
- latest metric snapshot and latest score per portfolio item
- open proposals by owner and due date
- open alerts by severity and assignee
- pending approvals by due_at
- review session details with joined review items and decisions
- audit history by entity_type/entity_id

# ============================================================
# 7. PHASE-1 MINIMUM TABLE SET
# ============================================================

phase_1_minimum_tables:
- product_portfolio_item
- product_metric_snapshot
- product_score
- product_classification
- product_classification_draft
- product_action_proposal
- product_action_proposal_history
- product_comment
- product_alert
- product_forecast_reference
- product_view_preset

phase_2_required_tables:
- product_issue_note
- product_review_session
- product_review_session_item
- product_review_decision
- product_approval_request
- product_approval_decision
- product_share_scope
- product_audit_event
- product_sync_state

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300007_PRODUCT_PORTFOLIO_MANAGER_EXACT_TABLES_AND_ENUMS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300008_PRODUCT_PORTFOLIO_MANAGER_ENTITY_RELATION_MATRIX.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER ENTITY RELATION MATRIX
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

entity_relation_matrix:

  product_portfolio_item:
    one_to_many:
      - product_metric_snapshot
      - product_score
      - product_classification
      - product_classification_draft
      - product_action_proposal
      - product_issue_note
      - product_comment
      - product_alert
      - product_forecast_reference
      - product_review_session_item
      - product_review_decision

  product_action_proposal:
    one_to_many:
      - product_action_proposal_history

  product_review_session:
    one_to_many:
      - product_review_session_item
      - product_review_decision

  product_approval_request:
    one_to_many:
      - product_approval_decision

read_patterns:
- portfolio list joins product_portfolio_item + latest product_metric_snapshot + latest product_score + alert/proposal flags
- product detail joins product_portfolio_item + latest snapshot + latest score + open proposals + open alerts + latest comments + latest forecast reference
- review detail joins product_review_session + product_review_session_item + product_review_decision + product_portfolio_item
- approval queue joins product_approval_request + latest target state

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300008_PRODUCT_PORTFOLIO_MANAGER_ENTITY_RELATION_MATRIX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300009_PRODUCT_PORTFOLIO_MANAGER_MODEL_TO_API_MAPPING.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER MODEL TO API MAPPING
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

model_to_api_mapping:

  /api/product-portfolio/list:
    reads:
      - product_portfolio_item
      - product_metric_snapshot
      - product_score
      - product_alert
      - product_action_proposal

  /api/product-portfolio/detail:
    reads:
      - product_portfolio_item
      - product_metric_snapshot
      - product_score
      - product_forecast_reference
      - product_alert
      - product_action_proposal
      - product_comment

  /api/product-portfolio/score/refresh:
    writes:
      - product_metric_snapshot
      - product_score
    reads:
      - product_portfolio_item
      - product_forecast_reference

  /api/product-portfolio/classification-draft/save:
    writes:
      - product_classification_draft

  /api/product-portfolio/proposal/save:
    writes:
      - product_action_proposal
      - product_action_proposal_history

  /api/product-portfolio/review-session/create:
    writes:
      - product_review_session

  /api/product-portfolio/review-decision/save:
    writes:
      - product_review_decision

  /api/product-portfolio/approval-request/create:
    writes:
      - product_approval_request

  /api/product-portfolio/approval-decision/save:
    writes:
      - product_approval_decision
      - product_approval_request

  /api/product-portfolio/alerts/list:
    reads:
      - product_alert
      - product_portfolio_item

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300009_PRODUCT_PORTFOLIO_MANAGER_MODEL_TO_API_MAPPING.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300010_PRODUCT_PORTFOLIO_MANAGER_KPI_AND_SCORE_MODEL_FORMAL_DESIGN.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER KPI AND SCORE MODEL FORMAL DESIGN
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Formally defines KPI and score-related model semantics
used by ProductPortfolioManager.

model_principles:
- KPI source values and score outputs must remain distinct
- period semantics are mandatory
- currency semantics are mandatory for money fields
- version semantics are mandatory for score interpretation
- explanation-support fields are first-class

# ============================================================
# 1. KPI SOURCE MODEL SEMANTICS
# ============================================================

primary_kpi_source_entity:
- product_metric_snapshot

primary_kpi_source_semantics:
- holds judgment-time product metrics
- supports reproducibility of score interpretation
- supports cross-product comparison within the same period context
- may preserve both transaction and reporting currency context

kpi_source_fields_of_special_importance:
- metric_period_type
- metric_period_start
- metric_period_end
- transaction_currency_code
- reporting_currency_code
- sales_amount
- sales_quantity
- gross_profit_amount
- gross_profit_rate
- cost_amount
- inventory_quantity
- inventory_amount
- growth_rate
- source_system_code
- source_generated_at
- fetched_at

# ============================================================
# 2. SCORE MODEL SEMANTICS
# ============================================================

primary_score_entity:
- product_score

score_model_semantics:
- one score row represents one scored interpretation
  of one portfolio item for one period under one score version

score_fields_of_special_importance:
- score_period_type
- score_period_start
- score_period_end
- score_version
- sales_score
- margin_score
- growth_score
- inventory_score
- risk_score
- strategic_score
- total_score
- score_summary_text_key
- calculation_basis_ref
- calculated_at

# ============================================================
# 3. SCORE COMPONENT SEMANTICS
# ============================================================

score_component_semantics:

  sales_score:
    meaning:
      Relative or normalized evaluation of product sales scale or strength.

  margin_score:
    meaning:
      Relative or normalized evaluation of product profitability quality.

  growth_score:
    meaning:
      Relative or normalized evaluation of product growth trend.

  inventory_score:
    meaning:
      Relative or normalized evaluation of inventory health or inventory-related operational strength.

  risk_score:
    meaning:
      Relative or normalized evaluation of product risk posture.

  strategic_score:
    meaning:
      Evaluation of strategy-oriented importance or support weighting.

  total_score:
    meaning:
      Aggregated evaluation output used for comparison support.

# ============================================================
# 4. VERSION SEMANTICS
# ============================================================

version_semantics:
- score_version identifies the scoring rule set used
- score outputs from different score_version values must not be treated as implicitly equivalent
- historical score interpretation may require version-aware reading

# ============================================================
# 5. CLASSIFICATION SUGGESTION RELATION
# ============================================================

classification_suggestion_relation:
- classification suggestion may be derived from product_score
- classification suggestion is not the same entity as product_score
- classification suggestion should remain interpretable from score context and policy context

# ============================================================
# 6. KPI/FORECAST RELATION
# ============================================================

kpi_forecast_relation:
- forecast references may contextualize KPI interpretation
- forecast data remains advisory
- forecast mismatch may influence alerting or risk interpretation
- forecast data should not silently overwrite KPI source semantics

# ============================================================
# 7. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
The KPI and score model in ProductPortfolioManager
must preserve period clarity,
currency clarity,
version clarity,
and explanation-ready semantics for product judgment.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300010_PRODUCT_PORTFOLIO_MANAGER_KPI_AND_SCORE_MODEL_FORMAL_DESIGN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300011_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_AND_LIFECYCLE_MODEL_FORMAL_DESIGN.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER CLASSIFICATION AND LIFECYCLE MODEL FORMAL DESIGN
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Formally defines model semantics for lifecycle and classification.

model_principles:
- lifecycle lives on product_portfolio_item as contextual state
- approved classification lives in product_classification
- draft classification lives in product_classification_draft
- current classification pointer may exist on product_portfolio_item for list usability
- history must remain reconstructable

# ============================================================
# 1. LIFECYCLE MODEL SEMANTICS
# ============================================================

primary_lifecycle_entity:
- product_portfolio_item

lifecycle_field:
- lifecycle_stage

official_lifecycle_values:
- unknown
- launch
- growth
- mature
- decline
- retired

lifecycle_semantics:
unknown:
  meaning: lifecycle not yet confidently determined
launch:
  meaning: early introduction phase
growth:
  meaning: expanding adoption phase
mature:
  meaning: stable or established phase
decline:
  meaning: weakening or shrinking phase
retired:
  meaning: product no longer active as a live business offering

# ============================================================
# 2. CLASSIFICATION MODEL SEMANTICS
# ============================================================

approved_classification_entity:
- product_classification

draft_classification_entity:
- product_classification_draft

current_pointer_field:
- product_portfolio_item.current_classification_code

official_classification_values:
- focus
- growth
- profit_core
- maintain
- improve
- risk_watch
- retire_candidate
- seasonal
- test

classification_semantics:
focus:
  meaning: high-priority strategic emphasis product
growth:
  meaning: product with expansion emphasis
profit_core:
  meaning: profitability-important core product
maintain:
  meaning: stable keep-running product
improve:
  meaning: product requiring active improvement effort
risk_watch:
  meaning: product needing caution and closer monitoring
retire_candidate:
  meaning: product under retirement consideration
seasonal:
  meaning: product with recurring seasonal importance
test:
  meaning: exploratory or experimental product

# ============================================================
# 3. HISTORY SEMANTICS
# ============================================================

history_semantics:
- approved classification rows preserve strategic timeline
- draft rows preserve pre-finalization work
- effective_from and effective_to support approved-history interpretation
- current_flag identifies latest approved classification row
- current_classification_code on product_portfolio_item is a convenience pointer, not full history

# ============================================================
# 4. RELATION SEMANTICS
# ============================================================

relation_semantics:
- lifecycle_stage may influence review interpretation
- classification_code may influence dashboard and filtering behavior
- lifecycle_stage does not replace classification_code
- classification_code does not replace lifecycle_stage

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
The model must preserve lifecycle as contextual product phase
and classification as governed strategy meaning,
with clear support for draft/final separation and historical traceability.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300011_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_AND_LIFECYCLE_MODEL_FORMAL_DESIGN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300012_PRODUCT_PORTFOLIO_MANAGER_SETTINGS_LOCALE_CURRENCY_PRESET_MODEL_FORMAL_DESIGN.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER SETTINGS LOCALE CURRENCY PRESET MODEL FORMAL DESIGN
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Formally defines model semantics for settings,
locale context,
currency context,
and saved view presets.

model_principles:
- user preference meaning and view preset meaning must remain separable
- locale and currency settings are contextual display controls
- preset payloads are operator-defined view artifacts
- model semantics must support cross-screen reuse

# ============================================================
# 1. USER PREFERENCE SEMANTICS
# ============================================================

user_preference_semantics:
A user preference record, whether explicit in a dedicated model later
or represented through settings payload handling,
controls operator-specific defaults such as:
- locale
- reporting/display currency
- default period type
- default display density where supported

preference_rule:
Preferences affect presentation defaults,
not business truth ownership.

# ============================================================
# 2. VIEW PRESET SEMANTICS
# ============================================================

primary_preset_entity:
- product_view_preset

view_preset_semantics:
A view preset stores reusable operator-defined list or screen context,
typically including:
- target_screen_code
- filter_payload
- sort_payload
- column_payload
- is_default

preset_meaning:
- preset_name identifies a reusable operator-facing configuration
- target_screen_code determines where the preset applies
- filter_payload stores narrowing logic
- sort_payload stores ordering logic
- column_payload stores visibility/density preferences
- is_default indicates preferred preset in that context

# ============================================================
# 3. LOCALE/CURRENCY CONTEXT SEMANTICS
# ============================================================

locale_currency_context_semantics:
Locale and reporting/display currency may be carried:
- by user preference
- by current display context
- by request payload context

semantic_rule:
Display locale and reporting/display currency
must remain identifiable as context,
not as replacement of source data meaning.

# ============================================================
# 4. SHARED PRESET SEMANTICS
# ============================================================

shared_preset_semantics:
If team or shared presets are later introduced,
their semantics must remain distinct from personal presets,
including:
- ownership
- edit authority
- defaulting rules
- visibility scope

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Settings, locale/currency context,
and view preset model semantics in ProductPortfolioManager
must preserve presentation control and operator efficiency
without redefining underlying business truth.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/0300012_PRODUCT_PORTFOLIO_MANAGER_SETTINGS_LOCALE_CURRENCY_PRESET_MODEL_FORMAL_DESIGN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/030510_PRODUCTPORTFOLIOMANAGER_PORTFOLIO_CONTROL_TIMELINE_MODEL.md -->
# ============================================================
# PRODUCTPORTFOLIOMANAGER PORTFOLIO CONTROL TIMELINE MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: ProductPortfolioManager
directory: 030.model
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: portfolio-control-timeline-model

purpose:
Defines the logical model for a unified portfolio control timeline.

core_entity:
- portfolio_control_timeline_item

recommended_fields:
- portfolioControlTimelineItemId
- portfolioId
- relatedScenarioId
- relatedExceptionId
- relatedDecisionSupportBlockerId
- itemTypeCode
- itemTitle
- itemSummary
- portfolioStateCode
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
- portfolio cockpit assembly
- prioritization exception review
- approval review
- decision-support readiness visibility
- management trend visibility

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/030.model/030510_PRODUCTPORTFOLIOMANAGER_PORTFOLIO_CONTROL_TIMELINE_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/040.runtime/0400000_PRODUCT_PORTFOLIO_MANAGER_RUNTIME_OVERVIEW.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER RUNTIME OVERVIEW
# ============================================================

status: canonical
layer: runtime
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

runtime_summary:
Runtime is organized around loading reference facts,
materializing judgment views,
preserving draft work,
and finalizing approved outcomes with auditability.

key_runtime_loops:
- snapshot refresh
- score refresh
- classification draft/edit/finalize
- proposal lifecycle
- review session lifecycle
- approval lifecycle
- alert detection and handling

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/040.runtime/0400000_PRODUCT_PORTFOLIO_MANAGER_RUNTIME_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/040.runtime/0400001_PORTFOLIO_SCORE_RUNTIME.md -->
# ============================================================
# PORTFOLIO SCORE RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

runtime_steps:
1. load product reference scope
2. fetch authoritative business indicators
3. resolve scoring formula version
4. calculate or hydrate score records
5. persist score snapshot
6. expose score explanation metadata

runtime_rules:
- score version must be explicit
- source metrics must be attributable
- failures must not fabricate values

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/040.runtime/0400001_PORTFOLIO_SCORE_RUNTIME.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/040.runtime/0400001_SCORE_RUNTIME.md -->
# ============================================================
# SCORE RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

runtime_flow:
1. identify portfolio target scope
2. fetch or hydrate metric snapshot
3. resolve score version
4. calculate or load score values
5. persist score result
6. expose explanation metadata
7. surface classification suggestions where applicable

runtime_rules:
- score values must remain attributable
- score refresh time must be visible
- failures must not fabricate values

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/040.runtime/0400001_SCORE_RUNTIME.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/040.runtime/0400002_CLASSIFICATION_RUNTIME.md -->
# ============================================================
# CLASSIFICATION RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

states:
- draft
- submitted
- approved
- rejected
- withdrawn
- superseded

rules:
- editing a draft must not replace an approved classification directly
- approval outcome must preserve before/after visibility
- current classification pointer must be updated only through valid finalization

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/040.runtime/0400002_CLASSIFICATION_RUNTIME.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/040.runtime/0400003_REVIEW_AND_APPROVAL_RUNTIME.md -->
# ============================================================
# REVIEW AND APPROVAL RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

review_runtime:
- create review session
- attach review items
- inspect scores and proposals
- record discussion and decisions
- create follow-up actions
- submit approvals where needed

approval_runtime:
- create request
- assign pending state
- review target detail
- approve / reject / send back / hold
- persist decision trail

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/040.runtime/0400003_REVIEW_AND_APPROVAL_RUNTIME.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/040.runtime/0400003_REVIEW_RUNTIME.md -->
# ============================================================
# REVIEW RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

review_runtime:
- create review session
- gather target items
- load scores and proposals
- record management comments
- record decisions
- generate follow-up actions

decision_runtime_rule:
Decision must preserve before/after state
and attach ownership and timing.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/040.runtime/0400003_REVIEW_RUNTIME.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500000_PRODUCT_PORTFOLIO_MANAGER_FLOW_OVERVIEW.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER FLOW OVERVIEW
# ============================================================

status: canonical
layer: flow
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

primary_flows:
- product portfolio onboarding flow
- metric refresh flow
- score refresh flow
- classification review flow
- proposal creation flow
- review session flow
- approval flow
- alert handling flow

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500000_PRODUCT_PORTFOLIO_MANAGER_FLOW_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500001_PORTFOLIO_LIST_AND_DETAIL_FLOW.md -->
# ============================================================
# PORTFOLIO LIST AND DETAIL FLOW
# ============================================================

status: canonical
layer: flow
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

flow:
1. open dashboard or portfolio list
2. apply search, filters, and sorting
3. select target product
4. inspect detail sections
5. choose next action:
   - compare
   - classify
   - propose
   - review
   - approve

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500001_PORTFOLIO_LIST_AND_DETAIL_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500001_PORTFOLIO_REVIEW_FLOW.md -->
# ============================================================
# PORTFOLIO REVIEW FLOW
# ============================================================

status: canonical
layer: flow
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

flow:
1. open target review period
2. load portfolio candidates
3. compute or fetch scores
4. display proposed classifications
5. attach comments and issues
6. record provisional actions
7. conduct approval
8. finalize review result

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500001_PORTFOLIO_REVIEW_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500002_PROPOSAL_FLOW.md -->
# ============================================================
# PROPOSAL FLOW
# ============================================================

status: canonical
layer: flow
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

flow:
1. identify portfolio issue or opportunity
2. create proposal
3. attach expected effect
4. submit for review
5. approve or reject
6. optionally send integration request
7. record outcome

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500002_PROPOSAL_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500002_SCORE_AND_CLASSIFICATION_FLOW.md -->
# ============================================================
# SCORE AND CLASSIFICATION FLOW
# ============================================================

status: canonical
layer: flow
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

flow:
1. load metric snapshot
2. calculate or fetch score
3. inspect score rationale
4. generate or inspect classification suggestion
5. create or update draft
6. submit for approval if required
7. finalize approved classification

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500002_SCORE_AND_CLASSIFICATION_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500003_PROPOSAL_FLOW.md -->
# ============================================================
# PRODUCT ACTION PROPOSAL FLOW
# ============================================================

status: canonical
layer: flow
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

flow:
1. identify issue or opportunity
2. create proposal
3. add expected effect and risks
4. save draft
5. submit for review
6. approve / reject / revise
7. record resulting state

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500003_PROPOSAL_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500004_REVIEW_SESSION_FLOW.md -->
# ============================================================
# REVIEW SESSION FLOW
# ============================================================

status: canonical
layer: flow
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

flow:
1. create review session
2. define scope and target period
3. collect target items
4. compare products and proposals
5. record discussion notes
6. capture decisions
7. assign owners and due dates
8. submit approvals where required
9. close review

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500004_REVIEW_SESSION_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500005_APPROVAL_FLOW.md -->
# ============================================================
# APPROVAL FLOW
# ============================================================

status: canonical
layer: flow
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

flow:
1. create approval request
2. enter pending queue
3. approver reviews target detail
4. approver chooses:
   - approve
   - reject
   - send back
   - hold
5. persist decision
6. reflect resulting state in target entity

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500005_APPROVAL_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500006_PRODUCT_PORTFOLIO_MANAGER_EXACT_FLOW_PAYLOADS.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER EXACT FLOW PAYLOADS
# ============================================================

status: canonical
layer: flow
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Fix exact request / response payload shapes
for core application flows.

# ============================================================
# 1. PORTFOLIO LIST LOAD
# ============================================================

flow_id: ppm-flow-001
flow_name: portfolio-list-load

request_payload:
  company_id: string
  workspace_id: string
  user_id: string
  period:
    period_type: enum(monthly|quarterly|half_year|yearly|custom)
    start_date: string
    end_date: string
  filters:
    search_text: string|null
    classification_codes: string[]
    category_codes: string[]
    brand_codes: string[]
    lifecycle_stages: string[]
    has_alert: boolean|null
    has_proposal: boolean|null
    review_target_only: boolean|null
  sort:
    field: enum(updated_at|sales_amount|gross_profit_amount|growth_rate|total_score|priority_rank)
    direction: enum(asc|desc)
  paging:
    page: integer
    page_size: integer
  display_context:
    locale: string
    reporting_currency_code: string
    device_type: enum(phone|tablet|pc)

response_payload:
  items:
    - portfolio_item_id: string
      product_id: string
      product_code: string
      product_name: string
      category_code: string
      category_name: string
      brand_code: string
      brand_name: string
      lifecycle_stage: string
      current_classification_code: string|null
      current_priority_rank: integer|null
      metrics:
        reporting_currency_code: string
        sales_amount: number|null
        gross_profit_amount: number|null
        gross_profit_rate: number|null
        growth_rate: number|null
      score:
        total_score: number|null
        score_version: string|null
        calculated_at: string|null
      flags:
        has_alert: boolean
        has_open_proposal: boolean
        is_review_target: boolean
      updated_at: string
  paging:
    page: integer
    page_size: integer
    total_count: integer

# ============================================================
# 2. PRODUCT DETAIL LOAD
# ============================================================

flow_id: ppm-flow-002
flow_name: product-detail-load

request_payload:
  company_id: string
  workspace_id: string
  portfolio_item_id: string
  user_id: string
  period:
    period_type: enum(monthly|quarterly|half_year|yearly|custom)
    start_date: string
    end_date: string
  display_context:
    locale: string
    reporting_currency_code: string

response_payload:
  product:
    portfolio_item_id: string
    product_id: string
    product_code: string
    product_name: string
    category_code: string
    category_name: string
    brand_code: string
    brand_name: string
    series_code: string|null
    series_name: string|null
    lifecycle_stage: string|null
    owner_user_id: string|null
    current_classification_code: string|null
    current_priority_rank: integer|null
    active_flag: boolean
  metric_snapshot:
    metric_snapshot_id: string|null
    metric_period_type: string
    metric_period_start: string
    metric_period_end: string
    transaction_currency_code: string|null
    reporting_currency_code: string|null
    sales_amount: number|null
    sales_quantity: number|null
    gross_profit_amount: number|null
    gross_profit_rate: number|null
    cost_amount: number|null
    inventory_quantity: number|null
    inventory_amount: number|null
    growth_rate: number|null
    source_system_code: string|null
    source_generated_at: string|null
    fetched_at: string|null
  score:
    product_score_id: string|null
    score_version: string|null
    sales_score: number|null
    margin_score: number|null
    growth_score: number|null
    inventory_score: number|null
    risk_score: number|null
    strategic_score: number|null
    total_score: number|null
    calculated_at: string|null
  forecast_reference:
    forecast_reference_id: string|null
    forecast_scope_type: string|null
    forecast_period_type: string|null
    forecast_period_start: string|null
    forecast_period_end: string|null
    forecast_quantity: number|null
    forecast_sales_amount: number|null
    forecast_currency_code: string|null
    confidence_level: number|null
    forecast_source_code: string|null
    forecast_generated_at: string|null
    fetched_at: string|null
  alerts:
    - alert_id: string
      alert_type_code: string
      severity_level: string
      alert_status: string
      detected_at: string
  open_proposals:
    - proposal_id: string
      proposal_type_code: string
      proposal_title: string
      proposal_status: string
      priority_level: string|null
      due_date: string|null
  latest_comments:
    - comment_id: string
      context_type: string
      comment_body: string
      created_by_user_id: string
      created_at: string
  source_context:
    erp_reference: boolean
    forecast_reference: boolean
    last_fact_refresh_at: string|null

# ============================================================
# 3. SCORE REFRESH
# ============================================================

flow_id: ppm-flow-003
flow_name: score-refresh

request_payload:
  company_id: string
  workspace_id: string
  portfolio_item_id: string
  user_id: string
  period:
    period_type: enum(monthly|quarterly|half_year|yearly|custom)
    start_date: string
    end_date: string
  score_version: string
  reporting_currency_code: string

response_payload:
  metric_snapshot:
    metric_snapshot_id: string
    fetched_at: string
  product_score:
    product_score_id: string
    score_version: string
    sales_score: number|null
    margin_score: number|null
    growth_score: number|null
    inventory_score: number|null
    risk_score: number|null
    strategic_score: number|null
    total_score: number|null
    calculated_at: string
    calculation_basis_ref: string|null
  classification_suggestion:
    suggested_classification_code: string|null
    suggestion_reason_key: string|null

# ============================================================
# 4. CLASSIFICATION DRAFT SAVE
# ============================================================

flow_id: ppm-flow-004
flow_name: classification-draft-save

request_payload:
  company_id: string
  workspace_id: string
  portfolio_item_id: string
  user_id: string
  draft:
    classification_draft_id: string|null
    proposed_classification_code: string
    proposed_reason: string
    based_score_id: string|null
    draft_status: enum(draft|submitted|withdrawn|superseded)

response_payload:
  classification_draft:
    classification_draft_id: string
    portfolio_item_id: string
    proposed_classification_code: string
    proposed_reason: string
    based_score_id: string|null
    draft_by_user_id: string
    draft_status: string
    last_saved_at: string

# ============================================================
# 5. PROPOSAL CREATE / UPDATE
# ============================================================

flow_id: ppm-flow-005
flow_name: proposal-create-update

request_payload:
  company_id: string
  workspace_id: string
  portfolio_item_id: string
  user_id: string
  proposal:
    proposal_id: string|null
    proposal_type_code: enum(increase_price|decrease_price|strengthen_promotion|revise_channel|reduce_inventory|revise_sourcing|maintain|shrink|retire)
    proposal_title: string
    proposal_detail: string
    expected_effect: string|null
    risk_note: string|null
    priority_level: enum(low|medium|high|critical)|null
    due_date: string|null
    owner_user_id: string|null
    proposal_status: enum(draft|submitted|in_review|approved|rejected|in_progress|completed)

response_payload:
  proposal:
    proposal_id: string
    portfolio_item_id: string
    proposal_type_code: string
    proposal_title: string
    proposal_detail: string
    expected_effect: string|null
    risk_note: string|null
    priority_level: string|null
    due_date: string|null
    owner_user_id: string|null
    proposal_status: string
    created_by_user_id: string
    created_at: string
    updated_at: string

# ============================================================
# 6. REVIEW SESSION CREATE
# ============================================================

flow_id: ppm-flow-006
flow_name: review-session-create

request_payload:
  company_id: string
  workspace_id: string
  user_id: string
  review_session:
    review_title: string
    target_period_start: string
    target_period_end: string
    target_scope_description: string|null
    scheduled_at: string|null
    status: enum(draft|scheduled|in_progress|completed|archived)

response_payload:
  review_session:
    review_session_id: string
    review_title: string
    target_period_start: string
    target_period_end: string
    target_scope_description: string|null
    scheduled_at: string|null
    status: string
    created_by_user_id: string
    created_at: string
    updated_at: string

# ============================================================
# 7. REVIEW DECISION SAVE
# ============================================================

flow_id: ppm-flow-007
flow_name: review-decision-save

request_payload:
  company_id: string
  workspace_id: string
  review_session_id: string
  portfolio_item_id: string
  user_id: string
  decision:
    decision_type: enum(classification_change|proposal_adopted|proposal_rejected|hold|recheck|assign_action)
    before_classification_code: string|null
    after_classification_code: string|null
    proposal_action: string|null
    assigned_user_id: string|null
    due_date: string|null
    decision_note: string|null

response_payload:
  review_decision:
    review_decision_id: string
    review_session_id: string
    portfolio_item_id: string
    decision_type: string
    before_classification_code: string|null
    after_classification_code: string|null
    proposal_action: string|null
    assigned_user_id: string|null
    due_date: string|null
    decision_note: string|null
    decided_by_user_id: string
    decided_at: string

# ============================================================
# 8. APPROVAL REQUEST CREATE
# ============================================================

flow_id: ppm-flow-008
flow_name: approval-request-create

request_payload:
  company_id: string
  workspace_id: string
  user_id: string
  approval_request:
    request_type: enum(classification_approval|proposal_approval|review_decision_approval)
    target_entity_type: enum(product_classification_draft|product_action_proposal|product_review_decision)
    target_entity_id: string
    due_at: string|null

response_payload:
  approval_request:
    approval_request_id: string
    request_type: string
    target_entity_type: string
    target_entity_id: string
    requested_by_user_id: string
    current_status: enum(pending|approved|rejected|sent_back|on_hold)
    requested_at: string
    due_at: string|null

# ============================================================
# 9. APPROVAL DECISION SAVE
# ============================================================

flow_id: ppm-flow-009
flow_name: approval-decision-save

request_payload:
  company_id: string
  workspace_id: string
  approval_request_id: string
  user_id: string
  approval_decision:
    decision_status: enum(approved|rejected|sent_back|on_hold)
    decision_comment: string|null

response_payload:
  approval_decision:
    approval_decision_id: string
    approval_request_id: string
    decision_status: string
    decision_comment: string|null
    decided_by_user_id: string
    decided_at: string
  approval_request:
    approval_request_id: string
    current_status: string

# ============================================================
# 10. ALERT LIST LOAD
# ============================================================

flow_id: ppm-flow-010
flow_name: alert-list-load

request_payload:
  company_id: string
  workspace_id: string
  user_id: string
  filters:
    severity_levels: string[]
    alert_type_codes: string[]
    alert_statuses: string[]
    assigned_user_id: string|null
  paging:
    page: integer
    page_size: integer

response_payload:
  alerts:
    - alert_id: string
      portfolio_item_id: string
      product_code: string
      product_name: string
      alert_type_code: string
      severity_level: string
      alert_status: string
      detected_at: string
      resolved_at: string|null
      assigned_user_id: string|null
  paging:
    page: integer
    page_size: integer
    total_count: integer

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500006_PRODUCT_PORTFOLIO_MANAGER_EXACT_FLOW_PAYLOADS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500007_PRODUCT_PORTFOLIO_MANAGER_BUSINESS_FLOW_FORMAL_DESIGN.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER BUSINESS FLOW FORMAL DESIGN
# ============================================================

status: canonical
layer: flow
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Formally defines the business flows of ProductPortfolioManager.
The application is centered on the judgment loop of
evaluation, classification, proposal, review, approval, and auditability.

design_position:
This application is not centered on simple product browsing.
This application is centered on product judgment operations.

flow_principles:
- ERP facts are referenced, not freely overwritten
- application-side judgment is explicitly owned here
- draft and final states must remain separated
- review and approval must remain separated
- important decisions must remain auditable
- device differences must not change business meaning

# ============================================================
# 1. FLOW LANDSCAPE
# ============================================================

core_flow_landscape:
- FLC-01 product portfolio onboarding flow
- FLC-02 metric reference and evaluation refresh flow
- FLC-03 strategic classification review flow
- FLC-04 product action proposal flow
- FLC-05 review session flow
- FLC-06 approval flow
- FLC-07 alert handling flow
- FLC-08 audit and history reference flow

official_judgment_loop:
- onboarding
- fact reference
- evaluation refresh
- classification review
- proposal
- review
- approval
- audit trail preservation

# ============================================================
# 2. FLC-01 PRODUCT PORTFOLIO ONBOARDING FLOW
# ============================================================

flow_id: FLC-01
flow_name: product portfolio onboarding flow

objective:
Bring an ERP-side product into ProductPortfolioManager
as a portfolio-managed target.

start_conditions:
- the product exists in ERP
- the product should be managed as a portfolio target

main_flow:
1. reference ERP product
2. fetch basic product identity and context
3. create product_portfolio_item
4. assign initial state
5. expose the item to portfolio list views

inputs:
- product_id
- product_code
- product_name
- category context
- brand context
- lifecycle context

outputs:
- product_portfolio_item
- active_flag=true by default
- current_classification_code unset or initialized by policy

flow_rules:
- onboarding is not itself a judgment action
- ERP product ownership must remain external
- onboarding only establishes portfolio management scope

# ============================================================
# 3. FLC-02 METRIC REFERENCE AND EVALUATION REFRESH FLOW
# ============================================================

flow_id: FLC-02
flow_name: metric reference and evaluation refresh flow

objective:
Refresh the judgment basis of a product
through metric snapshots and score generation.

start_conditions:
- manual refresh
- scheduled refresh
- pre-review refresh
- product-detail-triggered refresh

main_flow:
1. determine target period
2. fetch product facts from ERP or approved reference source
3. create product_metric_snapshot
4. resolve score_version
5. calculate or hydrate product_score
6. optionally derive classification suggestion
7. expose refreshed state to detail and list views

inputs:
- portfolio_item_id
- period_type
- period_start
- period_end
- reporting_currency_code
- score_version

outputs:
- product_metric_snapshot
- product_score
- optional classification suggestion

failure_rules:
- failed refresh must not create fabricated scores
- last valid score may remain visible only if marked as prior state
- source_generated_at and fetched_at must remain visible when available

flow_rules:
- score is a judgment support value, not a formal ERP fact
- monetary context must remain explicit
- refresh timing must remain attributable

# ============================================================
# 4. FLC-03 STRATEGIC CLASSIFICATION REVIEW FLOW
# ============================================================

flow_id: FLC-03
flow_name: strategic classification review flow

objective:
Review and change the strategic classification of a product
such as focus, growth, improve, or retire_candidate.

start_conditions:
- score refresh completed
- pre-review preparation
- alert-driven reassessment
- explicit management action

main_flow:
1. inspect current classification
2. inspect score, metrics, forecast, and issue context
3. select candidate classification
4. create or update product_classification_draft
5. attach reason
6. save as draft or submit for approval
7. finalize approved classification where applicable

inputs:
- portfolio_item_id
- proposed_classification_code
- proposed_reason
- based_score_id

outputs:
- product_classification_draft
- optional product_approval_request
- product_classification when finalized
- updated current_classification_code pointer

branches:
approval_not_required:
- draft may finalize directly according to policy

approval_required:
- create approval request
- remain pending until decision
- finalize only after approval

flow_rules:
- draft and approved classification must not be merged
- before/after classification visibility is mandatory
- classification is a strategy label, not an ERP category

# ============================================================
# 5. FLC-04 PRODUCT ACTION PROPOSAL FLOW
# ============================================================

flow_id: FLC-04
flow_name: product action proposal flow

objective:
Create, review, and track concrete actions for a product.

start_conditions:
- problem discovery
- opportunity discovery
- pre-review preparation
- review-time discussion
- alert-triggered action need

main_flow:
1. identify target product
2. choose proposal type
3. input proposal detail
4. attach expected effect and risk note
5. save draft
6. submit proposal
7. review proposal
8. approve or reject where required
9. move to execution-oriented state if adopted

inputs:
- proposal_type_code
- proposal_title
- proposal_detail
- expected_effect
- risk_note
- priority_level
- due_date
- owner_user_id

outputs:
- product_action_proposal
- product_action_proposal_history
- optional product_approval_request

official_states:
- draft
- submitted
- in_review
- approved
- rejected
- in_progress
- completed

flow_rules:
- classification expresses positioning
- proposal expresses action
- proposal lifecycle must remain historically traceable

# ============================================================
# 6. FLC-05 REVIEW SESSION FLOW
# ============================================================

flow_id: FLC-05
flow_name: review session flow

objective:
Compare multiple products and proposals
and record strategic management decisions.

start_conditions:
- scheduled periodic review
- increase in problem products
- strategy reset timing
- forecast volatility
- explicit management initiation

main_flow:
1. create product_review_session
2. set target period and scope
3. collect target products
4. create product_review_session_item rows
5. compare scores, proposals, alerts, and forecast references
6. record discussion comments
7. capture review decisions
8. assign owners and due dates where necessary
9. create approval requests for approval-requiring outcomes
10. complete session

inputs:
- review_title
- target_period
- target_scope_description
- target products
- comments
- decisions

outputs:
- product_review_session
- product_review_session_item
- product_review_decision
- optional product_approval_request

decision_examples:
- classification_change
- proposal_adopted
- proposal_rejected
- hold
- recheck
- assign_action

flow_rules:
- review is a decision-making forum
- review is not always the same as final approval
- comparison visibility is a first-class requirement

# ============================================================
# 7. FLC-06 APPROVAL FLOW
# ============================================================

flow_id: FLC-06
flow_name: approval flow

objective:
Finalize important classification changes,
proposals, and review outcomes through explicit approval.

start_conditions:
- submitted classification change
- submitted proposal requiring approval
- review decision requiring approval

main_flow:
1. create product_approval_request
2. place target into pending queue
3. approver reviews target context
4. approver chooses approved / rejected / sent_back / on_hold
5. persist product_approval_decision
6. reflect resulting state in target entity
7. record audit event

inputs:
- request_type
- target_entity_type
- target_entity_id
- decision_status
- decision_comment

outputs:
- product_approval_request
- product_approval_decision
- target entity state update
- product_audit_event

approval_impact_examples:
classification_approval:
- classification draft becomes formal classification

proposal_approval:
- proposal enters approved state

review_decision_approval:
- review decision becomes formally actionable

flow_rules:
- closed approval requests must not be re-decided
- important approval outcomes should remain attributable
- approval and execution are not the same thing

# ============================================================
# 8. FLC-07 ALERT HANDLING FLOW
# ============================================================

flow_id: FLC-07
flow_name: alert handling flow

objective:
Detect and surface attention-worthy product situations
and connect them to action flows.

start_conditions:
- sales_drop
- margin_drop
- growth_slowdown
- inventory_risk
- forecast_gap
- review_overdue
- proposal_overdue

main_flow:
1. detect condition
2. create product_alert
3. expose alert in list and product detail
4. inspect target product
5. choose next action:
   - classification review
   - proposal creation
   - review session inclusion
6. update alert state to acknowledged / resolved / dismissed when appropriate

outputs:
- product_alert
- downstream linkage to classification, proposal, or review flows

flow_rules:
- alert is not itself a decision
- alert is an entry point to judgment activity
- severity and ownership should remain visible

# ============================================================
# 9. FLC-08 AUDIT AND HISTORY REFERENCE FLOW
# ============================================================

flow_id: FLC-08
flow_name: audit and history reference flow

objective:
Allow users with appropriate authority
to trace important product judgment history.

covered_targets:
- classification changes
- proposal status transitions
- approval outcomes
- review decisions
- sharing changes
- source-boundary-relevant events

main_flow:
1. select entity or product
2. filter by event type and time range
3. inspect before/after context
4. inspect actor and event time
5. navigate to related entity details where necessary

outputs:
- product_audit_event visibility
- linked entity traceability

flow_rules:
- important judgment operations must remain reconstructable
- audit views must distinguish facts from judgments
- audit views must distinguish draft history from approved history

# ============================================================
# 10. FLOW CONNECTIONS
# ============================================================

flow_connections:
- evaluation refresh supports classification review
- classification review may trigger approval
- alerts may trigger classification review, proposal, or review session inclusion
- proposals may be compared during review sessions
- review sessions may create approval requests
- approval outcomes may finalize classification or proposal status
- all important final outcomes should be traceable through audit history

# ============================================================
# 11. ROLE-ORIENTED FLOW PARTICIPATION
# ============================================================

viewer:
- inspect dashboard
- inspect portfolio list
- inspect detail
- inspect history where allowed

editor:
- create comments
- create proposal drafts
- create classification drafts

manager:
- organize review sessions
- choose review targets
- record decisions
- submit approval requests

approver:
- inspect pending requests
- approve
- reject
- send_back
- hold

# ============================================================
# 12. NON-NEGOTIABLE BUSINESS PRINCIPLES
# ============================================================

non_negotiable_principles:
- do not mix facts and judgments
- do not mix draft and final states
- do not mix review and approval
- do not treat alerts as conclusions
- do not treat forecast as formal truth
- do not erase important decision history

# ============================================================
# 13. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
The true center of ProductPortfolioManager is not product registration.
The true center is product judgment operations.

official_core_loop:
onboarding
-> fact reference
-> evaluation refresh
-> classification review
-> proposal
-> review
-> approval
-> audit preservation

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500007_PRODUCT_PORTFOLIO_MANAGER_BUSINESS_FLOW_FORMAL_DESIGN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500008_PRODUCT_PORTFOLIO_MANAGER_REVIEW_SESSION_FORMAL_FLOW.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER REVIEW SESSION FORMAL FLOW
# ============================================================

status: canonical
layer: flow
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Formally defines the review session flow
from preparation through completion and follow-up.

flow_principles:
- review sessions operate on explicit target scope
- review is a comparison and discussion flow
- review decisions must remain attributable
- review completion does not automatically equal final approval

# ============================================================
# 1. PREPARATION FLOW
# ============================================================

preparation_flow:
1. create review session
2. define title and target period
3. define scope description
4. choose target gathering method
5. add review targets
6. verify metrics, scores, proposals, and alerts are available
7. move to scheduled or in_progress state

inputs:
- review_title
- target_period_start
- target_period_end
- target_scope_description
- target product candidates

outputs:
- product_review_session
- product_review_session_item rows

# ============================================================
# 2. ACTIVE REVIEW FLOW
# ============================================================

active_review_flow:
1. open session
2. inspect review target list
3. compare target products
4. inspect proposals and alert context
5. add discussion comments
6. capture decisions per target
7. assign owners and due dates if needed
8. identify which outcomes require approval

inputs:
- comments
- decision_type
- before_classification_code
- after_classification_code
- proposal_action
- assigned_user_id
- due_date
- decision_note

outputs:
- product_review_decision
- updated discussion context
- optional approval-request candidates

# ============================================================
# 3. COMPLETION FLOW
# ============================================================

completion_flow:
1. verify required decisions are recorded
2. verify follow-up assignments where needed
3. create approval requests for approval-requiring decisions
4. mark session completed
5. preserve session history for later reference

outputs:
- completed review_session state
- approval requests where required
- stable historical review record

# ============================================================
# 4. ARCHIVE FLOW
# ============================================================

archive_flow:
1. identify completed session ready for archive
2. move session to archived state
3. preserve read-oriented access and traceability

rule:
Archive does not erase review meaning or decision history.

# ============================================================
# 5. EXCEPTION FLOW
# ============================================================

exception_flow_examples:
- target removed before active discussion
- missing score refresh for a target
- proposal changed during active review
- approval requirement discovered late
- session paused and resumed later

exception_rules:
- exceptions should remain visible in operational history when important
- review record should not silently hide material context shifts
- missing data should not be disguised as stable comparison

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
The review session flow in ProductPortfolioManager
must support preparation,
structured comparison,
decision capture,
follow-up ownership,
and explicit handoff to approval where required.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500008_PRODUCT_PORTFOLIO_MANAGER_REVIEW_SESSION_FORMAL_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500009_PRODUCT_PORTFOLIO_MANAGER_PROPOSAL_FORMAL_FLOW.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER PROPOSAL FORMAL FLOW
# ============================================================

status: canonical
layer: flow
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Formally defines the proposal lifecycle flow
from creation through outcome.

flow_principles:
- proposal creation must remain explicit
- proposal review must remain visible
- approval and proposal state progression must remain distinguishable
- history must preserve meaningful state changes

# ============================================================
# 1. CREATION FLOW
# ============================================================

creation_flow:
1. identify target product
2. choose proposal type
3. input title and detail
4. input expected effect and risk note
5. assign owner and due date where applicable
6. save as draft or submit

inputs:
- portfolio_item_id
- proposal_type_code
- proposal_title
- proposal_detail
- expected_effect
- risk_note
- priority_level
- due_date
- owner_user_id

outputs:
- product_action_proposal
- initial proposal status

# ============================================================
# 2. REVIEW FLOW
# ============================================================

review_flow:
1. inspect submitted proposal
2. compare with KPI, classification, and alert context
3. discuss proposal in detail or review session
4. move to in_review where active evaluation is underway
5. determine whether approval is required

outputs:
- updated proposal status
- possible review-session linkage
- optional approval-request candidate

# ============================================================
# 3. APPROVAL FLOW CONNECTION
# ============================================================

approval_connection_flow:
1. identify proposal requiring approval
2. create approval request
3. approver decides approved / rejected / sent_back / on_hold
4. reflect result into proposal lifecycle meaning where policy defines it

rule:
Approval decision is not the same record as proposal state,
even when it influences proposal state.

# ============================================================
# 4. EXECUTION-ORIENTED FLOW
# ============================================================

execution_oriented_flow:
1. proposal becomes approved
2. business operation begins work
3. proposal moves to in_progress when execution tracking starts
4. proposal moves to completed when proposal outcome is considered reached

rule:
Completed proposal does not automatically prove all downstream ERP-side execution occurred,
unless explicitly supported by separate evidence and policy.

# ============================================================
# 5. REJECTION AND REWORK FLOW
# ============================================================

rejection_and_rework_flow:
1. proposal is rejected or sent back
2. proposal remains historically visible
3. operator may copy or revise into a new or reworked proposal according to policy
4. history must preserve prior outcome

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
The proposal flow in ProductPortfolioManager
must preserve explicit action-candidate lifecycle,
review visibility,
approval linkage,
and outcome traceability.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500009_PRODUCT_PORTFOLIO_MANAGER_PROPOSAL_FORMAL_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500010_PRODUCT_PORTFOLIO_MANAGER_DASHBOARD_LIST_COMPARISON_FORMAL_FLOW.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER DASHBOARD LIST COMPARISON FORMAL FLOW
# ============================================================

status: canonical
layer: flow
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Formally defines operator flow across dashboard,
portfolio list,
and comparison surfaces.

flow_principles:
- dashboard should shorten time to useful action
- list should support progressive narrowing
- comparison should support explicit decision preparation
- surface transitions should preserve context where practical

# ============================================================
# 1. DASHBOARD FLOW
# ============================================================

dashboard_flow:
1. open dashboard
2. inspect KPI summaries
3. inspect high-priority segments
4. inspect alert and approval workload
5. choose next action:
   - open filtered portfolio list
   - open product detail
   - open alert list
   - open approval queue
   - open review-related context

inputs:
- dashboard period context
- reporting currency context
- user visibility context

outputs:
- narrowed navigation path
- explicit operator focus area

# ============================================================
# 2. PORTFOLIO LIST FLOW
# ============================================================

portfolio_list_flow:
1. open list
2. apply search
3. apply filters
4. apply sorting
5. inspect target rows
6. choose next action:
   - open product detail
   - multi-select targets
   - open comparison
   - open classification draft flow
   - open proposal flow
   - add target to review context where allowed

inputs:
- search text
- filters
- sort field and direction
- paging context
- locale/currency/device context

outputs:
- narrowed target set
- selected products
- product detail navigation
- comparison candidate set

# ============================================================
# 3. COMPARISON FLOW
# ============================================================

comparison_flow:
1. enter comparison with selected targets
2. inspect KPI differences
3. inspect score differences
4. inspect lifecycle/classification differences
5. inspect alert and forecast context
6. prepare next action:
   - open product detail
   - create proposal
   - create classification draft
   - bring targets into review session

inputs:
- selected portfolio_item_ids
- period context
- display context

outputs:
- better-informed next action
- explicit multi-target judgment basis

# ============================================================
# 4. CONTEXT-PRESERVING FLOW RULES
# ============================================================

context_preserving_rules:
- returning from detail to list should preserve list filters where practical
- moving from list to comparison should preserve selected targets
- moving from dashboard to list should preserve initiating filter intent where practical
- moving from comparison to review should preserve selected targets where policy and UX allow

# ============================================================
# 5. EXCEPTION FLOW
# ============================================================

exception_flow_examples:
- comparison target becomes unavailable
- list filter returns zero results
- dashboard summaries are stale while detail is fresher
- mixed-currency comparison requires explicit context visibility

exception_rules:
- empty results should remain understandable
- stale context should not be hidden where operationally relevant
- mixed-currency context should remain visible and not silently normalized without explanation

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Dashboard, list, and comparison flow in ProductPortfolioManager
must support fast triage,
progressive narrowing,
multi-target reasoning,
and context-preserving navigation.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500010_PRODUCT_PORTFOLIO_MANAGER_DASHBOARD_LIST_COMPARISON_FORMAL_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500011_PRODUCT_PORTFOLIO_MANAGER_PRODUCT_DETAIL_AND_SCORE_DETAIL_FORMAL_FLOW.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER PRODUCT DETAIL AND SCORE DETAIL FORMAL FLOW
# ============================================================

status: canonical
layer: flow
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Formally defines operator flow across product detail and score detail surfaces.

flow_principles:
- product detail should minimize context switching for one-product judgment
- score detail should deepen evaluation explainability
- surface transitions should preserve product identity and judgment context
- next actions should remain explicit and governed

# ============================================================
# 1. PRODUCT DETAIL FLOW
# ============================================================

product_detail_flow:
1. open product detail from dashboard, list, comparison, alert, review, or proposal context
2. inspect product identity and current status
3. inspect metric snapshot summary
4. inspect KPI and current score summary
5. inspect lifecycle and classification context
6. inspect proposal, alert, and forecast context
7. choose next action:
   - open score detail
   - create/update classification draft
   - create/update proposal
   - add to review context where allowed
   - inspect history/audit
   - inspect share scope where allowed

inputs:
- portfolio_item_id
- period context
- reporting currency context
- locale context

outputs:
- single-product judgment understanding
- explicit next-action path

# ============================================================
# 2. SCORE DETAIL FLOW
# ============================================================

score_detail_flow:
1. open score detail from product detail or related judgment surface
2. inspect score header and total_score
3. inspect component scores
4. inspect score version and calculated time
5. inspect period and currency context
6. inspect classification suggestion context where supported
7. choose next action:
   - return to product detail
   - start classification draft
   - enter review context
   - refresh score where permitted by flow and policy

inputs:
- portfolio_item_id
- product_score_id or latest score context
- period context
- reporting currency context

outputs:
- clearer evaluation interpretation
- explicit bridge to classification/review flows

# ============================================================
# 3. CONTEXT PRESERVATION RULES
# ============================================================

context_preservation_rules:
- product identity should remain visible when entering score detail
- score detail return path should restore product detail context
- period and reporting currency context should remain stable across the transition where practical
- stale vs refreshed score context should remain understandable

# ============================================================
# 4. EXCEPTION FLOW
# ============================================================

exception_flow_examples:
- no score available yet
- stale metric snapshot with newer product comments
- forecast reference unavailable
- mixed-currency monetary context requires explicit interpretation
- score version changed since prior view

exception_rules:
- missing score should not appear as zero score
- missing forecast should not imply forecast certainty absence of risk
- stale context should not be hidden where important to judgment
- changed score version should remain interpretable

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Product detail and score detail flow in ProductPortfolioManager
must support deep single-product understanding,
clear evaluation explainability,
and governed transition into action flows.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500011_PRODUCT_PORTFOLIO_MANAGER_PRODUCT_DETAIL_AND_SCORE_DETAIL_FORMAL_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500012_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_CHANGE_AND_PROPOSAL_DETAIL_FORMAL_FLOW.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER CLASSIFICATION CHANGE AND PROPOSAL DETAIL FORMAL FLOW
# ============================================================

status: canonical
layer: flow
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Formally defines operator flow across
classification-change and proposal-detail surfaces.

flow_principles:
- classification change must preserve current-vs-proposed clarity
- proposal detail must preserve draft/review/approval/outcome clarity
- both flows must support explicit next actions
- both flows must preserve history visibility

# ============================================================
# 1. CLASSIFICATION-CHANGE FLOW
# ============================================================

classification_change_flow:
1. open classification-change surface from product detail, score detail, comparison, review, or alert context
2. inspect current approved classification
3. inspect supporting score/KPI/lifecycle/alert/proposal context
4. choose proposed classification
5. enter reason
6. save as draft or submit
7. if approval required, create approval handoff
8. if approval not required by policy, finalize through allowed route
9. preserve resulting history

inputs:
- portfolio_item_id
- current approved classification context
- proposed_classification_code
- proposed_reason
- based_score_id where relevant

outputs:
- product_classification_draft
- optional approval request
- finalized product_classification where permitted

# ============================================================
# 2. PROPOSAL-DETAIL FLOW
# ============================================================

proposal_detail_flow:
1. open proposal-detail surface from list, product detail, alert, review, or history context
2. inspect proposal type, title, and current status
3. inspect linked product and judgment context
4. inspect expected effect, risk, owner, due date
5. if state permits, edit proposal
6. submit / move to review / connect to approval flow where required
7. inspect approval and history context
8. move to in_progress or completed where lifecycle meaning permits

inputs:
- proposal_id
- related product context
- proposal status context
- approval context where available

outputs:
- updated proposal state
- optional approval request linkage
- clearer next-action path

# ============================================================
# 3. CONTEXT PRESERVATION RULES
# ============================================================

context_preservation_rules:
- classification-change flow should preserve product identity and score context where practical
- proposal-detail flow should preserve proposal identity and related product context where practical
- return navigation should preserve originating context where practical
- history transitions should remain interpretable after edits or submission

# ============================================================
# 4. EXCEPTION FLOW
# ============================================================

exception_flow_examples:
- classification draft exists but approved classification changed meanwhile
- proposal became rejected while user was viewing it
- approval requirement discovered late
- stale supporting score context
- mixed-currency context affects proposal interpretation

exception_rules:
- stale or conflicting state should remain visible when important
- conflicting judgment state should not be silently overwritten
- missing support context should not be disguised as positive confirmation

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Classification-change and proposal-detail flow
in ProductPortfolioManager
must preserve explicit governed transitions,
support-context visibility,
and stable interpretation of current, draft, and approved states.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500012_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_CHANGE_AND_PROPOSAL_DETAIL_FORMAL_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500013_PRODUCT_PORTFOLIO_MANAGER_APPROVAL_ALERT_AUDIT_LIST_FORMAL_FLOW.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER APPROVAL ALERT AUDIT LIST FORMAL FLOW
# ============================================================

status: canonical
layer: flow
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Formally defines operator flow across
approval queue,
alert list,
and audit/history list surfaces.

flow_principles:
- approval flow should shorten time from pending request to explicit decision
- alert flow should shorten time from detected signal to meaningful next action
- audit/history flow should shorten time from question to explainable chronology
- navigation should preserve enough context to avoid operator confusion

# ============================================================
# 1. APPROVAL QUEUE FLOW
# ============================================================

approval_queue_flow:
1. open approval queue
2. filter by request type, status, due timing, or target context
3. inspect pending request row
4. open target context
5. review supporting product/proposal/classification/review context
6. decide approved / rejected / sent_back / on_hold
7. return to queue with updated context

inputs:
- approval filters
- queue sorting
- target approval_request_id

outputs:
- explicit approval decision
- reduced pending queue
- preserved decision traceability

# ============================================================
# 2. ALERT LIST FLOW
# ============================================================

alert_list_flow:
1. open alert list
2. filter by severity, status, type, assignee, or target context
3. inspect alert summary row
4. open related product or action context
5. choose next action:
   - acknowledge
   - resolve
   - dismiss where permitted
   - create proposal
   - bring target into review context
6. return to list with updated alert state

inputs:
- alert filters
- target alert_id
- related product context

outputs:
- triaged alert
- explicit next-action linkage
- updated alert state

# ============================================================
# 3. AUDIT/HISTORY LIST FLOW
# ============================================================

audit_history_list_flow:
1. open audit/history list
2. filter by event type, entity, actor, or time range
3. inspect event summary
4. open before/after detail where permitted
5. navigate to related entity or target context
6. continue investigation or return to filtered list

inputs:
- event filters
- target audit_event_id or entity context

outputs:
- explained chronology
- linked entity understanding
- preserved investigation path

# ============================================================
# 4. CONTEXT PRESERVATION RULES
# ============================================================

context_preservation_rules:
- queue/list filters should remain preserved where practical after returning from detail
- moving from alert list to product detail should preserve originating alert intent where practical
- moving from approval queue to target detail should preserve approval context where practical
- moving from audit list to entity detail should preserve audit intent where practical

# ============================================================
# 5. EXCEPTION FLOW
# ============================================================

exception_flow_examples:
- approval request already closed by another approver
- alert resolved elsewhere while viewing it
- audit target no longer visible to current role
- stale queue row due to concurrent workflow progression

exception_rules:
- concurrent state changes should remain understandable
- missing or revoked visibility should not leak hidden content
- stale list state should not be mistaken for current truth

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Approval queue,
alert list,
and audit/history list flow
in ProductPortfolioManager
must support efficient operational control
with explicit state meaning,
safe navigation,
and explainable outcomes.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/050.flow/0500013_PRODUCT_PORTFOLIO_MANAGER_APPROVAL_ALERT_AUDIT_LIST_FORMAL_FLOW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/060.integration/0600000_PRODUCT_PORTFOLIO_MANAGER_INTEGRATION_INDEX.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER INTEGRATION INDEX
# ============================================================

files:

- 060290_PRODUCTPORTFOLIOMANAGER_PORTFOLIO_COCKPIT_PAYLOAD.md

- 060300_PRODUCTPORTFOLIOMANAGER_SCENARIO_EXCEPTION_REVIEW_PAYLOAD.md

- 060320_PRODUCTPORTFOLIOMANAGER_PHASE_A_API_STARTER.md

- 060330_PRODUCTPORTFOLIOMANAGER_PHASE_A_API_DTO_FIELD_FREEZE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/060.integration/0600000_PRODUCT_PORTFOLIO_MANAGER_INTEGRATION_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/060.integration/0600000_PRODUCT_PORTFOLIO_MANAGER_INTEGRATION_OVERVIEW.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER INTEGRATION OVERVIEW
# ============================================================

status: canonical
layer: integration
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

integration_summary:
The application integrates with:
- ERP for product and business facts
- forecast-capable systems for advisory demand values
- BusinessOS identity and sharing context

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/060.integration/0600000_PRODUCT_PORTFOLIO_MANAGER_INTEGRATION_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/060.integration/0600001_ERP_REFERENCE_INTEGRATION.md -->
# ============================================================
# ERP REFERENCE INTEGRATION
# ============================================================

status: canonical
layer: integration
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

integration_purpose:
Consume ERP truth without shifting ERP authority.

reference_objects:
- product identity
- category / brand / lifecycle context
- sales aggregates
- cost and gross profit indicators
- inventory indicators

integration_rules:
- ERP facts are read-oriented here
- metric snapshots may be materialized locally for judgment reproducibility
- source timestamps must be preserved

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/060.integration/0600001_ERP_REFERENCE_INTEGRATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/060.integration/0600002_FORECAST_REFERENCE_INTEGRATION.md -->
# ============================================================
# FORECAST REFERENCE INTEGRATION
# ============================================================

status: canonical
layer: integration
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

integration_purpose:
Attach forecast outputs to product judgment as advisory inputs.

required_metadata:
- forecast source
- forecast scope
- forecast period
- generated_at
- confidence
- fetched_at

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/060.integration/0600002_FORECAST_REFERENCE_INTEGRATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/060.integration/0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER ERP BOUNDARY INTEGRATION FORMAL DESIGN
# ============================================================

status: canonical
layer: integration
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the formal integration meaning of ERP references
used by ProductPortfolioManager.

integration_principles:
- ERP integration is reference-first
- fetched ERP values remain source-attributed
- ProductPortfolioManager stores derived or copied reference context only for judgment support
- downstream ERP-affecting integration must remain explicit and controlled
- integration timestamps matter

# ============================================================
# 1. ERP REFERENCE OBJECTS
# ============================================================

erp_reference_objects:
- product identity
- product code
- product display name basis
- category context
- brand context
- lifecycle-related context where available
- sales aggregates
- cost aggregates
- gross profit basis
- inventory indicators

# ============================================================
# 2. REQUIRED ERP REFERENCE METADATA
# ============================================================

required_reference_metadata:
- source_system_code
- source_generated_at where available
- fetched_at
- company/workspace interpretation context where needed
- transaction currency context where needed

# ============================================================
# 3. SNAPSHOT JUSTIFICATION
# ============================================================

snapshot_justification:
product_metric_snapshot exists so that:
- review interpretation remains reproducible
- score explanation remains attributable
- later history reading can understand the basis used at judgment time

snapshot_rule:
Snapshot storage does not transfer truth ownership away from ERP.

# ============================================================
# 4. FUTURE DOWNSTREAM HANDOFF RULE
# ============================================================

future_downstream_handoff_rule:
If ProductPortfolioManager later emits ERP-affecting requests,
those requests must be:
- explicit
- typed
- reviewable
- policy-bounded
- traceable
- separate from application-owned judgment records

# ============================================================
# 5. INTEGRATION FAILURE RULES
# ============================================================

integration_failure_rules:
- failure to fetch ERP facts must not fabricate values
- stale reference context should be distinguishable where operationally relevant
- partial reference availability should not be mistaken for full authoritative completeness

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ERP integration in ProductPortfolioManager
must remain reference-oriented,
timestamp-aware,
source-attributed,
and governance-safe.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/060.integration/0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/060.integration/0600004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER FORECAST BOUNDARY INTEGRATION FORMAL DESIGN
# ============================================================

status: canonical
layer: integration
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the formal integration meaning of forecast references
used by ProductPortfolioManager.

integration_principles:
- forecast integration is advisory-reference-first
- fetched forecast values must remain source-attributed
- confidence and timing metadata are first-class
- forecast values may be stored for judgment context,
  but forecast-generation authority remains external
- forecast integration failure must not fabricate values

# ============================================================
# 1. REQUIRED FORECAST REFERENCE METADATA
# ============================================================

required_forecast_reference_metadata:
- forecast_scope_type
- forecast_period_type
- forecast_period_start
- forecast_period_end
- forecast_quantity where available
- forecast_sales_amount where available
- forecast_currency_code where monetary
- confidence_level where available
- forecast_source_code
- forecast_generated_at where available
- fetched_at

# ============================================================
# 2. FORECAST REFERENCE USE CASES
# ============================================================

forecast_reference_use_cases:
- show forecast in product detail
- compare forecast and actual context
- support forecast-gap alerts
- support review-session discussion
- support proposal reasoning
- support score interpretation where policy allows

# ============================================================
# 3. FAILURE RULES
# ============================================================

failure_rules:
- missing forecast must not be treated as zero forecast
- weak confidence must not be hidden if confidence metadata exists
- stale forecast should not appear identical to fresh forecast where timing matters
- partial forecast context should remain visibly partial when relevant

# ============================================================
# 4. FUTURE INTEGRATION EVOLUTION RULE
# ============================================================

future_integration_evolution_rule:
If richer forecast integration is later added,
it must still preserve:
- advisory meaning
- source attribution
- confidence visibility
- time visibility
- separation from final decision ownership

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Forecast integration in ProductPortfolioManager
must remain advisory,
metadata-rich,
and explicit in its boundaries.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/060.integration/0600004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/060.integration/060290_PRODUCTPORTFOLIOMANAGER_PORTFOLIO_COCKPIT_PAYLOAD.md -->
# ============================================================
# PRODUCTPORTFOLIOMANAGER PORTFOLIO_COCKPIT_PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: ProductPortfolioManager
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: portfolio-cockpit-payload

purpose:
Fixes the exact payload family for the portfolio cockpit surface.

endpoint:
- POST /api/v1/product-portfolio-manager/portfolio-cockpit/query

request_fields:
- portfolioId: uuid string, required
- timezone: string, required
- includePrioritizationExceptions: boolean, required
- includeManagementAttention: boolean, required
- includeDecisionSupportReadiness: boolean, required
- pageSize: integer, required
- pageToken: string, optional

response_fields:
- portfolioId: uuid string, required
- portfolioTitle: string, required
- healthSummaryMessage: string, required
- prioritizationExceptionItems: array, required
- managementAttentionItems: array, required
- decisionSupportItems: array, required
- nextPageToken: string, nullable
- generatedAt: ISO-8601 string, required

cockpitItem_fields:
- portfolioControlTimelineItemId
- itemTypeCode
- itemTitle
- itemSummary
- portfolioStateCode
- effectiveAt
- exceptionPresent
- ownerUserId
- approvalRequired

rules:
- timestamps use ISO-8601 strings
- nullable values return null, not omission
- arrays return empty arrays when no data

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/060.integration/060290_PRODUCTPORTFOLIOMANAGER_PORTFOLIO_COCKPIT_PAYLOAD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/060.integration/060300_PRODUCTPORTFOLIOMANAGER_SCENARIO_EXCEPTION_REVIEW_PAYLOAD.md -->
# ============================================================
# PRODUCTPORTFOLIOMANAGER SCENARIO_EXCEPTION_REVIEW_PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: ProductPortfolioManager
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: scenario-exception-review-payload

purpose:
Fixes the exact payload family for prioritization and exception review.

endpoint:
- POST /api/v1/product-portfolio-manager/scenario-exception-review/query

request_fields:
- portfolioId: uuid string, required
- includeResolved: boolean, required
- includeThresholdBreaches: boolean, required
- includeDecisionSupportBlockers: boolean, required
- pageSize: integer, required
- pageToken: string, optional

response_fields:
- portfolioId: uuid string, required
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
- portfolioStateCode
- exceptionPresent
- approvalRequired
- ownerUserId
- resolved
- effectiveAt

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/060.integration/060300_PRODUCTPORTFOLIOMANAGER_SCENARIO_EXCEPTION_REVIEW_PAYLOAD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/060.integration/060320_PRODUCTPORTFOLIOMANAGER_PHASE_A_API_STARTER.md -->
# ============================================================
# PRODUCTPORTFOLIOMANAGER PHASE A API STARTER
# ============================================================

status: canonical
layer: integration
system: applications
application: ProductPortfolioManager
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-api-starter

purpose:
Defines the initial Phase A endpoint set for portfolio management control in ProductPortfolioManager.

phase_a_api_goals:
- query portfolio cockpit
- query prioritization exception review
- prepare later approval and decision-support actions without reopening the contract

phase_a_endpoint_set:
- POST /api/v1/product-portfolio-manager/portfolio-cockpit/query
- POST /api/v1/product-portfolio-manager/scenario-exception-review/query

endpoint_portfolio_cockpit_query:
  purpose:
    - return prioritization exceptions, management attention, and decision-support readiness in one surface
  minimum_request:
    - portfolioId
    - timezone
    - includePrioritizationExceptions
    - includeManagementAttention
    - includeDecisionSupportReadiness
    - pageSize
  minimum_response:
    - portfolioId
    - portfolioTitle
    - healthSummaryMessage
    - prioritizationExceptionItems
    - managementAttentionItems
    - decisionSupportItems
    - generatedAt

endpoint_scenario_exception_review_query:
  purpose:
    - return prioritization and decision-support blocker rows for management review
  minimum_request:
    - portfolioId
    - includeResolved
    - includeThresholdBreaches
    - includeDecisionSupportBlockers
    - pageSize
  minimum_response:
    - portfolioId
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
- no product write endpoint in this slice
- no approval action write endpoint in this slice
- no publication execution endpoint in this slice
- no bulk import endpoint in this slice

implementation_handoff:
- use these two query endpoints as the only Phase A vertical-slice entry points first
- defer write-side approval and publication actions until query-side surfaces stabilize

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/060.integration/060320_PRODUCTPORTFOLIOMANAGER_PHASE_A_API_STARTER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/060.integration/060330_PRODUCTPORTFOLIOMANAGER_PHASE_A_API_DTO_FIELD_FREEZE.md -->
# ============================================================
# PRODUCTPORTFOLIOMANAGER PHASE A API DTO FIELD FREEZE
# ============================================================

status: canonical
layer: integration
system: applications
application: ProductPortfolioManager
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-api-dto-field-freeze

purpose:
Freezes the Phase A request and response DTO field set for
portfolio cockpit and prioritization exception review.

freezing_policy:
- additive only
- field names become implementation baseline once approved
- no casual local rename allowed
- timestamps are ISO-8601 strings
- ids are uuid strings
- arrays stay arrays even when empty

endpoint_01_portfolio_cockpit_query:
  route: POST /api/v1/product-portfolio-manager/portfolio-cockpit/query
  request_fields:
    - portfolioId: uuid string, required
    - timezone: string, required
    - includePrioritizationExceptions: boolean, required
    - includeManagementAttention: boolean, required
    - includeDecisionSupportReadiness: boolean, required
    - pageSize: integer, required
    - pageToken: string, optional
  response_fields:
    - portfolioId: uuid string, required
    - portfolioTitle: string, required
    - healthSummaryMessage: string, required
    - prioritizationExceptionItems: array, required
    - managementAttentionItems: array, required
    - decisionSupportItems: array, required
    - nextPageToken: string, nullable
    - generatedAt: ISO-8601 string, required

cockpitItem_fields:
- portfolioControlTimelineItemId: uuid string, required
- itemTypeCode: string, required
- itemTitle: string, required
- itemSummary: string, nullable
- portfolioStateCode: string, required
- effectiveAt: ISO-8601 string, nullable
- exceptionPresent: boolean, required
- ownerUserId: uuid string, nullable
- approvalRequired: boolean, required

endpoint_02_scenario_exception_review_query:
  route: POST /api/v1/product-portfolio-manager/scenario-exception-review/query
  request_fields:
    - portfolioId: uuid string, required
    - includeResolved: boolean, required
    - includeThresholdBreaches: boolean, required
    - includeDecisionSupportBlockers: boolean, required
    - pageSize: integer, required
    - pageToken: string, optional
  response_fields:
    - portfolioId: uuid string, required
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
- portfolioStateCode: string, required
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
- portfolioStateCode is a text code, not localized label
- nullable fields return null, not omission
- unknown response fields must not be silently added in Phase A

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/060.integration/060330_PRODUCTPORTFOLIOMANAGER_PHASE_A_API_DTO_FIELD_FREEZE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/070.operations/0700000_PRODUCT_PORTFOLIO_MANAGER_OPERATIONS_OVERVIEW.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER OPERATIONS OVERVIEW
# ============================================================

status: canonical
layer: operations
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

operations_focus:
- review cadence
- score refresh timing
- pending approval discipline
- alert handling discipline
- audit readiness

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/070.operations/0700000_PRODUCT_PORTFOLIO_MANAGER_OPERATIONS_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/070.operations/0700001_PORTFOLIO_REVIEW_OPERATIONS.md -->
# ============================================================
# PORTFOLIO REVIEW OPERATIONS
# ============================================================

status: canonical
layer: operations
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

recommended_cadence:
- weekly tactical review
- monthly portfolio review
- quarterly strategic review

operational_rules:
- draft reviews may remain local
- approved reviews must sync centrally
- expired drafts require explicit reopen

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/070.operations/0700001_PORTFOLIO_REVIEW_OPERATIONS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/070.operations/0700001_REVIEW_AND_REFRESH_OPERATIONS.md -->
# ============================================================
# REVIEW AND REFRESH OPERATIONS
# ============================================================

status: canonical
layer: operations
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

recommended_cadence:
- weekly tactical review
- monthly portfolio review
- quarterly strategic review

refresh_modes:
- manual refresh
- scheduled refresh
- pre-review forced refresh

operational_rule:
Visible judgment data must remain attributable to timing and version.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/070.operations/0700001_REVIEW_AND_REFRESH_OPERATIONS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/070.operations/0700002_PRODUCT_PORTFOLIO_MANAGER_ALERT_AND_NOTIFICATION_OPERATIONS.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER ALERT AND NOTIFICATION OPERATIONS
# ============================================================

status: canonical
layer: operations
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling of alerts and notifications
inside ProductPortfolioManager.

operations_principles:
- alerts exist to trigger judgment, not to replace judgment
- notifications exist to improve response timing, not to create hidden decisions
- alert state and notification state must remain distinguishable
- severity, ownership, and due context must remain visible
- notification delivery failure must not erase the underlying alert

# ============================================================
# 1. ALERT OPERATIONAL LIFECYCLE
# ============================================================

alert_lifecycle:
- open
- acknowledged
- resolved
- dismissed

lifecycle_meanings:
  open:
    Alert has been detected and requires attention.
  acknowledged:
    A responsible user has seen the alert and taken ownership or review intent.
  resolved:
    The underlying issue or review obligation is considered handled.
  dismissed:
    The alert is intentionally closed without further action, with reason when policy requires.

# ============================================================
# 2. ALERT SOURCES
# ============================================================

alert_sources:
- sales performance deterioration
- gross profit deterioration
- growth slowdown
- inventory risk
- forecast gap
- review overdue
- proposal overdue
- manager-defined operational checks where policy allows

source_rule:
An alert source must be explainable and attributable.
Opaque or unexplained alert creation is not acceptable.

# ============================================================
# 3. OPERATIONAL HANDLING RULES
# ============================================================

handling_rules:
- high and critical alerts should be visible in dashboard and alert list
- alerts tied to due dates should remain visible until resolved or dismissed
- acknowledged alerts should still remain searchable
- resolved alerts should remain historically traceable
- dismissed alerts should remain auditable where policy requires

# ============================================================
# 4. ASSIGNMENT AND OWNERSHIP
# ============================================================

assignment_rules:
- alerts may be unassigned at detection time
- manager or authorized operator may assign alert ownership
- acknowledged status should normally imply visible owner or actor trace
- reassignment must remain visible in history where operationally important

# ============================================================
# 5. REVIEW CONNECTION RULES
# ============================================================

review_connection_rules:
- alerts may create input for classification review
- alerts may create input for proposal creation
- alerts may create input for review session inclusion
- alert closure should not imply review completion unless explicitly recorded

# ============================================================
# 6. NOTIFICATION OPERATIONAL RULES
# ============================================================

notification_rules:
- notifications should be event-driven from meaningful state changes
- repeated notifications should be rate-controlled to avoid noise
- overdue reminders may repeat according to policy
- notification send status should be observable operationally if the system supports delivery tracking
- delivery failure should not hide the alert itself

# ============================================================
# 7. PRIORITY HANDLING GUIDANCE
# ============================================================

priority_guidance:
  info:
    Visible in detail and searchable list views.
  low:
    Visible in list and detail, normal handling.
  medium:
    Visible in list, detail, and operational summaries.
  high:
    Visible in dashboard, list, and review-oriented surfaces.
  critical:
    Must be strongly surfaced and should be hard to overlook in operational views.

# ============================================================
# 8. OPERATIONAL METRICS
# ============================================================

operational_metrics:
- open alert count
- overdue alert count
- high/critical alert count
- average acknowledge time
- average resolution time
- dismissed alert ratio
- alert-to-review conversion count
- alert-to-proposal conversion count

# ============================================================
# 9. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Alerts and notifications in ProductPortfolioManager
must support timely judgment operations
without creating hidden automation or bypassing review and approval discipline.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/070.operations/0700002_PRODUCT_PORTFOLIO_MANAGER_ALERT_AND_NOTIFICATION_OPERATIONS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/070.operations/0700002_SCORE_REFRESH_OPERATIONS.md -->
# ============================================================
# SCORE REFRESH OPERATIONS
# ============================================================

status: canonical
layer: operations
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

refresh_modes:
- manual refresh
- scheduled refresh
- pre-review forced refresh

rule:
Any visible score must be attributable to a refresh moment and score version.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/070.operations/0700002_SCORE_REFRESH_OPERATIONS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/070.operations/0700003_PRODUCT_PORTFOLIO_MANAGER_AUDIT_AND_HISTORY_OPERATIONS.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER AUDIT AND HISTORY OPERATIONS
# ============================================================

status: canonical
layer: operations
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling rules for audit trails and history views
inside ProductPortfolioManager.

operations_principles:
- important judgment actions must remain reconstructable
- audit history must support operator understanding, not only record retention
- history visibility must distinguish draft, review, approval, and final states
- audit operations must not silently alter business state
- audit searchability is an operational necessity

# ============================================================
# 1. OPERATIONAL OBJECTIVES
# ============================================================

operational_objectives:
- explain why a product classification changed
- explain why a proposal changed state
- explain who approved or rejected an item
- explain when a review decision was recorded
- explain share-scope changes where relevant
- support post-event investigation without rewriting history

# ============================================================
# 2. AUDITABLE EVENT CATEGORIES
# ============================================================

auditable_event_categories:
- classification events
- proposal lifecycle events
- review session decision events
- approval events
- share scope events
- alert state events where policy requires
- source-boundary-relevant events
- high-impact settings or operational control changes where applicable

# ============================================================
# 3. OPERATIONAL HISTORY VIEWS
# ============================================================

required_history_views:
- per-product history
- per-entity history
- per-approval-request history
- per-review-session history
- per-actor history where policy permits
- per-event-type history

view_requirements:
- before and after context where meaningful
- actor visibility
- event time visibility
- event type visibility
- linked entity navigation where useful

# ============================================================
# 4. OPERATIONAL USE CASES
# ============================================================

operational_use_cases:
- investigate why a product became retire_candidate
- investigate why a proposal was rejected
- inspect delayed approvals
- inspect whether a review decision was later superseded
- inspect whether a share expansion occurred before wider visibility appeared
- inspect whether an alert was dismissed without downstream action

# ============================================================
# 5. HISTORY RETENTION OPERATIONS
# ============================================================

retention_operations:
- approved and rejected decisions should remain historically visible
- superseded states should remain distinguishable from deleted states
- revocation-style closure is preferred over silent disappearance for high-value records
- operational cleanup must not destroy required auditability

# ============================================================
# 6. CORRECTION OPERATIONS
# ============================================================

correction_operations:
- incorrect business state should normally be corrected by new compensating events
- history should not be rewritten casually
- clearly invalid records may need exceptional handling under policy, but trace of that handling should remain

# ============================================================
# 7. SEARCH AND FILTER OPERATIONS
# ============================================================

search_and_filter_operations:
- filter by entity_type
- filter by entity_id
- filter by event_type
- filter by actor_user_id
- filter by date range
- filter by approval status where relevant
- filter by product or review session context

# ============================================================
# 8. OPERATIONAL METRICS
# ============================================================

operational_metrics:
- approval turnaround time
- decision-to-finalization lag
- number of superseded classification drafts
- number of rejected proposals
- audit event volume by category
- number of share-scope changes
- number of alert dismissals requiring review

# ============================================================
# 9. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Audit and history operations in ProductPortfolioManager
must preserve reconstructability,
operator understandability,
and trustworthy traceability of product judgment activity.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/070.operations/0700003_PRODUCT_PORTFOLIO_MANAGER_AUDIT_AND_HISTORY_OPERATIONS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/070.operations/0700004_PRODUCT_PORTFOLIO_MANAGER_REVIEW_SESSION_OPERATIONS.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER REVIEW SESSION OPERATIONS
# ============================================================

status: canonical
layer: operations
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the operational discipline for running review sessions.

operations_principles:
- review sessions should happen on a clear cadence or explicit trigger
- review targets should be explainable
- review completion should produce actionable outcomes
- unresolved items should remain visible
- completed sessions should remain historically inspectable

# ============================================================
# 1. RECOMMENDED CADENCE
# ============================================================

recommended_cadence:
- weekly tactical review
- monthly portfolio review
- quarterly strategic portfolio review

# ============================================================
# 2. TARGET SELECTION OPERATIONS
# ============================================================

target_selection_operations:
- use alert-driven inclusion for urgent products
- use score-driven inclusion for performance-based comparison
- use proposal-driven inclusion for decision-heavy items
- allow manual inclusion for management judgment

# ============================================================
# 3. SESSION QUALITY EXPECTATIONS
# ============================================================

session_quality_expectations:
- each reviewed target should have enough visible context
- decisions should be attributable
- due dates and owners should be explicit where action is required
- unresolved or held items should remain visible after the session

# ============================================================
# 4. POST-SESSION OPERATIONS
# ============================================================

post_session_operations:
- monitor approval-requiring outcomes
- monitor assigned actions
- revisit held or recheck items
- preserve session history for future explanation

# ============================================================
# 5. OPERATIONAL METRICS
# ============================================================

operational_metrics:
- number of sessions completed
- average targets per session
- decision count per session
- held/recheck ratio
- approval-handoff count
- average follow-up completion lag
- overdue action count from review decisions

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Review session operations in ProductPortfolioManager
must preserve cadence,
decision quality,
follow-up accountability,
and historical explainability.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/070.operations/0700004_PRODUCT_PORTFOLIO_MANAGER_REVIEW_SESSION_OPERATIONS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/070.operations/0700005_PRODUCT_PORTFOLIO_MANAGER_FRESHNESS_BY_SURFACE_OPERATIONS.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER FRESHNESS BY SURFACE OPERATIONS
# ============================================================

status: canonical
layer: operations
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines operational freshness expectations
by surface and usage context inside ProductPortfolioManager.

operations_principles:
- freshness expectations differ by surface purpose
- triage surfaces may tolerate slightly older context than final decision surfaces
- review and approval surfaces require stronger freshness discipline
- stale data must be understandable where operationally relevant
- freshness handling must not fabricate certainty

# ============================================================
# 1. SURFACE FRESHNESS TIERS
# ============================================================

freshness_tiers:
- tier_a_decision_critical
- tier_b_review_critical
- tier_c_triage_operational
- tier_d_history_reference

tier_meanings:
  tier_a_decision_critical:
    Used where immediate decision legitimacy depends on recent source context.
  tier_b_review_critical:
    Used where review quality strongly benefits from recent source context.
  tier_c_triage_operational:
    Used where prioritization and navigation can tolerate moderate staleness.
  tier_d_history_reference:
    Used where chronology and explanation matter more than recency.

# ============================================================
# 2. SURFACE CLASSIFICATION
# ============================================================

surface_classification:

  approval_queue:
    freshness_tier: tier_a_decision_critical

  classification_change_surface:
    freshness_tier: tier_a_decision_critical

  proposal_detail_when_submitting_or_approving:
    freshness_tier: tier_a_decision_critical

  review_session_detail:
    freshness_tier: tier_b_review_critical

  product_detail:
    freshness_tier: tier_b_review_critical

  score_detail:
    freshness_tier: tier_b_review_critical

  alert_list:
    freshness_tier: tier_c_triage_operational

  dashboard:
    freshness_tier: tier_c_triage_operational

  portfolio_list:
    freshness_tier: tier_c_triage_operational

  comparison_surface:
    freshness_tier: tier_b_review_critical

  audit_history_list:
    freshness_tier: tier_d_history_reference

  archived_review_history:
    freshness_tier: tier_d_history_reference

# ============================================================
# 3. OPERATIONAL EXPECTATIONS BY TIER
# ============================================================

tier_operational_expectations:

  tier_a_decision_critical:
    expectations:
      - recent ERP reference context strongly preferred
      - recent score context strongly preferred
      - stale warning should be visible when freshness falls outside expected range
      - operator should be able to trigger refresh or see refresh requirement where policy allows

  tier_b_review_critical:
    expectations:
      - reasonably fresh ERP and score context preferred
      - forecast freshness should be visible where forecast materially affects judgment
      - review may proceed with stale context only when operators can recognize it

  tier_c_triage_operational:
    expectations:
      - moderate staleness may be acceptable
      - stale indicators should appear when operationally meaningful
      - list/dashboard may summarize from slightly older snapshots while deeper surfaces refresh more aggressively

  tier_d_history_reference:
    expectations:
      - chronology and attribution matter more than recency
      - stale/fresh framing is secondary to historical explainability
      - historical context must not be misrepresented as current live truth

# ============================================================
# 4. ERP / FORECAST FRESHNESS OPERATIONS
# ============================================================

erp_freshness_operations:
- use source_generated_at where available
- use fetched_at for operator-visible recency context
- distinguish stale ERP reference from missing ERP reference

forecast_freshness_operations:
- use forecast_generated_at where available
- use fetched_at for retrieval recency
- distinguish stale forecast from no forecast
- treat stale forecast more carefully in decision-heavy contexts

# ============================================================
# 5. PRE-REVIEW / PRE-APPROVAL GUIDANCE
# ============================================================

pre_review_guidance:
- review sessions should prefer refreshed score context before active discussion
- decision-heavy comparisons should prefer refreshed KPI/score context

pre_approval_guidance:
- approval surfaces should avoid silently relying on materially stale judgment context
- stale critical context should remain visible to approvers

# ============================================================
# 6. OPERATIONAL METRICS
# ============================================================

operational_metrics:
- stale approval queue item count
- stale review target count
- average age of dashboard KPI summaries
- average age of list snapshots
- average age of forecast references in active review
- forced refresh count before decision

# ============================================================
# 7. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Freshness in ProductPortfolioManager
must be managed by surface purpose,
with the strongest expectations on decision and review surfaces
and clearer tolerance on triage and historical surfaces.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/070.operations/0700005_PRODUCT_PORTFOLIO_MANAGER_FRESHNESS_BY_SURFACE_OPERATIONS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/070.operations/0700006_PRODUCT_PORTFOLIO_MANAGER_NOTIFICATION_RECIPIENT_MATRIX_OPERATIONS.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER NOTIFICATION RECIPIENT MATRIX OPERATIONS
# ============================================================

status: canonical
layer: operations
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines operational recipient-resolution rules
for notifications inside ProductPortfolioManager.

operations_principles:
- notifications exist to improve response timing
- recipients must be explainable
- notification delivery scope must remain bounded
- visibility and authority must not be confused
- repeated notification noise must be controlled
- delivery failure must not erase the underlying workflow state

# ============================================================
# 1. RECIPIENT RESOLUTION PRIORITY
# ============================================================

recipient_resolution_priority:
1. explicitly assigned user
2. entity owner
3. responsible manager by scope
4. approver(s) for approval-needed events
5. operational watchers or auditors only where policy explicitly allows

resolution_rule:
The narrowest sufficient recipient set is preferred.

# ============================================================
# 2. EVENT FAMILIES
# ============================================================

event_families:
- alert events
- proposal events
- review session events
- approval events
- share-scope events
- overdue/reminder events

# ============================================================
# 3. OPERATIONAL RECIPIENT MATRIX
# ============================================================

operational_recipient_matrix:

  alert_created:
    primary_recipients:
      - assigned_user_if_present
      - product_owner_if_present
      - responsible_manager_if_no_clear_owner
    secondary_recipients:
      - review_coordinator_when_policy_requires
    notes:
      - high/critical severity may notify manager sooner
      - low/info severity should remain narrower by default

  alert_assigned:
    primary_recipients:
      - newly_assigned_user
    secondary_recipients:
      - previous_assigned_user_if_policy_requires
      - manager_if_high_impact
    notes:
      - assignment notification should not broadcast widely

  alert_escalated:
    primary_recipients:
      - assigned_user_if_present
      - responsible_manager
    secondary_recipients:
      - operational_overseer_if_policy_requires
    notes:
      - escalation implies stronger recipient inclusion than initial low-severity alert

  proposal_submitted:
    primary_recipients:
      - proposal_owner_if_present
      - responsible_manager
    secondary_recipients:
      - review_coordinator_if_review_driven
    notes:
      - submitter does not need duplicate notification by default unless UX policy wants confirmation

  proposal_due_soon:
    primary_recipients:
      - proposal_owner_if_present
    secondary_recipients:
      - responsible_manager_if_high_priority
    notes:
      - reminder cadence should remain bounded

  proposal_overdue:
    primary_recipients:
      - proposal_owner_if_present
      - responsible_manager
    secondary_recipients:
      - review_coordinator_if_tied_to_review_commitment
    notes:
      - overdue is stronger than due_soon

  review_session_scheduled:
    primary_recipients:
      - review_participants
      - review_creator
    secondary_recipients:
      - managers_of_required_targets_if_policy_requires
    notes:
      - participants should be explicit

  review_overdue:
    primary_recipients:
      - review_owner_or_creator
      - responsible_manager
    secondary_recipients:
      - approver_if_blocking_high_impact_flow
    notes:
      - only when overdue meaning is explicit

  approval_request_created:
    primary_recipients:
      - target_approvers
    secondary_recipients:
      - request_creator_confirmation_if_policy_or_ux_requires
    notes:
      - do not notify users who cannot view the target

  approval_decision_recorded:
    primary_recipients:
      - request_creator
      - target_owner_if_different
      - responsible_manager_if_high_impact
    secondary_recipients:
      - affected_assignee_if_outcome_changes execution expectation
    notes:
      - rejection/sent_back should reach actors who must respond

  share_scope_expanded_high_impact:
    primary_recipients:
      - entity_owner
      - responsible_manager
    secondary_recipients:
      - auditor_or_security_oversight_if_policy_requires
    notes:
      - only for meaningful visibility expansion events

# ============================================================
# 4. ESCALATION OPERATIONS
# ============================================================

escalation_operations:
- info/low events should normally remain narrow
- medium events may add responsible manager depending on business impact
- high/critical events may include responsible manager immediately
- repeated unhandled overdue events may escalate one level higher by policy

# ============================================================
# 5. RATE CONTROL OPERATIONS
# ============================================================

rate_control_operations:
- suppress duplicate notifications for unchanged state
- prefer aggregation where many similar low-value events occur
- allow stronger repetition only for overdue, high, or critical situations
- keep repeated reminders policy-driven and explainable

# ============================================================
# 6. OPERATIONS METRICS
# ============================================================

operations_metrics:
- notifications sent by event family
- delivery attempts by severity
- duplicate-suppression count
- escalation-trigger count
- overdue reminder count
- average notification-to-acknowledge lag where measurable

# ============================================================
# 7. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Notification recipient operations in ProductPortfolioManager
must remain narrow, explainable, severity-aware,
and connected to real workflow responsibility.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/070.operations/0700006_PRODUCT_PORTFOLIO_MANAGER_NOTIFICATION_RECIPIENT_MATRIX_OPERATIONS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800000_PRODUCT_PORTFOLIO_MANAGER_POLICY_OVERVIEW.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER POLICY OVERVIEW
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

policy_domains:
- classification policy
- approval policy
- sharing policy
- localization policy
- currency policy
- source-of-truth policy

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800000_PRODUCT_PORTFOLIO_MANAGER_POLICY_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800001_CLASSIFICATION_AND_APPROVAL_POLICY.md -->
# ============================================================
# CLASSIFICATION AND APPROVAL POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

classification_policy:
- classification is a strategy judgment label
- classification is not an ERP category
- high-impact changes may require approval
- approved changes require reasons

approval_policy:
- pending, approved, rejected, sent_back, and on_hold must be distinguishable
- decision comments should remain attributable

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800001_CLASSIFICATION_AND_APPROVAL_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800001_CLASSIFICATION_POLICY.md -->
# ============================================================
# CLASSIFICATION POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

policy_rules:
- classifications are strategic labels
- classifications are not ERP master categories
- approved changes require reason
- high-impact changes may require manager approval

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800001_CLASSIFICATION_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800002_LOCALIZATION_CURRENCY_AND_SOURCE_POLICY.md -->
# ============================================================
# LOCALIZATION CURRENCY AND SOURCE POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

localization_policy:
- user-facing fixed text should be localization-ready
- codes should carry stable meaning independent of display language

currency_policy:
- monetary values require explicit currency context
- transaction and reporting currency must be distinguishable where needed

source_policy:
- ERP-derived facts must be clearly distinguished from application judgments
- forecast-derived values must be clearly marked advisory

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800002_LOCALIZATION_CURRENCY_AND_SOURCE_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800002_SHARING_POLICY.md -->
# ============================================================
# SHARING POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

sharing_rules:
- draft notes may be limited-share
- approved review outcomes are auditable
- shared scope must be explicit
- revocation must be possible where policy allows

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800002_SHARING_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800003_LOCALIZATION_AND_CURRENCY_POLICY.md -->
# ============================================================
# LOCALIZATION AND CURRENCY POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

localization_policy:
- all user-facing text must be localization-ready
- hardcoded single-language UI is forbidden
- translated labels must preserve business meaning across locales

currency_policy:
- all monetary values must have explicit currency semantics
- display currency and stored currency must be distinguishable where needed
- reporting views may convert values, but conversion basis must be explainable

device_policy:
- iphone, android, pc, and tablet are all official target platforms
- business capability parity is mandatory
- UI layout differences are allowed only when business semantics remain equivalent

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800003_LOCALIZATION_AND_CURRENCY_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800003_PRODUCT_PORTFOLIO_MANAGER_ROLE_AND_APPROVAL_POLICY.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER ROLE AND APPROVAL POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy-level constraints for role usage,
approval necessity, and separation of duties.

policy_principles:
- authority should be least-sufficient
- approval should be explicit where business impact is high
- separation of duties should be preserved where practical
- operational convenience must not collapse role boundaries

# ============================================================
# 1. APPROVAL-REQUIRED EXAMPLES
# ============================================================

approval_required_examples:
- change to retire_candidate classification
- change from improve to focus where policy marks it high impact
- approval-requiring product_action_proposal types
- review decisions that create organization-level commitments
- share scope expansion to broader organizational visibility where policy requires

# ============================================================
# 2. APPROVAL-OPTIONAL EXAMPLES
# ============================================================

approval_optional_examples:
- low-impact draft creation
- note/comment creation
- review session drafting
- internal comparison activity
- allowed direct finalization by manager where policy explicitly permits it

# ============================================================
# 3. SEPARATION OF DUTIES
# ============================================================

separation_of_duties_rules:
- creator and approver should be distinct by default
- review organizer and final approver should be distinct by default
- admin does not automatically bypass process justification
- policy exceptions must be explicit and auditable

# ============================================================
# 4. ROLE ASSIGNMENT POLICY
# ============================================================

role_assignment_policy:
- roles are assigned intentionally per workspace or equivalent authority scope
- approver role should be narrower than broad editor assignment
- auditor role should avoid accidental business edit expansion
- temporary elevated authority should be time-bounded where possible

# ============================================================
# 5. SHARE AND VISIBILITY POLICY LINK
# ============================================================

share_visibility_link:
- sharing affects who may see
- sharing does not automatically grant edit or approval authority
- limited share should remain bounded by role capability

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Role and approval policy in ProductPortfolioManager
must preserve explicit responsibility,
clear final-decision ownership,
and auditable separation of duties.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800003_PRODUCT_PORTFOLIO_MANAGER_ROLE_AND_APPROVAL_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800004_PRODUCT_PORTFOLIO_MANAGER_ALERT_AND_NOTIFICATION_POLICY.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER ALERT AND NOTIFICATION POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy-level rules for when alerts and notifications
should exist, who should see them, and how they should be interpreted.

policy_principles:
- alerts are operational judgment inputs
- notifications are communication aids
- neither alerts nor notifications are formal business decisions
- visibility and authority remain separate concerns

# ============================================================
# 1. ALERT INTERPRETATION POLICY
# ============================================================

alert_interpretation_policy:
- an alert indicates attention need, not a final conclusion
- an alert does not automatically change classification
- an alert does not automatically approve a proposal
- an alert does not automatically close a review obligation

# ============================================================
# 2. ALERT CREATION POLICY
# ============================================================

alert_creation_policy:
- alert conditions should be explicit and explainable
- alert thresholds should be centrally reviewable
- alert creation logic must preserve business meaning consistency across devices and locales
- high-impact alert rules should not be changed casually

# ============================================================
# 3. DISMISSAL POLICY
# ============================================================

dismissal_policy:
- dismissal should be intentional
- dismissal reason may be required for medium/high/critical alerts by policy
- dismissal should remain traceable in history where audit importance exists
- dismissal must not silently hide unresolved structural issues

# ============================================================
# 4. NOTIFICATION RECIPIENT POLICY
# ============================================================

notification_recipient_policy:
- recipients should be determined by role, ownership, assignment, or visibility scope
- users should not receive notifications for entities they are not allowed to view
- notification visibility must not exceed underlying data visibility

# ============================================================
# 5. NOTIFICATION EVENT POLICY
# ============================================================

notification_event_policy:
- alert created
- alert assigned
- alert severity escalated
- proposal due soon or overdue
- review session scheduled
- approval request pending
- approval decision completed
- review overdue

policy_rule:
Notification events must correspond to meaningful workflow states,
not noisy low-value changes.

# ============================================================
# 6. RATE CONTROL POLICY
# ============================================================

rate_control_policy:
- avoid repeated spam for unchanged alert states
- repeated reminders should follow explicit cadence rules
- high/critical alerts may notify more aggressively than low-value events

# ============================================================
# 7. SEPARATION POLICY
# ============================================================

separation_policy:
- notification delivery success does not equal user acknowledgment
- acknowledgment does not equal resolution
- resolution does not equal approval
- dismissal does not equal correctness of underlying business assumption

# ============================================================
# 8. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Alert and notification policy in ProductPortfolioManager
must preserve clarity, explicitness, bounded visibility,
and separation from final business decision authority.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800004_PRODUCT_PORTFOLIO_MANAGER_ALERT_AND_NOTIFICATION_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800005_PRODUCT_PORTFOLIO_MANAGER_SHARE_SCOPE_POLICY.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER SHARE SCOPE POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy-level rules for sharing and visibility scope
inside ProductPortfolioManager.

policy_principles:
- sharing determines visibility, not final authority
- broader visibility must not silently grant edit rights
- sharing must remain explicit, reviewable, and revocable
- high-impact visibility expansion may require stricter handling
- sharing must respect ERP-boundary and approval-boundary rules

# ============================================================
# 1. SHARE TYPES
# ============================================================

official_share_types:
- private
- team
- org
- limited

share_type_meanings:
  private:
    Visible only to the owner and explicitly authorized high-privilege roles.
  team:
    Visible to a bounded team scope.
  org:
    Visible to a broader organizational scope permitted by policy.
  limited:
    Visible only to explicitly enumerated users, roles, or teams.

# ============================================================
# 2. SHARE TARGET TYPES
# ============================================================

official_shared_to_types:
- user
- role
- team
- org

policy_rule:
Share targets must be explicit and machine-interpretable.
Ambiguous "everyone nearby" style visibility is not allowed.

# ============================================================
# 3. SHAREABLE ENTITY POLICY
# ============================================================

shareable_entities:
- product_portfolio_item visibility context
- product_action_proposal
- product_review_session
- product_review_decision
- product_comment where policy and visibility permit
- product_alert visibility where operationally needed
- audit/history visibility where role permits

non_share_policy_examples:
- raw ERP authority is not transferred by sharing
- approval authority is not transferred by sharing
- hidden internal-only notes may remain non-shareable by policy
- source-of-truth ownership does not move because of sharing

# ============================================================
# 4. SHARE VS AUTHORITY POLICY
# ============================================================

share_vs_authority_policy:
- visibility does not automatically grant edit authority
- visibility does not automatically grant approval authority
- visibility does not automatically grant review-management authority
- limited share cannot bypass role restrictions
- organization-wide visibility does not equal organization-wide control

# ============================================================
# 5. SENSITIVE VISIBILITY POLICY
# ============================================================

sensitive_visibility_policy:
- high-impact classification candidates may require bounded visibility before finalization
- draft proposals may remain narrower than approved proposals
- unresolved high-severity alerts may require role-aware visibility control
- audit views may be broader or narrower than business editing views depending on policy

# ============================================================
# 6. SHARE CHANGE POLICY
# ============================================================

share_change_policy:
- share scope changes must be explicit actions
- broader share expansion may require stronger authority than narrower sharing
- revocation should be supported where business rules permit
- share changes should remain historically traceable
- revoked visibility should stop future access subject to caching and operational rules

# ============================================================
# 7. DEFAULT VISIBILITY POLICY
# ============================================================

default_visibility_policy:
- new drafts should default to a bounded scope
- formalized outputs may expand visibility according to policy
- review sessions may default to participant-bounded visibility
- alerts should be visible to roles necessary for timely handling, not automatically to everyone

# ============================================================
# 8. CROSS-WORKSPACE / CROSS-COMPANY POLICY
# ============================================================

cross_scope_policy:
- cross-workspace visibility requires explicit policy support
- cross-company visibility is disallowed unless a higher-order policy explicitly defines it
- visibility boundaries must remain consistent with company_id and workspace_id semantics

# ============================================================
# 9. AUDITABILITY POLICY
# ============================================================

auditability_policy:
- share creation should be traceable
- share expansion should be traceable
- share revocation should be traceable
- high-impact visibility changes should be attributable to actor and time

# ============================================================
# 10. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Sharing in ProductPortfolioManager
must remain explicit, bounded, revocable, and separate from business authority.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800005_PRODUCT_PORTFOLIO_MANAGER_SHARE_SCOPE_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800006_PRODUCT_PORTFOLIO_MANAGER_AUDIT_AND_HISTORY_POLICY.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER AUDIT AND HISTORY POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy-level rules for what must be auditable,
what history must be preserved,
and how audit data should be interpreted.

policy_principles:
- audit history exists to preserve accountability
- preserved history must distinguish facts from judgments
- preserved history must distinguish draft from approved outcomes
- history visibility is role-aware
- audit data should support explanation, not hidden surveillance behavior

# ============================================================
# 1. REQUIRED AUDIT EVENTS
# ============================================================

required_audit_events:
- classification finalized
- classification approval decided
- proposal status changed on meaningful workflow edges
- review decision recorded
- approval request created
- approval decision recorded
- share scope created or revoked
- high-impact visibility expansion
- source-boundary-relevant action executed

# ============================================================
# 2. OPTIONAL OR POLICY-CONDITIONAL AUDIT EVENTS
# ============================================================

optional_or_conditional_audit_events:
- draft save events
- low-impact note edits
- alert acknowledgments
- operational reminders
- low-value repeated view events

policy_rule:
Not every minor action needs equal audit weight.
The design should preserve meaningfulness and avoid useless audit noise.

# ============================================================
# 3. NON-REWRITE POLICY
# ============================================================

non_rewrite_policy:
- high-value historical meaning should not be silently rewritten
- corrections should normally appear as new events
- deletion-first handling is disfavored for important judgment history
- where exceptional correction is needed, the correction process should itself be traceable

# ============================================================
# 4. FACT VS JUDGMENT POLICY
# ============================================================

fact_vs_judgment_policy:
- ERP facts are not the same as application judgment history
- forecast references are advisory inputs, not formal truth
- audit displays must avoid implying that derived score equals formal ERP fact
- classification, proposal, review, and approval history are judgment-layer history

# ============================================================
# 5. VISIBILITY POLICY
# ============================================================

audit_visibility_policy:
- not all business users need full audit visibility
- managers, approvers, admins, and auditors may have broader history visibility
- visibility of audit data should remain bounded by policy and sensitivity
- broader audit visibility does not automatically grant edit authority

# ============================================================
# 6. RETENTION POLICY
# ============================================================

retention_policy:
- approved outcomes should remain historically visible
- rejected outcomes should remain historically visible
- superseded states should remain identifiable
- revocation events should remain visible where they explain visibility change
- retention windows should not undermine accountability requirements

# ============================================================
# 7. INTERPRETATION POLICY
# ============================================================

interpretation_policy:
- audit history shows what happened in the application process
- audit history does not itself declare whether the business judgment was wise
- chronology matters
- event context matters
- missing approval should not be mistaken for implied approval

# ============================================================
# 8. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Audit and history policy in ProductPortfolioManager
must preserve accountable chronology,
bounded visibility,
and clear separation between fact history and judgment history.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800006_PRODUCT_PORTFOLIO_MANAGER_AUDIT_AND_HISTORY_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800007_PRODUCT_PORTFOLIO_MANAGER_KPI_AND_SCORING_POLICY.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER KPI AND SCORING POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy-level rules for KPI usage,
score interpretation,
and score-driven judgment boundaries.

policy_principles:
- KPI interpretation must remain explicit
- score outputs support judgment; they do not replace judgment
- scoring must remain versioned
- score-based suggestions must not silently become final business decisions
- monetary KPI interpretation must respect currency context

# ============================================================
# 1. KPI INTERPRETATION POLICY
# ============================================================

kpi_interpretation_policy:
- KPI values should be read in period context
- KPI values should be read in currency context when monetary
- KPI values should not be compared carelessly across mismatched periods
- KPI values should not be interpreted as full business truth without source context awareness

# ============================================================
# 2. SCORE INTERPRETATION POLICY
# ============================================================

score_interpretation_policy:
- score values are application-owned evaluation outputs
- score values should be interpreted alongside version and refresh timing
- component scores should remain meaningfully named
- total_score should not hide the existence of tradeoffs among components

# ============================================================
# 3. SCORE-TO-DECISION POLICY
# ============================================================

score_to_decision_policy:
- high total_score does not automatically finalize focus classification
- low total_score does not automatically finalize retire_candidate classification
- score may justify review attention, not silent final action
- score-driven suggestions should remain reviewable and, where required, approvable

# ============================================================
# 4. FORECAST-TO-SCORE POLICY
# ============================================================

forecast_to_score_policy:
- forecast context may inform score interpretation
- forecast references remain advisory
- weak-confidence forecast should not dominate product judgment casually
- forecast confidence should matter in interpretation where used

# ============================================================
# 5. CHANGE CONTROL POLICY
# ============================================================

change_control_policy:
- score_version changes should be intentional
- meaningful score rule changes should be traceable
- historical score interpretation should remain possible after rule evolution
- hidden unannounced scoring shifts are disfavored

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
KPI and scoring policy in ProductPortfolioManager
must preserve explainability,
version awareness,
and explicit separation between evaluation support and final business decision authority.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800007_PRODUCT_PORTFOLIO_MANAGER_KPI_AND_SCORING_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800008_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_AND_LIFECYCLE_POLICY.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER CLASSIFICATION AND LIFECYCLE POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy-level rules for interpreting lifecycle and classification.

policy_principles:
- lifecycle should not silently become classification
- classification should remain explicit and reviewable
- high-impact classification changes may require approval
- lifecycle interpretation should remain consistent across screens and locales

# ============================================================
# 1. LIFECYCLE POLICY
# ============================================================

lifecycle_policy:
- lifecycle expresses business phase context
- lifecycle may be sourced or inferred according to policy, but meaning must remain consistent
- retired lifecycle should not be confused with retire_candidate classification
- unknown lifecycle is acceptable when confidence is not sufficient

# ============================================================
# 2. CLASSIFICATION POLICY
# ============================================================

classification_policy:
- classification is strategic portfolio meaning
- classification should carry reason context when changed
- classification should be explainable from supporting context
- classification should not silently change because of score recalculation alone

# ============================================================
# 3. RELATION POLICY
# ============================================================

relation_policy:
- launch products may be focus, growth, test, or other classifications
- mature products may still be focus or profit_core
- decline products may still be maintain under some business strategies
- retire_candidate requires explicit strategic meaning, not mere lifecycle decline

# ============================================================
# 4. CHANGE POLICY
# ============================================================

change_policy:
- lifecycle updates and classification changes are separate actions
- classification updates should be historically visible
- approval may be required for high-impact classification transitions
- policy exceptions should remain explicit and auditable

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Lifecycle and classification policy in ProductPortfolioManager
must preserve clear meaning boundaries
while still allowing lifecycle context to inform strategic review.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800008_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_AND_LIFECYCLE_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800009_PRODUCT_PORTFOLIO_MANAGER_REVIEW_SESSION_POLICY.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER REVIEW SESSION POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy-level rules for review session interpretation,
decision meaning,
and boundary with approval.

policy_principles:
- review session is a governed business discussion surface
- review decision is not always identical to final approval
- review inclusion should remain explainable
- review records should remain attributable and historically visible

# ============================================================
# 1. REVIEW DECISION POLICY
# ============================================================

review_decision_policy:
- review decisions represent structured business conclusions at review time
- some decisions may be final under policy
- some decisions may require later approval
- held or recheck decisions remain open judgment states

# ============================================================
# 2. APPROVAL BOUNDARY POLICY
# ============================================================

approval_boundary_policy:
- review completion does not imply automatic approval
- approval-requiring decisions must be routed explicitly
- approver authority is separate from review recording authority by default

# ============================================================
# 3. TARGET INCLUSION POLICY
# ============================================================

target_inclusion_policy:
- target inclusion should be explainable from alerts, scores, proposals, filters, or management choice
- silent unexplained inclusion is disfavored
- removal of targets from an active session should remain understandable when important

# ============================================================
# 4. RECORD PRESERVATION POLICY
# ============================================================

record_preservation_policy:
- completed sessions should remain historically visible
- archived sessions remain part of explainability history
- review comments and decisions should not be casually erased

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Review session policy in ProductPortfolioManager
must preserve explicit comparison, bounded decision meaning,
and clear separation from approval authority.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800009_PRODUCT_PORTFOLIO_MANAGER_REVIEW_SESSION_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800010_PRODUCT_PORTFOLIO_MANAGER_PROPOSAL_POLICY.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER PROPOSAL POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy-level rules for proposal meaning,
proposal interpretation,
and proposal governance.

policy_principles:
- proposal is a candidate action, not automatic fact
- proposal status and approval status must remain interpretable
- proposal meaning must remain explainable
- proposal history should remain visible enough for accountability

# ============================================================
# 1. PROPOSAL INTERPRETATION POLICY
# ============================================================

proposal_interpretation_policy:
- draft proposal is work-in-progress meaning
- submitted proposal is not automatically approved
- approved proposal is not automatically equivalent to completed business execution
- rejected proposal remains meaningful historical context
- completed proposal expresses completed proposal lifecycle outcome, not necessarily full enterprise settlement truth

# ============================================================
# 2. APPROVAL POLICY LINK
# ============================================================

approval_policy_link:
- some proposal types may require approval
- some low-impact proposals may be finalized under bounded policy without separate approval
- approval necessity should remain explicit

# ============================================================
# 3. REWORK POLICY
# ============================================================

rework_policy:
- rejected or sent-back proposals should not vanish
- reworked proposals should preserve relation to earlier judgment history where useful
- policy should discourage silent overwrite of rejected meaning

# ============================================================
# 4. PRIORITY POLICY
# ============================================================

priority_policy:
- priority expresses urgency or importance, not automatic right to bypass governance
- critical priority does not remove approval requirements
- priority should remain visible in review and queue surfaces

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Proposal policy in ProductPortfolioManager
must preserve explicit meaning,
governed progression,
and clear separation from approval and execution truth.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800010_PRODUCT_PORTFOLIO_MANAGER_PROPOSAL_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800011_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_POLICY.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER ERP BOUNDARY POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy-level interpretation rules
for ERP references and ERP boundary handling.

policy_principles:
- facts and judgments must remain distinguishable
- copied facts for judgment support do not become re-owned facts
- policy must prevent accidental authority drift
- user-facing convenience must not imply source transfer

# ============================================================
# 1. FACT INTERPRETATION POLICY
# ============================================================

fact_interpretation_policy:
- ERP-derived sales, cost, profit-basis, and inventory values remain ERP-origin facts
- product_metric_snapshot is a reference copy for judgment interpretation
- score and classification remain application meaning, not ERP meaning
- display layers should avoid source ambiguity

# ============================================================
# 2. MUTATION POLICY
# ============================================================

mutation_policy:
- ProductPortfolioManager should not freely mutate ERP truth
- any future ERP-affecting flow must be explicitly separated and policy-reviewed
- review, approval, and completion states do not implicitly equal ERP mutation

# ============================================================
# 3. UI/OPERATOR INTERPRETATION POLICY
# ============================================================

ui_operator_interpretation_policy:
- users should be able to tell which values are ERP-derived
- users should be able to tell which values are application-derived
- users should not be misled into thinking a proposal approval already updated ERP
- users should not be misled into thinking a score is formal ERP accounting truth

# ============================================================
# 4. STALENESS POLICY
# ============================================================

staleness_policy:
- fetched_at and source_generated_at context matters
- stale ERP reference context should not appear indistinguishable from fresh reference context where operationally important
- policy may define freshness expectations for review use

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ERP boundary policy in ProductPortfolioManager
must preserve source clarity,
bounded mutation expectations,
and operator understanding of what is fact versus judgment.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800011_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800012_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_POLICY.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER FORECAST BOUNDARY POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy-level interpretation rules
for forecast reference handling.

policy_principles:
- forecast is reference, not certainty
- confidence matters
- timing matters
- forecast-informed judgment remains human-visible and reviewable
- UI wording must not overstate forecast certainty

# ============================================================
# 1. INTERPRETATION POLICY
# ============================================================

forecast_interpretation_policy:
- forecast should be read in scope and period context
- forecast should be read in confidence context where available
- forecast should be read in freshness context where available
- forecast should not be interpreted as guaranteed future actuals

# ============================================================
# 2. JUDGMENT POLICY
# ============================================================

forecast_to_judgment_policy:
- forecast may trigger attention
- forecast may influence proposal reasoning
- forecast may influence review prioritization
- forecast should not silently finalize classification
- forecast should not silently approve action

# ============================================================
# 3. UI/OPERATOR POLICY
# ============================================================

ui_operator_policy:
- users should be able to recognize forecast context quickly
- users should be able to distinguish forecast from ERP fact
- users should not be misled into treating weak-confidence forecast as strong certainty
- missing forecast should not appear as confirmed no-risk state

# ============================================================
# 4. ALERT POLICY LINK
# ============================================================

alert_policy_link:
- forecast gap may be an alert source
- forecast-related alerts remain attention signals, not final business conclusions
- alerting should not exaggerate forecast certainty

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Forecast boundary policy in ProductPortfolioManager
must preserve advisory meaning,
confidence awareness,
and explicit separation from final judgment authority.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800012_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800013_PRODUCT_PORTFOLIO_MANAGER_SETTINGS_LOCALE_CURRENCY_PRESET_POLICY.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER SETTINGS LOCALE CURRENCY PRESET POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy-level rules for settings,
display language,
display/reporting currency,
and saved view presets.

policy_principles:
- settings are presentation-level controls unless explicitly stated otherwise
- locale should not alter code meaning
- display currency should not obscure source-currency truth
- presets should aid work without creating hidden workflow outcomes
- defaults should remain explainable

# ============================================================
# 1. LOCALE POLICY
# ============================================================

locale_policy:
- UI language should be user-selectable where supported
- translated labels must preserve business meaning
- underlying business codes remain stable independent of display language
- changing locale must not imply changed authority or changed workflow state

# ============================================================
# 2. CURRENCY POLICY
# ============================================================

currency_policy:
- reporting/display currency must remain explicit where money is shown
- transaction currency and reporting/display currency should not be conflated
- display currency changes should not imply source-fact mutation
- mixed-currency comparisons should remain understandable and not misleading

# ============================================================
# 3. PRESET POLICY
# ============================================================

preset_policy:
- presets store reusable viewing context
- presets should not silently trigger workflow transitions
- presets should not silently expand visibility or authority
- default presets should remain operator-understandable
- deletion or change of a preset should not affect business history

# ============================================================
# 4. SHARED PRESET POLICY
# ============================================================

shared_preset_policy:
- if shared presets are later supported,
  they should have explicit ownership and edit rules
- shared presets should not silently overwrite personal defaults
- shared presets affect presentation convenience, not workflow authority

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Settings, locale, currency, and preset policy in ProductPortfolioManager
must preserve explicit presentation control,
clear money interpretation,
and bounded operator customization.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800013_PRODUCT_PORTFOLIO_MANAGER_SETTINGS_LOCALE_CURRENCY_PRESET_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800014_PRODUCT_PORTFOLIO_MANAGER_FRESHNESS_BY_SURFACE_POLICY.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER FRESHNESS BY SURFACE POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy-level interpretation rules
for recency and staleness across different surfaces.

policy_principles:
- freshness requirements are context-sensitive
- operators must not be misled by stale context
- stale does not always mean unusable
- stale does mean interpretive caution where decision impact is high
- history/reference surfaces should not be judged by the same recency standard as decision surfaces

# ============================================================
# 1. POLICY BY SURFACE INTENT
# ============================================================

surface_intent_policy:
- dashboard and list are triage-oriented
- detail and comparison are judgment-oriented
- review and approval are decision-oriented
- audit/history are explanation-oriented

policy_rule:
The stronger the decision impact,
the stronger the freshness expectation.

# ============================================================
# 2. ERP FRESHNESS POLICY
# ============================================================

erp_freshness_policy:
- ERP-derived facts should show freshness context when material to judgment
- stale ERP reference should not be displayed as if freshly confirmed
- missing ERP reference should not be interpreted as zero or no-risk state

# ============================================================
# 3. SCORE FRESHNESS POLICY
# ============================================================

score_freshness_policy:
- score should be interpreted with calculated_at and score_version context
- old score context should not silently appear equivalent to freshly refreshed score context
- stale score may remain visible for history or triage use if clearly interpretable

# ============================================================
# 4. FORECAST FRESHNESS POLICY
# ============================================================

forecast_freshness_policy:
- forecast should be interpreted with forecast_generated_at and fetched_at context where available
- stale forecast should not be mistaken for fresh forecast
- stale forecast plus low confidence should be treated especially cautiously in decision-heavy flows

# ============================================================
# 5. STALE-VISIBILITY POLICY
# ============================================================

stale_visibility_policy:
- staleness should be surfaced where it matters
- staleness messaging should not exaggerate certainty or panic
- stale context should be understandable to operators across supported locales

# ============================================================
# 6. HISTORY POLICY
# ============================================================

history_policy:
- historical surfaces preserve what was seen or decided at that time
- historical data should not be judged solely by present freshness standards
- chronology should remain primary in history surfaces

# ============================================================
# 7. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Freshness-by-surface policy in ProductPortfolioManager
must preserve context-aware interpretation,
clear stale visibility,
and stronger recency discipline where decision impact is highest.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800014_PRODUCT_PORTFOLIO_MANAGER_FRESHNESS_BY_SURFACE_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800015_PRODUCT_PORTFOLIO_MANAGER_NOTIFICATION_RECIPIENT_MATRIX_POLICY.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER NOTIFICATION RECIPIENT MATRIX POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy-level rules
for deciding who should receive which notifications.

policy_principles:
- notifications should go only to sufficiently relevant recipients
- notification visibility must not exceed data visibility
- notification delivery must not imply workflow authority
- recipient selection should be explainable from ownership, assignment, role, or responsibility
- high-impact events may justify broader but still bounded recipient scope

# ============================================================
# 1. RECIPIENT POLICY
# ============================================================

recipient_policy:
- assigned user is usually the first candidate
- owner is usually the next candidate when assignment is absent or ownership matters
- responsible manager may be added when timing, severity, or business impact justifies it
- approvers receive approval-needed notifications, not arbitrary workflow events by default
- auditors do not receive broad operational notifications by default unless policy explicitly says so

# ============================================================
# 2. VISIBILITY BOUNDARY POLICY
# ============================================================

visibility_boundary_policy:
- a notification must not expose entity existence or details to users who lack visibility
- share-scope or role restrictions apply before notification delivery
- cross-workspace or cross-company notification is disallowed unless an explicit higher-order policy allows it

# ============================================================
# 3. AUTHORITY SEPARATION POLICY
# ============================================================

authority_separation_policy:
- receiving a notification does not grant edit rights
- receiving a notification does not grant approval rights
- receiving a notification does not grant broader audit visibility
- notification shortcuts must not bypass role and policy checks

# ============================================================
# 4. ESCALATION POLICY
# ============================================================

escalation_policy:
- escalation should depend on severity, overdue state, or high-impact workflow blockage
- escalation should remain bounded and explainable
- escalation should not become mass broadcast behavior without explicit policy

# ============================================================
# 5. DUPLICATION / NOISE POLICY
# ============================================================

duplication_noise_policy:
- duplicate notifications for unchanged state are disfavored
- repeated reminders should follow explicit cadence
- low-value events should prefer narrower or aggregated delivery
- high-value events may justify stronger repetition

# ============================================================
# 6. EVENT-TO-RECIPIENT POLICY SUMMARY
# ============================================================

event_to_recipient_policy_summary:
- alert events -> assignee / owner / manager by severity and responsibility
- proposal events -> owner / manager / review coordinator as relevant
- review events -> participants / creator / responsible manager as relevant
- approval events -> approvers on request creation, creators/owners on decision completion
- high-impact share changes -> owner / manager / oversight only where policy requires

# ============================================================
# 7. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Notification recipient policy in ProductPortfolioManager
must preserve bounded relevance,
visibility safety,
and clear separation from workflow authority.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/080.policy/0800015_PRODUCT_PORTFOLIO_MANAGER_NOTIFICATION_RECIPIENT_MATRIX_POLICY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/090.interface/0900000_PRODUCT_PORTFOLIO_MANAGER_INTERFACE_INDEX.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER INTERFACE INDEX
# ============================================================

files:

- 090330_PRODUCTPORTFOLIOMANAGER_PORTFOLIO_COCKPIT_INTERFACE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/090.interface/0900000_PRODUCT_PORTFOLIO_MANAGER_INTERFACE_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/090.interface/090330_PRODUCTPORTFOLIOMANAGER_PORTFOLIO_COCKPIT_INTERFACE.md -->
# ============================================================
# PRODUCTPORTFOLIOMANAGER PORTFOLIO_COCKPIT_INTERFACE
# ============================================================

status: canonical
layer: interface
system: applications
application: ProductPortfolioManager
directory: 090.interface
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: portfolio-cockpit-interface

purpose:
Makes the portfolio cockpit screen hierarchy explicit.

screen_goal:
- show what threatens portfolio trust or decision-support readiness right now
- unify prioritization exceptions, management attention, and decision-support readiness
- provide one management-control review pass before diving into detail screens

screen_sections:
- portfolio summary header
- prioritization exception stack
- management attention stack
- decision-support readiness panel
- quick jump to prioritization exception review

item_card_fields:
- item title
- short summary
- state badge
- effective time
- owner badge
- approval badge
- quick action buttons

primary_actions:
- open portfolio detail
- open exception review
- open approval review
- approve prioritization
- hold prioritization
- open decision-support detail

interface_rules:
- prioritization exceptions must be separated visually from management attention items
- decision-support items must stay visible above long detail lists
- cockpit must be scannable in one vertical pass
- deep item editing belongs elsewhere; cockpit is a control surface first

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/090.interface/090330_PRODUCTPORTFOLIOMANAGER_PORTFOLIO_COCKPIT_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/100.security/1000000_PRODUCT_PORTFOLIO_MANAGER_SECURITY_OVERVIEW.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER SECURITY OVERVIEW
# ============================================================

status: canonical
layer: security
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

security_focus:
- access control
- decision integrity
- approval integrity
- audit preservation
- integration authentication

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/100.security/1000000_PRODUCT_PORTFOLIO_MANAGER_SECURITY_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/100.security/1000001_ACCESS_AND_AUDIT_SECURITY.md -->
# ============================================================
# ACCESS AND AUDIT SECURITY
# ============================================================

status: canonical
layer: security
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

roles:
- viewer
- editor
- manager
- approver
- admin

security_rules:
- viewers cannot finalize decisions
- approvers must remain explicit
- audit trails must preserve meaningful before/after context

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/100.security/1000001_ACCESS_AND_AUDIT_SECURITY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/100.security/1000001_ACCESS_CONTROL_SECURITY.md -->
# ============================================================
# ACCESS CONTROL SECURITY
# ============================================================

status: canonical
layer: security
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

roles:
- viewer
- editor
- manager
- approver
- admin

security_rules:
- viewers cannot finalize decisions
- approvers must be explicit
- integration actions require elevated authority

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/100.security/1000001_ACCESS_CONTROL_SECURITY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/100.security/1000002_AUDIT_AND_APPROVAL_SECURITY.md -->
# ============================================================
# AUDIT AND APPROVAL SECURITY
# ============================================================

status: canonical
layer: security
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

controls:
- decision attribution
- approval trace
- before/after visibility
- immutable history orientation

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/100.security/1000002_AUDIT_AND_APPROVAL_SECURITY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/100.security/1000002_PRODUCT_PORTFOLIO_MANAGER_AUTHORIZATION_FORMAL_DESIGN.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER AUTHORIZATION FORMAL DESIGN
# ============================================================

status: canonical
layer: security
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Formally defines the authorization model of ProductPortfolioManager.
The application requires explicit separation between
viewing, editing, managing, approving, and auditing.

authorization_principles:
- authority must be explicit
- viewing and deciding must remain distinct
- draft creation and final approval must remain distinct
- review operation and approval operation must remain distinct
- device differences must not change authority meaning
- ERP truth ownership must not be expanded through UI convenience

# ============================================================
# 1. ROLE SET
# ============================================================

official_roles:
- viewer
- editor
- manager
- approver
- admin
- auditor

role_definitions:

  viewer:
    summary:
      Can inspect portfolio information but cannot create or finalize judgment changes.

  editor:
    summary:
      Can create and update drafts, comments, and proposals,
      but cannot finalize approval-requiring outcomes.

  manager:
    summary:
      Can manage review operations, select targets, record review decisions,
      and submit items for approval.

  approver:
    summary:
      Can make formal approval decisions on approval-requested items.

  admin:
    summary:
      Can manage application-level configuration and operational control,
      but must still follow approval policy where required.

  auditor:
    summary:
      Can inspect audit-relevant history and approval traceability
      without automatically gaining business editing rights.

# ============================================================
# 2. PERMISSION DOMAINS
# ============================================================

permission_domains:
- portfolio_visibility
- product_detail_visibility
- score_visibility
- classification_draft_edit
- classification_finalize
- proposal_edit
- proposal_finalize
- review_session_manage
- review_decision_record
- approval_request_submit
- approval_decide
- alert_manage
- share_scope_manage
- audit_history_view
- settings_manage

# ============================================================
# 3. ROLE TO PERMISSION MATRIX
# ============================================================

role_permission_matrix:

  viewer:
    portfolio_visibility: allow
    product_detail_visibility: allow
    score_visibility: allow
    classification_draft_edit: deny
    classification_finalize: deny
    proposal_edit: deny
    proposal_finalize: deny
    review_session_manage: deny
    review_decision_record: deny
    approval_request_submit: deny
    approval_decide: deny
    alert_manage: deny
    share_scope_manage: deny
    audit_history_view: allow_limited
    settings_manage: deny

  editor:
    portfolio_visibility: allow
    product_detail_visibility: allow
    score_visibility: allow
    classification_draft_edit: allow
    classification_finalize: deny
    proposal_edit: allow
    proposal_finalize: deny
    review_session_manage: deny
    review_decision_record: deny
    approval_request_submit: allow_limited
    approval_decide: deny
    alert_manage: allow_limited
    share_scope_manage: deny
    audit_history_view: allow_limited
    settings_manage: deny

  manager:
    portfolio_visibility: allow
    product_detail_visibility: allow
    score_visibility: allow
    classification_draft_edit: allow
    classification_finalize: allow_when_policy_permits
    proposal_edit: allow
    proposal_finalize: allow_when_policy_permits
    review_session_manage: allow
    review_decision_record: allow
    approval_request_submit: allow
    approval_decide: deny
    alert_manage: allow
    share_scope_manage: allow_limited
    audit_history_view: allow
    settings_manage: deny

  approver:
    portfolio_visibility: allow
    product_detail_visibility: allow
    score_visibility: allow
    classification_draft_edit: optional_by_assignment
    classification_finalize: allow_via_approval
    proposal_edit: optional_by_assignment
    proposal_finalize: allow_via_approval
    review_session_manage: deny
    review_decision_record: deny
    approval_request_submit: deny
    approval_decide: allow
    alert_manage: allow_limited
    share_scope_manage: deny
    audit_history_view: allow
    settings_manage: deny

  admin:
    portfolio_visibility: allow
    product_detail_visibility: allow
    score_visibility: allow
    classification_draft_edit: allow
    classification_finalize: allow_when_policy_permits
    proposal_edit: allow
    proposal_finalize: allow_when_policy_permits
    review_session_manage: allow
    review_decision_record: allow
    approval_request_submit: allow
    approval_decide: allow_if_assigned
    alert_manage: allow
    share_scope_manage: allow
    audit_history_view: allow
    settings_manage: allow

  auditor:
    portfolio_visibility: allow_limited
    product_detail_visibility: allow_limited
    score_visibility: allow_limited
    classification_draft_edit: deny
    classification_finalize: deny
    proposal_edit: deny
    proposal_finalize: deny
    review_session_manage: deny
    review_decision_record: deny
    approval_request_submit: deny
    approval_decide: deny
    alert_manage: deny
    share_scope_manage: deny
    audit_history_view: allow
    settings_manage: deny

# ============================================================
# 4. ACTION-LEVEL RULES
# ============================================================

action_level_rules:

  classification_draft_save:
    allowed_roles:
      - editor
      - manager
      - admin

  classification_finalize_without_approval:
    allowed_roles:
      - manager
      - admin
    condition:
      - only when policy explicitly marks the change as approval-not-required

  classification_finalize_via_approval:
    allowed_roles:
      - approver
      - admin
    condition:
      - through approval workflow only

  proposal_create_update:
    allowed_roles:
      - editor
      - manager
      - admin

  proposal_submit_for_review:
    allowed_roles:
      - editor
      - manager
      - admin

  proposal_approve:
    allowed_roles:
      - approver
      - admin
    condition:
      - approval required proposals only

  review_session_create:
    allowed_roles:
      - manager
      - admin

  review_session_edit:
    allowed_roles:
      - manager
      - admin
    condition:
      - only while session is not completed or archived

  review_decision_save:
    allowed_roles:
      - manager
      - admin

  approval_request_create:
    allowed_roles:
      - editor
      - manager
      - admin
    condition:
      - editor may submit only for owned or assigned items if policy allows

  approval_decision_save:
    allowed_roles:
      - approver
      - admin
    condition:
      - only for active approval requests

  share_scope_change:
    allowed_roles:
      - manager
      - admin
    condition:
      - subject to data visibility policy

  audit_history_read:
    allowed_roles:
      - manager
      - approver
      - admin
      - auditor

# ============================================================
# 5. ENTITY-LEVEL OWNERSHIP RULES
# ============================================================

entity_level_ownership_rules:

  product_portfolio_item:
    ownership_rule:
      - application users may manage portfolio-layer meaning
      - ERP truth ownership remains external

  product_classification_draft:
    ownership_rule:
      - draft owner may edit while draft is active
      - manager may edit if within workspace authority
      - approver should not silently rewrite draft contents during approval

  product_action_proposal:
    ownership_rule:
      - creator or assigned owner may edit while editable state remains active
      - manager may reassign or coordinate
      - approver approves or rejects; approver does not become proposal author

  product_review_session:
    ownership_rule:
      - review organizer or authorized manager controls session lifecycle

  product_approval_request:
    ownership_rule:
      - request ownership is procedural, not business ownership
      - approver controls decision, not target authorship

# ============================================================
# 6. STATE-SENSITIVE AUTHORIZATION RULES
# ============================================================

state_sensitive_rules:

  classification_draft:
    draft:
      - editable by owner editor, manager, admin
    submitted:
      - locked_for_general_edit
      - corrections require resend or policy-approved send-back handling
    withdrawn:
      - read_only
    superseded:
      - read_only

  proposal_status:
    draft:
      - editable by creator/owner/manager/admin
    submitted:
      - limited_edit
    in_review:
      - manager/admin coordination
    approved:
      - not freely rewritable as draft content
    rejected:
      - read_only_or_copy_to_new_draft_by_policy
    in_progress:
      - execution-tracking edits only
    completed:
      - read_only

  review_session_status:
    draft:
      - editable by manager/admin
    scheduled:
      - editable by manager/admin
    in_progress:
      - controlled update by manager/admin
    completed:
      - decision records should be treated as stable
    archived:
      - read_only

  approval_request_status:
    pending:
      - approver/admin may decide
    approved:
      - closed
    rejected:
      - closed
    sent_back:
      - closed_for_that_request
    on_hold:
      - approver/admin may later resolve

# ============================================================
# 7. VISIBILITY RULES
# ============================================================

visibility_rules:
- visibility is separate from edit authority
- a user may be allowed to view score detail without being allowed to modify drafts
- audit visibility may be broader or narrower than business edit rights based on policy
- share scope must not grant authority beyond role capability
- limited share must not bypass approval rules

visibility_tiers:
- private
- team
- org
- limited

# ============================================================
# 8. APPROVAL SEPARATION RULES
# ============================================================

approval_separation_rules:
- request creator should not self-approve unless policy explicitly permits it
- review recorder and final approver should be separable roles by default
- approval must not be inferred from edit authority
- approval must create explicit approval_decision history

# ============================================================
# 9. AUDIT EXPECTATIONS
# ============================================================

audit_expectations:
- denied finalization attempts should be security-loggable where needed
- approval decisions must remain attributable
- authority-sensitive changes to share scope should remain auditable
- classification finalization events should preserve before/after state
- role-based access outcomes should remain explainable to operators

# ============================================================
# 10. CROSS-DEVICE AUTHORITY PARITY
# ============================================================

cross_device_authority_parity:
- iphone, android, tablet, and pc may differ in layout
- authority meaning must remain identical across device classes
- no device may expose hidden privileged action that another device conceals without policy reason
- destructive or high-impact actions must remain explicit on all devices

# ============================================================
# 11. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager authorization must preserve
clear separation between seeing, drafting, managing, approving, and auditing.
The application must remain safe against
implicit authority expansion and hidden ERP-boundary erosion.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/100.security/1000002_PRODUCT_PORTFOLIO_MANAGER_AUTHORIZATION_FORMAL_DESIGN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/100.security/1000003_PRODUCT_PORTFOLIO_MANAGER_SHARE_SCOPE_SECURITY.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER SHARE SCOPE SECURITY
# ============================================================

status: canonical
layer: security
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines security-oriented rules for enforcing share scope
without collapsing role-based authority boundaries.

security_principles:
- access decisions must combine role and share scope
- deny by default is preferred when visibility is unclear
- revoked share must stop future authorized access
- share scope enforcement must remain explainable
- share shortcuts must not bypass approval or edit restrictions

# ============================================================
# 1. ACCESS DECISION MODEL
# ============================================================

access_decision_model:
Access to a target entity should be determined by:
- authenticated identity
- role assignment
- company/workspace scope
- share scope record
- entity state where relevant
- policy exceptions where explicitly defined

access_formula_summary:
visibility = role_scope_check AND share_scope_check AND entity_policy_check

# ============================================================
# 2. SECURITY RULES BY SHARE TYPE
# ============================================================

share_type_security_rules:

  private:
    - only owner and explicitly privileged authorized roles may access
    - private does not mean invisible to all admins if policy grants oversight

  team:
    - access limited to members of target team scope plus authorized oversight roles

  org:
    - access limited to authorized organization scope, still bounded by role capability

  limited:
    - access limited to enumerated recipients and authorized oversight roles

# ============================================================
# 3. REVOCATION SECURITY RULES
# ============================================================

revocation_security_rules:
- revoked_at must make future access fail unless another valid grant remains
- revocation should not erase historical audit trace
- cached visibility should be treated carefully so revoked access does not linger improperly

# ============================================================
# 4. SHARE CHANGE AUTHORITY RULES
# ============================================================

share_change_authority_rules:
- viewer cannot change share scope
- editor cannot broadly expand share unless policy explicitly permits
- manager may manage bounded business sharing where authorized
- admin may manage broader sharing subject to policy
- auditor may inspect share history without automatically changing share state

# ============================================================
# 5. ENTITY-SPECIFIC SECURITY NOTES
# ============================================================

entity_specific_security_notes:

  product_action_proposal:
    - draft proposals should usually remain narrower than broadly visible approved outputs

  product_review_session:
    - participant-bounded visibility may be required before completion

  product_review_decision:
    - visibility may depend on whether the decision is draft-like, pending approval, or finalized

  product_comment:
    - internal comments may require tighter visibility than surrounding product detail

  product_alert:
    - operational relevance may justify broader visibility than draft business notes

# ============================================================
# 6. SECURITY FAILURE EXPECTATIONS
# ============================================================

security_failure_expectations:
- unauthorized share-scope change attempts should be rejectable and optionally loggable
- access-denied responses should not leak hidden entity content
- visibility mismatch should fail safe rather than fail open

# ============================================================
# 7. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Share-scope security in ProductPortfolioManager
must preserve explicit bounded access
without granting hidden edit or approval power.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/100.security/1000003_PRODUCT_PORTFOLIO_MANAGER_SHARE_SCOPE_SECURITY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/100.security/1000004_PRODUCT_PORTFOLIO_MANAGER_AUDIT_HISTORY_SECURITY.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER AUDIT HISTORY SECURITY
# ============================================================

status: canonical
layer: security
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines security rules for audit-event protection,
audit visibility,
and safe access to historical records.

security_principles:
- audit data is sensitive operational data
- broader history access should be intentional
- audit access should not leak hidden entity content
- audit storage should resist casual tampering
- audit visibility and business editing must remain separate

# ============================================================
# 1. AUTHORIZED AUDIT VIEWERS
# ============================================================

authorized_audit_viewers:
- manager
- approver
- admin
- auditor
- other roles only where policy explicitly grants bounded audit access

# ============================================================
# 2. SECURITY RULES
# ============================================================

security_rules:
- viewers with no audit entitlement should not access high-value audit trails
- audit access should respect company/workspace boundaries
- audit access should respect share and visibility policy where linked entity data is sensitive
- access-denied behavior should avoid leaking hidden payload details
- audit endpoints should fail safe rather than fail open

# ============================================================
# 3. TAMPER-RESISTANCE EXPECTATIONS
# ============================================================

tamper_resistance_expectations:
- audit rows should be treated as append-oriented operationally
- direct casual mutation of important audit history is disallowed
- correction handling should be traceable
- audit data should preserve actor and event time meaning

# ============================================================
# 4. PAYLOAD EXPOSURE RULES
# ============================================================

payload_exposure_rules:
- before_payload and after_payload should expose only policy-appropriate detail
- sensitive hidden content should not be overexposed in broad audit views
- compact views and detailed views may differ in payload depth by role

# ============================================================
# 5. SECURITY-RELEVANT EVENTS
# ============================================================

security_relevant_events:
- unauthorized finalization attempts where logging is enabled
- approval decision events
- share-scope expansion events
- high-impact classification finalization events
- other high-impact authority-sensitive actions

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Audit-history security in ProductPortfolioManager
must preserve trustworthy traceability
without creating hidden authority escalation or unintended data leakage.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/100.security/1000004_PRODUCT_PORTFOLIO_MANAGER_AUDIT_HISTORY_SECURITY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/100.security/1000005_PRODUCT_PORTFOLIO_MANAGER_NOTIFICATION_RECIPIENT_SECURITY.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER NOTIFICATION RECIPIENT SECURITY
# ============================================================

status: canonical
layer: security
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines security constraints for recipient resolution and delivery safety
in ProductPortfolioManager notifications.

security_principles:
- notification delivery must be visibility-safe
- recipient resolution must fail closed when visibility is ambiguous
- shortcuts from notifications must still enforce authorization
- notifications must not leak hidden entity content

# ============================================================
# 1. SECURITY CHECK ORDER
# ============================================================

security_check_order:
1. authenticate actor/event origin
2. resolve candidate recipients
3. check role and visibility eligibility
4. remove ineligible recipients
5. build bounded notification payload
6. deliver according to channel policy

# ============================================================
# 2. SECURITY RULES
# ============================================================

security_rules:
- never notify a recipient about an entity they cannot view
- high-level summaries may still be too revealing if entity existence itself is sensitive
- notification deep links must re-check authorization
- revoked visibility should remove future recipient eligibility
- ambiguous scope should result in narrower delivery, not broader delivery

# ============================================================
# 3. PAYLOAD EXPOSURE RULES
# ============================================================

payload_exposure_rules:
- low-visibility recipients should receive only policy-safe summaries
- full-detail notification payloads should be reserved for fully eligible recipients
- identifiers and titles should not leak hidden sensitive content to ineligible users

# ============================================================
# 4. SECURITY-RELEVANT EVENTS
# ============================================================

security_relevant_events:
- high-impact visibility expansion notifications
- approval-request notifications
- approval-decision notifications
- escalated high/critical alert notifications

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Notification recipient security in ProductPortfolioManager
must ensure that relevance and delivery convenience
never override visibility and authorization boundaries.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/100.security/1000005_PRODUCT_PORTFOLIO_MANAGER_NOTIFICATION_RECIPIENT_SECURITY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/110.infrastructure/1100000_PRODUCT_PORTFOLIO_MANAGER_INFRASTRUCTURE_OVERVIEW.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER INFRASTRUCTURE OVERVIEW
# ============================================================

status: canonical
layer: infrastructure
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

infrastructure_shape:
- BusinessOS application runtime
- persistence for judgment-layer entities
- integration gateways for ERP and forecast references
- local draft / sync support where applicable

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/110.infrastructure/1100000_PRODUCT_PORTFOLIO_MANAGER_INFRASTRUCTURE_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/110.infrastructure/1100001_PERSISTENCE_INFRASTRUCTURE.md -->
# ============================================================
# PERSISTENCE INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

storage_domains:
- portfolio items
- scores
- classifications
- proposals
- issues
- review sessions
- review decisions
- alerts

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/110.infrastructure/1100001_PERSISTENCE_INFRASTRUCTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200000_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_INDEX.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER IMPLEMENTATION INDEX
# ============================================================

files:

- 120300_PRODUCTPORTFOLIOMANAGER_PORTFOLIO_CONTROL_IMPLEMENTATION_GUIDE.md

- 120310_PRODUCTPORTFOLIOMANAGER_PHASE_A_PORTFOLIO_TIMELINE_IMPLEMENTATION_SKELETON.md

- 120320_PRODUCTPORTFOLIOMANAGER_PHASE_A_STUB_FILE_PLAN.md

- 120330_PRODUCTPORTFOLIOMANAGER_PHASE_A_MODULE_TASK_BREAKDOWN.md

- 120340_PRODUCTPORTFOLIOMANAGER_PHASE_A_EXACT_STUB_CONTENT_ORDER_PLAN.md

- 120350_PRODUCTPORTFOLIOMANAGER_PHASE_A_SLICE_COMMAND_PACKS.md

- 120360_PRODUCTPORTFOLIOMANAGER_PHASE_A_SLICE_FIELD_FILL_PLAN.md

- 120370_PRODUCTPORTFOLIOMANAGER_PHASE_A_IMPLEMENTATION_READY_COMPLETION_MEMO.md

- 120380_PRODUCTPORTFOLIOMANAGER_PHASE_A_EXECUTION_ENTRY_PROTOCOL.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200000_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200000_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_OVERVIEW.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER IMPLEMENTATION OVERVIEW
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

implementation_strategy:
Implement in additive phases.
Keep ERP integration read-first.
Prioritize product judgment loops before deeper automation.

first_class_requirements:
- multilingual support from first implementation
- multi-currency support from first monetary view
- iphone / android / pc / tablet capability parity

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200000_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200001_FUNCTIONAL_REQUIREMENTS.md -->
# ============================================================
# FUNCTIONAL REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

functional_core:
- product list
- product detail
- score detail
- classification workflow
- proposal workflow
- review meeting workflow
- approval queue
- alert visibility
- comparison board
- settings for language and currency

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200001_FUNCTIONAL_REQUIREMENTS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200001_UI_IMPLEMENTATION.md -->
# ============================================================
# UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

primary_screens:
- dashboard
- product list
- product detail
- score detail
- proposal list
- review session
- alert list
- settings

ui_cross_platform_requirements:
- iphone and android phone layouts are mandatory
- tablet layouts are mandatory
- pc layouts are mandatory
- adaptive navigation is required by screen size
- touch and pointer interaction must both be supported

ui_localization_requirements:
- all labels and messages must come from translation-ready resources
- truncation and expansion for different languages must be considered

ui_currency_requirements:
- every monetary view must expose currency clearly
- mixed-currency reporting views must show conversion context where applicable

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200001_UI_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200002_DATA_AND_API_IMPLEMENTATION.md -->
# ============================================================
# DATA AND API IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

implementation_order:
1. portfolio item read model
2. score persistence
3. classification history
4. proposal endpoints
5. review endpoints
6. integration reference endpoints

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200002_DATA_AND_API_IMPLEMENTATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200002_SCREEN_REQUIREMENTS.md -->
# ============================================================
# SCREEN REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

screen_requirements:
- dashboard
- portfolio list
- product detail
- score detail
- classification change
- proposal list
- proposal detail
- review session list
- review session detail
- approval queue
- alert list
- comparison board
- settings
- share scope
- audit history

screen_rules:
- phone layouts prioritize vertical flow
- tablet layouts may support split-view review
- pc layouts should maximize comparison density

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200002_SCREEN_REQUIREMENTS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200003_DATA_MODEL_REQUIREMENTS.md -->
# ============================================================
# DATA MODEL REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

required_models:
- product_portfolio_item
- product_metric_snapshot
- product_score
- product_classification
- product_classification_draft
- product_action_proposal
- product_action_proposal_history
- product_issue_note
- product_comment
- product_alert
- product_forecast_reference
- product_review_session
- product_review_session_item
- product_review_decision
- product_approval_request
- product_approval_decision
- product_share_scope
- product_audit_event
- product_view_preset
- product_sync_state

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200003_DATA_MODEL_REQUIREMENTS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200004_PRODUCT_PORTFOLIO_MANAGER_API_CONTRACT_EXACT.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER API CONTRACT EXACT
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Fix exact API route set and contract ownership
for the first implementation boundary.

api_principles:
- additive only
- request / response payloads are fixed explicitly
- ERP truth is referenced, not silently mutated
- forecast values are advisory references
- locale and currency context must be explicit where relevant

# ============================================================
# 1. ROUTE SET
# ============================================================

routes:
  - method: POST
    path: /api/product-portfolio/list
    purpose: load product portfolio list

  - method: POST
    path: /api/product-portfolio/detail
    purpose: load one product portfolio detail

  - method: POST
    path: /api/product-portfolio/score/refresh
    purpose: refresh score and suggestion

  - method: POST
    path: /api/product-portfolio/classification-draft/save
    purpose: save classification draft

  - method: POST
    path: /api/product-portfolio/proposal/save
    purpose: create or update proposal

  - method: POST
    path: /api/product-portfolio/review-session/create
    purpose: create review session

  - method: POST
    path: /api/product-portfolio/review-decision/save
    purpose: save review decision

  - method: POST
    path: /api/product-portfolio/approval-request/create
    purpose: create approval request

  - method: POST
    path: /api/product-portfolio/approval-decision/save
    purpose: save approval decision

  - method: POST
    path: /api/product-portfolio/alerts/list
    purpose: load alert list

# ============================================================
# 2. STANDARD RESPONSE ENVELOPE
# ============================================================

standard_response_envelope:
  success: boolean
  code: string
  message: string|null
  data: object|null
  error:
    error_type: string|null
    error_detail: string|null
    field_errors:
      - field: string
        reason: string

# ============================================================
# 3. VALIDATION RULES
# ============================================================

validation_rules:
- company_id is required
- workspace_id is required except where globally inferred by authenticated backend context
- user_id is required for all write operations
- enum fields must reject undefined values
- currency-aware endpoints must reject blank reporting_currency_code where required
- date ranges must reject start_date > end_date
- approval-decision-save must reject decisions for closed requests

# ============================================================
# 4. FIRST IMPLEMENTATION OWNERSHIP
# ============================================================

backend_responsibilities:
- input validation
- authorization
- ERP reference lookup
- metric snapshot materialization
- score persistence
- classification draft persistence
- proposal persistence
- review session and decision persistence
- approval persistence
- audit event generation

frontend_responsibilities:
- locale selection
- reporting currency selection
- device-appropriate rendering
- request assembly
- response rendering
- draft editing UX
- before/after visibility presentation

# ============================================================
# 5. AUDIT GENERATION POINTS
# ============================================================

audit_generation_points:
- classification draft submitted
- proposal status changed
- review decision saved
- approval decision saved
- share scope changed
- important source-boundary action executed

# ============================================================
# 6. PHASE-1 REQUIRED ROUTES
# ============================================================

phase_1_required_routes:
- /api/product-portfolio/list
- /api/product-portfolio/detail
- /api/product-portfolio/score/refresh
- /api/product-portfolio/classification-draft/save
- /api/product-portfolio/proposal/save

phase_2_required_routes:
- /api/product-portfolio/review-session/create
- /api/product-portfolio/review-decision/save
- /api/product-portfolio/approval-request/create
- /api/product-portfolio/approval-decision/save
- /api/product-portfolio/alerts/list

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200004_PRODUCT_PORTFOLIO_MANAGER_API_CONTRACT_EXACT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200005_PRODUCT_PORTFOLIO_MANAGER_SCREEN_TO_API_MAPPING.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER SCREEN TO API MAPPING
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

screen_to_api_mapping:

  dashboard:
    primary_routes:
      - /api/product-portfolio/list
      - /api/product-portfolio/alerts/list

  portfolio_list:
    primary_routes:
      - /api/product-portfolio/list

  product_detail:
    primary_routes:
      - /api/product-portfolio/detail
      - /api/product-portfolio/score/refresh

  score_detail:
    primary_routes:
      - /api/product-portfolio/detail
      - /api/product-portfolio/score/refresh

  classification_change:
    primary_routes:
      - /api/product-portfolio/detail
      - /api/product-portfolio/classification-draft/save
      - /api/product-portfolio/approval-request/create

  proposal_list:
    primary_routes:
      - /api/product-portfolio/list

  proposal_detail:
    primary_routes:
      - /api/product-portfolio/detail
      - /api/product-portfolio/proposal/save
      - /api/product-portfolio/approval-request/create

  review_session_list:
    primary_routes:
      - /api/product-portfolio/list

  review_session_detail:
    primary_routes:
      - /api/product-portfolio/review-decision/save
      - /api/product-portfolio/approval-request/create

  approval_queue:
    primary_routes:
      - /api/product-portfolio/approval-decision/save

  alert_list:
    primary_routes:
      - /api/product-portfolio/alerts/list

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200005_PRODUCT_PORTFOLIO_MANAGER_SCREEN_TO_API_MAPPING.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200006_PRODUCT_PORTFOLIO_MANAGER_ALERT_AND_NOTIFICATION_REQUIREMENTS.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER ALERT AND NOTIFICATION REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements for alert and notification behavior
without entering implementation code.

# ============================================================
# 1. ALERT DISPLAY REQUIREMENTS
# ============================================================

alert_display_requirements:
- alert list screen must exist
- product detail should expose related alerts
- dashboard should expose high-value alert summaries
- severity must be visible by text, not color alone
- alert status must be visible separately from severity

# ============================================================
# 2. ALERT DATA REQUIREMENTS
# ============================================================

required_alert_fields:
- alert_id
- portfolio_item_id
- alert_type_code
- severity_level
- alert_title_key
- alert_message_key
- alert_status
- detected_at
- resolved_at
- assigned_user_id

# ============================================================
# 3. NOTIFICATION EVENT REQUIREMENTS
# ============================================================

notification_event_requirements:
- alert_created
- alert_assigned
- alert_escalated
- proposal_due_soon
- proposal_overdue
- review_session_scheduled
- review_overdue
- approval_request_pending
- approval_decision_recorded

# ============================================================
# 4. USER ACTION REQUIREMENTS
# ============================================================

user_action_requirements:
- acknowledge alert
- resolve alert
- dismiss alert where permitted
- open related product detail
- create proposal from alert context
- add target to review session from alert context

# ============================================================
# 5. TRACEABILITY REQUIREMENTS
# ============================================================

traceability_requirements:
- important alert status changes should be auditable
- assignment changes should be traceable where supported
- notification-triggering workflow events should remain explainable
- alert source context should be inspectable

# ============================================================
# 6. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready text keys for alert titles and messages
- multi-device consistent meaning
- no hidden authority expansion through notification shortcuts
- no assumption that notification delivery equals workflow completion

# ============================================================
# 7. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must treat alerts as structured operational signals
and notifications as controlled delivery surfaces for those signals and related workflow events.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200006_PRODUCT_PORTFOLIO_MANAGER_ALERT_AND_NOTIFICATION_REQUIREMENTS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200007_PRODUCT_PORTFOLIO_MANAGER_SHARE_SCOPE_REQUIREMENTS.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER SHARE SCOPE REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements for share scope handling
without entering implementation code.

# ============================================================
# 1. REQUIRED SHARE MODEL FIELDS
# ============================================================

required_share_model_fields:
- share_scope_id
- target_entity_type
- target_entity_id
- share_type
- shared_to_type
- shared_to_id
- created_by_user_id
- created_at
- revoked_at

# ============================================================
# 2. REQUIRED UI SURFACES
# ============================================================

required_ui_surfaces:
- share scope summary on shareable entities where relevant
- share scope detail / confirmation surface
- share creation flow
- share revocation flow
- share history visibility where role permits

# ============================================================
# 3. REQUIRED USER ACTIONS
# ============================================================

required_user_actions:
- create bounded share
- expand share where authorized
- revoke share where authorized
- inspect who currently has visibility
- inspect share history where permitted

# ============================================================
# 4. VALIDATION REQUIREMENTS
# ============================================================

validation_requirements:
- target_entity_type must be explicit
- target_entity_id must resolve to a valid entity
- share_type must be one of private/team/org/limited
- shared_to_type must be one of user/role/team/org
- invalid scope combinations must be rejected
- revoked shares must not be treated as active

# ============================================================
# 5. EXPLANATION REQUIREMENTS
# ============================================================

explanation_requirements:
- the UI should make clear that sharing affects visibility, not authority
- the UI should show current share type in plain language
- broader visibility changes should be explicit before confirmation
- revocation effects should be understandable to the operator

# ============================================================
# 6. TRACEABILITY REQUIREMENTS
# ============================================================

traceability_requirements:
- share creation should be traceable
- share modification should be traceable
- share revocation should be traceable
- important visibility expansions should remain auditable

# ============================================================
# 7. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready share labels and explanations
- cross-device consistent meaning
- no hidden share changes through indirect actions
- no assumption that visible means editable
- no assumption that visible means approvable

# ============================================================
# 8. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must handle share scope
as an explicit visibility-control layer,
not as a shortcut for authority transfer.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200007_PRODUCT_PORTFOLIO_MANAGER_SHARE_SCOPE_REQUIREMENTS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200008_PRODUCT_PORTFOLIO_MANAGER_AUDIT_AND_HISTORY_REQUIREMENTS.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER AUDIT AND HISTORY REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements for audit-event handling
and history presentation without entering implementation code.

# ============================================================
# 1. REQUIRED AUDIT MODEL FIELDS
# ============================================================

required_audit_model_fields:
- audit_event_id
- entity_type
- entity_id
- event_type
- before_payload
- after_payload
- actor_user_id
- event_at
- source_channel

# ============================================================
# 2. REQUIRED HISTORY SURFACES
# ============================================================

required_history_surfaces:
- product history view
- proposal history view
- approval history view
- review decision history view
- share history view
- audit list / search surface
- linked history entry from important detail screens

# ============================================================
# 3. REQUIRED FILTERS
# ============================================================

required_filters:
- entity_type
- entity_id
- event_type
- actor_user_id
- date range
- target product context
- approval-related events
- review-related events

# ============================================================
# 4. REQUIRED USER ACTIONS
# ============================================================

required_user_actions:
- inspect event summary
- expand before/after detail where permitted
- navigate to related entity
- filter and search history
- compare chronology of related events

# ============================================================
# 5. EXPLANATION REQUIREMENTS
# ============================================================

explanation_requirements:
- event labels should be localization-ready
- history views should distinguish draft vs approved meaning
- history views should distinguish judgment events vs reference/fact context
- actor and timestamp should be clearly visible
- before/after meaning should be understandable to operators

# ============================================================
# 6. TRACEABILITY REQUIREMENTS
# ============================================================

traceability_requirements:
- important workflow edges should generate auditable events
- approvals must be traceable
- share scope changes must be traceable
- classification finalization must be traceable
- proposal status transitions on meaningful states must be traceable

# ============================================================
# 7. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready audit labels
- no assumption that history visibility implies edit power
- cross-device consistent meaning
- compact and detailed history views may differ in density, not in business meaning

# ============================================================
# 8. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must expose audit and history
as a first-class explainability and accountability surface
for product judgment operations.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200008_PRODUCT_PORTFOLIO_MANAGER_AUDIT_AND_HISTORY_REQUIREMENTS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200009_PRODUCT_PORTFOLIO_MANAGER_KPI_AND_SCORING_REQUIREMENTS.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER KPI AND SCORING REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements for KPI and scoring behavior
without entering implementation code.

# ============================================================
# 1. REQUIRED KPI DISPLAY CAPABILITIES
# ============================================================

required_kpi_display_capabilities:
- show product metric summary in product detail
- show comparable KPI columns in portfolio list
- show KPI context in comparison views
- show period context for KPI values
- show currency context for monetary KPI values

# ============================================================
# 2. REQUIRED SCORE DISPLAY CAPABILITIES
# ============================================================

required_score_display_capabilities:
- show component scores
- show total_score
- show score_version
- show calculated_at
- show score rationale summary
- support product-to-product score comparison

# ============================================================
# 3. REQUIRED REFRESH CAPABILITIES
# ============================================================

required_refresh_capabilities:
- manual score refresh
- pre-review refresh support
- refresh result visibility
- clear display of latest calculated time

# ============================================================
# 4. REQUIRED EXPLANATION CAPABILITIES
# ============================================================

required_explanation_capabilities:
- explain score as a judgment-support artifact
- distinguish KPI source values from score outputs
- show component names clearly
- support localization-ready labels for KPI and score presentation

# ============================================================
# 5. REQUIRED INPUT CONTEXT
# ============================================================

required_input_context:
- period_type
- period_start
- period_end
- reporting_currency_code
- score_version
- portfolio_item_id

# ============================================================
# 6. REQUIRED OUTPUT CONTEXT
# ============================================================

required_output_context:
- metric_snapshot_id where applicable
- product_score_id
- component scores
- total_score
- score_version
- calculated_at
- classification suggestion where supported

# ============================================================
# 7. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready KPI and score labels
- multi-currency-safe monetary presentation
- cross-device consistent meaning
- no implication that score equals final approval
- no hidden score recalculation without visible refresh context

# ============================================================
# 8. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must implement KPI and scoring
as visible, explainable, period-aware, and version-aware judgment support surfaces.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200009_PRODUCT_PORTFOLIO_MANAGER_KPI_AND_SCORING_REQUIREMENTS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200010_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_AND_LIFECYCLE_REQUIREMENTS.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER CLASSIFICATION AND LIFECYCLE REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements for lifecycle and classification handling
without entering implementation code.

# ============================================================
# 1. REQUIRED DISPLAY CAPABILITIES
# ============================================================

required_display_capabilities:
- show lifecycle_stage in portfolio list
- show current_classification_code in portfolio list
- show lifecycle and classification together in product detail
- show classification history in history surfaces
- support filtering by lifecycle and classification
- support comparison views across lifecycle/classification combinations

# ============================================================
# 2. REQUIRED EDITING CAPABILITIES
# ============================================================

required_editing_capabilities:
- create classification draft
- update classification draft while allowed
- submit classification draft
- finalize classification where policy permits
- keep lifecycle updates and classification changes as separate actions

# ============================================================
# 3. REQUIRED EXPLANATION CAPABILITIES
# ============================================================

required_explanation_capabilities:
- explain lifecycle as product-phase meaning
- explain classification as strategy meaning
- avoid implying they are the same field
- show reason and support context for classification changes where relevant

# ============================================================
# 4. REQUIRED HISTORY CAPABILITIES
# ============================================================

required_history_capabilities:
- show previous approved classifications
- show current approved classification
- distinguish draft from approved meaning
- preserve before/after comparison for classification changes

# ============================================================
# 5. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready labels for lifecycle and classification
- cross-device consistent meaning
- no hidden classification changes during score refresh
- no collapse of lifecycle and classification into one display concept

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must present lifecycle and classification
as distinct but related judgment surfaces,
with clear explanation, filtering, and history behavior.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200010_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_AND_LIFECYCLE_REQUIREMENTS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200011_PRODUCT_PORTFOLIO_MANAGER_REVIEW_SESSION_REQUIREMENTS.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER REVIEW SESSION REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements for review sessions
without entering implementation code.

# ============================================================
# 1. REQUIRED SESSION CAPABILITIES
# ============================================================

required_session_capabilities:
- create review session
- edit review session while allowed
- add review targets
- remove review targets while allowed
- capture comments
- capture review decisions
- assign owner and due date
- complete session
- archive session

# ============================================================
# 2. REQUIRED REVIEW CONTEXT CAPABILITIES
# ============================================================

required_review_context_capabilities:
- show score context
- show proposal context
- show alert context
- show lifecycle and classification context
- show product comparison context

# ============================================================
# 3. REQUIRED DECISION CAPABILITIES
# ============================================================

required_decision_capabilities:
- classification_change
- proposal_adopted
- proposal_rejected
- hold
- recheck
- assign_action

# ============================================================
# 4. REQUIRED HISTORY CAPABILITIES
# ============================================================

required_history_capabilities:
- show session state history
- show decision history
- show target membership history where supported
- navigate from session to related product/proposal/approval context

# ============================================================
# 5. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready review labels
- cross-device consistent meaning
- no hidden approval through session completion
- no silent loss of target comparison context
- no collapse of review role and approval role by UI shortcut

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must implement review sessions
as structured comparison and decision surfaces
with explicit follow-up and approval handoff behavior.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200011_PRODUCT_PORTFOLIO_MANAGER_REVIEW_SESSION_REQUIREMENTS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200012_PRODUCT_PORTFOLIO_MANAGER_PROPOSAL_REQUIREMENTS.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER PROPOSAL REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements for proposal handling
without entering implementation code.

# ============================================================
# 1. REQUIRED PROPOSAL CAPABILITIES
# ============================================================

required_proposal_capabilities:
- create proposal
- edit proposal while state permits
- save proposal draft
- submit proposal
- move proposal into review context
- show proposal history
- show proposal owner and due date
- show proposal priority
- connect proposal to approval workflow where required

# ============================================================
# 2. REQUIRED PROPOSAL DISPLAY CAPABILITIES
# ============================================================

required_proposal_display_capabilities:
- show proposal type
- show proposal title and detail
- show expected effect
- show risk note
- show status
- show linked product context
- show related classification context where relevant
- show related KPI/score context where relevant

# ============================================================
# 3. REQUIRED PROPOSAL HISTORY CAPABILITIES
# ============================================================

required_proposal_history_capabilities:
- show status transitions
- show actor and time where available
- show rejection or send-back outcomes
- preserve historical visibility of prior proposal states

# ============================================================
# 4. REQUIRED FILTERING CAPABILITIES
# ============================================================

required_filtering_capabilities:
- filter by proposal_status
- filter by proposal_type_code
- filter by priority_level
- filter by owner_user_id
- filter by due_date context
- filter by related product context

# ============================================================
# 5. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready labels for proposal type and status
- cross-device consistent meaning
- no hidden proposal approval by UI shortcut
- no collapse of proposal and approval state concepts
- no implication that completed means ERP truth was updated

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must implement proposals
as typed, stateful, traceable business action candidates
with clear context and governance linkage.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200012_PRODUCT_PORTFOLIO_MANAGER_PROPOSAL_REQUIREMENTS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200013_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_REQUIREMENTS.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER ERP BOUNDARY REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements
for ERP boundary handling without entering implementation code.

# ============================================================
# 1. REQUIRED REFERENCE CAPABILITIES
# ============================================================

required_reference_capabilities:
- load ERP-derived product identity context
- load ERP-derived metric context
- preserve source_system_code where applicable
- preserve source_generated_at where available
- preserve fetched_at
- distinguish ERP reference values from application-owned outputs

# ============================================================
# 2. REQUIRED UI CAPABILITIES
# ============================================================

required_ui_capabilities:
- indicate ERP-derived values in detail context where relevant
- indicate snapshot timing
- indicate score as application evaluation output
- indicate classification as portfolio strategy output
- avoid ambiguous source presentation

# ============================================================
# 3. REQUIRED VALIDATION CAPABILITIES
# ============================================================

required_validation_capabilities:
- reject flows that assume implicit ERP mutation through local judgment save
- require explicit typed route for any future ERP-affecting handoff
- validate presence of source context fields where required for reference rows

# ============================================================
# 4. REQUIRED HISTORY/AUDIT CAPABILITIES
# ============================================================

required_history_audit_capabilities:
- preserve source-boundary-relevant audit events where meaningful
- preserve reference timestamps for later explanation
- preserve distinction between fact reference refresh and judgment change events

# ============================================================
# 5. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready source labels
- multi-currency-safe ERP fact presentation
- cross-device consistent meaning
- no hidden ERP mutation by proposal or review shortcuts
- no implication that application-owned artifacts are ERP truth

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must implement ERP boundary handling
as explicit reference, explicit attribution, and explicit separation from judgment ownership.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200013_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_REQUIREMENTS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200014_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_REQUIREMENTS.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER FORECAST BOUNDARY REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements
for forecast-boundary handling without entering implementation code.

# ============================================================
# 1. REQUIRED FORECAST DISPLAY CAPABILITIES
# ============================================================

required_forecast_display_capabilities:
- show forecast period
- show forecast quantity where available
- show forecast sales amount where available
- show forecast currency where monetary
- show confidence level where available
- show forecast source
- show forecast generated time where available
- show fetched time where relevant

# ============================================================
# 2. REQUIRED COMPARISON CAPABILITIES
# ============================================================

required_comparison_capabilities:
- compare forecast and actual context
- support forecast-informed alert context
- support forecast-informed review context
- support forecast-informed proposal context

# ============================================================
# 3. REQUIRED VALIDATION CAPABILITIES
# ============================================================

required_validation_capabilities:
- preserve advisory labeling for forecast context
- reject hidden assumptions that forecast equals final truth
- preserve source metadata fields where available
- preserve confidence metadata where available

# ============================================================
# 4. REQUIRED HISTORY/AUDIT CAPABILITIES
# ============================================================

required_history_audit_capabilities:
- preserve forecast-relevant context in history where needed for explanation
- preserve forecast-source distinction in audit-relevant surfaces
- distinguish forecast refresh/retrieval context from judgment-change events

# ============================================================
# 5. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready forecast labels
- multi-currency-safe forecast money presentation
- cross-device consistent meaning
- no hidden conversion of forecast to decision
- no implication that forecast equals ERP fact

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must implement forecast-boundary handling
as explicit advisory context with visible source, confidence, and timing meaning.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200014_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_REQUIREMENTS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200015_PRODUCT_PORTFOLIO_MANAGER_DASHBOARD_LIST_COMPARISON_REQUIREMENTS.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER DASHBOARD LIST COMPARISON REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements for dashboard,
portfolio list,
and comparison surfaces without entering implementation code.

# ============================================================
# 1. DASHBOARD REQUIREMENTS
# ============================================================

dashboard_requirements:
- show KPI summary cards
- show strategic classification counts
- show alert summary
- show review and approval workload summary
- show navigable top-priority product sections
- support period context
- support reporting currency context

required_dashboard_widgets:
- total products
- focus/growth/improve/retire-candidate counts where available
- high or critical alert count
- pending approval count
- top sales products
- top gross-profit products
- top growth products
- review-target summary

# ============================================================
# 2. PORTFOLIO LIST REQUIREMENTS
# ============================================================

portfolio_list_requirements:
- search by product identity context
- filter by classification
- filter by category
- filter by brand
- filter by lifecycle
- filter by alert/proposal/review state
- sort by KPI and score context
- support paging
- support saved view or preset behavior where available
- support multi-select for comparison

required_list_columns_or_equivalent_fields:
- product_code
- product_name
- category
- brand
- lifecycle_stage
- current_classification_code
- sales_amount
- gross_profit_amount
- gross_profit_rate
- growth_rate
- total_score
- alert/proposal flags
- updated_at

# ============================================================
# 3. COMPARISON REQUIREMENTS
# ============================================================

comparison_requirements:
- compare multiple selected products
- show KPI differences
- show score differences
- show lifecycle/classification differences
- show alert context
- show forecast context where available
- support next-step actions into detail/review/proposal/classification flows

comparison_display_requirements:
- product identity must remain clear
- period context must remain visible
- monetary context must remain visible
- score version context should be visible where relevant
- mixed availability of data should remain understandable

# ============================================================
# 4. MOBILE / TABLET / PC REQUIREMENTS
# ============================================================

device_requirements:
phone:
- prioritize essential fields first
- allow expansion for deeper fields
- support reduced-density comparison

tablet:
- support stronger side-by-side layouts
- support quicker navigation between selected targets

pc:
- support denser lists
- support denser comparison matrices
- support faster analyst-style scanning

# ============================================================
# 5. EXPLANATION REQUIREMENTS
# ============================================================

explanation_requirements:
- facts must be distinguishable from scores
- lifecycle must be distinguishable from classification
- alert state must be distinguishable from severity
- approval workload must be distinguishable from proposal volume
- UI labels must be localization-ready

# ============================================================
# 6. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready labels and headings
- multi-currency-safe money display
- no hidden authority shortcuts from dashboard widgets
- no misleading compression of mixed-context data
- consistent meaning across devices

# ============================================================
# 7. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must implement dashboard,
portfolio list,
and comparison surfaces
as first-class judgment-entry and triage surfaces
for portfolio operations.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200015_PRODUCT_PORTFOLIO_MANAGER_DASHBOARD_LIST_COMPARISON_REQUIREMENTS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200016_PRODUCT_PORTFOLIO_MANAGER_PRODUCT_DETAIL_AND_SCORE_DETAIL_REQUIREMENTS.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER PRODUCT DETAIL AND SCORE DETAIL REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements for product detail
and score detail surfaces without entering implementation code.

# ============================================================
# 1. PRODUCT DETAIL REQUIREMENTS
# ============================================================

product_detail_requirements:
- show product identity context
- show lifecycle_stage
- show current_classification_code
- show KPI/metric snapshot summary
- show current score summary
- show proposal summary
- show alert summary
- show forecast reference summary where available
- show comments/notes entry surface
- show history/audit entry surface
- show source context for ERP / forecast / score meaning

required_product_detail_fields_or_equivalent:
- product_code
- product_name
- category
- brand
- series where available
- lifecycle_stage
- current_classification_code
- sales_amount
- sales_quantity
- gross_profit_amount
- gross_profit_rate
- inventory_quantity where available
- growth_rate
- total_score
- alert flags or counts
- proposal flags or counts
- source_generated_at where available
- fetched_at where available

# ============================================================
# 2. SCORE DETAIL REQUIREMENTS
# ============================================================

score_detail_requirements:
- show total_score
- show sales_score
- show margin_score
- show growth_score
- show inventory_score
- show risk_score
- show strategic_score
- show score_version
- show calculated_at
- show score period context
- show reporting currency context where relevant
- show rationale summary or explanation entry
- show classification suggestion context where supported

# ============================================================
# 3. NEXT-ACTION REQUIREMENTS
# ============================================================

next_action_requirements:
- navigate from product detail to score detail
- navigate from product detail to classification flow
- navigate from product detail to proposal flow
- navigate from product detail to review session context where allowed
- navigate from product detail to history/audit view
- navigate from score detail back to product detail
- navigate from score detail into classification/review flows where supported

# ============================================================
# 4. EXPLANATION REQUIREMENTS
# ============================================================

explanation_requirements:
- distinguish ERP-derived values from application-owned score outputs
- distinguish lifecycle from classification
- distinguish alert severity from alert status
- distinguish forecast advisory context from ERP fact context
- distinguish score explanation from formal accounting meaning
- labels and explanatory text must be localization-ready

# ============================================================
# 5. DEVICE REQUIREMENTS
# ============================================================

device_requirements:
phone:
- prioritize summary-first layout
- allow drill-in for deeper sections

tablet:
- support faster switching among detail sections
- support clearer pairing of summary and explanation

pc:
- support denser simultaneous visibility across sections
- support deeper history/score context without excessive navigation

# ============================================================
# 6. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready labels and explanations
- multi-currency-safe monetary presentation
- no hidden authority shortcuts from detail widgets
- no implication that score equals ERP truth
- consistent meaning across devices

# ============================================================
# 7. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must implement product detail
and score detail as core single-product judgment and explainability surfaces
with explicit context, source clarity, and action continuity.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200016_PRODUCT_PORTFOLIO_MANAGER_PRODUCT_DETAIL_AND_SCORE_DETAIL_REQUIREMENTS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200017_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_CHANGE_AND_PROPOSAL_DETAIL_REQUIREMENTS.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER CLASSIFICATION CHANGE AND PROPOSAL DETAIL REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements for
classification-change and proposal-detail surfaces
without entering implementation code.

# ============================================================
# 1. CLASSIFICATION-CHANGE REQUIREMENTS
# ============================================================

classification_change_requirements:
- show product identity context
- show current approved classification
- show proposed classification selection
- show proposed reason input
- show supporting score context
- show lifecycle context
- show alert/proposal context where relevant
- show approval requirement or approval state where relevant
- support save draft
- support submit
- support finalize where policy permits
- support history visibility

required_classification_change_fields_or_equivalent:
- portfolio_item_id
- current_classification_code
- proposed_classification_code
- proposed_reason
- based_score_id where relevant
- draft_status
- approval status where relevant

# ============================================================
# 2. PROPOSAL-DETAIL REQUIREMENTS
# ============================================================

proposal_detail_requirements:
- show proposal type
- show proposal title
- show proposal detail
- show expected effect
- show risk note
- show priority level
- show owner_user_id or owner context
- show due_date
- show proposal_status
- show linked product context
- show approval context where relevant
- show history context
- support edit while allowed
- support submit/review/approval linkage while allowed

required_proposal_detail_fields_or_equivalent:
- proposal_id
- proposal_type_code
- proposal_title
- proposal_detail
- expected_effect
- risk_note
- priority_level
- owner_user_id
- due_date
- proposal_status
- created_at
- updated_at

# ============================================================
# 3. EXPLANATION REQUIREMENTS
# ============================================================

explanation_requirements:
- explain difference between current approved classification and proposed change
- explain difference between proposal status and approval status
- explain that approved proposal is not automatically completed execution
- explain that classification is strategy meaning, not ERP category meaning
- labels and explanatory text must be localization-ready

# ============================================================
# 4. DEVICE REQUIREMENTS
# ============================================================

device_requirements:
phone:
- prioritize stepwise editing and submission flow
- support condensed support-context sections

tablet:
- support easier switching between support context and editable form

pc:
- support denser support context and clearer before/after visibility
- support deeper simultaneous history/context inspection

# ============================================================
# 5. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready labels and explanations
- multi-currency-safe money/context presentation where relevant
- no hidden approval shortcut through edit actions
- no hidden finalization of classification changes
- no implication that completed proposal equals ERP-side truth
- consistent meaning across devices

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must implement
classification-change and proposal-detail surfaces
as governed judgment surfaces
with explicit state meaning,
supporting context,
and history visibility.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200017_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_CHANGE_AND_PROPOSAL_DETAIL_REQUIREMENTS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200018_PRODUCT_PORTFOLIO_MANAGER_APPROVAL_ALERT_AUDIT_LIST_REQUIREMENTS.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER APPROVAL ALERT AUDIT LIST REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements for
approval queue,
alert list,
and audit/history list surfaces
without entering implementation code.

# ============================================================
# 1. APPROVAL QUEUE REQUIREMENTS
# ============================================================

approval_queue_requirements:
- show pending and other relevant approval statuses
- filter by request_type
- filter by current_status
- filter by due timing
- show requester identity
- show target entity identity
- support navigation to target context
- support explicit decision actions where authorized

required_approval_queue_fields_or_equivalent:
- approval_request_id
- request_type
- target_entity_type
- target_entity_id
- requested_by_user_id
- current_status
- requested_at
- due_at

# ============================================================
# 2. ALERT LIST REQUIREMENTS
# ============================================================

alert_list_requirements:
- show alert rows with severity and status clearly separated
- filter by alert_type_code
- filter by severity_level
- filter by alert_status
- filter by assigned_user_id
- support navigation to product detail
- support alert actions where authorized
- support link into proposal/review context where supported

required_alert_list_fields_or_equivalent:
- alert_id
- portfolio_item_id
- alert_type_code
- severity_level
- alert_status
- detected_at
- resolved_at
- assigned_user_id

# ============================================================
# 3. AUDIT/HISTORY LIST REQUIREMENTS
# ============================================================

audit_history_list_requirements:
- show event rows with event_type and event_at
- show entity context
- show actor context
- support filter by entity_type
- support filter by entity_id
- support filter by event_type
- support filter by actor_user_id
- support date-range filtering
- support navigation to related entity context
- support before/after summary where permitted

required_audit_history_fields_or_equivalent:
- audit_event_id
- entity_type
- entity_id
- event_type
- actor_user_id
- event_at
- source_channel
- before_payload summary where permitted
- after_payload summary where permitted

# ============================================================
# 4. EXPLANATION REQUIREMENTS
# ============================================================

explanation_requirements:
- distinguish approval status from request type
- distinguish alert severity from alert status
- distinguish audit chronology from current business state
- labels and explanations must be localization-ready
- timestamps should remain understandable to operators

# ============================================================
# 5. DEVICE REQUIREMENTS
# ============================================================

device_requirements:
phone:
- prioritize high-value fields first
- support drill-in for full detail and action

tablet:
- support list plus detail inspection
- support faster triage than phone layout

pc:
- support denser columns and filters
- support quicker analyst/operator workflows

# ============================================================
# 6. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready labels and explanations
- cross-device consistent meaning
- no hidden approval shortcuts from queue rows
- no hidden alert resolution assumptions
- no audit-detail leakage beyond allowed visibility
- consistent navigation into governed next actions

# ============================================================
# 7. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must implement
approval queue,
alert list,
and audit/history list
as first-class operational-control surfaces
for decisions,
attention management,
and explainability.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200018_PRODUCT_PORTFOLIO_MANAGER_APPROVAL_ALERT_AUDIT_LIST_REQUIREMENTS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200019_PRODUCT_PORTFOLIO_MANAGER_SETTINGS_LOCALE_CURRENCY_PRESET_REQUIREMENTS.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER SETTINGS LOCALE CURRENCY PRESET REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements for settings,
display language,
display/reporting currency,
and saved view presets
without entering implementation code.

# ============================================================
# 1. SETTINGS REQUIREMENTS
# ============================================================

settings_requirements:
- support display language selection
- support reporting/display currency selection
- support default period selection where supported
- support default density/layout preference where supported
- support view preset management entry points

# ============================================================
# 2. LOCALE REQUIREMENTS
# ============================================================

locale_requirements:
- translated labels must be localization-ready
- classification, lifecycle, proposal, alert, approval, and audit labels must be language-switchable
- locale changes should reflect across supported screens consistently
- locale changes must not alter stored business code values

# ============================================================
# 3. CURRENCY REQUIREMENTS
# ============================================================

currency_requirements:
- monetary displays must show currency context clearly
- reporting/display currency changes must propagate to supported views
- mixed-currency contexts must remain understandable
- source-vs-display money meaning must not be collapsed

# ============================================================
# 4. VIEW PRESET REQUIREMENTS
# ============================================================

view_preset_requirements:
- save preset for supported list/screen contexts
- load preset
- rename preset
- delete preset
- mark preset as default where supported
- preserve filter_payload
- preserve sort_payload
- preserve column_payload where relevant

# ============================================================
# 5. EXPLANATION REQUIREMENTS
# ============================================================

explanation_requirements:
- make clear that language changes affect display, not business state
- make clear that display currency affects presentation, not source truth
- make clear that presets affect viewing context, not approval or workflow status
- labels and help text must be localization-ready

# ============================================================
# 6. DEVICE REQUIREMENTS
# ============================================================

device_requirements:
phone:
- support compact settings navigation
- support fast preset recall

tablet:
- support easier side-by-side preset and settings inspection where useful

pc:
- support denser settings and preset management surfaces
- support quicker preset editing and reuse

# ============================================================
# 7. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready labels and explanations
- multi-currency-safe presentation
- cross-device consistent meaning
- no hidden authority changes through settings
- no hidden workflow changes through presets
- no implication that locale/currency preference rewrites source data

# ============================================================
# 8. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must implement settings,
display language,
display/reporting currency,
and saved view presets
as explicit user-facing presentation controls and efficiency tools.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200019_PRODUCT_PORTFOLIO_MANAGER_SETTINGS_LOCALE_CURRENCY_PRESET_REQUIREMENTS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200020_PRODUCT_PORTFOLIO_MANAGER_FRESHNESS_BY_SURFACE_REQUIREMENTS.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER FRESHNESS BY SURFACE REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements
for freshness handling by surface
without entering implementation code.

# ============================================================
# 1. REQUIRED FRESHNESS FIELDS
# ============================================================

required_freshness_fields:
- source_generated_at where available
- fetched_at
- calculated_at for score surfaces
- forecast_generated_at where available
- score_version where score interpretation depends on it

# ============================================================
# 2. REQUIRED SURFACE BEHAVIOR
# ============================================================

required_surface_behavior:

  dashboard:
    - show freshness context when materially relevant
    - tolerate summary-oriented snapshot use

  portfolio_list:
    - show usable triage context
    - allow navigation into fresher deep surfaces

  product_detail:
    - show fact/source freshness context
    - show score freshness context

  score_detail:
    - show calculated_at
    - show score_version
    - preserve stale interpretation clarity

  comparison_surface:
    - show enough freshness context to avoid misleading comparison

  review_session_detail:
    - support fresher context expectations than dashboard/list
    - highlight materially stale targets where appropriate

  approval_queue:
    - preserve visibility of freshness on decision-relevant context
    - avoid misleading stale-as-fresh interpretation

  audit_history_list:
    - prioritize chronology over live freshness
    - avoid pretending historical states are current states

# ============================================================
# 3. REQUIRED EXPLANATION CAPABILITIES
# ============================================================

required_explanation_capabilities:
- explain that dashboard/list may be more triage-oriented
- explain freshness context on detail/review/approval surfaces where needed
- distinguish stale from missing
- distinguish stale forecast from absent forecast
- labels and freshness explanations must be localization-ready

# ============================================================
# 4. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready freshness labels
- cross-device consistent meaning
- no hidden refresh assumptions
- no silent use of stale context as if freshly confirmed
- no implication that history surfaces represent current live state

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must implement freshness-by-surface behavior
so that operators can judge recency appropriately
based on the purpose of each surface.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200020_PRODUCT_PORTFOLIO_MANAGER_FRESHNESS_BY_SURFACE_REQUIREMENTS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200021_PRODUCT_PORTFOLIO_MANAGER_NOTIFICATION_RECIPIENT_MATRIX_REQUIREMENTS.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER NOTIFICATION RECIPIENT MATRIX REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements
for notification recipient resolution
without entering implementation code.

# ============================================================
# 1. REQUIRED RESOLUTION INPUTS
# ============================================================

required_resolution_inputs:
- event_type
- event_severity_where_applicable
- target_entity_type
- target_entity_id
- assigned_user_id_where_applicable
- owner_user_id_where_applicable
- manager_scope_context_where_applicable
- approver_scope_context_where_applicable
- visibility/share-scope context
- company/workspace context

# ============================================================
# 2. REQUIRED RECIPIENT RULE CAPABILITIES
# ============================================================

required_recipient_rule_capabilities:
- resolve assigned-user recipient
- resolve owner recipient
- resolve responsible-manager recipient
- resolve approver recipient
- support secondary-recipient rules by policy
- suppress ineligible recipients by visibility/role checks

# ============================================================
# 3. REQUIRED EVENT COVERAGE
# ============================================================

required_event_coverage:
- alert_created
- alert_assigned
- alert_escalated
- proposal_submitted
- proposal_due_soon
- proposal_overdue
- review_session_scheduled
- review_overdue
- approval_request_created
- approval_decision_recorded
- high-impact share expansion where policy requires

# ============================================================
# 4. REQUIRED EXPLANATION CAPABILITIES
# ============================================================

required_explanation_capabilities:
- notification rules should be explainable to operators or administrators
- labels and event names must be localization-ready
- system should preserve reasoning context sufficient for operational inspection where supported
- escalation should be distinguishable from base delivery

# ============================================================
# 5. REQUIRED SAFETY CAPABILITIES
# ============================================================

required_safety_capabilities:
- re-check visibility before delivery
- re-check authorization when following notification deep links
- suppress duplicate notifications for unchanged state where supported
- avoid treating delivery success as user acknowledgment
- avoid treating user acknowledgment as resolution

# ============================================================
# 6. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready notification labels
- cross-device consistent meaning
- no hidden authority changes through notification actions
- no visibility leakage through recipient expansion
- no mass-broadcast assumption for high-impact events

# ============================================================
# 7. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must implement notification recipient resolution
as a bounded, explainable, policy-driven process
grounded in ownership, assignment, severity, and visibility.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/1200021_PRODUCT_PORTFOLIO_MANAGER_NOTIFICATION_RECIPIENT_MATRIX_REQUIREMENTS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/120300_PRODUCTPORTFOLIOMANAGER_PORTFOLIO_CONTROL_IMPLEMENTATION_GUIDE.md -->
# ============================================================
# PRODUCTPORTFOLIOMANAGER PORTFOLIO_CONTROL_IMPLEMENTATION_GUIDE
# ============================================================

status: canonical
layer: implementation
system: applications
application: ProductPortfolioManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: portfolio-control-implementation-guide

purpose:
Provides the first implementation-oriented guide for the newly
clarified differentiator in ProductPortfolioManager.

implementation_priority:
- Phase A should begin from portfolio cockpit and prioritization visibility,
  not from generic board expansion.
- Management control should become visible before deeper automation.

recommended_phase_a_entry:
- fix row families for portfolio timeline, prioritization exception review,
  and cockpit outputs
- freeze cockpit and exception-review DTOs
- separate raw product detail handling from portfolio readiness aggregation
- create slice order:
  - portfolio cockpit query
  - scenario exception review query
  - approval action
  - decision-support readiness review

hard_rules:
- keep raw product detail separate from portfolio rollup state
- keep approval and exception review separate from raw history
- do not collapse threshold breaches into only notes
- do not bury decision-support blockers inside generic board annotations

implementation_readiness_signal:
- once DDL, DTO, stub boundaries, and slice order are frozen,
  ProductPortfolioManager can follow the same bundled Phase A pattern used in
  the previously completed BusinessOS apps.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/120300_PRODUCTPORTFOLIOMANAGER_PORTFOLIO_CONTROL_IMPLEMENTATION_GUIDE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/120310_PRODUCTPORTFOLIOMANAGER_PHASE_A_PORTFOLIO_TIMELINE_IMPLEMENTATION_SKELETON.md -->
# ============================================================
# PRODUCTPORTFOLIOMANAGER PHASE A PORTFOLIO TIMELINE IMPLEMENTATION SKELETON
# ============================================================

status: canonical
layer: implementation
system: applications
application: ProductPortfolioManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-portfolio-timeline-implementation-skeleton

purpose:
Defines the first implementation skeleton for ProductPortfolioManager
Phase A management control without starting runtime generation.

implementation_policy:
- additive only
- exact DTOs first
- keep raw product detail handling separate from portfolio rollup state
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
- PortfolioCockpitQueryController
- PortfolioCockpitQueryService
- PortfolioCockpitQueryValidator
- PortfolioControlTimelineRepository
- ScenarioExceptionReviewController
- ScenarioExceptionReviewService
- ScenarioExceptionReviewValidator
- ScenarioExceptionReviewRepository
- PortfolioCockpitSnapshotRepository
- ProductPortfolioManagerAuditWriter

responsibility_split:
- controller:
  - request parsing
  - auth context handoff
  - response serialization
- service:
  - cockpit assembly
  - prioritization review orchestration
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
- step_01_portfolio_cockpit_query_path
- step_02_scenario_exception_review_query_path
- step_03_add snapshot and audit path
- step_04_add test baseline

minimum_test_families:
- portfolio_cockpit_query_success
- portfolio_cockpit_query_validation_failure
- scenario_exception_review_query_success
- scenario_exception_review_include_resolved_toggle
- scenario_exception_review_include_decision_support_blockers_toggle

phase_a_exit_ready_definition:
- DTO names compile against frozen contracts
- cockpit and exception review boundaries are explicit
- row-family assumptions align to the DDL additive plan
- audit append seam is present where needed

explicit_non_scope:
- no product write automation in this document
- no portfolio publication workflow here
- no external BI execution here
- no Android client work here

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/120310_PRODUCTPORTFOLIOMANAGER_PHASE_A_PORTFOLIO_TIMELINE_IMPLEMENTATION_SKELETON.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/120320_PRODUCTPORTFOLIOMANAGER_PHASE_A_STUB_FILE_PLAN.md -->
# ============================================================
# PRODUCTPORTFOLIOMANAGER PHASE A STUB FILE PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: ProductPortfolioManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-stub-file-plan

purpose:
Defines the implementation-ready stub file boundary for
ProductPortfolioManager Phase A management control.

implementation_policy:
- additive only
- exact DTOs first
- no Japanese literals in Java source
- controller remains thin
- service owns orchestration
- repository owns persistence and query only
- audit append stays separate

target_package_base:
- com.lsam.ProductPortfolioManager

target_server_source_root_example:
- src/main/java/com/lsam/ProductPortfolioManager

target_test_source_root_example:
- src/test/java/com/lsam/ProductPortfolioManager

phase_a_scope_modules:
- portfolio cockpit query
- scenario exception review query
- cockpit snapshot and audit bridge

recommended_stub_tree:
- src/main/java/com/lsam/ProductPortfolioManager/api/controller/execution/PortfolioCockpitQueryController.java
- src/main/java/com/lsam/ProductPortfolioManager/api/controller/execution/ScenarioExceptionReviewQueryController.java
- src/main/java/com/lsam/ProductPortfolioManager/api/dto/execution/request/PortfolioCockpitQueryRequest.java
- src/main/java/com/lsam/ProductPortfolioManager/api/dto/execution/request/ScenarioExceptionReviewQueryRequest.java
- src/main/java/com/lsam/ProductPortfolioManager/api/dto/execution/response/PortfolioCockpitQueryResponse.java
- src/main/java/com/lsam/ProductPortfolioManager/api/dto/execution/response/ScenarioExceptionReviewQueryResponse.java
- src/main/java/com/lsam/ProductPortfolioManager/api/dto/common/ErrorResponse.java
- src/main/java/com/lsam/ProductPortfolioManager/application/service/execution/PortfolioCockpitQueryService.java
- src/main/java/com/lsam/ProductPortfolioManager/application/service/execution/ScenarioExceptionReviewQueryService.java
- src/main/java/com/lsam/ProductPortfolioManager/application/validator/execution/PortfolioCockpitQueryValidator.java
- src/main/java/com/lsam/ProductPortfolioManager/application/validator/execution/ScenarioExceptionReviewQueryValidator.java
- src/main/java/com/lsam/ProductPortfolioManager/application/mapper/execution/PortfolioCockpitQueryMapper.java
- src/main/java/com/lsam/ProductPortfolioManager/application/mapper/execution/ScenarioExceptionReviewQueryMapper.java
- src/main/java/com/lsam/ProductPortfolioManager/domain/model/execution/PortfolioControlTimelineItem.java
- src/main/java/com/lsam/ProductPortfolioManager/domain/model/execution/PrioritizationExceptionReviewItem.java
- src/main/java/com/lsam/ProductPortfolioManager/domain/model/execution/PortfolioCockpitSnapshot.java
- src/main/java/com/lsam/ProductPortfolioManager/domain/port/execution/PortfolioControlTimelineRepository.java
- src/main/java/com/lsam/ProductPortfolioManager/domain/port/execution/ScenarioExceptionReviewRepository.java
- src/main/java/com/lsam/ProductPortfolioManager/domain/port/execution/PortfolioCockpitSnapshotRepository.java
- src/main/java/com/lsam/ProductPortfolioManager/domain/port/execution/ProductPortfolioManagerAuditPort.java
- src/main/java/com/lsam/ProductPortfolioManager/infrastructure/repository/execution/JdbcPortfolioControlTimelineRepository.java
- src/main/java/com/lsam/ProductPortfolioManager/infrastructure/repository/execution/JdbcScenarioExceptionReviewRepository.java
- src/main/java/com/lsam/ProductPortfolioManager/infrastructure/repository/execution/JdbcPortfolioCockpitSnapshotRepository.java
- src/main/java/com/lsam/ProductPortfolioManager/infrastructure/audit/execution/DatabaseProductPortfolioManagerAuditAdapter.java
- src/main/java/com/lsam/ProductPortfolioManager/config/execution/ProductPortfolioManagerPhaseAConfig.java
- src/test/java/com/lsam/ProductPortfolioManager/application/service/execution/PortfolioCockpitQueryServiceTest.java
- src/test/java/com/lsam/ProductPortfolioManager/application/service/execution/ScenarioExceptionReviewQueryServiceTest.java

alignment_requirements:
- DTO field names must follow the Phase A API DTO freeze
- row-family assumptions must follow the DDL additive plan
- cockpit and exception review responses must remain aligned to their fixed payload families

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/120320_PRODUCTPORTFOLIOMANAGER_PHASE_A_STUB_FILE_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/120330_PRODUCTPORTFOLIOMANAGER_PHASE_A_MODULE_TASK_BREAKDOWN.md -->
# ============================================================
# PRODUCTPORTFOLIOMANAGER PHASE A MODULE TASK BREAKDOWN
# ============================================================

status: canonical
layer: implementation
system: applications
application: ProductPortfolioManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-module-task-breakdown

purpose:
Breaks the ProductPortfolioManager Phase A stub plan into module-by-module
execution tasks.

baseline_dependencies:
- Phase A portfolio timeline DDL additive plan
- Phase A API starter
- Phase A API DTO field freeze
- Phase A implementation skeleton

recommended_execution_order:
- module_01_request_response_dto
- module_02_validators
- module_03_portfolio_cockpit_query
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

module_03_portfolio_cockpit_query:
  goal:
    - assemble prioritization exceptions, management attention, and decision-support visibility

module_04_scenario_exception_review_query:
  goal:
    - expose prioritization and decision-support blocker review rows

module_05_snapshot_and_audit_bridge:
  goal:
    - define optional snapshot persistence and audit append boundary

module_06_configuration:
  goal:
    - provide minimum wiring boundary

module_07_tests:
  goal:
    - establish minimum Phase A test safety net

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/120330_PRODUCTPORTFOLIOMANAGER_PHASE_A_MODULE_TASK_BREAKDOWN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/120340_PRODUCTPORTFOLIOMANAGER_PHASE_A_EXACT_STUB_CONTENT_ORDER_PLAN.md -->
# ============================================================
# PRODUCTPORTFOLIOMANAGER PHASE A EXACT STUB CONTENT ORDER PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: ProductPortfolioManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-exact-stub-content-order-plan

purpose:
Defines the exact file content writing order for ProductPortfolioManager
Phase A stub generation.

content_order_strategy:
- start from dependency-light files
- lock contracts first
- write ports before adapters
- write tests after service boundaries are clear

first_slice_recommended_start:
- ErrorResponse
- PortfolioCockpitQueryRequest
- PortfolioCockpitQueryResponse
- PortfolioCockpitQueryValidator
- PortfolioControlTimelineItem
- PortfolioControlTimelineRepository
- PortfolioCockpitQueryMapper
- PortfolioCockpitQueryService
- PortfolioCockpitQueryController
- JdbcPortfolioControlTimelineRepository
- DatabaseProductPortfolioManagerAuditAdapter
- ProductPortfolioManagerPhaseAConfig
- PortfolioCockpitQueryServiceTest

why_this_order:
- starts from contract-first
- keeps the first compile graph shallow
- enables the cockpit query as the narrowest first vertical slice
- delays exception review query until cockpit boundaries are stable

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/120340_PRODUCTPORTFOLIOMANAGER_PHASE_A_EXACT_STUB_CONTENT_ORDER_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/120350_PRODUCTPORTFOLIOMANAGER_PHASE_A_SLICE_COMMAND_PACKS.md -->
# ============================================================
# PRODUCTPORTFOLIOMANAGER PHASE A SLICE COMMAND PACKS
# ============================================================

status: canonical
layer: implementation
system: applications
application: ProductPortfolioManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-slice-command-packs

purpose:
Fixes the Termux-oriented stub generation packs for the ProductPortfolioManager
Phase A vertical slices.

execution_policy:
- design fixation only in this step
- actual execution is later
- Termux one-block style
- mkdir -p plus cat standard
- package base is com.lsam.ProductPortfolioManager
- no Japanese literals in Java source
- additive only

slice_01_portfolio_cockpit_query:
  default_safe_output_root:
    - $HOME/.tmp/productportfoliomanager-phase-a-slice01

slice_02_scenario_exception_review_query:
  default_safe_output_root:
    - $HOME/.tmp/productportfoliomanager-phase-a-slice02

slice_03_snapshot_and_audit_bridge:
  default_safe_output_root:
    - $HOME/.tmp/productportfoliomanager-phase-a-slice03

note:
- actual stub generation should follow the fixed stub file plan and content order plan
- command packs remain the only sequence authority during later execution

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/120350_PRODUCTPORTFOLIOMANAGER_PHASE_A_SLICE_COMMAND_PACKS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/120360_PRODUCTPORTFOLIOMANAGER_PHASE_A_SLICE_FIELD_FILL_PLAN.md -->
# ============================================================
# PRODUCTPORTFOLIOMANAGER PHASE A SLICE FIELD FILL PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: ProductPortfolioManager
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

slice_01_portfolio_cockpit_query:
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/120360_PRODUCTPORTFOLIOMANAGER_PHASE_A_SLICE_FIELD_FILL_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/120370_PRODUCTPORTFOLIOMANAGER_PHASE_A_IMPLEMENTATION_READY_COMPLETION_MEMO.md -->
# ============================================================
# PRODUCTPORTFOLIOMANAGER PHASE A IMPLEMENTATION READY COMPLETION MEMO
# ============================================================

status: canonical
layer: implementation
system: applications
application: ProductPortfolioManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-implementation-ready-completion

purpose:
Declares that ProductPortfolioManager Phase A planning has reached
implementation-ready status without starting real runtime generation.

completion_basis:
- competitive positioning note added
- portfolio signal aggregation architecture added
- prioritization scenario exception architecture added
- portfolio control timeline model added
- portfolio cockpit and scenario exception exact payloads added
- portfolio cockpit interface added
- portfolio control implementation guide added
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
- ProductPortfolioManager Phase A is implementation-ready at the design level.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/120370_PRODUCTPORTFOLIOMANAGER_PHASE_A_IMPLEMENTATION_READY_COMPLETION_MEMO.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/120380_PRODUCTPORTFOLIOMANAGER_PHASE_A_EXECUTION_ENTRY_PROTOCOL.md -->
# ============================================================
# PRODUCTPORTFOLIOMANAGER PHASE A EXECUTION ENTRY PROTOCOL
# ============================================================

status: canonical
layer: implementation
system: applications
application: ProductPortfolioManager
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/120.implementation/120380_PRODUCTPORTFOLIOMANAGER_PHASE_A_EXECUTION_ENTRY_PROTOCOL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/130.development/1300000_PRODUCT_PORTFOLIO_MANAGER_DEVELOPMENT_OVERVIEW.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER DEVELOPMENT OVERVIEW
# ============================================================

status: canonical
layer: development
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

development_rule:
Architecture-first and additive-only development.
No implementation may erode the ERP boundary or auditability.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/130.development/1300000_PRODUCT_PORTFOLIO_MANAGER_DEVELOPMENT_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/130.development/1300001_PHASE_PLAN.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER PHASE PLAN
# ============================================================

status: canonical
layer: development
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

phase_1:
- dashboard minimum
- product list
- product detail
- metric snapshot visibility
- score detail
- note support
- multilingual / multi-currency foundation
- responsive shell

phase_2:
- classification workflow
- proposal workflow
- alert visibility
- comparison board

phase_3:
- review session workflow
- approval workflow
- ERP reference hardening
- forecast reference attachment

phase_4:
- advanced score assistance
- richer reporting
- stronger automation aids

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/130.development/1300001_PHASE_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/130.development/1300002_DEVELOPMENT_GUARDRAILS.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER DEVELOPMENT GUARDRAILS
# ============================================================

status: canonical
layer: development
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

guardrails:
- additive only
- preserve auditability
- preserve ERP authority boundary
- preserve forecast advisory boundary
- no phase-less fixes
- no uncontrolled authority expansion

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/130.development/1300002_DEVELOPMENT_GUARDRAILS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000000_PRODUCT_PORTFOLIO_MANAGER_META_OVERVIEW.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER META OVERVIEW
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

meta_purpose:
Holds meta-level maintenance notes for the ProductPortfolioManager design set.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000000_PRODUCT_PORTFOLIO_MANAGER_META_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000001_PRODUCT_PORTFOLIO_MANAGER_DESIGN_PROGRESS_NOTE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER DESIGN PROGRESS NOTE
# ============================================================

status: working-note
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

completed_design_topics:
- application definition
- differentiation direction
- functional requirements
- screen requirements
- model requirements
- ERP / forecast boundary direction

next_recommended_topics:
- exact review payloads
- exact approval payloads
- exact score explanation payloads
- exact API request / response contracts

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000001_PRODUCT_PORTFOLIO_MANAGER_DESIGN_PROGRESS_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000002_PRODUCT_PORTFOLIO_MANAGER_ROOT_REFRESH_NOTE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER ROOT REFRESH NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Records that the root overview/index/integrated files
have been refreshed to reflect the current design set.

refreshed_root_files:
- 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
- 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
- 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md

refresh_result:
- top-level navigation updated
- layer entry points enumerated
- integrated summary aligned with current design coverage
- implementation still not started

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000002_PRODUCT_PORTFOLIO_MANAGER_ROOT_REFRESH_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000003_PRODUCT_PORTFOLIO_MANAGER_DUPLICATION_AND_GAP_REVIEW.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER DUPLICATION AND GAP REVIEW
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides a structured review of likely duplication,
thin descriptions,
and remaining design gaps across the current ProductPortfolioManager design set.

review_principles:
- additive only
- do not delete meaning casually
- preserve navigation clarity
- prefer explicit boundary notes over silent consolidation
- implementation is still out of scope

# ============================================================
# 1. CURRENT STRENGTHS
# ============================================================

current_strengths:
- application definition is fixed
- ERP boundary is explicit
- forecast boundary is explicit
- KPI/scoring meaning is explicit
- classification/lifecycle separation is explicit
- proposal/review/approval meaning is explicit
- alert/share/audit/governance surfaces are broadly covered
- root navigation has been refreshed

# ============================================================
# 2. EXPECTED DUPLICATION ZONES
# ============================================================

expected_duplication_zones:

  - duplication_zone_id: PPM-DUP-001
    topic: ERP boundary
    likely_overlap_files:
      - 0100002_PRODUCT_PORTFOLIO_MANAGER_BOUNDARY_CONSTITUTION.md
      - 0200003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_ARCHITECTURE.md
      - 0200010_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_ARCHITECTURE_FORMAL_DESIGN.md
      - 0600001_ERP_REFERENCE_INTEGRATION.md
      - 0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
      - 0800011_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_POLICY.md
      - 1200013_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_REQUIREMENTS.md
    interpretation:
      Coverage is good, but repeated phrases around "ERP truth" and "no silent mutation"
      are likely duplicated across constitution, architecture, policy, and implementation.
    recommended_cleanup_direction:
      Keep repetition only where layer meaning differs.
      Reduce sentence-level duplication later if readability degrades.

  - duplication_zone_id: PPM-DUP-002
    topic: Forecast boundary
    likely_overlap_files:
      - 0200004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_ARCHITECTURE.md
      - 0200011_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_ARCHITECTURE_FORMAL_DESIGN.md
      - 0600002_FORECAST_REFERENCE_INTEGRATION.md
      - 0600004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
      - 0800012_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_POLICY.md
      - 1200014_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_REQUIREMENTS.md
    interpretation:
      Advisory-reference meaning is strong,
      but multiple files repeat the same "forecast is not truth" language.
    recommended_cleanup_direction:
      Preserve boundary clarity,
      but later tighten repeated explanatory lines.

  - duplication_zone_id: PPM-DUP-003
    topic: Classification and proposal governance
    likely_overlap_files:
      - 0100003_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_AND_LIFECYCLE_CONSTITUTION.md
      - 0100004_PRODUCT_PORTFOLIO_MANAGER_PROPOSAL_CONSTITUTION.md
      - 0500007_PRODUCT_PORTFOLIO_MANAGER_BUSINESS_FLOW_FORMAL_DESIGN.md
      - 0500009_PRODUCT_PORTFOLIO_MANAGER_PROPOSAL_FORMAL_FLOW.md
      - 1200017_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_CHANGE_AND_PROPOSAL_DETAIL_REQUIREMENTS.md
    interpretation:
      Business distinction is correct,
      but current wording may repeat "classification is not proposal" and similar contrast statements.
    recommended_cleanup_direction:
      Keep contrast, but later compress repeated contrast language.

  - duplication_zone_id: PPM-DUP-004
    topic: Review / approval separation
    likely_overlap_files:
      - 0500004_REVIEW_SESSION_FLOW.md
      - 0500005_APPROVAL_FLOW.md
      - 0500008_PRODUCT_PORTFOLIO_MANAGER_REVIEW_SESSION_FORMAL_FLOW.md
      - 0800003_PRODUCT_PORTFOLIO_MANAGER_ROLE_AND_APPROVAL_POLICY.md
      - 0800009_PRODUCT_PORTFOLIO_MANAGER_REVIEW_SESSION_POLICY.md
      - 1000002_PRODUCT_PORTFOLIO_MANAGER_AUTHORIZATION_FORMAL_DESIGN.md
    interpretation:
      Separation is correctly emphasized,
      but this is one of the most repeated meanings in the set.
    recommended_cleanup_direction:
      Preserve because it is high-value,
      but later standardize wording.

# ============================================================
# 3. THIN OR STILL-LIGHT AREAS
# ============================================================

thin_areas:

  - thin_area_id: PPM-THIN-001
    topic: KPI exact scoring profile examples
    current_state:
      Score meaning is well-defined,
      but exact weighting-profile examples are not yet formalized.
    impact:
      Good for design meaning,
      but later scoring governance may need more specificity.

  - thin_area_id: PPM-THIN-002
    topic: Notification routing detail
    current_state:
      Alert and notification policy exists,
      but recipient-resolution examples and escalation ladders are still high-level.
    impact:
      Operations are understandable,
      but handoff detail is not fully thick yet.

  - thin_area_id: PPM-THIN-003
    topic: Share-scope examples by entity type
    current_state:
      Share rules are present,
      but entity-by-entity recommended defaults are still somewhat abstract.
    impact:
      Policy is clear,
      but UX defaults may later need more precision.

  - thin_area_id: PPM-THIN-004
    topic: Saved preset ownership variants
    current_state:
      Personal preset meaning is clear,
      shared preset meaning is future-oriented and lighter.
    impact:
      Fine for now,
      but later team/shared preset policy may need thickening.

# ============================================================
# 4. REMAINING GAP CANDIDATES
# ============================================================

remaining_gap_candidates:
- exact notification recipient matrix by role/state
- explicit freshness guidance by surface for ERP/forecast references
- more formal examples of high-impact classification transitions
- review-session target-selection templates
- stronger examples for cross-workspace restrictions
- optional shared-preset governance if needed later

# ============================================================
# 5. CURRENT JUDGMENT
# ============================================================

current_judgment:
The design set is structurally broad and already usable as a design basis.
The remaining work is mainly refinement, deduplication discipline,
and selected deepening of thinner operational areas,
not major missing foundations.

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager is past the "missing structure" stage.
It is now in the "cleanup, standardization, and selective deepening" stage.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000003_PRODUCT_PORTFOLIO_MANAGER_DUPLICATION_AND_GAP_REVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000004_PRODUCT_PORTFOLIO_MANAGER_STANDARDIZATION_PASS_NOTE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER STANDARDIZATION PASS NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the standardization intent for the next cleanup-oriented pass.

standardization_targets:
- normalize repeated wording around ERP boundary
- normalize repeated wording around forecast advisory boundary
- normalize repeated wording around review vs approval separation
- normalize repeated wording around classification vs proposal distinction
- keep each layer responsible for its own kind of meaning

layer_standardization_rules:
constitution:
- keep meaning and boundaries only

architecture:
- keep structural role and surface relation only

model:
- keep entity semantics, field semantics, and relation meaning only

flow:
- keep operator/business progression only

policy:
- keep rule interpretation only

security:
- keep authority and access meaning only

implementation:
- keep non-code requirements only

warning:
Do not over-compress important repeated warnings if compression reduces safety or clarity.

formal_conclusion:
The next cleanup pass should improve readability and navigation quality
without weakening governance meaning.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000004_PRODUCT_PORTFOLIO_MANAGER_STANDARDIZATION_PASS_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000005_PRODUCT_PORTFOLIO_MANAGER_NEXT_DESIGN_BACKLOG.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER NEXT DESIGN BACKLOG
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Captures the next design backlog after the current broad design expansion.

next_backlog_items:
- optional notification recipient matrix formalization
- optional freshness-by-surface formalization
- optional high-impact classification transition examples
- optional review-session template set
- optional shared preset governance expansion
- optional broader CivilizationOS-side index reflection
- optional integrated cleanup/compression pass

priority_view:
high:
- cleanup/compression pass
- broader index reflection if needed

medium:
- freshness-by-surface formalization
- notification recipient matrix

low:
- shared preset expansion
- review-session template library

formal_conclusion:
No implementation backlog is opened here.
This backlog remains design-only.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000005_PRODUCT_PORTFOLIO_MANAGER_NEXT_DESIGN_BACKLOG.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000006_PRODUCT_PORTFOLIO_MANAGER_WIDE_INDEX_REFLECTION_OVERVIEW.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER WIDE INDEX REFLECTION OVERVIEW
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines how ProductPortfolioManager should be reflected
in wider application-level or CivilizationOS-side navigation
without changing implementation scope.

reflection_principles:
- reflection is for navigation clarity
- reflection must not alter application meaning
- reflection must not imply implementation start
- reflection should help root-level and wider-level discovery
- reflection should point to canonical entry documents only

current_application_identity:
ProductPortfolioManager is a lightweight product strategy judgment application.
It is a BusinessOS-side application under 07.applications
that sits on top of ERP facts and forecast references
to manage product portfolio judgment artifacts.

canonical_entry_documents:
- 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
- 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
- 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md

recommended_wide_index_positioning:
- 07.applications business judgment app
- product strategy / portfolio governance app
- ERP-reference + forecast-reference consuming app
- multilingual / multi-currency / cross-device capable design set

formal_conclusion:
Wide index reflection for ProductPortfolioManager
should improve discoverability and restartability,
not change design ownership or scope.

- 900410_PRODUCTPORTFOLIOMANAGER_20260416_DIFF_AUDIT_NOTE.md

- 900420_PRODUCTPORTFOLIOMANAGER_20260416_BUNDLE02_PHASE_A_AUDIT_NOTE.md

- 900430_PRODUCTPORTFOLIOMANAGER_20260416_BUNDLE03_STUB_AUDIT_NOTE.md

- 900440_PRODUCTPORTFOLIOMANAGER_20260416_BUNDLE04_CLOSEOUT_AUDIT_NOTE.md

- 900450_PRODUCTPORTFOLIOMANAGER_NEXT_APP_TRANSITION_HANDOFF.md

- 900460_PRODUCTPORTFOLIOMANAGER_REUSABLE_PHASEA_REINFORCEMENT_RECIPE.md

- 900470_PRODUCTPORTFOLIOMANAGER_PLANNING_STOP_RULE_NOTE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000006_PRODUCT_PORTFOLIO_MANAGER_WIDE_INDEX_REFLECTION_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000010_PRODUCT_PORTFOLIO_MANAGER_COMPRESSION_PASS_OVERVIEW.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER COMPRESSION PASS OVERVIEW
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the document-compression and wording-standardization pass
for ProductPortfolioManager design files.

compression_principles:
- additive only
- do not delete meaning casually
- do not compress away governance warnings
- do not merge different layer responsibilities into one text block
- prioritize readability, restartability, and navigation clarity
- implementation remains out of scope

compression_objectives:
- reduce repeated sentence patterns
- strengthen per-layer responsibility clarity
- preserve important warnings while reducing low-value duplication
- make restart reading faster
- make integrated navigation easier to scan

formal_conclusion:
Compression is a readability pass,
not a meaning-reduction pass.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000010_PRODUCT_PORTFOLIO_MANAGER_COMPRESSION_PASS_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000019_PRODUCT_PORTFOLIO_MANAGER_DESIGN_CLOSURE_NOTE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER DESIGN CLOSURE NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides a formal closure note for the current design phase of
ProductPortfolioManager.

closure_position:
The application has progressed beyond initial concept definition
and now has broad design coverage across:
- constitution
- architecture
- model
- runtime
- flow
- integration
- operations
- policy
- security
- implementation requirements
- meta navigation and restart support

# ============================================================
# 1. WHAT IS FIXED
# ============================================================

fixed_design_areas:
- application identity and role
- market positioning and differentiation direction
- multilingual / multi-currency / iphone / android / pc / tablet requirements
- ERP boundary
- forecast advisory boundary
- KPI and scoring meaning
- classification and lifecycle meaning
- proposal meaning and lifecycle
- review session meaning
- approval meaning
- alert and notification meaning
- audit/history meaning
- share-scope meaning
- settings / locale / currency / preset meaning
- dashboard / list / comparison / detail / queue-oriented screen requirements
- exact flow payload contracts
- exact table / enum contracts
- root overview / index / integrated refresh
- restart and wide-index reflection notes

# ============================================================
# 2. WHAT HAS NOT STARTED
# ============================================================

not_started_yet:
- implementation
- code generation
- DDL execution
- API implementation
- UI implementation
- production integration work

interpretation_rule:
This design set is broad,
but it remains design-only at this stage.

# ============================================================
# 3. CURRENT STAGE
# ============================================================

current_stage:
cleanup
- standardization
- restartability improvement
- optional selective deepening
- optional wider navigation reflection

stage_meaning:
The application is no longer in missing-foundation mode.
It is now in design stabilization mode.

# ============================================================
# 4. RECOMMENDED RESTART ORDER
# ============================================================

recommended_restart_order:
1. 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
2. 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
3. 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md
4. 050.flow/0500007_PRODUCT_PORTFOLIO_MANAGER_BUSINESS_FLOW_FORMAL_DESIGN.md
5. 030.model/0300007_PRODUCT_PORTFOLIO_MANAGER_EXACT_TABLES_AND_ENUMS.md
6. 120.implementation/1200004_PRODUCT_PORTFOLIO_MANAGER_API_CONTRACT_EXACT.md
7. 100.security/1000002_PRODUCT_PORTFOLIO_MANAGER_AUTHORIZATION_FORMAL_DESIGN.md
8. 060.integration/0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
9. 060.integration/0600004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md

# ============================================================
# 5. NEXT DESIGN OPTIONS
# ============================================================

next_design_options:
- actual wording-compression pass
- optional wider CivilizationOS root/index insertion using prepared copy blocks
- optional review of overlap against broader canonical rules
- optional implementation-preparation pass later, but not now

# ============================================================
# 6. SAFETY / CONTINUITY WARNINGS
# ============================================================

continuity_warnings:
- do not collapse ERP fact meaning into application judgment meaning
- do not collapse forecast advisory meaning into final decision meaning
- do not collapse review and approval into one step
- do not collapse lifecycle and classification into one concept
- do not treat proposal completion as automatic ERP execution truth
- do not treat settings/presets as authority-changing surfaces

# ============================================================
# 7. FINAL CLOSURE JUDGMENT
# ============================================================

final_closure_judgment:
ProductPortfolioManager has reached a stable design-expanded state.
It is suitable for pause, handoff, restart, or later implementation preparation,
without needing to rediscover the application's core meaning.

# ============================================================
# 8. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
This design phase may be considered closed in principle.
Further work is refinement-oriented unless a later phase explicitly opens implementation.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000019_PRODUCT_PORTFOLIO_MANAGER_DESIGN_CLOSURE_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000023_PRODUCT_PORTFOLIO_MANAGER_FINAL_STATE_NOTE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER FINAL STATE NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Records the final state of the current design run.

final_state:
- design-expanded
- root refreshed
- meta navigation enhanced
- restart notes prepared
- handoff templates prepared
- implementation unopened

recommended_next_action_if_stopping_now:
Use the final handoff bundle as the official resume point.

recommended_next_action_if_continuing_later:
Open a new phase explicitly:
- cleanup phase
- wider navigation reflection phase
- implementation preparation phase
- implementation phase

formal_conclusion:
Current design work can stop cleanly here.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000023_PRODUCT_PORTFOLIO_MANAGER_FINAL_STATE_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000027_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_READY_NOTE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER BROAD REFLECTION READY NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Records that ProductPortfolioManager is ready
for a later broad reflection phase.

ready_assets:
- root overview/index/integrated refreshed
- restart bundle prepared
- copy blocks prepared
- wide reflection notes prepared
- broad reflection execution plan prepared
- target matrix prepared
- phase opening note prepared

not_done_here:
- wider canonical files have not yet been edited in this phase

formal_conclusion:
Broad reflection readiness is complete locally.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000027_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_READY_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000035_PRODUCT_PORTFOLIO_MANAGER_WIDE_INSERT_READY_NOTE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER WIDE INSERT READY NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Records that target-by-target insert blocks
for broader canonical documents are now prepared locally.

prepared_assets:
- Civilization OS canonical full rebuilt insert block
- foundation/system-rules insert block
- portal reflection insert block
- common ledger insert block
- ERP-side consumer-boundary insert block
- execution order note

not_done_here:
- no external canonical file has been edited in this local phase

formal_conclusion:
Local preparation for broad insertion is complete.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000035_PRODUCT_PORTFOLIO_MANAGER_WIDE_INSERT_READY_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000053_PRODUCT_PORTFOLIO_MANAGER_UPLOADED_TARGET_PATCH_READY_NOTE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER UPLOADED TARGET PATCH READY NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Records that uploaded-target patch proposals
now exist for the current broad canonical set.

ready_assets:
- target-by-target patch proposal docs
- uploaded-target patch sequence
- uploaded-target mapping
- broad reflection execution checklist

not_done_here:
- uploaded broad canonical files themselves have not yet been modified in this step

formal_conclusion:
ProductPortfolioManager is now locally ready
for a separate patch-application phase against uploaded broad canonicals.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000053_PRODUCT_PORTFOLIO_MANAGER_UPLOADED_TARGET_PATCH_READY_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000062_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_PREPARATION_START_NOTE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER IMPLEMENTATION PREPARATION START NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Opens the implementation-preparation phase for ProductPortfolioManager
without starting actual implementation work yet.

phase_position:
This application has already reached a stable design-expanded state.
The next step is not design expansion.
The next step is implementation preparation.

# ============================================================
# 1. WHAT IS ALREADY READY
# ============================================================

already_ready:
- application identity fixed
- business flow fixed
- screen requirement set fixed
- exact payload contracts fixed
- exact table / enum contracts fixed
- KPI / scoring design fixed
- classification / lifecycle design fixed
- proposal / review / approval design fixed
- ERP boundary fixed
- forecast advisory boundary fixed
- authorization / share / alert / audit design fixed
- settings / locale / currency / preset design fixed
- restart / handoff / reflection notes prepared

# ============================================================
# 2. WHAT IMPLEMENTATION PREPARATION MEANS HERE
# ============================================================

implementation_preparation_means:
- confirm implementation entry documents
- confirm initial reading order
- confirm first implementation scope
- confirm that broad reflection work is optional and separate
- confirm that implementation still has not started
- prepare the application to enter a later explicit implementation phase

# ============================================================
# 3. WHAT IS NOT STARTED YET
# ============================================================

not_started_yet:
- source code implementation
- DDL execution
- API coding
- UI coding
- runtime wiring
- production integration execution

interpretation_rule:
This note opens preparation only.
It does not mean implementation has already begun.

# ============================================================
# 4. RECOMMENDED IMPLEMENTATION PREPARATION READING ORDER
# ============================================================

recommended_reading_order:
1. 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
2. 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
3. 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md
4. 050.flow/0500007_PRODUCT_PORTFOLIO_MANAGER_BUSINESS_FLOW_FORMAL_DESIGN.md
5. 050.flow/0500006_PRODUCT_PORTFOLIO_MANAGER_EXACT_FLOW_PAYLOADS.md
6. 030.model/0300007_PRODUCT_PORTFOLIO_MANAGER_EXACT_TABLES_AND_ENUMS.md
7. 120.implementation/1200004_PRODUCT_PORTFOLIO_MANAGER_API_CONTRACT_EXACT.md
8. 120.implementation/1200005_PRODUCT_PORTFOLIO_MANAGER_SCREEN_TO_API_MAPPING.md
9. 100.security/1000002_PRODUCT_PORTFOLIO_MANAGER_AUTHORIZATION_FORMAL_DESIGN.md
10. 060.integration/0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
11. 060.integration/0600004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md

# ============================================================
# 5. RECOMMENDED FIRST IMPLEMENTATION SCOPE
# ============================================================

recommended_first_implementation_scope:
- portfolio list
- product detail
- score refresh
- classification draft save
- proposal save

reason:
These are already identified as the phase-1 required routes
and they form the smallest useful judgment loop.

# ============================================================
# 6. IMPLEMENTATION PREPARATION WARNINGS
# ============================================================

implementation_preparation_warnings:
- do not collapse ERP fact meaning into application judgment meaning
- do not collapse forecast advisory meaning into final decision meaning
- do not collapse lifecycle and classification into one field
- do not collapse review and approval into one workflow step
- do not treat proposal completion as ERP execution truth
- do not begin coding from broad reflection notes
- begin from exact flow / exact table / exact API documents

# ============================================================
# 7. OPTIONAL WORK THAT IS STILL SEPARATE
# ============================================================

optional_separate_work:
- broad reflection actual application to wider canonicals
- wording-compression pass
- additional meta cleanup

rule:
These may continue later,
but they are not required to open implementation preparation.

# ============================================================
# 8. PREPARATION COMPLETION CRITERIA
# ============================================================

preparation_completion_criteria:
- implementation entry reading order accepted
- first implementation scope accepted
- warnings accepted
- no remaining ambiguity about design-vs-implementation boundary

# ============================================================
# 9. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager is now ready to enter
implementation preparation as a distinct phase.
Actual implementation remains unopened until a later explicit start.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000062_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_PREPARATION_START_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000063_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_PREPARATION_CHECKLIST.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER IMPLEMENTATION PREPARATION CHECKLIST
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides a simple checklist for confirming
that implementation preparation is complete.

checklist:
- overview checked
- index checked
- integrated checked
- business flow checked
- exact flow payloads checked
- exact tables / enums checked
- api contract checked
- screen-to-api mapping checked
- authorization checked
- ERP boundary checked
- forecast boundary checked
- first implementation scope accepted
- implementation warnings accepted

formal_conclusion:
When this checklist is effectively satisfied,
implementation preparation may be considered complete.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000063_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_PREPARATION_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000064_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_PREPARATION_COMPLETION_NOTE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER IMPLEMENTATION PREPARATION COMPLETION NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the completion position of the implementation-preparation phase
for ProductPortfolioManager.

phase_meaning:
Implementation preparation is complete when:
- implementation entry documents are fixed
- first implementation scope is fixed
- core source-of-truth boundaries are fixed
- the team can begin implementation without reopening broad design discovery

# ============================================================
# 1. PREPARATION COMPLETION JUDGMENT
# ============================================================

preparation_completion_judgment:
ProductPortfolioManager has reached the point where
implementation preparation may be considered complete in principle,
subject to final operator acceptance.

judgment_basis:
- overview exists
- index exists
- integrated exists
- business flow is fixed
- exact flow payloads are fixed
- exact table / enum contracts are fixed
- api contract exact is fixed
- screen-to-api mapping is fixed
- authorization design is fixed
- ERP boundary is fixed
- forecast boundary is fixed
- implementation-preparation reading order is fixed
- first implementation scope is fixed

# ============================================================
# 2. FIRST IMPLEMENTATION SCOPE
# ============================================================

first_implementation_scope:
- portfolio list
- product detail
- score refresh
- classification draft save
- proposal save

meaning:
This is the smallest useful implementation slice
for opening the product judgment loop.

# ============================================================
# 3. WHAT REMAINS OUTSIDE THIS NOTE
# ============================================================

outside_this_note:
- actual coding
- actual DDL execution
- actual API creation
- actual UI creation
- broader reflection application to external canonicals
- optional wording compression work

rule:
Those are later actions.
They do not prevent implementation preparation from being considered complete.

# ============================================================
# 4. SAFE START WARNINGS
# ============================================================

safe_start_warnings:
- start from exact documents, not broad summaries
- do not code from portal reflection notes
- do not code from high-level integrated summaries alone
- do not weaken ERP truth boundary
- do not weaken forecast advisory boundary
- do not merge lifecycle and classification
- do not merge review and approval

# ============================================================
# 5. IMPLEMENTATION ENTRY DOCUMENTS
# ============================================================

implementation_entry_documents:
- 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
- 050.flow/0500006_PRODUCT_PORTFOLIO_MANAGER_EXACT_FLOW_PAYLOADS.md
- 030.model/0300007_PRODUCT_PORTFOLIO_MANAGER_EXACT_TABLES_AND_ENUMS.md
- 120.implementation/1200004_PRODUCT_PORTFOLIO_MANAGER_API_CONTRACT_EXACT.md
- 120.implementation/1200005_PRODUCT_PORTFOLIO_MANAGER_SCREEN_TO_API_MAPPING.md
- 100.security/1000002_PRODUCT_PORTFOLIO_MANAGER_AUTHORIZATION_FORMAL_DESIGN.md
- 060.integration/0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
- 060.integration/0600004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md

# ============================================================
# 6. FINAL PREPARATION STATUS
# ============================================================

final_preparation_status:
- design phase: broadly closed
- implementation preparation: complete in principle
- implementation execution: not started

# ============================================================
# 7. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager may now be treated as
implementation-preparation-complete.
A later explicit phase opening is still required before actual implementation.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000064_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_PREPARATION_COMPLETION_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000065_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_PREPARATION_FINAL_CHECK.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER IMPLEMENTATION PREPARATION FINAL CHECK
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides a final simple check
for whether implementation preparation can be considered complete.

final_check_items:
- overview available
- exact flow payloads available
- exact tables / enums available
- api contract exact available
- screen-to-api mapping available
- authorization design available
- ERP boundary available
- forecast boundary available
- first implementation scope fixed
- design-vs-implementation boundary still clear

final_check_result_template:
- all_core_items_present: yes_or_no
- implementation_preparation_complete_in_principle: yes_or_no
- actual_implementation_started: no

formal_conclusion:
Use this file as the simplest completion gate.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000065_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_PREPARATION_FINAL_CHECK.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000066_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_PHASE_OPENING_NOTE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER IMPLEMENTATION PHASE OPENING NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Opens the implementation phase for ProductPortfolioManager
as a distinct phase after design completion
and implementation-preparation completion.

phase_rule:
This note opens implementation as a phase concept.
It does not itself contain code,
DDL execution,
or API execution.

# ============================================================
# 1. ENTRY POSITION
# ============================================================

entry_position:
- design phase: broadly closed
- implementation preparation: complete in principle
- implementation phase: may now be opened explicitly

# ============================================================
# 2. FIRST IMPLEMENTATION TARGET
# ============================================================

first_implementation_target:
- portfolio list
- product detail
- score refresh
- classification draft save
- proposal save

reason:
This is the smallest useful product judgment loop
already fixed by design.

# ============================================================
# 3. FIRST DOCUMENTS TO READ
# ============================================================

first_documents_to_read:
1. 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
2. 050.flow/0500006_PRODUCT_PORTFOLIO_MANAGER_EXACT_FLOW_PAYLOADS.md
3. 030.model/0300007_PRODUCT_PORTFOLIO_MANAGER_EXACT_TABLES_AND_ENUMS.md
4. 120.implementation/1200004_PRODUCT_PORTFOLIO_MANAGER_API_CONTRACT_EXACT.md
5. 120.implementation/1200005_PRODUCT_PORTFOLIO_MANAGER_SCREEN_TO_API_MAPPING.md
6. 100.security/1000002_PRODUCT_PORTFOLIO_MANAGER_AUTHORIZATION_FORMAL_DESIGN.md
7. 060.integration/0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
8. 060.integration/0600004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md

# ============================================================
# 4. SAFE IMPLEMENTATION RULES
# ============================================================

safe_implementation_rules:
- begin from exact documents, not broad summaries
- do not collapse ERP fact meaning into application judgment meaning
- do not collapse forecast advisory meaning into final decision meaning
- do not collapse lifecycle and classification into one field
- do not collapse review and approval into one workflow step
- do not treat proposal completion as ERP execution truth
- keep implementation within first target scope first

# ============================================================
# 5. OUT OF SCOPE FOR FIRST IMPLEMENTATION OPENING
# ============================================================

out_of_scope_for_first_opening:
- broad reflection actual application to external canonicals
- wording compression
- later-phase secondary screens
- full approval queue execution
- full audit console execution
- full notification routing execution

# ============================================================
# 6. PHASE OPENING DECLARATION
# ============================================================

phase_opening_declaration:
ProductPortfolioManager may now enter
implementation phase 1
for the first useful judgment loop only.

# ============================================================
# 7. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Implementation phase opening is now document-ready.
Actual coding should begin only from the exact contracts and first target scope.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000066_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_PHASE_OPENING_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000067_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_PHASE_1_SCOPE_NOTE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER IMPLEMENTATION PHASE 1 SCOPE NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Fixes the initial implementation scope as Phase 1.

phase_1_scope:
- portfolio list
- product detail
- score refresh
- classification draft save
- proposal save

phase_1_not_in_scope:
- full review session implementation
- full approval implementation
- full alert operations implementation
- full audit/history console implementation
- full preset/settings implementation

phase_1_goal:
Open the smallest useful product judgment loop
without overexpanding the first implementation slice.

formal_conclusion:
Phase 1 should stay narrow and useful.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/9000067_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_PHASE_1_SCOPE_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/900410_PRODUCTPORTFOLIOMANAGER_20260416_DIFF_AUDIT_NOTE.md -->
# ============================================================
# PRODUCTPORTFOLIOMANAGER 20260416 DIFF AUDIT NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: ProductPortfolioManager
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: diff-audit-note

purpose:
Records the first differential reinforcement bundle applied to the
existing ProductPortfolioManager design.

preserved_core:
- portfolio and product planning identity
- existing business flow role
- existing architecture layers
- existing management support direction
- existing platform direction

added_in_this_bundle:
- competitive positioning note
- portfolio signal aggregation architecture
- prioritization scenario exception architecture
- portfolio control timeline model
- portfolio cockpit exact payload
- scenario exception review exact payload
- portfolio cockpit interface note
- portfolio control implementation guide

why_this_bundle:
- existing ProductPortfolioManager design already had strong portfolio output handling
- what was less explicit was the management-control layer above raw portfolio presentation
- this bundle makes the app more implementation-ready without rewriting its base

recommended_next_step:
- proceed to Phase A entry documents for portfolio timeline, DDL, DTO freeze,
  and slice-based execution planning

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/900410_PRODUCTPORTFOLIOMANAGER_20260416_DIFF_AUDIT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/900420_PRODUCTPORTFOLIOMANAGER_20260416_BUNDLE02_PHASE_A_AUDIT_NOTE.md -->
# ============================================================
# PRODUCTPORTFOLIOMANAGER 20260416 BUNDLE02 PHASE A AUDIT NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: ProductPortfolioManager
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: bundle02-phase-a-audit

purpose:
Records the second reinforcement bundle applied to ProductPortfolioManager,
covering Phase A entry documents and exact implementation-start
boundaries.

bundle02_contents:
- 020.architecture/021140_PRODUCTPORTFOLIOMANAGER_PHASE_A_PORTFOLIO_TIMELINE_DDL_ADDITIVE_PLAN.md
- 060.integration/060320_PRODUCTPORTFOLIOMANAGER_PHASE_A_API_STARTER.md
- 060.integration/060330_PRODUCTPORTFOLIOMANAGER_PHASE_A_API_DTO_FIELD_FREEZE.md
- 120.implementation/120310_PRODUCTPORTFOLIOMANAGER_PHASE_A_PORTFOLIO_TIMELINE_IMPLEMENTATION_SKELETON.md

result:
- Phase A DDL direction fixed
- Phase A endpoint set fixed
- API DTO field set frozen
- implementation skeleton fixed
- ProductPortfolioManager now has the same kind of Phase A entry footing
  that made the previous apps easier to continue in bundled form

recommended_next_step:
- proceed to bundle_03 for stub file plan, module task breakdown, and content order

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/900420_PRODUCTPORTFOLIOMANAGER_20260416_BUNDLE02_PHASE_A_AUDIT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/900430_PRODUCTPORTFOLIOMANAGER_20260416_BUNDLE03_STUB_AUDIT_NOTE.md -->
# ============================================================
# PRODUCTPORTFOLIOMANAGER 20260416 BUNDLE03 STUB AUDIT NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: ProductPortfolioManager
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: bundle03-stub-audit

purpose:
Records the third reinforcement bundle applied to ProductPortfolioManager,
covering the stub planning boundary for Phase A.

bundle03_contents:
- 120.implementation/120320_PRODUCTPORTFOLIOMANAGER_PHASE_A_STUB_FILE_PLAN.md
- 120.implementation/120330_PRODUCTPORTFOLIOMANAGER_PHASE_A_MODULE_TASK_BREAKDOWN.md
- 120.implementation/120340_PRODUCTPORTFOLIOMANAGER_PHASE_A_EXACT_STUB_CONTENT_ORDER_PLAN.md

result:
- stub file boundary fixed
- module task order fixed
- exact stub content order fixed
- ProductPortfolioManager now has a bundled Phase A planning posture
  similar to the previously completed apps before command-pack generation

recommended_next_step:
- proceed to bundle_04 for command packs, field-fill plans, and closure

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/900430_PRODUCTPORTFOLIOMANAGER_20260416_BUNDLE03_STUB_AUDIT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/900440_PRODUCTPORTFOLIOMANAGER_20260416_BUNDLE04_CLOSEOUT_AUDIT_NOTE.md -->
# ============================================================
# PRODUCTPORTFOLIOMANAGER 20260416 BUNDLE04 CLOSEOUT_AUDIT_NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: ProductPortfolioManager
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: bundle04-closeout-audit

purpose:
Records the fourth reinforcement bundle applied to ProductPortfolioManager,
closing the Phase A planning layer at an implementation-ready state.

bundle04_contents:
- 120.implementation/120350_PRODUCTPORTFOLIOMANAGER_PHASE_A_SLICE_COMMAND_PACKS.md
- 120.implementation/120360_PRODUCTPORTFOLIOMANAGER_PHASE_A_SLICE_FIELD_FILL_PLAN.md
- 120.implementation/120370_PRODUCTPORTFOLIOMANAGER_PHASE_A_IMPLEMENTATION_READY_COMPLETION_MEMO.md
- 120.implementation/120380_PRODUCTPORTFOLIOMANAGER_PHASE_A_EXECUTION_ENTRY_PROTOCOL.md

result:
- slice command packs fixed
- field-fill plan fixed
- implementation-ready completion declared
- execution entry protocol fixed
- ProductPortfolioManager planning can stop here cleanly unless execution begins or contradiction appears

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/900440_PRODUCTPORTFOLIOMANAGER_20260416_BUNDLE04_CLOSEOUT_AUDIT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/900450_PRODUCTPORTFOLIOMANAGER_NEXT_APP_TRANSITION_HANDOFF.md -->
# ============================================================
# PRODUCTPORTFOLIOMANAGER NEXT APP TRANSITION HANDOFF
# ============================================================

status: canonical
layer: meta
system: applications
application: ProductPortfolioManager
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: next-app-transition-handoff

purpose:
Closes the current ProductPortfolioManager planning stream cleanly and makes it
easy to move to the next BusinessOS application without reopening
already-settled ProductPortfolioManager planning questions.

current_status_summary:
- differential reinforcement completed
- bundle_01 completed
- bundle_02 Phase A entry completed
- bundle_03 stub planning completed
- bundle_04 closeout completed
- implementation-ready completion memo completed
- execution entry protocol completed

handoff_statement:
- ProductPortfolioManager can now be treated as planning-closed and
  next-app-transition-ready.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/900450_PRODUCTPORTFOLIOMANAGER_NEXT_APP_TRANSITION_HANDOFF.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/900460_PRODUCTPORTFOLIOMANAGER_REUSABLE_PHASEA_REINFORCEMENT_RECIPE.md -->
# ============================================================
# PRODUCTPORTFOLIOMANAGER REUSABLE PHASEA REINFORCEMENT RECIPE
# ============================================================

status: canonical
layer: meta
system: applications
application: ProductPortfolioManager
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: reusable-phasea-reinforcement-recipe

purpose:
Captures the reusable reinforcement recipe proven during the
ProductPortfolioManager planning work so the next BusinessOS app can be
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/900460_PRODUCTPORTFOLIOMANAGER_REUSABLE_PHASEA_REINFORCEMENT_RECIPE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/900470_PRODUCTPORTFOLIOMANAGER_PLANNING_STOP_RULE_NOTE.md -->
# ============================================================
# PRODUCTPORTFOLIOMANAGER PLANNING STOP RULE NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: ProductPortfolioManager
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: planning-stop-rule-note

purpose:
Defines the stop rule for the ProductPortfolioManager planning layer so that
the project does not continue adding design documents without need.

default_stop_rule:
- stop adding planning artifacts once implementation-ready status,
  execution entry protocol, and transition handoff are all present

default_action_after_stop_rule:
- either begin actual generation using the execution entry protocol
- or move to the next BusinessOS application

closure_statement:
- ProductPortfolioManager planning should now be considered complete by default.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/900470_PRODUCTPORTFOLIOMANAGER_PLANNING_STOP_RULE_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/applied-broad-reflection-drafts/9000054_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_DRAFT_GENERATION_NOTE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER BROAD REFLECTION DRAFT GENERATION NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Records that draft-applied broad reflection files were generated
from uploaded broad canonicals without overwriting the originals.

generation_mode:
- source files in /mnt/data were read
- additive reflection blocks were appended into draft copies
- original uploaded files were not modified

draft_output_directory:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/900.meta/applied-broad-reflection-drafts

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/applied-broad-reflection-drafts/9000054_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_DRAFT_GENERATION_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/applied-broad-reflection-drafts/9000055_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_DRAFT_REVIEW_INDEX.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER BROAD REFLECTION DRAFT REVIEW INDEX
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides a review index for the generated broad-reflection draft files.

review_principles:
- original uploaded broad canonicals are unchanged
- review the generated drafts first
- confirm wording depth matches target document role
- confirm ProductPortfolioManager remains described as design-only
- confirm ERP / forecast / judgment boundaries remain clear

draft_directory:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/900.meta/applied-broad-reflection-drafts

generated_drafts_expected:
- 003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT__PPM_REFLECTION_DRAFT.md
- 900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE__PPM_REFLECTION_DRAFT.md
- 000000_FOUNDATION_CANONICAL__PPM_REFLECTION_DRAFT.md
- 9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED__PPM_REFLECTION_DRAFT.md
- 014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER__PPM_REFLECTION_DRAFT.md
- ERP_DESIGN_BIBLE_FULL__PPM_REFLECTION_DRAFT.md
- ERP_ENTERPRISE_SCOPE_v1__PPM_REFLECTION_DRAFT.md

review_order:
1. 900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE__PPM_REFLECTION_DRAFT.md
2. 003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT__PPM_REFLECTION_DRAFT.md
3. 000000_FOUNDATION_CANONICAL__PPM_REFLECTION_DRAFT.md
4. 9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED__PPM_REFLECTION_DRAFT.md
5. 014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER__PPM_REFLECTION_DRAFT.md
6. ERP_DESIGN_BIBLE_FULL__PPM_REFLECTION_DRAFT.md
7. ERP_ENTERPRISE_SCOPE_v1__PPM_REFLECTION_DRAFT.md

formal_conclusion:
Review should start from discovery-oriented targets first,
then move to terse rule/foundation files,
then to narrower consumer-boundary notes.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/applied-broad-reflection-drafts/9000055_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_DRAFT_REVIEW_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/applied-broad-reflection-drafts/9000056_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_DRAFT_REVIEW_CHECKLIST.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER BROAD REFLECTION DRAFT REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides a checklist for reviewing the generated broad-reflection drafts.

checklist:
- ProductPortfolioManager is described as a lightweight product strategy judgment application
- implementation not started is stated or preserved clearly
- ERP truth boundary remains explicit
- forecast advisory boundary remains explicit
- the draft does not over-insert low-level schema/payload detail
- the wording depth fits the target file type
- the inserted block reads naturally after the source file body
- the inserted block improves discovery or restartability
- no wording implies ProductPortfolioManager is part of ERP itself
- no wording implies forecast is final truth
- no wording implies review equals approval
- no wording implies proposal completion equals ERP execution truth

target_specific_checks:

  portal_reflection_note:
    - richer discovery wording is acceptable
    - app label is clear
    - references are useful for navigation

  civilization_os_canonical:
    - medium summary depth is acceptable
    - application is discoverable without bloating the file

  foundation_or_rules:
    - wording stays short
    - system/foundation meaning remains primary

  common_component_ledger:
    - ProductPortfolioManager appears as consumer, not common-core owner

  erp_side_docs:
    - ProductPortfolioManager appears only as downstream consumer
    - ERP remains clearly primary

formal_conclusion:
A good draft is one that makes ProductPortfolioManager easier to find
without distorting the target document.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/applied-broad-reflection-drafts/9000056_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_DRAFT_REVIEW_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/applied-broad-reflection-drafts/9000057_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_DRAFT_DECISION_NOTE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER BROAD REFLECTION DRAFT DECISION NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides a simple decision frame after reviewing the generated drafts.

possible_decisions:
- accept as-is for later manual reflection
- accept with wording trim
- accept with placement change
- hold for later
- reject target insertion for now

recommended_default_decision:
- portal reflection draft: likely accept with minor wording review
- Civilization OS canonical draft: likely accept with minor wording review
- foundation/system-rules drafts: review for terseness
- common ledger draft: review for consumer-only framing
- ERP-side drafts: review for strict downstream-boundary wording

decision_rule:
Do not apply a draft later
if it weakens source boundaries
or makes the target document noticeably worse to read.

formal_conclusion:
Generated drafts are review artifacts first,
not auto-approved insertions.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/applied-broad-reflection-drafts/9000057_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_DRAFT_DECISION_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/applied-broad-reflection-drafts/9000058_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_DRAFT_REVIEW_READY_NOTE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER BROAD REFLECTION DRAFT REVIEW READY NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Records that the broad-reflection draft review package is now complete.

package_contents:
- draft generation note
- review index
- review checklist
- decision note

state:
- original uploaded broad canonicals unchanged
- draft review package ready
- later apply phase still optional

formal_conclusion:
Broad-reflection drafts are now ready for human review.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/applied-broad-reflection-drafts/9000058_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_DRAFT_REVIEW_READY_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/applied-broad-reflection-drafts/9000059_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_REVIEW_DECISION_NOTE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER BROAD REFLECTION REVIEW DECISION NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Records review decisions for generated broad-reflection drafts.

decision_scale:
- accept_as_is
- accept_with_trim
- accept_with_placement_change
- hold
- reject_for_now

global_review_rules:
- original /mnt/data files remain unchanged
- draft review does not mean implementation start
- ERP truth boundary must remain explicit
- forecast advisory boundary must remain explicit
- ProductPortfolioManager must remain application-side judgment app
- wording depth must fit the target document role

# ============================================================
# 1. PORTAL REFLECTION NOTE
# ============================================================

target_file:
- 900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE__PPM_REFLECTION_DRAFT.md

review_decision: undecided
review_comment:
- good candidate for first acceptance
- discovery-oriented target
- richer summary acceptable here

# ============================================================
# 2. CIVILIZATION OS CANONICAL FULL REBUILT
# ============================================================

target_file:
- 003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT__PPM_REFLECTION_DRAFT.md

review_decision: undecided
review_comment:
- medium-depth insertion is probably natural
- confirm wording is not too long for the host document

# ============================================================
# 3. FOUNDATION CANONICAL
# ============================================================

target_file:
- 000000_FOUNDATION_CANONICAL__PPM_REFLECTION_DRAFT.md

review_decision: undecided
review_comment:
- must stay terse
- foundation meaning must remain primary

# ============================================================
# 4. SYSTEM RULES INTEGRATED
# ============================================================

target_file:
- 9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED__PPM_REFLECTION_DRAFT.md

review_decision: undecided
review_comment:
- should remain rules-first
- app mention must stay compact

# ============================================================
# 5. APPLICATION COMMON COMPONENT LEDGER
# ============================================================

target_file:
- 014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER__PPM_REFLECTION_DRAFT.md

review_decision: undecided
review_comment:
- confirm ProductPortfolioManager is shown as consumer only
- do not make it look like common component owner

# ============================================================
# 6. ERP DESIGN BIBLE
# ============================================================

target_file:
- ERP_DESIGN_BIBLE_FULL__PPM_REFLECTION_DRAFT.md

review_decision: undecided
review_comment:
- keep downstream-consumer wording strict
- ERP must remain clearly primary

# ============================================================
# 7. ERP ENTERPRISE SCOPE
# ============================================================

target_file:
- ERP_ENTERPRISE_SCOPE_v1__PPM_REFLECTION_DRAFT.md

review_decision: undecided
review_comment:
- keep downstream-consumer wording strict
- do not let scope blur ERP/app boundary

# ============================================================
# 8. FINAL REVIEW SUMMARY
# ============================================================

recommended_first_accept_candidates:
- 900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE__PPM_REFLECTION_DRAFT.md
- 003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT__PPM_REFLECTION_DRAFT.md

recommended_trim_candidates:
- 000000_FOUNDATION_CANONICAL__PPM_REFLECTION_DRAFT.md
- 9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED__PPM_REFLECTION_DRAFT.md

recommended_boundary-check candidates:
- ERP_DESIGN_BIBLE_FULL__PPM_REFLECTION_DRAFT.md
- ERP_ENTERPRISE_SCOPE_v1__PPM_REFLECTION_DRAFT.md

formal_conclusion:
Use this note to record which draft is acceptable for later manual reflection.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/applied-broad-reflection-drafts/9000059_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_REVIEW_DECISION_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/applied-broad-reflection-drafts/9000060_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_APPLY_SHORTLIST.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER BROAD REFLECTION APPLY SHORTLIST
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Extracts the first-pass apply shortlist
from the generated broad-reflection drafts.

selection_principles:
- prioritize discovery value
- prefer low semantic risk
- keep insertion depth appropriate to target
- do not open implementation meaning
- preserve ERP / forecast / judgment boundaries

# ============================================================
# 1. FIRST-PASS APPLY SHORTLIST
# ============================================================

first_pass_apply_shortlist:

  - shortlist_rank: 1
    target_draft:
      900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE__PPM_REFLECTION_DRAFT.md
    target_original:
      /mnt/data/900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md
    reason:
      Highest discovery value.
      Discovery-oriented note can naturally accept medium-depth ProductPortfolioManager summary.

  - shortlist_rank: 2
    target_draft:
      003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT__PPM_REFLECTION_DRAFT.md
    target_original:
      /mnt/data/003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md
    reason:
      Broad canonical landscape file.
      Good place to make ProductPortfolioManager discoverable at system level.

# ============================================================
# 2. SECOND-PASS CANDIDATES
# ============================================================

second_pass_candidates:

  - target_draft:
      000000_FOUNDATION_CANONICAL__PPM_REFLECTION_DRAFT.md
    target_original:
      /mnt/data/000000_FOUNDATION_CANONICAL.md
    reason:
      Useful, but wording must stay very terse.

  - target_draft:
      9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED__PPM_REFLECTION_DRAFT.md
    target_original:
      /mnt/data/9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md
    reason:
      Useful, but rules-first character must remain dominant.

# ============================================================
# 3. BOUNDARY-SENSITIVE CANDIDATES
# ============================================================

boundary_sensitive_candidates:

  - target_draft:
      ERP_DESIGN_BIBLE_FULL__PPM_REFLECTION_DRAFT.md
    target_original:
      /mnt/data/ERP_DESIGN_BIBLE_FULL.md
    reason:
      Must remain strict downstream-consumer note only.

  - target_draft:
      ERP_ENTERPRISE_SCOPE_v1__PPM_REFLECTION_DRAFT.md
    target_original:
      /mnt/data/ERP_ENTERPRISE_SCOPE_v1.md
    reason:
      Must remain strict downstream-consumer note only.

# ============================================================
# 4. SPECIAL-FRAMING CANDIDATE
# ============================================================

special_framing_candidate:

  - target_draft:
      014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER__PPM_REFLECTION_DRAFT.md
    target_original:
      /mnt/data/014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md
    reason:
      Must frame ProductPortfolioManager as common-capability consumer only.

# ============================================================
# 5. FIRST-PASS APPLY RULES
# ============================================================

first_pass_apply_rules:
- start with portal reflection note
- then move to Civilization OS canonical full rebuilt
- do not apply second-pass files before confirming first-pass wording feels natural
- do not apply boundary-sensitive files before final wording check
- original /mnt/data files must be backed by review confidence before any manual reflection

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
The safest initial apply shortlist is:
1. portal reflection note
2. Civilization OS canonical full rebuilt

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/applied-broad-reflection-drafts/9000060_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_APPLY_SHORTLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/applied-broad-reflection-drafts/9000061_PRODUCT_PORTFOLIO_MANAGER_SHORTLIST_REVIEW_COMMANDS.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER SHORTLIST REVIEW COMMANDS
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides quick shell commands
for reviewing the shortlisted drafts first.

recommended_commands:

  portal_reflection_note:
    sed -n '1,260p' /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/900.meta/applied-broad-reflection-drafts/900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE__PPM_REFLECTION_DRAFT.md

  civilization_os_canonical:
    sed -n '1,280p' /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/900.meta/applied-broad-reflection-drafts/003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT__PPM_REFLECTION_DRAFT.md

  shortlist_note:
    sed -n '1,240p' /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/900.meta/applied-broad-reflection-drafts/9000060_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_APPLY_SHORTLIST.md

formal_conclusion:
Review these first before considering any later manual reflection.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/applied-broad-reflection-drafts/9000061_PRODUCT_PORTFOLIO_MANAGER_SHORTLIST_REVIEW_COMMANDS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/broad-reflection-plan/9000024_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_EXECUTION_PLAN.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER BROAD REFLECTION EXECUTION PLAN
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the execution plan for reflecting ProductPortfolioManager
into broader CivilizationOS-side canonical navigation documents
without starting implementation work.

plan_principles:
- reflection is navigation work, not implementation work
- ProductPortfolioManager meaning must remain unchanged
- only canonical entry documents should be used as primary links
- broad reflection should improve discovery, restartability, and portfolio mapping
- additive only

# ============================================================
# 1. REFLECTION TARGET CLASSES
# ============================================================

reflection_target_classes:

  class_a_master_index:
    meaning:
      Highest-level system/application index documents
      that list applications or major design domains.

  class_b_integrated_navigation:
    meaning:
      Integrated canonical documents
      that summarize major application families or system layers.

  class_c_restart_handoff:
    meaning:
      Restart / handoff / reflection notes
      used to resume design later.

  class_d_portal_or_surface_index:
    meaning:
      Navigation-oriented notes or reflection docs
      that expose application discovery structure.

# ============================================================
# 2. WHAT SHOULD BE REFLECTED
# ============================================================

must_reflect:
- application name
- application path
- short identity summary
- category as business-judgment application
- canonical entry documents
- current state as design-expanded / implementation not started

should_reflect:
- ERP truth boundary preserved
- forecast advisory boundary preserved
- multilingual / multi-currency / cross-device readiness
- portfolio judgment loop summary

should_not_reflect_as_top_level_summary:
- low-level exact payload details
- raw table-by-table model detail
- verbose repeated warnings better left inside the local design set

# ============================================================
# 3. PRIMARY INSERTION BLOCK
# ============================================================

primary_insertion_block:
  application_name: ProductPortfolioManager
  application_path: /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager
  category: business-judgment-application
  summary:
    Lightweight product strategy judgment application
    for KPI/scoring-based product evaluation,
    strategic classification,
    proposals,
    review sessions,
    approvals,
    alerts,
    and audit/history,
    built on top of ERP facts and forecast references.
  canonical_entries:
    - 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
    - 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
    - 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md
  current_state:
    - design expanded
    - implementation not started

# ============================================================
# 4. SECONDARY INSERTION BLOCK
# ============================================================

secondary_insertion_block:
- ERP boundary fixed
- forecast advisory boundary fixed
- exact model contracts fixed
- exact flow payload contracts fixed
- review / approval / audit governance fixed
- closure note and restart bundle prepared

# ============================================================
# 5. RECOMMENDED INSERTION ORDER
# ============================================================

recommended_insertion_order:
1. highest-level application/system index
2. integrated navigation / canonical integrated summaries
3. restart or handoff summaries
4. portal-side or reflection-side navigation notes

# ============================================================
# 6. LOCAL SOURCE DOCUMENTS TO USE
# ============================================================

local_source_documents_to_use:
- 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
- 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
- 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md
- 900.meta/handoff-bundle/9000020_PRODUCT_PORTFOLIO_MANAGER_FINAL_HANDOFF_BUNDLE.md
- 900.meta/copy-blocks/9000015_PRODUCT_PORTFOLIO_MANAGER_ROOT_INDEX_COPY_BLOCKS.md
- 900.meta/copy-blocks/9000016_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED_INSERT_BLOCKS.md
- 900.meta/copy-blocks/9000017_PRODUCT_PORTFOLIO_MANAGER_RESTART_INSERT_BLOCKS.md

# ============================================================
# 7. SAFE INSERTION RULES
# ============================================================

safe_insertion_rules:
- do not rewrite existing external canonical meaning casually
- do not insert low-level implementation detail into broad navigation
- do not lose ProductPortfolioManager’s ERP/fact/judgment boundary meaning
- do not present implementation as started
- do not duplicate long warnings in every broad document

# ============================================================
# 8. EXECUTION READINESS
# ============================================================

execution_readiness:
- local design set: ready
- local navigation blocks: ready
- local restart bundle: ready
- broad insertion plan: ready
- broad target editing: not yet executed in this phase

# ============================================================
# 9. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager is ready for broad navigation reflection work.
That reflection should be treated as a separate additive documentation phase.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/broad-reflection-plan/9000024_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_EXECUTION_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/broad-reflection-plan/9000025_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_TARGET_MATRIX.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER BROAD REFLECTION TARGET MATRIX
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Maps reflection target types
to recommended insertion depth and source blocks.

target_matrix:

  master_index_documents:
    insertion_depth: short_to_medium
    recommended_source_blocks:
      - 900.meta/copy-blocks/9000015_PRODUCT_PORTFOLIO_MANAGER_ROOT_INDEX_COPY_BLOCKS.md
    recommended_content:
      - app name
      - role
      - canonical entries
      - current state

  integrated_canonical_documents:
    insertion_depth: medium
    recommended_source_blocks:
      - 900.meta/copy-blocks/9000016_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED_INSERT_BLOCKS.md
    recommended_content:
      - application summary
      - judgment loop summary
      - ERP / forecast boundary summary
      - current state

  restart_handoff_documents:
    insertion_depth: medium_to_long
    recommended_source_blocks:
      - 900.meta/copy-blocks/9000017_PRODUCT_PORTFOLIO_MANAGER_RESTART_INSERT_BLOCKS.md
      - 900.meta/handoff-bundle/9000020_PRODUCT_PORTFOLIO_MANAGER_FINAL_HANDOFF_BUNDLE.md
    recommended_content:
      - restart order
      - implementation not started
      - safe continuation warnings

  portal_or_reflection_notes:
    insertion_depth: short
    recommended_source_blocks:
      - 900.meta/index-reflection/9000007_PRODUCT_PORTFOLIO_MANAGER_APPLICATION_NAVIGATION_REFLECTION_NOTE.md
      - 900.meta/index-reflection/9000008_PRODUCT_PORTFOLIO_MANAGER_SYSTEM_INDEX_INSERT_TEMPLATE.md
    recommended_content:
      - discovery summary
      - category
      - canonical links

formal_conclusion:
Different broad targets require different insertion depths.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/broad-reflection-plan/9000025_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_TARGET_MATRIX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/broad-reflection-plan/9000026_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_PHASE_OPENING.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER BROAD REFLECTION PHASE OPENING
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides a clean phase-opening note
for a later documentation pass that actually edits broader canonical files.

phase_name:
broad-navigation-reflection-phase

phase_objective:
Reflect ProductPortfolioManager into wider canonical navigation
using already prepared local copy blocks and handoff bundles.

phase_in_scope:
- additive navigation insertion
- additive summary insertion
- additive restart/handoff insertion

phase_out_of_scope:
- implementation
- code generation
- DDL generation
- API execution work
- changing ProductPortfolioManager core meaning
- weakening existing canonical boundaries

recommended_phase_opening_text:
We are now opening the broad-navigation-reflection phase for ProductPortfolioManager.
Use the local copy blocks and final handoff bundle
to insert ProductPortfolioManager into wider canonical navigation documents.
Do not start implementation.
Do not weaken ERP / forecast / judgment boundaries.
Keep changes additive only.

formal_conclusion:
If broader canonical files are to be edited later,
this note should be used to open that phase explicitly.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/broad-reflection-plan/9000026_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_PHASE_OPENING.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/compression-pass/9000011_PRODUCT_PORTFOLIO_MANAGER_LAYER_COMPRESSION_RULES.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER LAYER COMPRESSION RULES
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines how each layer should be compressed or standardized
without losing design intent.

layer_rules:

  constitution:
    keep:
      - meaning boundaries
      - source-of-truth boundaries
      - non-negotiable principles
    compress:
      - repeated contrast phrases when already established elsewhere
    avoid:
      - implementation-style requirement wording

  architecture:
    keep:
      - structural roles
      - surface relations
      - domain responsibilities
    compress:
      - repeated warnings already owned by constitution/policy unless architecture-specific
    avoid:
      - field-by-field model semantics

  model:
    keep:
      - entity meaning
      - field semantics
      - relation semantics
    compress:
      - repeated governance phrases not specific to model meaning
    avoid:
      - UI wording

  flow:
    keep:
      - actor progression
      - state progression
      - handoff meaning
    compress:
      - repeated generic cautions already fixed in policy/security unless flow-specific
    avoid:
      - pure architecture summaries

  integration:
    keep:
      - source boundary
      - reference semantics
      - metadata expectations
    compress:
      - repeated "not truth" phrasing where already firmly established
    avoid:
      - UI-heavy wording

  operations:
    keep:
      - cadence
      - handling discipline
      - operational metrics
    compress:
      - repeated constitutional warnings unless operator-facing handling depends on them
    avoid:
      - exact schema semantics

  policy:
    keep:
      - interpretation rules
      - allowed/disallowed meaning
      - separation rules
    compress:
      - architecture descriptions
    avoid:
      - implementation checklist style wording

  security:
    keep:
      - authority boundaries
      - access rules
      - tamper-resistance expectations
    compress:
      - repeated business-value exposition not tied to security meaning
    avoid:
      - generic product descriptions

  implementation:
    keep:
      - non-code requirements
      - screen/API/data requirement statements
    compress:
      - long repeated boundary reminders already fixed above unless needed for implementation safety
    avoid:
      - code or DDL

  meta:
    keep:
      - navigation
      - cleanup guidance
      - restart support
    compress:
      - redundant summaries that merely restate root overview

formal_conclusion:
Compression should make each layer sound more like itself.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/compression-pass/9000011_PRODUCT_PORTFOLIO_MANAGER_LAYER_COMPRESSION_RULES.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/compression-pass/9000012_PRODUCT_PORTFOLIO_MANAGER_REPEATED_PHRASE_NORMALIZATION.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER REPEATED PHRASE NORMALIZATION
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides normalization targets for common repeated phrase families.

repeated_phrase_families:

  - family_id: PPM-RPT-001
    topic: ERP boundary
    common_repetition:
      - ERP remains truth
      - no silent ERP mutation
      - application judgment is separate
    normalization_rule:
      Keep the full warning in constitution/policy/integration.
      Use shorter references elsewhere unless the layer needs explicit restatement.

  - family_id: PPM-RPT-002
    topic: forecast advisory meaning
    common_repetition:
      - forecast is advisory
      - forecast is not truth
      - forecast is not final decision
    normalization_rule:
      Keep full wording in constitution/policy/integration.
      Shorten in architecture/implementation when advisory meaning is already established.

  - family_id: PPM-RPT-003
    topic: review versus approval
    common_repetition:
      - review is not approval
      - review completion is not final approval
    normalization_rule:
      Preserve strongly in flow/policy/security.
      Use lighter wording elsewhere.

  - family_id: PPM-RPT-004
    topic: classification versus lifecycle
    common_repetition:
      - lifecycle is not classification
      - classification is strategy meaning
    normalization_rule:
      Keep strong wording in constitution/model/policy.
      Use shorter references in screen/implementation docs.

  - family_id: PPM-RPT-005
    topic: proposal versus execution
    common_repetition:
      - proposal is not execution truth
      - approved is not completed
    normalization_rule:
      Keep strong wording in constitution/policy/flow.
      Use concise reminders in UI requirements.

formal_conclusion:
Normalization should reduce reading fatigue
without weakening safety-critical meaning.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/compression-pass/9000012_PRODUCT_PORTFOLIO_MANAGER_REPEATED_PHRASE_NORMALIZATION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/compression-pass/9000013_PRODUCT_PORTFOLIO_MANAGER_COMPRESSION_TARGET_LIST.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER COMPRESSION TARGET LIST
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Lists candidate files or file families
that are most likely to benefit from a wording-compression pass.

high_priority_targets:
- 0200003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_ARCHITECTURE.md
- 0200010_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_ARCHITECTURE_FORMAL_DESIGN.md
- 0600001_ERP_REFERENCE_INTEGRATION.md
- 0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
- 0200004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_ARCHITECTURE.md
- 0200011_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_ARCHITECTURE_FORMAL_DESIGN.md
- 0600002_FORECAST_REFERENCE_INTEGRATION.md
- 0600004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
- 0500004_REVIEW_SESSION_FLOW.md
- 0500005_APPROVAL_FLOW.md
- 0500008_PRODUCT_PORTFOLIO_MANAGER_REVIEW_SESSION_FORMAL_FLOW.md
- 0800009_PRODUCT_PORTFOLIO_MANAGER_REVIEW_SESSION_POLICY.md

medium_priority_targets:
- 1200013_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_REQUIREMENTS.md
- 1200014_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_REQUIREMENTS.md
- 1200012_PRODUCT_PORTFOLIO_MANAGER_PROPOSAL_REQUIREMENTS.md
- 1200017_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_CHANGE_AND_PROPOSAL_DETAIL_REQUIREMENTS.md

low_priority_targets:
- root overview/index/integrated files
- meta notes that intentionally summarize state

formal_conclusion:
Compression should start with boundary-heavy files,
because that is where repetition is currently most likely.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/compression-pass/9000013_PRODUCT_PORTFOLIO_MANAGER_COMPRESSION_TARGET_LIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/compression-pass/9000014_PRODUCT_PORTFOLIO_MANAGER_SAFE_COMPRESSION_CHECKLIST.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER SAFE COMPRESSION CHECKLIST
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides a safety checklist for a later wording-compression pass.

checklist:
- keep root navigation stable
- do not remove canonical files
- do not merge layer responsibilities
- do not weaken ERP boundary wording in core boundary-owning files
- do not weaken forecast advisory wording in core boundary-owning files
- do not weaken review/approval separation wording in flow/policy/security
- keep multilingual and multi-currency requirements explicit
- keep cross-device meaning parity explicit
- keep implementation out of scope
- record compression results in a meta note if a full pass is later executed

formal_conclusion:
Compression is allowed only when clarity improves
and governance meaning remains intact.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/compression-pass/9000014_PRODUCT_PORTFOLIO_MANAGER_SAFE_COMPRESSION_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/copy-blocks/9000015_PRODUCT_PORTFOLIO_MANAGER_ROOT_INDEX_COPY_BLOCKS.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER ROOT INDEX COPY BLOCKS
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides copy-ready blocks
for wider root/index/integrated/restart documents.

# ============================================================
# 1. SHORT INDEX BLOCK
# ============================================================

short_index_block:
  - application_name: ProductPortfolioManager
    path: /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager
    role:
      - product portfolio judgment
      - KPI/scoring-based evaluation
      - strategy classification
      - proposal/review/approval governance
    canonical_entries:
      - 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
      - 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
      - 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md
    status:
      - design expanded
      - implementation not started

# ============================================================
# 2. MEDIUM INDEX BLOCK
# ============================================================

medium_index_block:
  - application_name: ProductPortfolioManager
    application_group: 07.applications
    path: /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager
    category: business-judgment-application
    summary:
      A lightweight product strategy judgment application
      that sits on top of ERP facts and forecast references
      to manage product portfolio scoring, classification,
      proposals, reviews, approvals, alerts, and audit history.
    primary_capabilities:
      - product portfolio visibility
      - KPI / score-based evaluation
      - strategic classification
      - proposals
      - review sessions
      - approvals
      - alerts
      - audit/history
    canonical_entries:
      - 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
      - 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
      - 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md
    current_state:
      - design fixed broadly across constitution through implementation requirements
      - implementation not started
      - cleanup / standardization stage

# ============================================================
# 3. LONG INDEX BLOCK
# ============================================================

long_index_block:
  - application_name: ProductPortfolioManager
    application_group: 07.applications
    path: /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager
    category: business-judgment-application
    design_identity:
      ProductPortfolioManager is a lightweight product strategy judgment application.
      It does not replace ERP.
      It consumes ERP facts and forecast references,
      and owns application-side artifacts such as
      metric snapshots for judgment reproducibility,
      scores, classifications, proposals, reviews,
      approvals, alerts, share scope, and audit/history.
    global_requirements:
      - multilingual
      - multi-currency
      - iphone
      - android
      - pc
      - tablet
    core_judgment_loop:
      - onboarding
      - fact reference
      - evaluation refresh
      - classification review
      - proposal
      - review
      - approval
      - audit preservation
    primary_entry_documents:
      - 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
      - 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
      - 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md
    deeper_entry_documents:
      - 030.model/0300007_PRODUCT_PORTFOLIO_MANAGER_EXACT_TABLES_AND_ENUMS.md
      - 050.flow/0500007_PRODUCT_PORTFOLIO_MANAGER_BUSINESS_FLOW_FORMAL_DESIGN.md
      - 060.integration/0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
      - 060.integration/0600004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
      - 100.security/1000002_PRODUCT_PORTFOLIO_MANAGER_AUTHORIZATION_FORMAL_DESIGN.md
      - 120.implementation/1200004_PRODUCT_PORTFOLIO_MANAGER_API_CONTRACT_EXACT.md
    current_state:
      - broad design complete
      - cleanup and standardization stage
      - implementation not started

formal_conclusion:
These blocks are copy-ready navigation inserts.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/copy-blocks/9000015_PRODUCT_PORTFOLIO_MANAGER_ROOT_INDEX_COPY_BLOCKS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/copy-blocks/9000016_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED_INSERT_BLOCKS.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER INTEGRATED INSERT BLOCKS
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides copy-ready insert blocks
for higher-level integrated or summary documents.

integrated_summary_short:
ProductPortfolioManager is a lightweight product strategy judgment application
that uses ERP facts and forecast references
to support portfolio scoring, classification,
proposals, review sessions, approvals, alerts, and audit/history.

integrated_summary_medium:
ProductPortfolioManager is a BusinessOS-side application under 07.applications.
It is positioned as a product portfolio decision front:
lighter than heavy merchandise planning platforms,
but deeper in strategy judgment than simple product-information tools.
It preserves ERP truth boundaries,
treats forecast as advisory reference,
and governs application-side artifacts such as
scores, classifications, proposals, reviews, approvals, alerts, and audit history.

integrated_summary_long:
ProductPortfolioManager is a lightweight product strategy judgment application
designed for multilingual, multi-currency,
iPhone/Android/PC/tablet-capable operation.
Its core loop is:
fact reference -> evaluation refresh -> classification review -> proposal -> review -> approval -> audit preservation.
ERP remains the formal source of truth for operational facts.
Forecast remains advisory reference.
The application owns portfolio judgment artifacts,
including metric snapshots for judgment reproducibility,
scoring, strategic classification,
proposals, review sessions,
approval handling,
alerts,
share scope,
and audit/history surfaces.

recommended_deep_links:
- 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
- 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md
- 030.model/0300007_PRODUCT_PORTFOLIO_MANAGER_EXACT_TABLES_AND_ENUMS.md
- 050.flow/0500007_PRODUCT_PORTFOLIO_MANAGER_BUSINESS_FLOW_FORMAL_DESIGN.md
- 120.implementation/1200004_PRODUCT_PORTFOLIO_MANAGER_API_CONTRACT_EXACT.md

formal_conclusion:
These blocks are intended for integrated or summary-level design documents.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/copy-blocks/9000016_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED_INSERT_BLOCKS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/copy-blocks/9000017_PRODUCT_PORTFOLIO_MANAGER_RESTART_INSERT_BLOCKS.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER RESTART INSERT BLOCKS
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides copy-ready restart text
for future handoff or restart documents.

restart_block_short:
ProductPortfolioManager restart point:
begin from OVERVIEW -> INDEX -> INTEGRATED,
then read BUSINESS FLOW,
EXACT TABLES AND ENUMS,
and API CONTRACT EXACT.
Implementation has not started.

restart_block_medium:
ProductPortfolioManager is already broad in design coverage.
Application definition, flow, model, integration boundary,
policy/security, and screen/API requirement layers are fixed.
Implementation has not started.
To restart:
1. 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
2. 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
3. 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md
4. 050.flow/0500007_PRODUCT_PORTFOLIO_MANAGER_BUSINESS_FLOW_FORMAL_DESIGN.md
5. 030.model/0300007_PRODUCT_PORTFOLIO_MANAGER_EXACT_TABLES_AND_ENUMS.md
6. 120.implementation/1200004_PRODUCT_PORTFOLIO_MANAGER_API_CONTRACT_EXACT.md

restart_block_long:
ProductPortfolioManager is in the design-expanded,
cleanup/standardization stage.
It is a lightweight product strategy judgment application
that preserves ERP truth boundaries,
treats forecast as advisory reference,
and owns portfolio judgment artifacts such as
scores, classifications, proposals, reviews, approvals, alerts, and audit/history.
Implementation has not started.
Recommended restart order:
1. OVERVIEW
2. INDEX
3. INTEGRATED
4. BUSINESS FLOW FORMAL DESIGN
5. EXACT TABLES AND ENUMS
6. AUTHORIZATION FORMAL DESIGN
7. ERP / FORECAST BOUNDARY INTEGRATION FORMAL DESIGN
8. API CONTRACT EXACT
Warning:
do not collapse ERP fact meaning,
forecast advisory meaning,
and application judgment meaning into one layer.

formal_conclusion:
These blocks are intended for restart and handoff materials.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/copy-blocks/9000017_PRODUCT_PORTFOLIO_MANAGER_RESTART_INSERT_BLOCKS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/copy-blocks/9000018_PRODUCT_PORTFOLIO_MANAGER_WIDE_NAVIGATION_BUNDLE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER WIDE NAVIGATION BUNDLE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Bundles together the most useful copy blocks
for higher-level navigation reflection.

recommended_bundle_order:
1. short index block
2. integrated summary medium
3. restart block medium

bundle_content:

short_index_block:
  - application_name: ProductPortfolioManager
    path: /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager
    role:
      - product portfolio judgment
      - KPI/scoring-based evaluation
      - strategy classification
      - proposal/review/approval governance
    canonical_entries:
      - 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
      - 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
      - 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md

integrated_summary_medium:
  ProductPortfolioManager is a BusinessOS-side application under 07.applications.
  It is positioned as a product portfolio decision front:
  lighter than heavy merchandise planning platforms,
  but deeper in strategy judgment than simple product-information tools.
  It preserves ERP truth boundaries,
  treats forecast as advisory reference,
  and governs application-side artifacts such as
  scores, classifications, proposals, reviews, approvals, alerts, and audit history.

restart_block_medium:
  ProductPortfolioManager is already broad in design coverage.
  Application definition, flow, model, integration boundary,
  policy/security, and screen/API requirement layers are fixed.
  Implementation has not started.
  To restart:
  1. 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
  2. 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
  3. 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md
  4. 050.flow/0500007_PRODUCT_PORTFOLIO_MANAGER_BUSINESS_FLOW_FORMAL_DESIGN.md
  5. 030.model/0300007_PRODUCT_PORTFOLIO_MANAGER_EXACT_TABLES_AND_ENUMS.md
  6. 120.implementation/1200004_PRODUCT_PORTFOLIO_MANAGER_API_CONTRACT_EXACT.md

formal_conclusion:
Use this bundle when a wider document needs
index + integrated summary + restart hint together.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/copy-blocks/9000018_PRODUCT_PORTFOLIO_MANAGER_WIDE_NAVIGATION_BUNDLE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/handoff-bundle/9000020_PRODUCT_PORTFOLIO_MANAGER_FINAL_HANDOFF_BUNDLE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER FINAL HANDOFF BUNDLE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides the final handoff bundle for ProductPortfolioManager
so another chat, another maintainer,
or a wider system index can continue from a stable point.

# ============================================================
# 1. APPLICATION IDENTITY
# ============================================================

application_identity:
ProductPortfolioManager is a lightweight product strategy judgment application.
It sits on top of ERP facts,
uses forecast as advisory reference,
and governs portfolio-scoped artifacts such as
scores, classifications, proposals, reviews, approvals, alerts, share scope, and audit/history.

# ============================================================
# 2. GLOBAL REQUIREMENTS
# ============================================================

global_requirements:
- multilingual support
- multi-currency support
- iphone support
- android support
- pc support
- tablet support

# ============================================================
# 3. CORE JUDGMENT LOOP
# ============================================================

core_judgment_loop:
- onboarding
- fact reference
- evaluation refresh
- classification review
- proposal
- review
- approval
- audit preservation

# ============================================================
# 4. SOURCE-OF-TRUTH BOUNDARY
# ============================================================

source_of_truth_boundary:
erp_owns:
- product master identity
- formal sales truth
- formal cost truth
- formal inventory truth
- formal accounting truth

forecast_side_owns:
- forecast generation logic
- forecast source/model meaning
- forecast confidence production

application_owns:
- product portfolio scope
- metric snapshots for judgment reproducibility
- scoring
- classification
- proposals
- review sessions
- approvals
- alerts
- share scope
- audit/history
- presentation preferences and presets

# ============================================================
# 5. WHAT IS FIXED
# ============================================================

fixed_design_areas:
- application identity
- competitive positioning
- functional requirements
- screen requirements
- data model
- exact payload contracts
- exact table / enum contracts
- ERP boundary
- forecast boundary
- KPI and scoring design
- classification and lifecycle design
- proposal design
- review session design
- authorization design
- alert / notification design
- share-scope design
- audit/history design
- settings / locale / currency / preset design
- freshness-by-surface
- notification recipient matrix
- root navigation refresh
- wide-index reflection notes
- compression-pass notes
- closure note

# ============================================================
# 6. WHAT HAS NOT STARTED
# ============================================================

not_started:
- implementation
- code generation
- DDL execution
- API implementation
- UI implementation
- production integration work

# ============================================================
# 7. RESTART ORDER
# ============================================================

recommended_restart_order:
1. 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
2. 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
3. 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md
4. 050.flow/0500007_PRODUCT_PORTFOLIO_MANAGER_BUSINESS_FLOW_FORMAL_DESIGN.md
5. 030.model/0300007_PRODUCT_PORTFOLIO_MANAGER_EXACT_TABLES_AND_ENUMS.md
6. 120.implementation/1200004_PRODUCT_PORTFOLIO_MANAGER_API_CONTRACT_EXACT.md
7. 100.security/1000002_PRODUCT_PORTFOLIO_MANAGER_AUTHORIZATION_FORMAL_DESIGN.md
8. 060.integration/0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
9. 060.integration/0600004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
10. 900.meta/9000019_PRODUCT_PORTFOLIO_MANAGER_DESIGN_CLOSURE_NOTE.md

# ============================================================
# 8. SAFE CONTINUATION WARNINGS
# ============================================================

safe_continuation_warnings:
- do not collapse ERP fact meaning into application judgment meaning
- do not collapse forecast advisory meaning into final decision meaning
- do not collapse lifecycle and classification into one concept
- do not collapse review and approval into one step
- do not treat proposal completion as automatic ERP execution truth
- do not treat settings or presets as authority-changing surfaces

# ============================================================
# 9. CURRENT STAGE
# ============================================================

current_stage:
- design closure reached
- cleanup / standardization optional
- broader navigation reflection optional
- implementation still unopened

# ============================================================
# 10. FINAL CONCLUSION
# ============================================================

final_conclusion:
ProductPortfolioManager is in a stable design-expanded state
and can be safely paused, handed off, or resumed later
without rediscovering core meaning.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/handoff-bundle/9000020_PRODUCT_PORTFOLIO_MANAGER_FINAL_HANDOFF_BUNDLE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/handoff-bundle/9000021_PRODUCT_PORTFOLIO_MANAGER_SHORT_HANDOFF_TEMPLATE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER SHORT HANDOFF TEMPLATE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

template:
ProductPortfolioManager is a lightweight product strategy judgment application.
Design coverage is broad across constitution, architecture, model, flow,
integration, operations, policy, security, and implementation requirements.
ERP fact boundary and forecast advisory boundary are already fixed.
Implementation has not started.
Restart from:
OVERVIEW -> INDEX -> INTEGRATED -> BUSINESS FLOW -> EXACT TABLES/ENUMS -> API CONTRACT EXACT.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/handoff-bundle/9000021_PRODUCT_PORTFOLIO_MANAGER_SHORT_HANDOFF_TEMPLATE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/handoff-bundle/9000022_PRODUCT_PORTFOLIO_MANAGER_LONG_HANDOFF_TEMPLATE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER LONG HANDOFF TEMPLATE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

template:
ProductPortfolioManager is a lightweight product strategy judgment application
under 07.applications.
It sits on top of ERP facts,
uses forecast as advisory reference,
and owns application-side artifacts such as
metric snapshots for judgment reproducibility,
scores, classifications, proposals, reviews, approvals, alerts, share scope, and audit/history.

The following are already fixed:
- multilingual / multi-currency / iphone / android / pc / tablet requirements
- functional requirements
- screen requirements
- exact flow payloads
- exact tables / enums
- KPI/scoring design
- classification/lifecycle design
- proposal/review/approval design
- ERP / forecast boundaries
- authorization / share / alert / audit / freshness / recipient-matrix design

Implementation has not started.
Recommended restart order:
1. OVERVIEW
2. INDEX
3. INTEGRATED
4. BUSINESS FLOW FORMAL DESIGN
5. EXACT TABLES AND ENUMS
6. API CONTRACT EXACT
7. AUTHORIZATION FORMAL DESIGN
8. ERP / FORECAST INTEGRATION FORMAL DESIGN
9. DESIGN CLOSURE NOTE

Warnings:
- do not collapse ERP fact and application judgment
- do not collapse forecast advisory meaning and final decision
- do not collapse review and approval
- do not treat proposal completion as ERP execution truth

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/handoff-bundle/9000022_PRODUCT_PORTFOLIO_MANAGER_LONG_HANDOFF_TEMPLATE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/index-reflection/9000007_PRODUCT_PORTFOLIO_MANAGER_APPLICATION_NAVIGATION_REFLECTION_NOTE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER APPLICATION NAVIGATION REFLECTION NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides a reusable reflection note
for higher-level application navigation or system navigation documents.

reflection_title:
ProductPortfolioManager

reflection_summary:
A lightweight product strategy judgment application
for evaluating products,
classifying strategic importance,
managing proposals,
running review sessions,
handling approvals,
and preserving audit/history.

reflection_keywords:
- product portfolio
- product strategy
- product judgment
- KPI
- scoring
- classification
- proposal
- review
- approval
- alert
- audit
- ERP reference
- forecast reference

recommended_navigation_label:
Product Portfolio Manager / Product Strategy Judgment

recommended_navigation_group:
07.applications / business judgment applications

recommended_primary_links:
- 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
- 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
- 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md

recommended_secondary_links:
- 030.model/0300007_PRODUCT_PORTFOLIO_MANAGER_EXACT_TABLES_AND_ENUMS.md
- 050.flow/0500007_PRODUCT_PORTFOLIO_MANAGER_BUSINESS_FLOW_FORMAL_DESIGN.md
- 060.integration/0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
- 060.integration/0600004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
- 100.security/1000002_PRODUCT_PORTFOLIO_MANAGER_AUTHORIZATION_FORMAL_DESIGN.md
- 120.implementation/1200004_PRODUCT_PORTFOLIO_MANAGER_API_CONTRACT_EXACT.md

restart_hint:
If a future chat or future maintainer needs to restart quickly,
begin from:
1. OVERVIEW
2. INDEX
3. INTEGRATED
4. BUSINESS FLOW
5. EXACT TABLES AND ENUMS

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/index-reflection/9000007_PRODUCT_PORTFOLIO_MANAGER_APPLICATION_NAVIGATION_REFLECTION_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/index-reflection/9000008_PRODUCT_PORTFOLIO_MANAGER_SYSTEM_INDEX_INSERT_TEMPLATE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER SYSTEM INDEX INSERT TEMPLATE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides a template block
that can be inserted into broader CivilizationOS-side or application-side index documents.

template_block:

  - application_name: ProductPortfolioManager
    application_path: /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager
    category: business-judgment-application
    role:
      - product portfolio judgment
      - KPI/scoring-based product evaluation
      - strategy classification
      - proposal/review/approval governance
      - ERP-reference and forecast-reference consumption
    canonical_entries:
      - 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
      - 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
      - 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md
    key_design_points:
      - multilingual-ready
      - multi-currency-ready
      - iphone/android/pc/tablet-ready
      - ERP truth boundary preserved
      - forecast advisory boundary preserved
      - judgment artifacts owned by application
    current_state:
      - design expanded
      - implementation not started
      - cleanup/standardization stage

usage_note:
This block is intentionally additive and copy-ready
for wider navigation documents.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/index-reflection/9000008_PRODUCT_PORTFOLIO_MANAGER_SYSTEM_INDEX_INSERT_TEMPLATE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/index-reflection/9000009_PRODUCT_PORTFOLIO_MANAGER_MASTER_RESTART_NOTE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER MASTER RESTART NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides a concise restart note
for future continuation in another chat or another maintenance pass.

current_state_summary:
- application meaning fixed
- competitive positioning fixed
- functional requirements fixed
- screen requirements fixed
- data model fixed
- exact payloads fixed
- exact tables/enums fixed
- ERP boundary fixed
- forecast boundary fixed
- KPI/scoring fixed
- classification/lifecycle fixed
- proposal/review/approval fixed
- alert/share/audit fixed
- settings/locale/currency/preset fixed
- root docs refreshed
- cleanup/gap review added
- implementation not started

start_here_next_time:
- 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
- 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
- 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md

if_more_design_is_needed:
- cleanup/compression pass
- freshness-by-surface formalization
- notification recipient matrix
- wider CivilizationOS index reflection

if_implementation_is_later_started:
Begin from:
- 0300007_PRODUCT_PORTFOLIO_MANAGER_EXACT_TABLES_AND_ENUMS.md
- 0500006_PRODUCT_PORTFOLIO_MANAGER_EXACT_FLOW_PAYLOADS.md
- 1200004_PRODUCT_PORTFOLIO_MANAGER_API_CONTRACT_EXACT.md

restart_warning:
Do not collapse ERP fact meaning,
forecast advisory meaning,
and application judgment meaning into one layer.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/index-reflection/9000009_PRODUCT_PORTFOLIO_MANAGER_MASTER_RESTART_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/phase1-entry-pack/9000068_PRODUCT_PORTFOLIO_MANAGER_PHASE1_IMPLEMENTATION_ENTRY_PACK.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER PHASE 1 IMPLEMENTATION ENTRY PACK
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides the entry pack for Phase 1 implementation of
ProductPortfolioManager.

phase_1_identity:
Phase 1 is the smallest useful product judgment loop.

phase_1_scope:
- portfolio list
- product detail
- score refresh
- classification draft save
- proposal save

phase_1_out_of_scope:
- full review session implementation
- full approval queue implementation
- full alert operations implementation
- full audit/history console implementation
- full preset/settings implementation
- broad reflection application to external canonicals

formal_conclusion:
Phase 1 must stay narrow, useful, and source-boundary-safe.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/phase1-entry-pack/9000068_PRODUCT_PORTFOLIO_MANAGER_PHASE1_IMPLEMENTATION_ENTRY_PACK.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/phase1-entry-pack/9000069_PRODUCT_PORTFOLIO_MANAGER_PHASE1_READING_SEQUENCE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER PHASE 1 READING SEQUENCE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the recommended reading sequence
before Phase 1 implementation starts.

reading_sequence:
1. 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
2. 050.flow/0500007_PRODUCT_PORTFOLIO_MANAGER_BUSINESS_FLOW_FORMAL_DESIGN.md
3. 050.flow/0500006_PRODUCT_PORTFOLIO_MANAGER_EXACT_FLOW_PAYLOADS.md
4. 030.model/0300007_PRODUCT_PORTFOLIO_MANAGER_EXACT_TABLES_AND_ENUMS.md
5. 120.implementation/1200004_PRODUCT_PORTFOLIO_MANAGER_API_CONTRACT_EXACT.md
6. 120.implementation/1200005_PRODUCT_PORTFOLIO_MANAGER_SCREEN_TO_API_MAPPING.md
7. 100.security/1000002_PRODUCT_PORTFOLIO_MANAGER_AUTHORIZATION_FORMAL_DESIGN.md
8. 060.integration/0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
9. 060.integration/0600004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md

reading_goal:
After this sequence,
the implementer should know:
- what Phase 1 does
- what data contracts are exact
- what API contracts are exact
- what source boundaries must not be broken
- what authority boundaries must not be broken

formal_conclusion:
Do not start implementation from broad summaries alone.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/phase1-entry-pack/9000069_PRODUCT_PORTFOLIO_MANAGER_PHASE1_READING_SEQUENCE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/phase1-entry-pack/9000070_PRODUCT_PORTFOLIO_MANAGER_PHASE1_FIRST_WORK_ITEMS.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER PHASE 1 FIRST WORK ITEMS
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the first work items for Phase 1 implementation.

first_work_items:
- fix exact request/response handling for portfolio list
- fix exact request/response handling for product detail
- fix exact request/response handling for score refresh
- fix exact request/response handling for classification draft save
- fix exact request/response handling for proposal save

then_after_that:
- wire model exactness against those routes
- wire screen-to-api mapping against those routes
- check authorization and boundary rules for those routes only

do_not_jump_first_to:
- approval queue
- full review session
- full audit console
- full notification routing
- full settings/preset work

formal_conclusion:
Phase 1 should begin from exact route handling,
not from peripheral features.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/phase1-entry-pack/9000070_PRODUCT_PORTFOLIO_MANAGER_PHASE1_FIRST_WORK_ITEMS.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/phase1-entry-pack/9000071_PRODUCT_PORTFOLIO_MANAGER_PHASE1_SAFE_START_CHECKLIST.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER PHASE 1 SAFE START CHECKLIST
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides a safe-start checklist for Phase 1 implementation.

safe_start_checklist:
- Phase 1 scope is accepted
- reading sequence is completed
- exact flow payloads are confirmed
- exact tables / enums are confirmed
- api contract exact is confirmed
- screen-to-api mapping is confirmed
- authorization rules are confirmed
- ERP boundary rules are confirmed
- forecast boundary rules are confirmed
- out-of-scope items are explicitly not started

safety_warnings:
- do not collapse ERP fact meaning into application judgment meaning
- do not collapse forecast advisory meaning into final decision meaning
- do not collapse lifecycle and classification
- do not collapse review and approval
- do not treat proposal completion as ERP execution truth

formal_conclusion:
If this checklist is effectively satisfied,
Phase 1 can start safely.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/phase1-entry-pack/9000071_PRODUCT_PORTFOLIO_MANAGER_PHASE1_SAFE_START_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/phase1-entry-pack/9000072_PRODUCT_PORTFOLIO_MANAGER_PHASE1_HANDOFF_MINI_NOTE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER PHASE 1 HANDOFF MINI NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides a short handoff note for whoever starts Phase 1.

handoff_note:
Phase 1 implementation is limited to
portfolio list,
product detail,
score refresh,
classification draft save,
and proposal save.
Start from exact flow payloads,
exact tables/enums,
API contract exact,
and screen-to-api mapping.
Do not begin from broad reflection notes.
Do not expand scope into review/approval/audit consoles yet.

formal_conclusion:
This mini note is the shortest safe restart point for Phase 1.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/phase1-entry-pack/9000072_PRODUCT_PORTFOLIO_MANAGER_PHASE1_HANDOFF_MINI_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/phase1-entry-pack/9000073_PRODUCT_PORTFOLIO_MANAGER_PHASE1_START_ORDER_NOTE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER PHASE 1 START ORDER NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Fixes the recommended start order for Phase 1 implementation.

phase_1_scope:
- portfolio list
- product detail
- score refresh
- classification draft save
- proposal save

# ============================================================
# 1. START ORDER
# ============================================================

start_order:
1. portfolio list read route
2. product detail read route
3. score refresh route
4. classification draft save route
5. proposal save route

# ============================================================
# 2. WHY THIS ORDER
# ============================================================

why_this_order:
- list and detail define the read-side backbone
- score refresh defines the first judgment update path
- classification draft save defines the first governed write path
- proposal save defines the second governed write path
- this sequence opens the smallest useful judgment loop safely

# ============================================================
# 3. DO NOT START FROM
# ============================================================

do_not_start_from:
- approval queue
- full review session
- alert routing
- audit console
- settings / preset management
- broad reflection drafts
- portal/index reflection notes

# ============================================================
# 4. REQUIRED CHECK BEFORE EACH STEP
# ============================================================

required_check_before_each_step:
- exact flow payload confirmed
- exact table / enum confirmed
- api contract confirmed
- authorization implication confirmed
- ERP / forecast boundary implication confirmed

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Phase 1 should start from read backbone first,
then judgment update,
then governed write routes.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/phase1-entry-pack/9000073_PRODUCT_PORTFOLIO_MANAGER_PHASE1_START_ORDER_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/phase1-entry-pack/9000074_PRODUCT_PORTFOLIO_MANAGER_PHASE1_ROUTE_BY_ROUTE_CHECKLIST.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER PHASE 1 ROUTE-BY-ROUTE CHECKLIST
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides a route-by-route checklist for Phase 1.

route_checklist:

  portfolio_list:
    - request contract understood
    - response contract understood
    - list fields aligned with model
    - source boundary not blurred

  product_detail:
    - request contract understood
    - response contract understood
    - detail sections aligned with screen mapping
    - ERP / score / forecast meanings separated

  score_refresh:
    - refresh payload understood
    - score output contract understood
    - score version / calculated_at preserved
    - stale vs fresh meaning preserved

  classification_draft_save:
    - draft payload understood
    - classification vs lifecycle meaning preserved
    - draft vs approved meaning preserved
    - approval boundary not bypassed

  proposal_save:
    - proposal payload understood
    - proposal vs execution meaning preserved
    - proposal vs approval meaning preserved
    - owner / due / priority context preserved

formal_conclusion:
Each route should be checked independently before implementation begins.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/phase1-entry-pack/9000074_PRODUCT_PORTFOLIO_MANAGER_PHASE1_ROUTE_BY_ROUTE_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/phase1-entry-pack/9000075_PRODUCT_PORTFOLIO_MANAGER_PHASE1_READY_TO_CODE_NOTE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER PHASE 1 READY TO CODE NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides the final pre-coding note for Phase 1.

ready_to_code_when:
- start order accepted
- route-by-route checklist accepted
- first implementation scope not expanded
- exact documents are the implementation source
- boundary warnings are accepted

not_ready_to_code_when:
- broad summaries are being used as implementation source
- approval/review/audit work is being pulled into Phase 1
- ERP truth and application judgment are being mixed
- forecast is being treated as final truth

formal_conclusion:
When the exact docs and Phase 1 route order are accepted,
Phase 1 is ready to code.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/phase1-entry-pack/9000075_PRODUCT_PORTFOLIO_MANAGER_PHASE1_READY_TO_CODE_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/uploaded-broad-target-map/9000040_PRODUCT_PORTFOLIO_MANAGER_UPLOADED_BROAD_TARGET_MAP_OVERVIEW.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER UPLOADED BROAD TARGET MAP OVERVIEW
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Maps ProductPortfolioManager reflection candidates
to the broad canonical files that are currently available in this workspace.

mapping_principles:
- additive only
- navigation reflection only
- no implementation opening
- no boundary weakening
- prefer canonical entry links over low-level detail in broad files

current_local_application_state:
- design expanded
- implementation not started
- broad reflection planning ready
- target-specific insert packs ready
- execution checklist ready

formal_conclusion:
Uploaded broad canonicals are now concrete reflection candidates,
not abstract future targets.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/uploaded-broad-target-map/9000040_PRODUCT_PORTFOLIO_MANAGER_UPLOADED_BROAD_TARGET_MAP_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/uploaded-broad-target-map/9000041_PRODUCT_PORTFOLIO_MANAGER_UPLOADED_TARGET_CLASSIFICATION_MATRIX.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER UPLOADED TARGET CLASSIFICATION MATRIX
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Classifies uploaded broad canonical files
by reflection suitability and insertion depth.

uploaded_target_matrix:

  - target_file: /mnt/data/003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md
    target_class: class_a_master_index
    recommended_insert_depth: medium
    reflection_priority: very_high
    why:
      Broad CivilizationOS canonical suitable for application discovery and summary reflection.

  - target_file: /mnt/data/000000_FOUNDATION_CANONICAL.md
    target_class: class_b_integrated_navigation
    recommended_insert_depth: short
    reflection_priority: high
    why:
      Foundation-level canonical should stay terse but can reference the app as a business-judgment application.

  - target_file: /mnt/data/9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md
    target_class: class_b_integrated_navigation
    recommended_insert_depth: short
    reflection_priority: high
    why:
      System-rules integrated file can reference ProductPortfolioManager as a governed application pattern.

  - target_file: /mnt/data/900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md
    target_class: class_d_portal_or_surface_index
    recommended_insert_depth: medium_to_long
    reflection_priority: very_high
    why:
      Portal/index reflection note is discovery-oriented and well-suited to richer summary text.

  - target_file: /mnt/data/014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md
    target_class: class_d_portal_or_surface_index
    recommended_insert_depth: short_to_medium
    reflection_priority: medium
    why:
      Best used as an application-consumer reflection note, not as an app summary canonical.

  - target_file: /mnt/data/ERP_DESIGN_BIBLE_FULL.md
    target_class: class_c_restart_handoff
    recommended_insert_depth: short
    reflection_priority: medium
    why:
      ERP-side file should receive only a consumer-boundary note.

  - target_file: /mnt/data/ERP_ENTERPRISE_SCOPE_v1.md
    target_class: class_c_restart_handoff
    recommended_insert_depth: short
    reflection_priority: medium
    why:
      Scope file may note ProductPortfolioManager as downstream ERP fact consumer.

  - target_file: /mnt/data/ERP_SYSTEM_FULL_DUMP.txt
    target_class: reference_dump_only
    recommended_insert_depth: none
    reflection_priority: low
    why:
      Dump-style file is not a natural human-facing navigation target.

  - target_file: /mnt/data/ERP_AUDIT_DUMP.txt
    target_class: reference_dump_only
    recommended_insert_depth: none
    reflection_priority: low
    why:
      Audit dump is not a primary navigation surface.

  - target_file: /mnt/data/ERP_GOVERNANCE_DUMP.txt
    target_class: reference_dump_only
    recommended_insert_depth: none
    reflection_priority: low
    why:
      Governance dump is not a primary app-reflection surface.

  - target_file: /mnt/data/ERP_FOUNDATION_DUMP.txt
    target_class: reference_dump_only
    recommended_insert_depth: none
    reflection_priority: low
    why:
      Dump-style foundation text should not receive navigation inserts.

  - target_file: /mnt/data/PERSONA_OS_INTEGRATED_CANONICAL.md
    target_class: cross_system_reference_only
    recommended_insert_depth: none_or_very_short
    reflection_priority: low
    why:
      ProductPortfolioManager is not primarily PersonaOS-facing.

  - target_file: /mnt/data/STREAMING_OS_INTEGRATED_CANONICAL.md
    target_class: cross_system_reference_only
    recommended_insert_depth: none_or_very_short
    reflection_priority: low
    why:
      ProductPortfolioManager is not primarily StreamingOS-facing.

formal_conclusion:
The strongest current reflection targets are:
- 003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md
- 900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md
- 000000_FOUNDATION_CANONICAL.md
- 9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/uploaded-broad-target-map/9000041_PRODUCT_PORTFOLIO_MANAGER_UPLOADED_TARGET_CLASSIFICATION_MATRIX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/uploaded-broad-target-map/9000042_PRODUCT_PORTFOLIO_MANAGER_UPLOADED_TARGET_INSERTION_STRATEGY.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER UPLOADED TARGET INSERTION STRATEGY
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines insertion strategy by uploaded target.

insertion_strategy:

  /mnt/data/003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md:
    use_blocks:
      - medium_index_block
      - integrated_summary_medium
      - restart_block_short
    insertion_goal:
      Make ProductPortfolioManager discoverable in the main application/system landscape.

  /mnt/data/900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md:
    use_blocks:
      - portal reflection block
      - integrated_summary_medium
    insertion_goal:
      Improve portal-side discovery and label clarity.

  /mnt/data/000000_FOUNDATION_CANONICAL.md:
    use_blocks:
      - short index block
    insertion_goal:
      Reflect the app as a business-judgment application without overloading the foundation doc.

  /mnt/data/9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md:
    use_blocks:
      - short index block
      - short restart note if appropriate
    insertion_goal:
      Show that the app exists and remains governed by explicit ERP/fact/judgment boundaries.

  /mnt/data/014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md:
    use_blocks:
      - common-ledger consumer note
    insertion_goal:
      Show ProductPortfolioManager as a consumer of common capabilities, not as a common component itself.

  /mnt/data/ERP_DESIGN_BIBLE_FULL.md:
    use_blocks:
      - ERP-side consumer-boundary note
    insertion_goal:
      Reflect the app only as a downstream ERP fact consumer.

  /mnt/data/ERP_ENTERPRISE_SCOPE_v1.md:
    use_blocks:
      - ERP-side consumer-boundary note
    insertion_goal:
      Preserve scope clarity without treating ProductPortfolioManager as ERP itself.

formal_conclusion:
Different uploaded targets should receive different insertion depth,
not one universal summary block.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/uploaded-broad-target-map/9000042_PRODUCT_PORTFOLIO_MANAGER_UPLOADED_TARGET_INSERTION_STRATEGY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/uploaded-broad-target-map/9000043_PRODUCT_PORTFOLIO_MANAGER_UPLOADED_TARGET_EXECUTION_PRIORITY.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER UPLOADED TARGET EXECUTION PRIORITY
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines execution priority if a later phase actually edits uploaded broad canonicals.

priority_order:

  priority_1:
    - /mnt/data/900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md
    - /mnt/data/003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md

  priority_2:
    - /mnt/data/000000_FOUNDATION_CANONICAL.md
    - /mnt/data/9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md

  priority_3:
    - /mnt/data/014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md
    - /mnt/data/ERP_DESIGN_BIBLE_FULL.md
    - /mnt/data/ERP_ENTERPRISE_SCOPE_v1.md

  priority_4:
    - dump/reference files only if explicitly needed later

why_this_order:
- portal and CivilizationOS rebuilt give the best discovery return first
- foundation/system-rules should stay terse and therefore come after wording is proven
- ledger/ERP-side reflections are useful but secondary

formal_conclusion:
If broad edits are later executed,
start with the highest-discovery, lowest-semantic-risk files first.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/uploaded-broad-target-map/9000043_PRODUCT_PORTFOLIO_MANAGER_UPLOADED_TARGET_EXECUTION_PRIORITY.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/uploaded-broad-target-map/9000044_PRODUCT_PORTFOLIO_MANAGER_UPLOADED_TARGET_READY_NOTE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER UPLOADED TARGET READY NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Records that uploaded broad canonical targets
have now been mapped and prioritized.

ready_now:
- uploaded target classification matrix
- insertion strategy by uploaded file
- execution priority by uploaded file

not_done_here:
- uploaded broad canonical files themselves have not been edited in this step

formal_conclusion:
ProductPortfolioManager local prep is now aligned
to the actually uploaded broad canonical set.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/uploaded-broad-target-map/9000044_PRODUCT_PORTFOLIO_MANAGER_UPLOADED_TARGET_READY_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/uploaded-target-patch-proposals/9000045_PRODUCT_PORTFOLIO_MANAGER_UPLOADED_TARGET_PATCH_PROPOSALS_OVERVIEW.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER UPLOADED TARGET PATCH PROPOSALS OVERVIEW
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides file-by-file patch proposals
for the uploaded broad canonical files.

scope:
- insertion proposal only
- additive text only
- no direct modification of uploaded broad canonicals in this phase

prepared_targets:
- 003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md
- 900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md
- 000000_FOUNDATION_CANONICAL.md
- 9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md
- 014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md
- ERP_DESIGN_BIBLE_FULL.md
- ERP_ENTERPRISE_SCOPE_v1.md

formal_conclusion:
These are execution-ready patch proposals,
not yet applied edits.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/uploaded-target-patch-proposals/9000045_PRODUCT_PORTFOLIO_MANAGER_UPLOADED_TARGET_PATCH_PROPOSALS_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/uploaded-target-patch-proposals/9000046_PRODUCT_PORTFOLIO_MANAGER_PATCH_PROPOSAL_FOR_003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER PATCH PROPOSAL FOR
# 003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_file:
/mnt/data/003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md

recommended_insert_zone:
- application catalog area if present
- applications landscape appendix if present
- integrated application summary area if present
- restart/navigation summary area if present

recommended_insert_depth:
medium

proposed_insert_text:
  - application_name: ProductPortfolioManager
    application_group: 07.applications
    category: business-judgment-application
    summary:
      Lightweight product strategy judgment application
      for KPI/scoring-based product evaluation,
      strategic classification,
      proposals,
      review sessions,
      approvals,
      alerts,
      and audit/history.
      It sits on top of ERP facts
      and uses forecast as advisory reference.
    canonical_entries:
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md
    current_state:
      - design expanded
      - implementation not started

why_this_depth:
CIVILIZATION OS canonical full rebuilt is broad enough
to hold application-level reflection with short boundary summary,
but should not absorb low-level exact payload or schema detail.

post_insert_check:
- ProductPortfolioManager becomes discoverable from the broad canonical
- no implementation-start implication appears
- ERP and forecast boundaries stay concise and clear

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/uploaded-target-patch-proposals/9000046_PRODUCT_PORTFOLIO_MANAGER_PATCH_PROPOSAL_FOR_003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/uploaded-target-patch-proposals/9000047_PRODUCT_PORTFOLIO_MANAGER_PATCH_PROPOSAL_FOR_900001_PORTAL_REFLECTION_NOTE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER PATCH PROPOSAL FOR
# 900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_file:
/mnt/data/900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md

observed_file_shape:
The uploaded portal reflection note already contains:
- document purpose
- current placement
- reasons for placement
- points to reflect to upper indexes
- short explanation to write in upper indexes
- references
- current state

recommended_insert_zone:
- section equivalent to "上位 index へ反映すべき要点"
- section equivalent to "上位 index に書くべき短縮説明"
- references section if app-level links are listed there

recommended_insert_depth:
medium_to_long

proposed_key_points:
- ProductPortfolioManager is a business-judgment application
- it is not ERP itself
- it consumes ERP facts as reference
- it consumes forecast as advisory reference
- it owns application-side judgment artifacts
- design is expanded, implementation not started

short_insert_text_jp:
商品ポートフォリオ管理アプリ（ProductPortfolioManager）は、
ERPの事実値を参照しつつ、
商品評価、戦略分類、提案、レビュー、承認、監査履歴を扱う
軽量な商品戦略判断アプリである。
Forecast は参考情報として扱い、
ERP truth は保持したまま、
アプリ側で judgment artifact を持つ。

link_block:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
- /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
- /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md

why_this_depth:
Portal reflection is discovery-oriented
and can tolerate a slightly richer summary than ultra-terse canonicals.

post_insert_check:
- the note still reads as a reflection note, not an app spec
- ProductPortfolioManager can be discovered cleanly
- wording stays additive and short

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/uploaded-target-patch-proposals/9000047_PRODUCT_PORTFOLIO_MANAGER_PATCH_PROPOSAL_FOR_900001_PORTAL_REFLECTION_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/uploaded-target-patch-proposals/9000048_PRODUCT_PORTFOLIO_MANAGER_PATCH_PROPOSAL_FOR_000000_FOUNDATION_CANONICAL.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER PATCH PROPOSAL FOR
# 000000_FOUNDATION_CANONICAL.md
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_file:
/mnt/data/000000_FOUNDATION_CANONICAL.md

observed_file_shape:
The uploaded foundation canonical is charter-heavy
and system-principle-heavy.

recommended_insert_zone:
- application examples appendix if present
- foundation consumer examples note if present
- root navigation/reference appendix if present

recommended_insert_depth:
short

proposed_insert_text:
  - application_name: ProductPortfolioManager
    role:
      - product portfolio judgment
      - strategy classification
      - proposal/review/approval governance
    boundaries:
      - ERP facts preserved
      - forecast advisory preserved
    state:
      - design expanded
      - implementation not started
    entry:
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md

why_this_depth:
Foundation canonical should remain charter-first.
ProductPortfolioManager should appear only as a succinct example of a governed application.

post_insert_check:
- foundation-level meaning remains primary
- ProductPortfolioManager is mentioned but does not overwhelm the file

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/uploaded-target-patch-proposals/9000048_PRODUCT_PORTFOLIO_MANAGER_PATCH_PROPOSAL_FOR_000000_FOUNDATION_CANONICAL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/uploaded-target-patch-proposals/9000049_PRODUCT_PORTFOLIO_MANAGER_PATCH_PROPOSAL_FOR_9000_SYSTEM_RULES_INTEGRATED.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER PATCH PROPOSAL FOR
# 9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_file:
/mnt/data/9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md

observed_file_shape:
The uploaded system-rules integrated file is standards/rules-first.

recommended_insert_zone:
- application example appendix if present
- design-document application examples if present
- integrated restart/reference appendix if present

recommended_insert_depth:
short

proposed_insert_text:
  - application_name: ProductPortfolioManager
    application_kind: governed business-judgment application
    notable_rules_alignment:
      - explicit source-of-truth boundary
      - review / approval separation
      - additive documentation structure
      - multilingual / multi-currency / cross-device requirements
    canonical_entry:
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md
    state:
      - design expanded
      - implementation not started

why_this_depth:
System rules integrated should remain rules-first,
so the app appears best as a concise aligned-example note.

post_insert_check:
- rules stay primary
- ProductPortfolioManager is reflected as a compliant example, not a digression

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/uploaded-target-patch-proposals/9000049_PRODUCT_PORTFOLIO_MANAGER_PATCH_PROPOSAL_FOR_9000_SYSTEM_RULES_INTEGRATED.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/uploaded-target-patch-proposals/9000050_PRODUCT_PORTFOLIO_MANAGER_PATCH_PROPOSAL_FOR_COMMON_COMPONENT_LEDGER.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER PATCH PROPOSAL FOR
# 014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_file:
/mnt/data/014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md

recommended_insert_zone:
- consuming applications section
- reuse candidates section
- downstream application examples section

recommended_insert_depth:
short_to_medium

proposed_insert_text:
  - consumer_application: ProductPortfolioManager
    consumer_role:
      lightweight product strategy judgment application
    expected_common_dependencies:
      - localization resource layer
      - currency display context
      - score/status display surfaces
      - alert and approval surfaces
      - history/audit visibility surfaces
      - responsive cross-device shell
    note:
      ProductPortfolioManager is not itself a common component.
      It is an application that consumes common capabilities.
    state:
      - app-specific design expanded
      - implementation not started

post_insert_check:
- the ledger still reads as common-component-centric
- ProductPortfolioManager appears as a consumer, not a common-core owner

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/uploaded-target-patch-proposals/9000050_PRODUCT_PORTFOLIO_MANAGER_PATCH_PROPOSAL_FOR_COMMON_COMPONENT_LEDGER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/uploaded-target-patch-proposals/9000051_PRODUCT_PORTFOLIO_MANAGER_PATCH_PROPOSAL_FOR_ERP_DESIGN_BIBLE_AND_SCOPE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER PATCH PROPOSAL FOR
# ERP_DESIGN_BIBLE_FULL.md / ERP_ENTERPRISE_SCOPE_v1.md
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_files:
- /mnt/data/ERP_DESIGN_BIBLE_FULL.md
- /mnt/data/ERP_ENTERPRISE_SCOPE_v1.md

recommended_insert_zone:
- downstream consumer applications appendix
- external consuming application note
- ERP truth boundary examples appendix

recommended_insert_depth:
short

proposed_insert_text:
  - downstream_application: ProductPortfolioManager
    relationship_to_erp:
      Consumes ERP product and operational facts as reference.
      Does not replace ERP truth.
      Owns only application-side portfolio judgment artifacts
      such as score, classification, proposal, review, approval,
      alert, share scope, and audit/history.
    entry:
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/060.integration/0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
    state:
      - design expanded
      - implementation not started

why_this_depth:
ERP-side canonicals should only receive a narrow consumer-boundary note,
not a full app summary.

post_insert_check:
- ERP remains clearly primary
- ProductPortfolioManager remains clearly downstream
- no ERP/application ownership confusion appears

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/uploaded-target-patch-proposals/9000051_PRODUCT_PORTFOLIO_MANAGER_PATCH_PROPOSAL_FOR_ERP_DESIGN_BIBLE_AND_SCOPE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/uploaded-target-patch-proposals/9000052_PRODUCT_PORTFOLIO_MANAGER_UPLOADED_TARGET_PATCH_SEQUENCE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER UPLOADED TARGET PATCH SEQUENCE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the preferred order
for a future patch-application phase against uploaded broad canonicals.

preferred_sequence:
1. /mnt/data/900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md
2. /mnt/data/003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md
3. /mnt/data/000000_FOUNDATION_CANONICAL.md
4. /mnt/data/9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md
5. /mnt/data/014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md
6. /mnt/data/ERP_DESIGN_BIBLE_FULL.md
7. /mnt/data/ERP_ENTERPRISE_SCOPE_v1.md

sequence_reasoning:
- begin with the highest discovery value
- then patch the broadest system-level canonical
- then patch terse foundation/rules files
- then patch consumer-ledger / ERP-side notes

formal_conclusion:
This sequence reduces semantic risk
while maximizing navigation value early.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/uploaded-target-patch-proposals/9000052_PRODUCT_PORTFOLIO_MANAGER_UPLOADED_TARGET_PATCH_SEQUENCE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/wide-insert-pack/9000028_PRODUCT_PORTFOLIO_MANAGER_WIDE_INSERT_PACK_OVERVIEW.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER WIDE INSERT PACK OVERVIEW
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides a target-by-target insert pack
for reflecting ProductPortfolioManager into broader canonical documents.

principles:
- additive only
- reflection only
- no implementation opening
- no boundary weakening
- use short/medium/long insert depth depending on target document role

target_families:
- CivilizationOS canonical full rebuilt
- foundation / system rules canonicals
- portal-side index reflection notes
- application/common ledgers or reflection notes
- ERP-side reflection notes only where ERP boundary explanation is useful

formal_conclusion:
This pack is for controlled broad navigation reflection,
not for changing ProductPortfolioManager meaning.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/wide-insert-pack/9000028_PRODUCT_PORTFOLIO_MANAGER_WIDE_INSERT_PACK_OVERVIEW.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/wide-insert-pack/9000029_PRODUCT_PORTFOLIO_MANAGER_INSERT_BLOCK_FOR_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER INSERT BLOCK FOR CIVILIZATION OS CANONICAL FULL REBUILT
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_file_hint:
/mnt/data/003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md

recommended_insert_depth:
medium

recommended_insert_location:
- application catalog area
- applications landscape area
- business-side application summary area
- restart/navigation appendix area

copy_block:
  - application_name: ProductPortfolioManager
    system_group: 07.applications
    category: business-judgment-application
    summary:
      Lightweight product strategy judgment application
      for KPI/scoring-based product evaluation,
      strategic classification,
      proposals,
      review sessions,
      approvals,
      alerts,
      and audit/history.
      It sits on top of ERP facts
      and uses forecast as advisory reference.
    canonical_entries:
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md
    current_state:
      - design expanded
      - implementation not started

note:
Use medium depth here because Civilization OS canonical rebuilt
is broad enough to benefit from identity + boundary summary,
but does not need low-level payload/schema detail.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/wide-insert-pack/9000029_PRODUCT_PORTFOLIO_MANAGER_INSERT_BLOCK_FOR_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/wide-insert-pack/9000030_PRODUCT_PORTFOLIO_MANAGER_INSERT_BLOCK_FOR_FOUNDATION_AND_SYSTEM_RULES.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER INSERT BLOCK FOR FOUNDATION AND SYSTEM RULES
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_file_hints:
- /mnt/data/000000_FOUNDATION_CANONICAL.md
- /mnt/data/9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md

recommended_insert_depth:
short

recommended_insert_location:
- applications overview appendix
- example application mapping
- system navigation reflection note section

copy_block:
  - application_name: ProductPortfolioManager
    role:
      - product portfolio judgment
      - product strategy classification
      - proposal/review/approval governance
    boundaries:
      - ERP facts preserved
      - forecast advisory preserved
    state:
      - design expanded
      - implementation not started
    entry:
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md

note:
Use short depth here because these files are likely system-level canonicals,
not app-specific drill-down catalogs.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/wide-insert-pack/9000030_PRODUCT_PORTFOLIO_MANAGER_INSERT_BLOCK_FOR_FOUNDATION_AND_SYSTEM_RULES.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/wide-insert-pack/9000031_PRODUCT_PORTFOLIO_MANAGER_INSERT_BLOCK_FOR_PORTAL_REFLECTION.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER INSERT BLOCK FOR PORTAL REFLECTION
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_file_hint:
/mnt/data/900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md

recommended_insert_depth:
medium_to_long

recommended_insert_location:
- app discovery area
- navigation tiles summary area
- system-index reflection entry area

copy_block:
  - application_name: ProductPortfolioManager
    display_label: Product Portfolio Manager / Product Strategy Judgment
    category: business-judgment-application
    summary:
      Lightweight product strategy judgment application
      that helps evaluate products,
      rank and classify them strategically,
      manage proposals,
      run review sessions,
      handle approvals,
      surface alerts,
      and preserve audit/history.
    distinguishing_points:
      - ERP truth boundary preserved
      - forecast treated as advisory reference
      - multilingual / multi-currency / cross-device design fixed
    primary_entries:
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md

note:
Portal/index reflection can tolerate slightly richer wording
because it is discovery-oriented.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/wide-insert-pack/9000031_PRODUCT_PORTFOLIO_MANAGER_INSERT_BLOCK_FOR_PORTAL_REFLECTION.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/wide-insert-pack/9000032_PRODUCT_PORTFOLIO_MANAGER_INSERT_BLOCK_FOR_COMMON_LEDGER_OR_APP_LEDGER.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER INSERT BLOCK FOR COMMON LEDGER OR APP LEDGER
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_file_hint:
/mnt/data/014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md

recommended_insert_depth:
short_to_medium

recommended_insert_location:
- application consumers section
- application references section
- future reuse/reference appendix

copy_block:
  - consumer_application: ProductPortfolioManager
    consumer_role:
      product strategy judgment application
    common-needing-areas:
      - localization
      - currency context display
      - score/status display surfaces
      - alert and approval surfaces
      - history/audit visibility surfaces
      - responsive cross-device shell
    current_state:
      - common-component candidates already separated out
      - app-specific design expanded
      - implementation not started

note:
This is not for moving ProductPortfolioManager into common components.
It is only for showing that the app consumes common capabilities.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/wide-insert-pack/9000032_PRODUCT_PORTFOLIO_MANAGER_INSERT_BLOCK_FOR_COMMON_LEDGER_OR_APP_LEDGER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/wide-insert-pack/9000033_PRODUCT_PORTFOLIO_MANAGER_INSERT_BLOCK_FOR_ERP_SIDE_REFERENCE_NOTE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER INSERT BLOCK FOR ERP SIDE REFERENCE NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_file_hints:
- /mnt/data/ERP_DESIGN_BIBLE_FULL.md
- /mnt/data/ERP_ENTERPRISE_SCOPE_v1.md
- /mnt/data/ERP_SYSTEM_FULL_DUMP.txt

recommended_insert_depth:
short

recommended_insert_location:
- consuming applications appendix
- downstream application references
- business-side judgment consumer note

copy_block:
  - downstream_application: ProductPortfolioManager
    relationship_to_erp:
      Consumes ERP product and operational facts as reference.
      Does not replace ERP truth.
      Owns application-side portfolio judgment artifacts only.
    owned_by_application:
      - score
      - classification
      - proposal
      - review
      - approval
      - alert
      - audit/history
    entry:
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/060.integration/0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md

note:
ERP-side documents should receive only a narrow consumer-boundary note,
not a full application summary.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/wide-insert-pack/9000033_PRODUCT_PORTFOLIO_MANAGER_INSERT_BLOCK_FOR_ERP_SIDE_REFERENCE_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/wide-insert-pack/9000034_PRODUCT_PORTFOLIO_MANAGER_WIDE_INSERT_EXECUTION_ORDER.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER WIDE INSERT EXECUTION ORDER
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the safest order for later wide insert execution.

execution_order:
1. portal/index reflection note
2. Civilization OS canonical full rebuilt
3. foundation/system-rules summary docs
4. common/app ledger note
5. ERP-side consumer-boundary note only if needed

reasoning:
- portal/index reflection is lowest risk and highest discovery value
- Civilization OS canonical full rebuilt is broad and suitable for application reflection
- system/foundation docs should remain terse
- ERP-side docs should receive only minimal consumer-boundary reflection

formal_conclusion:
If broad insertion is executed later,
this order minimizes semantic disruption.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/wide-insert-pack/9000034_PRODUCT_PORTFOLIO_MANAGER_WIDE_INSERT_EXECUTION_ORDER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/wide-reflection-execution/9000036_PRODUCT_PORTFOLIO_MANAGER_WIDE_REFLECTION_EXECUTION_CHECKLIST.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER WIDE REFLECTION EXECUTION CHECKLIST
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the execution checklist
for a future broad-navigation-reflection pass
that actually edits wider canonical files.

execution_principles:
- additive only
- navigation reflection only
- no implementation opening
- no boundary weakening
- no low-level schema/payload dump into broad canonicals

# ============================================================
# 1. PRE-EXECUTION CHECKLIST
# ============================================================

pre_execution_checklist:
- confirm ProductPortfolioManager local OVERVIEW is current
- confirm ProductPortfolioManager local INDEX is current
- confirm ProductPortfolioManager local INTEGRATED is current
- confirm final handoff bundle exists
- confirm copy blocks exist
- confirm broad reflection execution plan exists
- confirm target-specific insert pack exists
- confirm implementation is still intentionally unopened

# ============================================================
# 2. TARGET SELECTION CHECKLIST
# ============================================================

target_selection_checklist:
- identify target file class:
  - master index
  - integrated canonical
  - restart/handoff
  - portal/reflection note
  - ERP-side consumer note
- choose insertion depth:
  - short
  - medium
  - long
- confirm insertion is navigation-appropriate for that target
- avoid inserting deeper detail than the target document can naturally hold

# ============================================================
# 3. CONTENT SAFETY CHECKLIST
# ============================================================

content_safety_checklist:
- application summary remains short enough for broad navigation
- ERP truth boundary remains clear
- forecast advisory boundary remains clear
- implementation not started remains clear
- no accidental claim of production readiness
- no accidental collapse of review and approval meaning
- no accidental collapse of classification and lifecycle meaning

# ============================================================
# 4. AFTER-INSERT CHECKLIST
# ============================================================

after_insert_checklist:
- ProductPortfolioManager can be found from the target document
- canonical entry docs are named correctly
- wording remains additive
- existing target document meaning still reads naturally
- no duplicate contradictory summary was introduced
- restartability improved rather than worsened

# ============================================================
# 5. STOP CONDITIONS
# ============================================================

stop_conditions:
- target file requires heavy restructuring to insert cleanly
- insertion would force low-level implementation detail into high-level canonical
- insertion would imply implementation has started
- insertion would weaken ERP / forecast / judgment boundary wording
- insertion would create confusion about source-of-truth ownership

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Broad reflection execution should proceed only
when the insertion improves navigation without degrading meaning clarity.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/wide-reflection-execution/9000036_PRODUCT_PORTFOLIO_MANAGER_WIDE_REFLECTION_EXECUTION_CHECKLIST.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/wide-reflection-execution/9000037_PRODUCT_PORTFOLIO_MANAGER_POST_INSERT_VERIFICATION_NOTE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER POST INSERT VERIFICATION NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines what to verify
after ProductPortfolioManager is inserted into a broader canonical file.

verification_points:
- application name is spelled consistently
- application path is correct
- category remains business-judgment-application or equivalent
- canonical entries point to local ProductPortfolioManager root docs
- implementation state still reads as not started
- broad document did not accidentally inherit low-level ProductPortfolioManager detail
- boundaries still read correctly:
  - ERP truth preserved
  - forecast advisory preserved
  - application judgment owned locally

restart_verification:
- a reader of the broader file can now discover ProductPortfolioManager
- a reader can jump to OVERVIEW / INDEX / INTEGRATED
- a restart path is clearer than before insertion

formal_conclusion:
A successful insertion is one that improves discovery and restartability
without distorting the wider file.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/wide-reflection-execution/9000037_PRODUCT_PORTFOLIO_MANAGER_POST_INSERT_VERIFICATION_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/wide-reflection-execution/9000038_PRODUCT_PORTFOLIO_MANAGER_MINIMAL_ROLLBACK_NOTE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER MINIMAL ROLLBACK NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines a minimal rollback philosophy
for a future broad reflection insertion pass.

rollback_principles:
- rollback only if insertion degraded clarity
- rollback should be local to the broad target file
- local ProductPortfolioManager design set should remain untouched
- prefer reverting the inserted navigation block only,
  not broad rewriting of unrelated target sections

rollback_triggers:
- inserted block duplicates an existing app entry in a conflicting way
- inserted block makes the broad file harder to read
- inserted block accidentally implies implementation work started
- inserted block weakens source-of-truth boundaries
- inserted block uses the wrong insertion depth for the target

formal_conclusion:
Rollback in a broad reflection pass should be small,
targeted,
and meaning-preserving.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/wide-reflection-execution/9000038_PRODUCT_PORTFOLIO_MANAGER_MINIMAL_ROLLBACK_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/wide-reflection-execution/9000039_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_READY_FOR_EXECUTION_NOTE.md -->
# ============================================================
# PRODUCT PORTFOLIO MANAGER BROAD REFLECTION READY FOR EXECUTION NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Records that the local preparation
for broad canonical insertion is now complete enough
to execute in a separate phase later.

ready_assets:
- root docs refreshed
- handoff bundle prepared
- copy blocks prepared
- reflection plan prepared
- target matrix prepared
- target-specific insert packs prepared
- execution checklist prepared
- post-insert verification note prepared
- minimal rollback philosophy prepared

not_done_here:
- no external canonical file has been modified in this local step

formal_conclusion:
Local readiness for broad reflection execution is now complete.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/ProductPortfolioManager/900.meta/wide-reflection-execution/9000039_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_READY_FOR_EXECUTION_NOTE.md -->
