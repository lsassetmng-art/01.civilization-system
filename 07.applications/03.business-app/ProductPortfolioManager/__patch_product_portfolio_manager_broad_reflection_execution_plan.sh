#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p \
  "$BASE/900.meta" \
  "$BASE/900.meta/broad-reflection-plan"

cat <<'EOF' > "$BASE/900.meta/broad-reflection-plan/9000024_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_EXECUTION_PLAN.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER BROAD REFLECTION EXECUTION PLAN
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the execution plan for reflecting ProductPortfolioManager
into broader CivilizationOS-side canonical navigation documents
without starting implementation work.

plan_principles:
- reflection is navigation work, not implementation work
- ProductPortfolioManager meaning must remain unchanged
- only canonical entry documents should be used as primary links
- broad reflection should improve discovery, restartability, and portfolio mapping
- additive only

# ============================================================
# 1. REFLECTION TARGET CLASSES
# ============================================================

reflection_target_classes:

  class_a_master_index:
    meaning:
      Highest-level system/application index documents
      that list applications or major design domains.

  class_b_integrated_navigation:
    meaning:
      Integrated canonical documents
      that summarize major application families or system layers.

  class_c_restart_handoff:
    meaning:
      Restart / handoff / reflection notes
      used to resume design later.

  class_d_portal_or_surface_index:
    meaning:
      Navigation-oriented notes or reflection docs
      that expose application discovery structure.

# ============================================================
# 2. WHAT SHOULD BE REFLECTED
# ============================================================

must_reflect:
- application name
- application path
- short identity summary
- category as business-judgment application
- canonical entry documents
- current state as design-expanded / implementation not started

should_reflect:
- ERP truth boundary preserved
- forecast advisory boundary preserved
- multilingual / multi-currency / cross-device readiness
- portfolio judgment loop summary

should_not_reflect_as_top_level_summary:
- low-level exact payload details
- raw table-by-table model detail
- verbose repeated warnings better left inside the local design set

# ============================================================
# 3. PRIMARY INSERTION BLOCK
# ============================================================

primary_insertion_block:
  application_name: ProductPortfolioManager
  application_path: /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager
  category: business-judgment-application
  summary:
    Lightweight product strategy judgment application
    for KPI/scoring-based product evaluation,
    strategic classification,
    proposals,
    review sessions,
    approvals,
    alerts,
    and audit/history,
    built on top of ERP facts and forecast references.
  canonical_entries:
    - 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
    - 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
    - 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md
  current_state:
    - design expanded
    - implementation not started

# ============================================================
# 4. SECONDARY INSERTION BLOCK
# ============================================================

secondary_insertion_block:
- ERP boundary fixed
- forecast advisory boundary fixed
- exact model contracts fixed
- exact flow payload contracts fixed
- review / approval / audit governance fixed
- closure note and restart bundle prepared

# ============================================================
# 5. RECOMMENDED INSERTION ORDER
# ============================================================

recommended_insertion_order:
1. highest-level application/system index
2. integrated navigation / canonical integrated summaries
3. restart or handoff summaries
4. portal-side or reflection-side navigation notes

# ============================================================
# 6. LOCAL SOURCE DOCUMENTS TO USE
# ============================================================

local_source_documents_to_use:
- 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
- 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
- 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md
- 900.meta/handoff-bundle/9000020_PRODUCT_PORTFOLIO_MANAGER_FINAL_HANDOFF_BUNDLE.md
- 900.meta/copy-blocks/9000015_PRODUCT_PORTFOLIO_MANAGER_ROOT_INDEX_COPY_BLOCKS.md
- 900.meta/copy-blocks/9000016_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED_INSERT_BLOCKS.md
- 900.meta/copy-blocks/9000017_PRODUCT_PORTFOLIO_MANAGER_RESTART_INSERT_BLOCKS.md

# ============================================================
# 7. SAFE INSERTION RULES
# ============================================================

safe_insertion_rules:
- do not rewrite existing external canonical meaning casually
- do not insert low-level implementation detail into broad navigation
- do not lose ProductPortfolioManager’s ERP/fact/judgment boundary meaning
- do not present implementation as started
- do not duplicate long warnings in every broad document

# ============================================================
# 8. EXECUTION READINESS
# ============================================================

execution_readiness:
- local design set: ready
- local navigation blocks: ready
- local restart bundle: ready
- broad insertion plan: ready
- broad target editing: not yet executed in this phase

# ============================================================
# 9. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager is ready for broad navigation reflection work.
That reflection should be treated as a separate additive documentation phase.
EOF

