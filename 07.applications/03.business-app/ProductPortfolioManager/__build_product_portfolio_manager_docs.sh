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

root_documents:
- 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
- 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
- 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md

layers:
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

purpose:
Defines the document index for ProductPortfolioManager,
a BusinessOS application for product portfolio evaluation,
classification, action planning, and review governance.
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
ProductPortfolioManager is a BusinessOS application
for evaluating product groups and supporting decisions on
focus, maintain, improve, scale down, or retire.

core_definition:
This application is not a mere product master UI.
This application is not ERP itself.
This application is a decision-support and portfolio-governance application.

main_functions:
- product portfolio visibility
- score calculation support
- strategic classification
- issue note management
- action proposal management
- demand forecast reference
- review meeting support
- approval-oriented decision traceability

system_position:
- independent application under 07.applications
- BusinessOS-side decision support
- ERP-referenced for authoritative transactional values
- forecast-capable through reference integration
- audit-oriented for management review

authority_boundary:
ERP owns:
- product master authority
- formal sales figures
- formal inventory figures
- formal cost and accounting figures

ProductPortfolioManager owns:
- strategic classification
- portfolio scoring views
- action proposals
- review comments
- prioritization
- decision history
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

included_documents:
- 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
- 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
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

note:
This integrated file is the canonical entry point.
Detailed layer documents are maintained separately.
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
ProductPortfolioManager exists to support strategic control
of product groups through explainable, reviewable,
and traceable portfolio decisions.

constitutional_principles:
- portfolio decisions must be explainable
- ERP authority must not be overridden locally
- strategic classification must be reviewable
- proposals and decisions must remain separable
- forecast values are advisory, not absolute truth
- management actions must remain auditable
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
Provide an application layer for product portfolio governance,
supporting business users in prioritizing products
based on profitability, growth, risk, and strategic value.

scope:
- portfolio visibility
- classification support
- proposal support
- review support
- management traceability

out_of_scope:
- replacing ERP product master
- replacing ERP accounting logic
- replacing ERP inventory control
- uncontrolled direct override of ERP truth

constitutional_rules:
1. ERP remains source of truth for formal operational values.
2. Portfolio classifications are business strategy labels.
3. Product proposals must not be auto-applied without approval.
4. Every meaningful decision must be attributable.
5. Local draft work is allowed but finalization is server-governed.
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

boundary_definition:
ProductPortfolioManager operates as a BusinessOS application
that consumes authoritative product-related data from ERP
and produces strategic portfolio judgments inside BusinessOS.

businessos_side_authority:
- scoring views
- strategic grouping
- review comments
- proposal preparation
- prioritization
- meeting outcomes

erp_side_authority:
- master product identity
- posted sales
- posted cost
- posted stock
- posted accounting

integration_rule:
No application-side logic may silently mutate ERP truth.
All ERP-affecting actions must traverse an explicit integration route.
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
ProductPortfolioManager is structured around portfolio items,
scores, classifications, proposals, review sessions,
and integration references.

major_components:
- portfolio dashboard
- item registry view
- score engine facade
- classification module
- proposal module
- review module
- share and approval module
- ERP reference gateway
- forecast reference gateway
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

core_modules:
1. portfolio catalog
2. portfolio scoring
3. strategic classification
4. product issue tracking
5. action proposal management
6. review meeting support
7. sharing and approval control
8. integration reference services

module_contracts:
portfolio_catalog:
- lists portfolio items
- exposes product-centered navigation
- links ERP identity to local portfolio views

portfolio_scoring:
- computes or stores strategic scoring views
- preserves score versioning
- references calculation sources

strategic_classification:
- holds product strategy states
- preserves history
- differentiates suggested and approved states

proposal_management:
- stores action ideas
- links proposals to review and approval states
- supports explainable decision making
EOF

cat <<'EOF' > "$BASE/020.architecture/0200002_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_ARCHITECTURE.md"
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
EOF

cat <<'EOF' > "$BASE/020.architecture/0200003_PRODUCT_PORTFOLIO_MANAGER_FORECAST_ARCHITECTURE.md"
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

model_summary:
The application models products as portfolio items
with associated scores, classifications, proposals,
notes, review decisions, and integration references.
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

