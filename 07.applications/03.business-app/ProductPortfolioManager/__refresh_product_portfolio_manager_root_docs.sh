#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p "$BASE"

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
EOF

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
      Defines the meaning boundaries of the application,
      including classification, lifecycle, proposal, ERP boundary, and forecast boundary.

  020.architecture:
    role:
      Defines how major surfaces and domains are structured,
      including dashboard, list, comparison, detail, review session,
      proposal handling, KPI/scoring, and source boundaries.

  030.model:
    role:
      Defines product portfolio entities,
      exact tables and enums,
      relation matrix,
      API mapping,
      and settings/preset semantics.

  040.runtime:
    role:
      Defines runtime behavior for score refresh,
      classification state handling,
      and review/approval progression.

  050.flow:
    role:
      Defines business flow,
      exact payload flow,
      review/proposal/detail/list/comparison flow,
      and approval/alert/audit operational flow.

  060.integration:
    role:
      Defines ERP and forecast reference integration boundaries
      and explicit source-attributed data handling.

  070.operations:
    role:
      Defines refresh cadence,
      alert/notification handling,
      audit/history operations,
      and review-session operations.

  080.policy:
    role:
      Defines classification, approval, localization, currency,
      role, alert, share, audit, scoring,
      lifecycle, review, proposal, ERP, forecast, and preset policies.

  100.security:
    role:
      Defines access, authorization,
      share security,
      and audit-history security.

  110.infrastructure:
    role:
      Defines infrastructure shape for persistence,
      gateways, and draft/sync support.

  120.implementation:
    role:
      Defines non-code implementation requirements,
      API contracts,
      screen/API mappings,
      and screen-level requirement sets.

  130.development:
    role:
      Defines phase plan and development guardrails.

  900.meta:
    role:
      Defines meta-level progress tracking and maintenance notes.

top_priority_documents:
- 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
- 010.constitution/0100001_PRODUCT_PORTFOLIO_MANAGER_CONSTITUTION.md
- 020.architecture/0200001_PRODUCT_PORTFOLIO_MANAGER_ARCHITECTURE.md
- 030.model/0300007_PRODUCT_PORTFOLIO_MANAGER_EXACT_TABLES_AND_ENUMS.md
- 050.flow/0500007_PRODUCT_PORTFOLIO_MANAGER_BUSINESS_FLOW_FORMAL_DESIGN.md
- 060.integration/0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
- 060.integration/0600004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
- 100.security/1000002_PRODUCT_PORTFOLIO_MANAGER_AUTHORIZATION_FORMAL_DESIGN.md
- 120.implementation/1200004_PRODUCT_PORTFOLIO_MANAGER_API_CONTRACT_EXACT.md

current_closure_note:
The design set is now broad across
constitution, architecture, model, flow, integration, operations, policy,
security, and implementation requirements.
Implementation work has not started.

next_natural_design_topics:
- root-level closure note
- integrated navigation refresh at wider CivilizationOS indices
- duplicate/overlap cleanup pass
- gap review against other application patterns
EOF

cat <<'EOF' > "$BASE/900.meta/9000002_PRODUCT_PORTFOLIO_MANAGER_ROOT_REFRESH_NOTE.md"
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
EOF

echo "REFRESHED: root overview / index / integrated"
echo "BASE=$BASE"
echo
find "$BASE" -maxdepth 1 -type f | sort
echo
find "$BASE/900.meta" -maxdepth 1 -type f | sort
