#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p \
  "$BASE/900.meta" \
  "$BASE/900.meta/uploaded-target-patch-proposals"

cat <<'EOF' > "$BASE/900.meta/uploaded-target-patch-proposals/9000045_PRODUCT_PORTFOLIO_MANAGER_UPLOADED_TARGET_PATCH_PROPOSALS_OVERVIEW.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER UPLOADED TARGET PATCH PROPOSALS OVERVIEW
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides file-by-file patch proposals
for the uploaded broad canonical files.

scope:
- insertion proposal only
- additive text only
- no direct modification of uploaded broad canonicals in this phase

prepared_targets:
- 003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md
- 900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md
- 000000_FOUNDATION_CANONICAL.md
- 9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md
- 014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md
- ERP_DESIGN_BIBLE_FULL.md
- ERP_ENTERPRISE_SCOPE_v1.md

formal_conclusion:
These are execution-ready patch proposals,
not yet applied edits.
EOF

cat <<'EOF' > "$BASE/900.meta/uploaded-target-patch-proposals/9000046_PRODUCT_PORTFOLIO_MANAGER_PATCH_PROPOSAL_FOR_003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER PATCH PROPOSAL FOR
# 003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_file:
/mnt/data/003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md

recommended_insert_zone:
- application catalog area if present
- applications landscape appendix if present
- integrated application summary area if present
- restart/navigation summary area if present

recommended_insert_depth:
medium

proposed_insert_text:
  - application_name: ProductPortfolioManager
    application_group: 07.applications
    category: business-judgment-application
    summary:
      Lightweight product strategy judgment application
      for KPI/scoring-based product evaluation,
      strategic classification,
      proposals,
      review sessions,
      approvals,
      alerts,
      and audit/history.
      It sits on top of ERP facts
      and uses forecast as advisory reference.
    canonical_entries:
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md
    current_state:
      - design expanded
      - implementation not started

why_this_depth:
CIVILIZATION OS canonical full rebuilt is broad enough
to hold application-level reflection with short boundary summary,
but should not absorb low-level exact payload or schema detail.

post_insert_check:
- ProductPortfolioManager becomes discoverable from the broad canonical
- no implementation-start implication appears
- ERP and forecast boundaries stay concise and clear
EOF

cat <<'EOF' > "$BASE/900.meta/uploaded-target-patch-proposals/9000047_PRODUCT_PORTFOLIO_MANAGER_PATCH_PROPOSAL_FOR_900001_PORTAL_REFLECTION_NOTE.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER PATCH PROPOSAL FOR
# 900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_file:
/mnt/data/900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md

observed_file_shape:
The uploaded portal reflection note already contains:
- document purpose
- current placement
- reasons for placement
- points to reflect to upper indexes
- short explanation to write in upper indexes
- references
- current state

recommended_insert_zone:
- section equivalent to "上位 index へ反映すべき要点"
- section equivalent to "上位 index に書くべき短縮説明"
- references section if app-level links are listed there

recommended_insert_depth:
medium_to_long

proposed_key_points:
- ProductPortfolioManager is a business-judgment application
- it is not ERP itself
- it consumes ERP facts as reference
- it consumes forecast as advisory reference
- it owns application-side judgment artifacts
- design is expanded, implementation not started

short_insert_text_jp:
商品ポートフォリオ管理アプリ（ProductPortfolioManager）は、
ERPの事実値を参照しつつ、
商品評価、戦略分類、提案、レビュー、承認、監査履歴を扱う
軽量な商品戦略判断アプリである。
Forecast は参考情報として扱い、
ERP truth は保持したまま、
アプリ側で judgment artifact を持つ。

link_block:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
- /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
- /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md

why_this_depth:
Portal reflection is discovery-oriented
and can tolerate a slightly richer summary than ultra-terse canonicals.

