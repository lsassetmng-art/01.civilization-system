#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p "$BASE/900.meta"

cat <<'EOF' > "$BASE/900.meta/9000066_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_PHASE_OPENING_NOTE.md"
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
EOF

cat <<'EOF' > "$BASE/900.meta/9000067_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_PHASE_1_SCOPE_NOTE.md"
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
      Defines progress tracking, restart support, wide-index reflection, compression guidance, copy blocks, closure note, handoff bundle, reflection planning, patch proposals, draft review assets, implementation-preparation notes, and implementation phase opening notes.

top_priority_documents:
- 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
- 050.flow/0500006_PRODUCT_PORTFOLIO_MANAGER_EXACT_FLOW_PAYLOADS.md
- 030.model/0300007_PRODUCT_PORTFOLIO_MANAGER_EXACT_TABLES_AND_ENUMS.md
- 120.implementation/1200004_PRODUCT_PORTFOLIO_MANAGER_API_CONTRACT_EXACT.md
- 120.implementation/1200005_PRODUCT_PORTFOLIO_MANAGER_SCREEN_TO_API_MAPPING.md
- 100.security/1000002_PRODUCT_PORTFOLIO_MANAGER_AUTHORIZATION_FORMAL_DESIGN.md
- 060.integration/0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
- 060.integration/0600004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
- 900.meta/9000064_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_PREPARATION_COMPLETION_NOTE.md
- 900.meta/9000066_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_PHASE_OPENING_NOTE.md
- 900.meta/9000067_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_PHASE_1_SCOPE_NOTE.md

current_closure_note:
The design set is broad across constitution, architecture, model, flow,
integration, operations, policy, security, and implementation requirements.
Implementation phase may now be opened explicitly.
Actual coding is still not contained in this note.

next_natural_topics:
- phase 1 implementation entry pack
- or stop here until explicit coding phase starts
EOF

echo "CREATED: implementation phase opening notes"
echo
sed -n '1,260p' "$BASE/900.meta/9000066_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_PHASE_OPENING_NOTE.md"
echo
sed -n '1,220p' "$BASE/900.meta/9000067_PRODUCT_PORTFOLIO_MANAGER_IMPLEMENTATION_PHASE_1_SCOPE_NOTE.md"
