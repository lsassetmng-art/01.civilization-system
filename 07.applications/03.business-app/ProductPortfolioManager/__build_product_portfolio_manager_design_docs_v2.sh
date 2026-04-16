#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p \
  "$BASE/010.constitution" \
  "$BASE/020.architecture" \
  "$BASE/030.model" \
  "$BASE/040.runtime" \
  "$BASE/050.flow" \
  "$BASE/060.integration" \
  "$BASE/070.operations" \
  "$BASE/080.policy" \
  "$BASE/100.security" \
  "$BASE/110.infrastructure" \
  "$BASE/120.implementation" \
  "$BASE/130.development" \
  "$BASE/900.meta"

cat <<'EOF' > "$BASE/000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER INDEX
# ============================================================

status: canonical
system: applications
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

global_requirements:
- multilingual support is mandatory
- multi-currency support is mandatory
- iphone support is mandatory
- android support is mandatory
- pc support is mandatory
- tablet support is mandatory

root_documents:
- 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
- 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
- 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md

layer_indexes:
- 010.constitution/0100000_PRODUCT_PORTFOLIO_MANAGER_CONSTITUTION_OVERVIEW.md
- 020.architecture/0200000_PRODUCT_PORTFOLIO_MANAGER_ARCHITECTURE_OVERVIEW.md
- 030.model/0300000_PRODUCT_PORTFOLIO_MANAGER_MODEL_OVERVIEW.md
- 040.runtime/0400000_PRODUCT_PORTFOLIO_MANAGER_RUNTIME_OVERVIEW.md
- 050.flow/0500000_PRODUCT_PORTFOLIO_MANAGER_FLOW_OVERVIEW.md
- 060.integration/0600000_PRODUCT_PORTFOLIO_MANAGER_INTEGRATION_OVERVIEW.md
- 070.operations/0700000_PRODUCT_PORTFOLIO_MANAGER_OPERATIONS_OVERVIEW.md
- 080.policy/0800000_PRODUCT_PORTFOLIO_MANAGER_POLICY_OVERVIEW.md
- 100.security/1000000_PRODUCT_PORTFOLIO_MANAGER_SECURITY_OVERVIEW.md
- 110.infrastructure/1100000_PRODUCT_PORTFOLIO_MANAGER_INFRASTRUCTURE_OVERVIEW.md
- 120.implementation/1200000_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_OVERVIEW.md
- 130.development/1300000_PRODUCT_PORTFOLIO_MANAGER_DEVELOPMENT_OVERVIEW.md
- 900.meta/9000000_PRODUCT_PORTFOLIO_MANAGER_META_OVERVIEW.md

design_position:
ProductPortfolioManager is a BusinessOS-side application
for product strategy judgment, portfolio review,
proposal management, and approval-oriented decision tracking.
EOF

cat <<'EOF' > "$BASE/000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md"
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
It exists to help organizations evaluate products,
classify strategic importance,
prepare actions,
conduct reviews,
and preserve decision history.

core_definition:
This application is not a mere product master UI.
This application is not ERP itself.
This application is not a heavy merchandise planning platform.
This application is a product portfolio decision front.

positioning_against_market:
- lighter than heavy merchandise planning platforms
- deeper in strategy judgment than PIM/PXM-centric tools
- review- and approval-friendly for practical business use
- suited for subscription-style application delivery

core_capabilities:
- product portfolio visibility
- score-based evaluation
- strategic classification
- product action proposal
- review meeting support
- approval support
- alert visibility
- ERP reference usage
- forecast reference usage

cross_cutting_requirements:
- multilingual ready
- multi-currency ready
- iphone / android / pc / tablet support
- auditability
- explicit source-of-truth boundary
EOF

cat <<'EOF' > "$BASE/00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER INTEGRATED
# ============================================================

status: canonical
system: applications
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

integrated_entry_point_purpose:
This file is the canonical entry point for the design set.
Detailed documents are separated by layer and topic.

included_roots:
- 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
- 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md

