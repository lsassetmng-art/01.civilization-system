#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p \
  "$BASE/900.meta" \
  "$BASE/900.meta/index-reflection"

cat <<'EOF' > "$BASE/900.meta/9000006_PRODUCT_PORTFOLIO_MANAGER_WIDE_INDEX_REFLECTION_OVERVIEW.md"
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
EOF

cat <<'EOF' > "$BASE/900.meta/index-reflection/9000007_PRODUCT_PORTFOLIO_MANAGER_APPLICATION_NAVIGATION_REFLECTION_NOTE.md"
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
EOF

cat <<'EOF' > "$BASE/900.meta/index-reflection/9000008_PRODUCT_PORTFOLIO_MANAGER_SYSTEM_INDEX_INSERT_TEMPLATE.md"
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
EOF

cat <<'EOF' > "$BASE/900.meta/index-reflection/9000009_PRODUCT_PORTFOLIO_MANAGER_MASTER_RESTART_NOTE.md"
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
      Defines meta-level progress tracking,
      root refresh notes,
      duplication/gap review,
      standardization-pass notes,
      and wide-index reflection notes.

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
- 900.meta/9000003_PRODUCT_PORTFOLIO_MANAGER_DUPLICATION_AND_GAP_REVIEW.md
- 900.meta/9000004_PRODUCT_PORTFOLIO_MANAGER_STANDARDIZATION_PASS_NOTE.md
- 900.meta/9000006_PRODUCT_PORTFOLIO_MANAGER_WIDE_INDEX_REFLECTION_OVERVIEW.md
- 900.meta/index-reflection/9000009_PRODUCT_PORTFOLIO_MANAGER_MASTER_RESTART_NOTE.md

current_closure_note:
The design set is broad across
constitution, architecture, model, flow, integration, operations, policy,
security, and implementation requirements.
Implementation work has not started.
The current stage is cleanup, standardization, selective deepening,
and wider navigation reflection support.

next_natural_design_topics:
- optional cleanup/compression pass
- optional freshness-by-surface formalization
- optional notification recipient matrix formalization
- optional wider CivilizationOS-side root index insertion
EOF

echo "PATCHED: wide index reflection docs added"
echo "BASE=$BASE"
echo
find "$BASE/900.meta" -maxdepth 2 -type f | sort
echo
find "$BASE" -maxdepth 1 -type f | sort
