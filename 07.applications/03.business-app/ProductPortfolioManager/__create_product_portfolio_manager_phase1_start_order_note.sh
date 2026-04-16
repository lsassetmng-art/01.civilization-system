#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p \
  "$BASE/900.meta" \
  "$BASE/900.meta/phase1-entry-pack"

cat <<'EOF' > "$BASE/900.meta/phase1-entry-pack/9000073_PRODUCT_PORTFOLIO_MANAGER_PHASE1_START_ORDER_NOTE.md"
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
EOF

cat <<'EOF' > "$BASE/900.meta/phase1-entry-pack/9000074_PRODUCT_PORTFOLIO_MANAGER_PHASE1_ROUTE_BY_ROUTE_CHECKLIST.md"
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
EOF

cat <<'EOF' > "$BASE/900.meta/phase1-entry-pack/9000075_PRODUCT_PORTFOLIO_MANAGER_PHASE1_READY_TO_CODE_NOTE.md"
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
EOF

echo "CREATED: phase 1 start-order notes"
echo
find "$BASE/900.meta/phase1-entry-pack" -maxdepth 1 -type f | sort