cat <<'EOF' > "$BASE/900.meta/broad-reflection-plan/9000025_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_TARGET_MATRIX.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER BROAD REFLECTION TARGET MATRIX
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Maps reflection target types
to recommended insertion depth and source blocks.

target_matrix:

  master_index_documents:
    insertion_depth: short_to_medium
    recommended_source_blocks:
      - 900.meta/copy-blocks/9000015_PRODUCT_PORTFOLIO_MANAGER_ROOT_INDEX_COPY_BLOCKS.md
    recommended_content:
      - app name
      - role
      - canonical entries
      - current state

  integrated_canonical_documents:
    insertion_depth: medium
    recommended_source_blocks:
      - 900.meta/copy-blocks/9000016_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED_INSERT_BLOCKS.md
    recommended_content:
      - application summary
      - judgment loop summary
      - ERP / forecast boundary summary
      - current state

  restart_handoff_documents:
    insertion_depth: medium_to_long
    recommended_source_blocks:
      - 900.meta/copy-blocks/9000017_PRODUCT_PORTFOLIO_MANAGER_RESTART_INSERT_BLOCKS.md
      - 900.meta/handoff-bundle/9000020_PRODUCT_PORTFOLIO_MANAGER_FINAL_HANDOFF_BUNDLE.md
    recommended_content:
      - restart order
      - implementation not started
      - safe continuation warnings

  portal_or_reflection_notes:
    insertion_depth: short
    recommended_source_blocks:
      - 900.meta/index-reflection/9000007_PRODUCT_PORTFOLIO_MANAGER_APPLICATION_NAVIGATION_REFLECTION_NOTE.md
      - 900.meta/index-reflection/9000008_PRODUCT_PORTFOLIO_MANAGER_SYSTEM_INDEX_INSERT_TEMPLATE.md
    recommended_content:
      - discovery summary
      - category
      - canonical links

formal_conclusion:
Different broad targets require different insertion depths.
EOF

cat <<'EOF' > "$BASE/900.meta/broad-reflection-plan/9000026_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_PHASE_OPENING.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER BROAD REFLECTION PHASE OPENING
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides a clean phase-opening note
for a later documentation pass that actually edits broader canonical files.

phase_name:
broad-navigation-reflection-phase

phase_objective:
Reflect ProductPortfolioManager into wider canonical navigation
using already prepared local copy blocks and handoff bundles.

phase_in_scope:
- additive navigation insertion
- additive summary insertion
- additive restart/handoff insertion

phase_out_of_scope:
- implementation
- code generation
- DDL generation
- API execution work
- changing ProductPortfolioManager core meaning
- weakening existing canonical boundaries

recommended_phase_opening_text:
We are now opening the broad-navigation-reflection phase for ProductPortfolioManager.
Use the local copy blocks and final handoff bundle
to insert ProductPortfolioManager into wider canonical navigation documents.
Do not start implementation.
Do not weaken ERP / forecast / judgment boundaries.
Keep changes additive only.

formal_conclusion:
If broader canonical files are to be edited later,
this note should be used to open that phase explicitly.
EOF

cat <<'EOF' > "$BASE/900.meta/9000027_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_READY_NOTE.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER BROAD REFLECTION READY NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Records that ProductPortfolioManager is ready
for a later broad reflection phase.

ready_assets:
- root overview/index/integrated refreshed
- restart bundle prepared
- copy blocks prepared
- wide reflection notes prepared
- broad reflection execution plan prepared
- target matrix prepared
- phase opening note prepared

not_done_here:
- wider canonical files have not yet been edited in this phase

formal_conclusion:
Broad reflection readiness is complete locally.
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
      Defines progress tracking, restart support, wide-index reflection, compression guidance, copy blocks, closure note, final handoff bundle, and broad reflection execution planning.

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
- 900.meta/broad-reflection-plan/9000024_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_EXECUTION_PLAN.md

current_closure_note:
The design set is broad across constitution, architecture, model, flow,
integration, operations, policy, security, and implementation requirements.
Implementation work has not started.
The current state is stable design closure with
handoff-ready meta assets
and broad reflection execution planning completed locally.

next_natural_topics:
- execute a separate broad-navigation-reflection phase later
- otherwise stop cleanly here
EOF

echo "PATCHED: broad reflection execution plan docs added"
echo "BASE=$BASE"
echo
find "$BASE/900.meta/broad-reflection-plan" -maxdepth 1 -type f | sort
echo
find "$BASE/900.meta" -maxdepth 1 -type f | sort
echo
find "$BASE" -maxdepth 1 -type f | sort
