#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"
OUT="$BASE/900.meta/applied-broad-reflection-drafts"

mkdir -p "$OUT"

cat <<'EOF' > "$OUT/9000055_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_DRAFT_REVIEW_INDEX.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER BROAD REFLECTION DRAFT REVIEW INDEX
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides a review index for the generated broad-reflection draft files.

review_principles:
- original uploaded broad canonicals are unchanged
- review the generated drafts first
- confirm wording depth matches target document role
- confirm ProductPortfolioManager remains described as design-only
- confirm ERP / forecast / judgment boundaries remain clear

draft_directory:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/900.meta/applied-broad-reflection-drafts

generated_drafts_expected:
- 003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT__PPM_REFLECTION_DRAFT.md
- 900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE__PPM_REFLECTION_DRAFT.md
- 000000_FOUNDATION_CANONICAL__PPM_REFLECTION_DRAFT.md
- 9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED__PPM_REFLECTION_DRAFT.md
- 014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER__PPM_REFLECTION_DRAFT.md
- ERP_DESIGN_BIBLE_FULL__PPM_REFLECTION_DRAFT.md
- ERP_ENTERPRISE_SCOPE_v1__PPM_REFLECTION_DRAFT.md

review_order:
1. 900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE__PPM_REFLECTION_DRAFT.md
2. 003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT__PPM_REFLECTION_DRAFT.md
3. 000000_FOUNDATION_CANONICAL__PPM_REFLECTION_DRAFT.md
4. 9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED__PPM_REFLECTION_DRAFT.md
5. 014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER__PPM_REFLECTION_DRAFT.md
6. ERP_DESIGN_BIBLE_FULL__PPM_REFLECTION_DRAFT.md
7. ERP_ENTERPRISE_SCOPE_v1__PPM_REFLECTION_DRAFT.md

formal_conclusion:
Review should start from discovery-oriented targets first,
then move to terse rule/foundation files,
then to narrower consumer-boundary notes.
EOF

cat <<'EOF' > "$OUT/9000056_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_DRAFT_REVIEW_CHECKLIST.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER BROAD REFLECTION DRAFT REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides a checklist for reviewing the generated broad-reflection drafts.

checklist:
- ProductPortfolioManager is described as a lightweight product strategy judgment application
- implementation not started is stated or preserved clearly
- ERP truth boundary remains explicit
- forecast advisory boundary remains explicit
- the draft does not over-insert low-level schema/payload detail
- the wording depth fits the target file type
- the inserted block reads naturally after the source file body
- the inserted block improves discovery or restartability
- no wording implies ProductPortfolioManager is part of ERP itself
- no wording implies forecast is final truth
- no wording implies review equals approval
- no wording implies proposal completion equals ERP execution truth

target_specific_checks:

  portal_reflection_note:
    - richer discovery wording is acceptable
    - app label is clear
    - references are useful for navigation

  civilization_os_canonical:
    - medium summary depth is acceptable
    - application is discoverable without bloating the file

  foundation_or_rules:
    - wording stays short
    - system/foundation meaning remains primary

  common_component_ledger:
    - ProductPortfolioManager appears as consumer, not common-core owner

  erp_side_docs:
    - ProductPortfolioManager appears only as downstream consumer
    - ERP remains clearly primary

formal_conclusion:
A good draft is one that makes ProductPortfolioManager easier to find
without distorting the target document.
EOF

cat <<'EOF' > "$OUT/9000057_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_DRAFT_DECISION_NOTE.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER BROAD REFLECTION DRAFT DECISION NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides a simple decision frame after reviewing the generated drafts.

possible_decisions:
- accept as-is for later manual reflection
- accept with wording trim
- accept with placement change
- hold for later
- reject target insertion for now

recommended_default_decision:
- portal reflection draft: likely accept with minor wording review
- Civilization OS canonical draft: likely accept with minor wording review
- foundation/system-rules drafts: review for terseness
- common ledger draft: review for consumer-only framing
- ERP-side drafts: review for strict downstream-boundary wording

decision_rule:
Do not apply a draft later
if it weakens source boundaries
or makes the target document noticeably worse to read.

formal_conclusion:
Generated drafts are review artifacts first,
not auto-approved insertions.
EOF

cat <<'EOF' > "$OUT/9000058_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_DRAFT_REVIEW_READY_NOTE.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER BROAD REFLECTION DRAFT REVIEW READY NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Records that the broad-reflection draft review package is now complete.

package_contents:
- draft generation note
- review index
- review checklist
- decision note

state:
- original uploaded broad canonicals unchanged
- draft review package ready
- later apply phase still optional

formal_conclusion:
Broad-reflection drafts are now ready for human review.
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
      Defines progress tracking, restart support, wide-index reflection, compression guidance, copy blocks, closure note, final handoff bundle, broad reflection planning, target-specific insert packs, execution checklists, uploaded-target mapping, uploaded-target patch proposals, and broad-reflection draft review assets.

top_priority_documents:
- 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
- 030.model/0300007_PRODUCT_PORTFOLIO_MANAGER_EXACT_TABLES_AND_ENUMS.md
- 050.flow/0500007_PRODUCT_PORTFOLIO_MANAGER_BUSINESS_FLOW_FORMAL_DESIGN.md
- 060.integration/0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
- 060.integration/0600004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
- 100.security/1000002_PRODUCT_PORTFOLIO_MANAGER_AUTHORIZATION_FORMAL_DESIGN.md
- 120.implementation/1200004_PRODUCT_PORTFOLIO_MANAGER_API_CONTRACT_EXACT.md
- 900.meta/9000019_PRODUCT_PORTFOLIO_MANAGER_DESIGN_CLOSURE_NOTE.md
- 900.meta/applied-broad-reflection-drafts/9000055_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_DRAFT_REVIEW_INDEX.md

current_closure_note:
The design set is broad across constitution, architecture, model, flow,
integration, operations, policy, security, and implementation requirements.
Implementation work has not started.
The current state is stable design closure with
handoff-ready meta assets,
uploaded-target patch proposals,
non-destructive broad-reflection draft generation,
and draft-review support prepared locally.

next_natural_topics:
- review generated broad-reflection drafts
- apply later only if the reviewed drafts are acceptable
- otherwise stop cleanly here
EOF

echo "PATCHED: broad reflection draft review notes added"
echo "OUT=$OUT"
echo
find "$OUT" -maxdepth 1 -type f | sort
