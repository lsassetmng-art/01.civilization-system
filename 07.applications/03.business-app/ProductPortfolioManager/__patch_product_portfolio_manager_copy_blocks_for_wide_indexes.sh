#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p \
  "$BASE/900.meta" \
  "$BASE/900.meta/copy-blocks"

cat <<'EOF' > "$BASE/900.meta/copy-blocks/9000015_PRODUCT_PORTFOLIO_MANAGER_ROOT_INDEX_COPY_BLOCKS.md"
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
EOF

cat <<'EOF' > "$BASE/900.meta/copy-blocks/9000016_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED_INSERT_BLOCKS.md"
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
EOF

cat <<'EOF' > "$BASE/900.meta/copy-blocks/9000017_PRODUCT_PORTFOLIO_MANAGER_RESTART_INSERT_BLOCKS.md"
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
EOF

cat <<'EOF' > "$BASE/900.meta/copy-blocks/9000018_PRODUCT_PORTFOLIO_MANAGER_WIDE_NAVIGATION_BUNDLE.md"
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
      Defines cadence, alert/notification handling, audit/history operations, and review-session operations.

  080.policy:
    role:
      Defines interpretation rules across classification, approval, localization, currency, share, audit, scoring, lifecycle, proposal, ERP, forecast, and presets.

  100.security:
    role:
      Defines access, authorization, share security, and audit-history security.

  110.infrastructure:
    role:
      Defines infrastructure shape for persistence, gateways, and draft/sync support.

  120.implementation:
    role:
      Defines non-code implementation requirements, API contracts, screen/API mappings, and screen-level requirements.

  130.development:
    role:
      Defines phase plan and development guardrails.

  900.meta:
    role:
      Defines progress tracking, cleanup guidance, restart support, wide-index reflection, compression-pass guidance, and copy-block bundles for wider navigation reuse.

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
- 900.meta/9000010_PRODUCT_PORTFOLIO_MANAGER_COMPRESSION_PASS_OVERVIEW.md
- 900.meta/copy-blocks/9000015_PRODUCT_PORTFOLIO_MANAGER_ROOT_INDEX_COPY_BLOCKS.md

current_closure_note:
The design set is broad across constitution, architecture, model, flow,
integration, operations, policy, security, and implementation requirements.
Implementation work has not started.
The current stage is cleanup, standardization, selective deepening,
wide navigation reflection, and copy-block preparation for wider reuse.

next_natural_design_topics:
- optional actual wording-compression pass
- optional freshness-by-surface formalization
- optional notification recipient matrix formalization
- optional wider CivilizationOS-side root index insertion using copy blocks
EOF

echo "PATCHED: wide index copy blocks added"
echo "BASE=$BASE"
echo
find "$BASE/900.meta/copy-blocks" -maxdepth 1 -type f | sort
echo
find "$BASE" -maxdepth 1 -type f | sort
