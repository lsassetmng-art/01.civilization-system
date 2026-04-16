#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p \
  "$BASE/900.meta" \
  "$BASE/900.meta/wide-reflection-execution"

cat <<'EOF' > "$BASE/900.meta/wide-reflection-execution/9000036_PRODUCT_PORTFOLIO_MANAGER_WIDE_REFLECTION_EXECUTION_CHECKLIST.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER WIDE REFLECTION EXECUTION CHECKLIST
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the execution checklist
for a future broad-navigation-reflection pass
that actually edits wider canonical files.

execution_principles:
- additive only
- navigation reflection only
- no implementation opening
- no boundary weakening
- no low-level schema/payload dump into broad canonicals

# ============================================================
# 1. PRE-EXECUTION CHECKLIST
# ============================================================

pre_execution_checklist:
- confirm ProductPortfolioManager local OVERVIEW is current
- confirm ProductPortfolioManager local INDEX is current
- confirm ProductPortfolioManager local INTEGRATED is current
- confirm final handoff bundle exists
- confirm copy blocks exist
- confirm broad reflection execution plan exists
- confirm target-specific insert pack exists
- confirm implementation is still intentionally unopened

# ============================================================
# 2. TARGET SELECTION CHECKLIST
# ============================================================

target_selection_checklist:
- identify target file class:
  - master index
  - integrated canonical
  - restart/handoff
  - portal/reflection note
  - ERP-side consumer note
- choose insertion depth:
  - short
  - medium
  - long
- confirm insertion is navigation-appropriate for that target
- avoid inserting deeper detail than the target document can naturally hold

# ============================================================
# 3. CONTENT SAFETY CHECKLIST
# ============================================================

content_safety_checklist:
- application summary remains short enough for broad navigation
- ERP truth boundary remains clear
- forecast advisory boundary remains clear
- implementation not started remains clear
- no accidental claim of production readiness
- no accidental collapse of review and approval meaning
- no accidental collapse of classification and lifecycle meaning

# ============================================================
# 4. AFTER-INSERT CHECKLIST
# ============================================================

after_insert_checklist:
- ProductPortfolioManager can be found from the target document
- canonical entry docs are named correctly
- wording remains additive
- existing target document meaning still reads naturally
- no duplicate contradictory summary was introduced
- restartability improved rather than worsened

# ============================================================
# 5. STOP CONDITIONS
# ============================================================

stop_conditions:
- target file requires heavy restructuring to insert cleanly
- insertion would force low-level implementation detail into high-level canonical
- insertion would imply implementation has started
- insertion would weaken ERP / forecast / judgment boundary wording
- insertion would create confusion about source-of-truth ownership

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Broad reflection execution should proceed only
when the insertion improves navigation without degrading meaning clarity.
EOF

cat <<'EOF' > "$BASE/900.meta/wide-reflection-execution/9000037_PRODUCT_PORTFOLIO_MANAGER_POST_INSERT_VERIFICATION_NOTE.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER POST INSERT VERIFICATION NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines what to verify
after ProductPortfolioManager is inserted into a broader canonical file.

verification_points:
- application name is spelled consistently
- application path is correct
- category remains business-judgment-application or equivalent
- canonical entries point to local ProductPortfolioManager root docs
- implementation state still reads as not started
- broad document did not accidentally inherit low-level ProductPortfolioManager detail
- boundaries still read correctly:
  - ERP truth preserved
  - forecast advisory preserved
  - application judgment owned locally

restart_verification:
- a reader of the broader file can now discover ProductPortfolioManager
- a reader can jump to OVERVIEW / INDEX / INTEGRATED
- a restart path is clearer than before insertion

formal_conclusion:
A successful insertion is one that improves discovery and restartability
without distorting the wider file.
EOF

cat <<'EOF' > "$BASE/900.meta/wide-reflection-execution/9000038_PRODUCT_PORTFOLIO_MANAGER_MINIMAL_ROLLBACK_NOTE.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER MINIMAL ROLLBACK NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines a minimal rollback philosophy
for a future broad reflection insertion pass.

rollback_principles:
- rollback only if insertion degraded clarity
- rollback should be local to the broad target file
- local ProductPortfolioManager design set should remain untouched
- prefer reverting the inserted navigation block only,
  not broad rewriting of unrelated target sections

rollback_triggers:
- inserted block duplicates an existing app entry in a conflicting way
- inserted block makes the broad file harder to read
- inserted block accidentally implies implementation work started
- inserted block weakens source-of-truth boundaries
- inserted block uses the wrong insertion depth for the target

formal_conclusion:
Rollback in a broad reflection pass should be small,
targeted,
and meaning-preserving.
EOF

cat <<'EOF' > "$BASE/900.meta/wide-reflection-execution/9000039_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_READY_FOR_EXECUTION_NOTE.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER BROAD REFLECTION READY FOR EXECUTION NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Records that the local preparation
for broad canonical insertion is now complete enough
to execute in a separate phase later.

ready_assets:
- root docs refreshed
- handoff bundle prepared
- copy blocks prepared
- reflection plan prepared
- target matrix prepared
- target-specific insert packs prepared
- execution checklist prepared
- post-insert verification note prepared
- minimal rollback philosophy prepared

not_done_here:
- no external canonical file has been modified in this local step

formal_conclusion:
Local readiness for broad reflection execution is now complete.
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
      Defines progress tracking, restart support, wide-index reflection, compression guidance, copy blocks, closure note, final handoff bundle, broad reflection planning, target-specific insert packs, and execution checklists.

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
- 900.meta/wide-insert-pack/9000028_PRODUCT_PORTFOLIO_MANAGER_WIDE_INSERT_PACK_OVERVIEW.md
- 900.meta/wide-reflection-execution/9000036_PRODUCT_PORTFOLIO_MANAGER_WIDE_REFLECTION_EXECUTION_CHECKLIST.md

current_closure_note:
The design set is broad across constitution, architecture, model, flow,
integration, operations, policy, security, and implementation requirements.
Implementation work has not started.
The current state is stable design closure with
handoff-ready meta assets,
broad reflection planning,
target-specific insert packs,
and execution-check readiness prepared locally.

next_natural_topics:
- execute a separate wide-insert phase later
- otherwise stop cleanly here
EOF

echo "PATCHED: broad reflection execution checklist docs added"
echo "BASE=$BASE"
echo
find "$BASE/900.meta/wide-reflection-execution" -maxdepth 1 -type f | sort
echo
find "$BASE" -maxdepth 1 -type f | sort