fields:
- portfolio_item_id
- workspace_id
- company_id
- product_id
- product_code
- product_name
- category_code
- brand_code
- lifecycle_stage
- current_classification
- current_priority_rank
- owner_user_id
- status
- created_at
- updated_at

meaning:
Represents one managed product unit in the portfolio layer.
EOF

cat <<'EOF' > "$BASE/030.model/0300002_PRODUCT_SCORE_MODEL.md"
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
EOF

cat <<'EOF' > "$BASE/030.model/0300003_PRODUCT_CLASSIFICATION_MODEL.md"
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
EOF

cat <<'EOF' > "$BASE/030.model/0300004_PRODUCT_ACTION_PROPOSAL_MODEL.md"
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
EOF

cat <<'EOF' > "$BASE/030.model/0300005_PRODUCT_REVIEW_MODEL.md"
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
Runtime behavior centers on loading authoritative references,
materializing portfolio views, preserving local drafts,
and finalizing approved decisions with traceability.
EOF

cat <<'EOF' > "$BASE/040.runtime/0400001_PORTFOLIO_SCORE_RUNTIME.md"
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
- draft-suggestion
- review-pending
- approved
- rejected
- superseded

rules:
- suggested classification is not final classification
- approved change must create history
- classification history must remain append-oriented
EOF

cat <<'EOF' > "$BASE/040.runtime/0400003_REVIEW_RUNTIME.md"
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
- scoring refresh flow
- classification review flow
- action proposal flow
- management review flow
- approval and integration request flow
EOF

cat <<'EOF' > "$BASE/050.flow/0500001_PORTFOLIO_REVIEW_FLOW.md"
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
EOF

cat <<'EOF' > "$BASE/050.flow/0500002_PROPOSAL_FLOW.md"
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

integrations:
- ERP product and business indicators
- forecast service
- BusinessOS identity and access
- optional reporting/export endpoints
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
Read product-related operational truth from ERP
without transferring strategic authority away from BusinessOS.

reference_objects:
- product identity
- sales aggregates
- margin aggregates
- inventory indicators
- lifecycle indicators where available
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
Consume forecast outputs as contextual decision support.

required_metadata:
- forecast source
- forecast period
- generation timestamp
- confidence indicator
- product or category scope
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
- approval discipline
- exception handling
- audit readiness
EOF

cat <<'EOF' > "$BASE/070.operations/0700001_PORTFOLIO_REVIEW_OPERATIONS.md"
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
EOF

cat <<'EOF' > "$BASE/070.operations/0700002_SCORE_REFRESH_OPERATIONS.md"
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
- forecast usage policy
- retention policy
EOF

cat <<'EOF' > "$BASE/080.policy/0800001_CLASSIFICATION_POLICY.md"
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
EOF

cat <<'EOF' > "$BASE/080.policy/0800002_SHARING_POLICY.md"
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
- draft protection
- approval integrity
- integration authentication
- audit preservation
EOF

cat <<'EOF' > "$BASE/100.security/1000001_ACCESS_CONTROL_SECURITY.md"
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
EOF

cat <<'EOF' > "$BASE/100.security/1000002_AUDIT_AND_APPROVAL_SECURITY.md"
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
- persistence layer for portfolio data
- integration layer for ERP and forecast references
- optional local cache / offline workspace
EOF

cat <<'EOF' > "$BASE/110.infrastructure/1100001_PERSISTENCE_INFRASTRUCTURE.md"
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
Keep ERP integration read-oriented first.
Introduce proposal and approval later.
EOF

cat <<'EOF' > "$BASE/120.implementation/1200001_UI_IMPLEMENTATION.md"
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
EOF

cat <<'EOF' > "$BASE/120.implementation/1200002_DATA_AND_API_IMPLEMENTATION.md"
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
Use architecture-first development.
No implementation may contradict constitutional boundary.
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
- score view
- note support

phase_2:
- classification workflow
- proposal workflow
- review session support

phase_3:
- approval workflow
- ERP reference hardening
- forecast reference support

phase_4:
- advanced scoring
- automation assist
- export and reporting
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
- additive changes only
- preserve auditability
- keep ERP boundary explicit
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
Holds meta-level review and maintenance notes
for the ProductPortfolioManager design set.
EOF

echo "DONE: ProductPortfolioManager documents created under:"
echo "$BASE"
echo
find "$BASE" -maxdepth 2 -type f | sort