included_layers:
- 010.constitution/*
- 020.architecture/*
- 030.model/*
- 040.runtime/*
- 050.flow/*
- 060.integration/*
- 070.operations/*
- 080.policy/*
- 100.security/*
- 110.infrastructure/*
- 120.implementation/*
- 130.development/*
- 900.meta/*
EOF

cat <<'EOF' > "$BASE/010.constitution/0100000_PRODUCT_PORTFOLIO_MANAGER_CONSTITUTION_OVERVIEW.md"
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
EOF

cat <<'EOF' > "$BASE/010.constitution/0100001_PRODUCT_PORTFOLIO_MANAGER_CONSTITUTION.md"
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
EOF

cat <<'EOF' > "$BASE/010.constitution/0100002_PRODUCT_PORTFOLIO_MANAGER_BOUNDARY_CONSTITUTION.md"
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
EOF

cat <<'EOF' > "$BASE/020.architecture/0200000_PRODUCT_PORTFOLIO_MANAGER_ARCHITECTURE_OVERVIEW.md"
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
EOF

cat <<'EOF' > "$BASE/020.architecture/0200001_PRODUCT_PORTFOLIO_MANAGER_ARCHITECTURE.md"
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
EOF

cat <<'EOF' > "$BASE/020.architecture/0200002_PRODUCT_PORTFOLIO_MANAGER_COMPETITIVE_POSITION_ARCHITECTURE.md"
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
EOF

cat <<'EOF' > "$BASE/020.architecture/0200003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_ARCHITECTURE.md"
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
EOF

cat <<'EOF' > "$BASE/020.architecture/0200004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_ARCHITECTURE.md"
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
EOF

cat <<'EOF' > "$BASE/020.architecture/0200005_PRODUCT_PORTFOLIO_MANAGER_SCREEN_ARCHITECTURE.md"
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
EOF

cat <<'EOF' > "$BASE/030.model/0300000_PRODUCT_PORTFOLIO_MANAGER_MODEL_OVERVIEW.md"
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
EOF

cat <<'EOF' > "$BASE/030.model/0300001_PRODUCT_PORTFOLIO_ITEM_MODEL.md"
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
EOF

cat <<'EOF' > "$BASE/030.model/0300002_PRODUCT_METRIC_SNAPSHOT_MODEL.md"
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
EOF

cat <<'EOF' > "$BASE/030.model/0300003_PRODUCT_SCORE_MODEL.md"
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
EOF

cat <<'EOF' > "$BASE/030.model/0300004_PRODUCT_CLASSIFICATION_MODELS.md"
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
EOF

cat <<'EOF' > "$BASE/030.model/0300005_PRODUCT_PROPOSAL_MODELS.md"
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
EOF

cat <<'EOF' > "$BASE/030.model/0300006_PRODUCT_REVIEW_APPROVAL_AUDIT_MODELS.md"
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
EOF

cat <<'EOF' > "$BASE/040.runtime/0400000_PRODUCT_PORTFOLIO_MANAGER_RUNTIME_OVERVIEW.md"
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
EOF

cat <<'EOF' > "$BASE/040.runtime/0400001_SCORE_RUNTIME.md"
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
EOF

cat <<'EOF' > "$BASE/040.runtime/0400002_CLASSIFICATION_RUNTIME.md"
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
EOF

cat <<'EOF' > "$BASE/040.runtime/0400003_REVIEW_AND_APPROVAL_RUNTIME.md"
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
EOF

cat <<'EOF' > "$BASE/050.flow/0500000_PRODUCT_PORTFOLIO_MANAGER_FLOW_OVERVIEW.md"
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
EOF

cat <<'EOF' > "$BASE/050.flow/0500001_PORTFOLIO_LIST_AND_DETAIL_FLOW.md"
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
EOF

cat <<'EOF' > "$BASE/050.flow/0500002_SCORE_AND_CLASSIFICATION_FLOW.md"
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
EOF

cat <<'EOF' > "$BASE/050.flow/0500003_PROPOSAL_FLOW.md"
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
EOF

cat <<'EOF' > "$BASE/050.flow/0500004_REVIEW_SESSION_FLOW.md"
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
EOF

cat <<'EOF' > "$BASE/050.flow/0500005_APPROVAL_FLOW.md"
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
EOF

cat <<'EOF' > "$BASE/060.integration/0600000_PRODUCT_PORTFOLIO_MANAGER_INTEGRATION_OVERVIEW.md"
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
EOF

cat <<'EOF' > "$BASE/060.integration/0600001_ERP_REFERENCE_INTEGRATION.md"
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
EOF

cat <<'EOF' > "$BASE/060.integration/0600002_FORECAST_REFERENCE_INTEGRATION.md"
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
EOF

cat <<'EOF' > "$BASE/070.operations/0700000_PRODUCT_PORTFOLIO_MANAGER_OPERATIONS_OVERVIEW.md"
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
EOF

cat <<'EOF' > "$BASE/070.operations/0700001_REVIEW_AND_REFRESH_OPERATIONS.md"
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
EOF

cat <<'EOF' > "$BASE/080.policy/0800000_PRODUCT_PORTFOLIO_MANAGER_POLICY_OVERVIEW.md"
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
EOF

cat <<'EOF' > "$BASE/080.policy/0800001_CLASSIFICATION_AND_APPROVAL_POLICY.md"
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
EOF

cat <<'EOF' > "$BASE/080.policy/0800002_LOCALIZATION_CURRENCY_AND_SOURCE_POLICY.md"
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
EOF

cat <<'EOF' > "$BASE/100.security/1000000_PRODUCT_PORTFOLIO_MANAGER_SECURITY_OVERVIEW.md"
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
EOF

cat <<'EOF' > "$BASE/100.security/1000001_ACCESS_AND_AUDIT_SECURITY.md"
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
EOF

cat <<'EOF' > "$BASE/110.infrastructure/1100000_PRODUCT_PORTFOLIO_MANAGER_INFRASTRUCTURE_OVERVIEW.md"
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
EOF

cat <<'EOF' > "$BASE/120.implementation/1200000_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_OVERVIEW.md"
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
EOF

cat <<'EOF' > "$BASE/120.implementation/1200001_FUNCTIONAL_REQUIREMENTS.md"
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
EOF

cat <<'EOF' > "$BASE/120.implementation/1200002_SCREEN_REQUIREMENTS.md"
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
EOF

cat <<'EOF' > "$BASE/120.implementation/1200003_DATA_MODEL_REQUIREMENTS.md"
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
EOF

cat <<'EOF' > "$BASE/130.development/1300000_PRODUCT_PORTFOLIO_MANAGER_DEVELOPMENT_OVERVIEW.md"
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
EOF

cat <<'EOF' > "$BASE/130.development/1300001_PHASE_PLAN.md"
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
EOF

cat <<'EOF' > "$BASE/130.development/1300002_DEVELOPMENT_GUARDRAILS.md"
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
EOF

cat <<'EOF' > "$BASE/900.meta/9000000_PRODUCT_PORTFOLIO_MANAGER_META_OVERVIEW.md"
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
EOF

cat <<'EOF' > "$BASE/900.meta/9000001_PRODUCT_PORTFOLIO_MANAGER_DESIGN_PROGRESS_NOTE.md"
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
EOF

echo "DONE: ProductPortfolioManager design docs created"
echo "BASE=$BASE"
echo
find "$BASE" -maxdepth 2 -type f | sort
