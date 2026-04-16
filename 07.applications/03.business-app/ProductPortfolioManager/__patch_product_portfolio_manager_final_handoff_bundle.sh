#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p \
  "$BASE/900.meta" \
  "$BASE/900.meta/handoff-bundle"

cat <<'EOF' > "$BASE/900.meta/handoff-bundle/9000020_PRODUCT_PORTFOLIO_MANAGER_FINAL_HANDOFF_BUNDLE.md"
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
EOF

cat <<'EOF' > "$BASE/900.meta/handoff-bundle/9000021_PRODUCT_PORTFOLIO_MANAGER_SHORT_HANDOFF_TEMPLATE.md"
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
EOF

cat <<'EOF' > "$BASE/900.meta/handoff-bundle/9000022_PRODUCT_PORTFOLIO_MANAGER_LONG_HANDOFF_TEMPLATE.md"
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
EOF

cat <<'EOF' > "$BASE/900.meta/9000023_PRODUCT_PORTFOLIO_MANAGER_FINAL_STATE_NOTE.md"
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
      Defines progress tracking, restart support, wide-index reflection, compression guidance, copy blocks, closure note, and final handoff bundle.

top_priority_documents:
- 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
- 030.model/0300007_PRODUCT_PORTFOLIO_MANAGER_EXACT_TABLES_AND_ENUMS.md
- 050.flow/0500007_PRODUCT_PORTFOLIO_MANAGER_BUSINESS_FLOW_FORMAL_DESIGN.md
- 060.integration/0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
- 060.integration/0600004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
- 100.security/1000002_PRODUCT_PORTFOLIO_MANAGER_AUTHORIZATION_FORMAL_DESIGN.md
- 120.implementation/1200004_PRODUCT_PORTFOLIO_MANAGER_API_CONTRACT_EXACT.md
- 900.meta/9000019_PRODUCT_PORTFOLIO_MANAGER_DESIGN_CLOSURE_NOTE.md
- 900.meta/handoff-bundle/9000020_PRODUCT_PORTFOLIO_MANAGER_FINAL_HANDOFF_BUNDLE.md

current_closure_note:
The design set is broad across constitution, architecture, model, flow,
integration, operations, policy, security, and implementation requirements.
Implementation work has not started.
The current state is stable design closure with handoff-ready meta assets.

next_natural_topics:
- explicit new phase opening later if work resumes
- otherwise stop cleanly here
EOF

echo "PATCHED: final handoff bundle added"
echo "BASE=$BASE"
echo
find "$BASE/900.meta/handoff-bundle" -maxdepth 1 -type f | sort
echo
find "$BASE/900.meta" -maxdepth 1 -type f | sort
echo
find "$BASE" -maxdepth 1 -type f | sort
