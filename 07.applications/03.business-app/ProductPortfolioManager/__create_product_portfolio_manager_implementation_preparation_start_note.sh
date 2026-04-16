#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p "$BASE/900.meta"

cat <<'EOF' > "$BASE/900.meta/9000062_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_PREPARATION_START_NOTE.md"
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
EOF

cat <<'EOF' > "$BASE/900.meta/9000063_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_PREPARATION_CHECKLIST.md"
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
      Defines progress tracking, restart support, wide-index reflection, compression guidance, copy blocks, closure note, final handoff bundle, broad reflection planning, target-specific insert packs, execution checklists, uploaded-target mapping, uploaded-target patch proposals, broad-reflection draft review assets, and implementation-preparation notes.

top_priority_documents:
- 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
- 050.flow/0500006_PRODUCT_PORTFOLIO_MANAGER_EXACT_FLOW_PAYLOADS.md
- 030.model/0300007_PRODUCT_PORTFOLIO_MANAGER_EXACT_TABLES_AND_ENUMS.md
- 120.implementation/1200004_PRODUCT_PORTFOLIO_MANAGER_API_CONTRACT_EXACT.md
- 120.implementation/1200005_PRODUCT_PORTFOLIO_MANAGER_SCREEN_TO_API_MAPPING.md
- 100.security/1000002_PRODUCT_PORTFOLIO_MANAGER_AUTHORIZATION_FORMAL_DESIGN.md
- 060.integration/0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
- 060.integration/0600004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
- 900.meta/9000062_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_PREPARATION_START_NOTE.md
- 900.meta/9000063_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_PREPARATION_CHECKLIST.md

current_closure_note:
The design set is broad across constitution, architecture, model, flow,
integration, operations, policy, security, and implementation requirements.
Implementation work has not started.
The current state is stable design closure
and implementation preparation opening.

next_natural_topics:
- confirm implementation preparation checklist
- then later open an explicit implementation phase
EOF

echo "CREATED: implementation preparation notes"
echo
sed -n '1,260p' "$BASE/900.meta/9000062_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_PREPARATION_START_NOTE.md"
echo
sed -n '1,220p' "$BASE/900.meta/9000063_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_PREPARATION_CHECKLIST.md"