post_insert_check:
- the note still reads as a reflection note, not an app spec
- ProductPortfolioManager can be discovered cleanly
- wording stays additive and short
EOF

cat <<'EOF' > "$BASE/900.meta/uploaded-target-patch-proposals/9000048_PRODUCT_PORTFOLIO_MANAGER_PATCH_PROPOSAL_FOR_000000_FOUNDATION_CANONICAL.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER PATCH PROPOSAL FOR
# 000000_FOUNDATION_CANONICAL.md
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_file:
/mnt/data/000000_FOUNDATION_CANONICAL.md

observed_file_shape:
The uploaded foundation canonical is charter-heavy
and system-principle-heavy.

recommended_insert_zone:
- application examples appendix if present
- foundation consumer examples note if present
- root navigation/reference appendix if present

recommended_insert_depth:
short

proposed_insert_text:
  - application_name: ProductPortfolioManager
    role:
      - product portfolio judgment
      - strategy classification
      - proposal/review/approval governance
    boundaries:
      - ERP facts preserved
      - forecast advisory preserved
    state:
      - design expanded
      - implementation not started
    entry:
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md

why_this_depth:
Foundation canonical should remain charter-first.
ProductPortfolioManager should appear only as a succinct example of a governed application.

post_insert_check:
- foundation-level meaning remains primary
- ProductPortfolioManager is mentioned but does not overwhelm the file
EOF

cat <<'EOF' > "$BASE/900.meta/uploaded-target-patch-proposals/9000049_PRODUCT_PORTFOLIO_MANAGER_PATCH_PROPOSAL_FOR_9000_SYSTEM_RULES_INTEGRATED.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER PATCH PROPOSAL FOR
# 9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_file:
/mnt/data/9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md

observed_file_shape:
The uploaded system-rules integrated file is standards/rules-first.

recommended_insert_zone:
- application example appendix if present
- design-document application examples if present
- integrated restart/reference appendix if present

recommended_insert_depth:
short

proposed_insert_text:
  - application_name: ProductPortfolioManager
    application_kind: governed business-judgment application
    notable_rules_alignment:
      - explicit source-of-truth boundary
      - review / approval separation
      - additive documentation structure
      - multilingual / multi-currency / cross-device requirements
    canonical_entry:
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md
    state:
      - design expanded
      - implementation not started

why_this_depth:
System rules integrated should remain rules-first,
so the app appears best as a concise aligned-example note.

post_insert_check:
- rules stay primary
- ProductPortfolioManager is reflected as a compliant example, not a digression
EOF

cat <<'EOF' > "$BASE/900.meta/uploaded-target-patch-proposals/9000050_PRODUCT_PORTFOLIO_MANAGER_PATCH_PROPOSAL_FOR_COMMON_COMPONENT_LEDGER.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER PATCH PROPOSAL FOR
# 014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_file:
/mnt/data/014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md

recommended_insert_zone:
- consuming applications section
- reuse candidates section
- downstream application examples section

recommended_insert_depth:
short_to_medium

proposed_insert_text:
  - consumer_application: ProductPortfolioManager
    consumer_role:
      lightweight product strategy judgment application
    expected_common_dependencies:
      - localization resource layer
      - currency display context
      - score/status display surfaces
      - alert and approval surfaces
      - history/audit visibility surfaces
      - responsive cross-device shell
    note:
      ProductPortfolioManager is not itself a common component.
      It is an application that consumes common capabilities.
    state:
      - app-specific design expanded
      - implementation not started

post_insert_check:
- the ledger still reads as common-component-centric
- ProductPortfolioManager appears as a consumer, not a common-core owner
EOF

cat <<'EOF' > "$BASE/900.meta/uploaded-target-patch-proposals/9000051_PRODUCT_PORTFOLIO_MANAGER_PATCH_PROPOSAL_FOR_ERP_DESIGN_BIBLE_AND_SCOPE.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER PATCH PROPOSAL FOR
# ERP_DESIGN_BIBLE_FULL.md / ERP_ENTERPRISE_SCOPE_v1.md
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_files:
- /mnt/data/ERP_DESIGN_BIBLE_FULL.md
- /mnt/data/ERP_ENTERPRISE_SCOPE_v1.md

