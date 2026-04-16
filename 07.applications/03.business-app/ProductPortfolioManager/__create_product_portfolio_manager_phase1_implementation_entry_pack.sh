#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p \
  "$BASE/900.meta" \
  "$BASE/900.meta/phase1-entry-pack"

cat <<'EOF' > "$BASE/900.meta/phase1-entry-pack/9000068_PRODUCT_PORTFOLIO_MANAGER_PHASE1_IMPLEMENTATION_ENTRY_PACK.md"
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
EOF

cat <<'EOF' > "$BASE/900.meta/phase1-entry-pack/9000069_PRODUCT_PORTFOLIO_MANAGER_PHASE1_READING_SEQUENCE.md"
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
EOF

cat <<'EOF' > "$BASE/900.meta/phase1-entry-pack/9000070_PRODUCT_PORTFOLIO_MANAGER_PHASE1_FIRST_WORK_ITEMS.md"
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
EOF

cat <<'EOF' > "$BASE/900.meta/phase1-entry-pack/9000071_PRODUCT_PORTFOLIO_MANAGER_PHASE1_SAFE_START_CHECKLIST.md"
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
EOF

cat <<'EOF' > "$BASE/900.meta/phase1-entry-pack/9000072_PRODUCT_PORTFOLIO_MANAGER_PHASE1_HANDOFF_MINI_NOTE.md"
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
      Defines progress tracking, restart support, wide-index reflection, compression guidance, copy blocks, closure note, handoff bundle, reflection planning, patch proposals, draft review assets, implementation-preparation notes, implementation phase opening notes, and phase 1 implementation entry assets.

top_priority_documents:
- 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
- 050.flow/0500006_PRODUCT_PORTFOLIO_MANAGER_EXACT_FLOW_PAYLOADS.md
- 030.model/0300007_PRODUCT_PORTFOLIO_MANAGER_EXACT_TABLES_AND_ENUMS.md
- 120.implementation/1200004_PRODUCT_PORTFOLIO_MANAGER_API_CONTRACT_EXACT.md
- 120.implementation/1200005_PRODUCT_PORTFOLIO_MANAGER_SCREEN_TO_API_MAPPING.md
- 100.security/1000002_PRODUCT_PORTFOLIO_MANAGER_AUTHORIZATION_FORMAL_DESIGN.md
- 060.integration/0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
- 060.integration/0600004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
- 900.meta/9000066_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_PHASE_OPENING_NOTE.md
- 900.meta/phase1-entry-pack/9000068_PRODUCT_PORTFOLIO_MANAGER_PHASE1_IMPLEMENTATION_ENTRY_PACK.md
- 900.meta/phase1-entry-pack/9000071_PRODUCT_PORTFOLIO_MANAGER_PHASE1_SAFE_START_CHECKLIST.md

current_closure_note:
The design set is broad across constitution, architecture, model, flow,
integration, operations, policy, security, and implementation requirements.
Implementation phase may now be opened explicitly.
Phase 1 entry assets are now prepared.

next_natural_topics:
- explicit Phase 1 implementation start
- or stop here until coding phase opens
EOF

echo "CREATED: phase 1 implementation entry pack"
echo
find "$BASE/900.meta/phase1-entry-pack" -maxdepth 1 -type f | sort