recommended_insert_zone:
- downstream consumer applications appendix
- external consuming application note
- ERP truth boundary examples appendix

recommended_insert_depth:
short

proposed_insert_text:
  - downstream_application: ProductPortfolioManager
    relationship_to_erp:
      Consumes ERP product and operational facts as reference.
      Does not replace ERP truth.
      Owns only application-side portfolio judgment artifacts
      such as score, classification, proposal, review, approval,
      alert, share scope, and audit/history.
    entry:
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/060.integration/0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
    state:
      - design expanded
      - implementation not started

why_this_depth:
ERP-side canonicals should only receive a narrow consumer-boundary note,
not a full app summary.

post_insert_check:
- ERP remains clearly primary
- ProductPortfolioManager remains clearly downstream
- no ERP/application ownership confusion appears
EOF

cat <<'EOF' > "$BASE/900.meta/uploaded-target-patch-proposals/9000052_PRODUCT_PORTFOLIO_MANAGER_UPLOADED_TARGET_PATCH_SEQUENCE.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER UPLOADED TARGET PATCH SEQUENCE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the preferred order
for a future patch-application phase against uploaded broad canonicals.

preferred_sequence:
1. /mnt/data/900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md
2. /mnt/data/003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md
3. /mnt/data/000000_FOUNDATION_CANONICAL.md
4. /mnt/data/9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md
5. /mnt/data/014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md
6. /mnt/data/ERP_DESIGN_BIBLE_FULL.md
7. /mnt/data/ERP_ENTERPRISE_SCOPE_v1.md

sequence_reasoning:
- begin with the highest discovery value
- then patch the broadest system-level canonical
- then patch terse foundation/rules files
- then patch consumer-ledger / ERP-side notes

formal_conclusion:
This sequence reduces semantic risk
while maximizing navigation value early.
EOF

cat <<'EOF' > "$BASE/900.meta/9000053_PRODUCT_PORTFOLIO_MANAGER_UPLOADED_TARGET_PATCH_READY_NOTE.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER UPLOADED TARGET PATCH READY NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Records that uploaded-target patch proposals
now exist for the current broad canonical set.

ready_assets:
- target-by-target patch proposal docs
- uploaded-target patch sequence
- uploaded-target mapping
- broad reflection execution checklist

not_done_here:
- uploaded broad canonical files themselves have not yet been modified in this step

formal_conclusion:
ProductPortfolioManager is now locally ready
for a separate patch-application phase against uploaded broad canonicals.
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
      Defines progress tracking, restart support, wide-index reflection, compression guidance, copy blocks, closure note, final handoff bundle, broad reflection planning, target-specific insert packs, execution checklists, uploaded-target mapping, and uploaded-target patch proposals.

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
- 900.meta/uploaded-target-patch-proposals/9000045_PRODUCT_PORTFOLIO_MANAGER_UPLOADED_TARGET_PATCH_PROPOSALS_OVERVIEW.md

current_closure_note:
The design set is broad across constitution, architecture, model, flow,
integration, operations, policy, security, and implementation requirements.
Implementation work has not started.
The current state is stable design closure with
handoff-ready meta assets,
broad reflection planning,
uploaded-target mapping,
and file-specific patch proposals prepared locally.

next_natural_topics:
- execute a separate patch-application phase against uploaded broad canonicals
- otherwise stop cleanly here
EOF

echo "PATCHED: uploaded target patch proposals added"
echo "BASE=$BASE"
echo
find "$BASE/900.meta/uploaded-target-patch-proposals" -maxdepth 1 -type f | sort
echo
find "$BASE" -maxdepth 1 -type f | sort
