#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p \
  "$BASE/900.meta" \
  "$BASE/900.meta/uploaded-broad-target-map"

cat <<'EOF' > "$BASE/900.meta/uploaded-broad-target-map/9000040_PRODUCT_PORTFOLIO_MANAGER_UPLOADED_BROAD_TARGET_MAP_OVERVIEW.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER UPLOADED BROAD TARGET MAP OVERVIEW
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Maps ProductPortfolioManager reflection candidates
to the broad canonical files that are currently available in this workspace.

mapping_principles:
- additive only
- navigation reflection only
- no implementation opening
- no boundary weakening
- prefer canonical entry links over low-level detail in broad files

current_local_application_state:
- design expanded
- implementation not started
- broad reflection planning ready
- target-specific insert packs ready
- execution checklist ready

formal_conclusion:
Uploaded broad canonicals are now concrete reflection candidates,
not abstract future targets.
EOF

cat <<'EOF' > "$BASE/900.meta/uploaded-broad-target-map/9000041_PRODUCT_PORTFOLIO_MANAGER_UPLOADED_TARGET_CLASSIFICATION_MATRIX.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER UPLOADED TARGET CLASSIFICATION MATRIX
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Classifies uploaded broad canonical files
by reflection suitability and insertion depth.

uploaded_target_matrix:

  - target_file: /mnt/data/003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md
    target_class: class_a_master_index
    recommended_insert_depth: medium
    reflection_priority: very_high
    why:
      Broad CivilizationOS canonical suitable for application discovery and summary reflection.

  - target_file: /mnt/data/000000_FOUNDATION_CANONICAL.md
    target_class: class_b_integrated_navigation
    recommended_insert_depth: short
    reflection_priority: high
    why:
      Foundation-level canonical should stay terse but can reference the app as a business-judgment application.

  - target_file: /mnt/data/9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md
    target_class: class_b_integrated_navigation
    recommended_insert_depth: short
    reflection_priority: high
    why:
      System-rules integrated file can reference ProductPortfolioManager as a governed application pattern.

  - target_file: /mnt/data/900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md
    target_class: class_d_portal_or_surface_index
    recommended_insert_depth: medium_to_long
    reflection_priority: very_high
    why:
      Portal/index reflection note is discovery-oriented and well-suited to richer summary text.

  - target_file: /mnt/data/014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md
    target_class: class_d_portal_or_surface_index
    recommended_insert_depth: short_to_medium
    reflection_priority: medium
    why:
      Best used as an application-consumer reflection note, not as an app summary canonical.

  - target_file: /mnt/data/ERP_DESIGN_BIBLE_FULL.md
    target_class: class_c_restart_handoff
    recommended_insert_depth: short
    reflection_priority: medium
    why:
      ERP-side file should receive only a consumer-boundary note.

  - target_file: /mnt/data/ERP_ENTERPRISE_SCOPE_v1.md
    target_class: class_c_restart_handoff
    recommended_insert_depth: short
    reflection_priority: medium
    why:
      Scope file may note ProductPortfolioManager as downstream ERP fact consumer.

  - target_file: /mnt/data/ERP_SYSTEM_FULL_DUMP.txt
    target_class: reference_dump_only
    recommended_insert_depth: none
    reflection_priority: low
    why:
      Dump-style file is not a natural human-facing navigation target.

  - target_file: /mnt/data/ERP_AUDIT_DUMP.txt
    target_class: reference_dump_only
    recommended_insert_depth: none
    reflection_priority: low
    why:
      Audit dump is not a primary navigation surface.

  - target_file: /mnt/data/ERP_GOVERNANCE_DUMP.txt
    target_class: reference_dump_only
    recommended_insert_depth: none
    reflection_priority: low
    why:
      Governance dump is not a primary app-reflection surface.

  - target_file: /mnt/data/ERP_FOUNDATION_DUMP.txt
    target_class: reference_dump_only
    recommended_insert_depth: none
    reflection_priority: low
    why:
      Dump-style foundation text should not receive navigation inserts.

  - target_file: /mnt/data/PERSONA_OS_INTEGRATED_CANONICAL.md
    target_class: cross_system_reference_only
    recommended_insert_depth: none_or_very_short
    reflection_priority: low
    why:
      ProductPortfolioManager is not primarily PersonaOS-facing.

  - target_file: /mnt/data/STREAMING_OS_INTEGRATED_CANONICAL.md
    target_class: cross_system_reference_only
    recommended_insert_depth: none_or_very_short
    reflection_priority: low
    why:
      ProductPortfolioManager is not primarily StreamingOS-facing.

formal_conclusion:
The strongest current reflection targets are:
- 003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md
- 900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md
- 000000_FOUNDATION_CANONICAL.md
- 9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md
EOF

cat <<'EOF' > "$BASE/900.meta/uploaded-broad-target-map/9000042_PRODUCT_PORTFOLIO_MANAGER_UPLOADED_TARGET_INSERTION_STRATEGY.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER UPLOADED TARGET INSERTION STRATEGY
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines insertion strategy by uploaded target.

insertion_strategy:

  /mnt/data/003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md:
    use_blocks:
      - medium_index_block
      - integrated_summary_medium
      - restart_block_short
    insertion_goal:
      Make ProductPortfolioManager discoverable in the main application/system landscape.

  /mnt/data/900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md:
    use_blocks:
      - portal reflection block
      - integrated_summary_medium
    insertion_goal:
      Improve portal-side discovery and label clarity.

  /mnt/data/000000_FOUNDATION_CANONICAL.md:
    use_blocks:
      - short index block
    insertion_goal:
      Reflect the app as a business-judgment application without overloading the foundation doc.

  /mnt/data/9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md:
    use_blocks:
      - short index block
      - short restart note if appropriate
    insertion_goal:
      Show that the app exists and remains governed by explicit ERP/fact/judgment boundaries.

  /mnt/data/014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md:
    use_blocks:
      - common-ledger consumer note
    insertion_goal:
      Show ProductPortfolioManager as a consumer of common capabilities, not as a common component itself.

  /mnt/data/ERP_DESIGN_BIBLE_FULL.md:
    use_blocks:
      - ERP-side consumer-boundary note
    insertion_goal:
      Reflect the app only as a downstream ERP fact consumer.

  /mnt/data/ERP_ENTERPRISE_SCOPE_v1.md:
    use_blocks:
      - ERP-side consumer-boundary note
    insertion_goal:
      Preserve scope clarity without treating ProductPortfolioManager as ERP itself.

formal_conclusion:
Different uploaded targets should receive different insertion depth,
not one universal summary block.
EOF

cat <<'EOF' > "$BASE/900.meta/uploaded-broad-target-map/9000043_PRODUCT_PORTFOLIO_MANAGER_UPLOADED_TARGET_EXECUTION_PRIORITY.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER UPLOADED TARGET EXECUTION PRIORITY
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines execution priority if a later phase actually edits uploaded broad canonicals.

priority_order:

  priority_1:
    - /mnt/data/900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md
    - /mnt/data/003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md

  priority_2:
    - /mnt/data/000000_FOUNDATION_CANONICAL.md
    - /mnt/data/9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md

  priority_3:
    - /mnt/data/014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md
    - /mnt/data/ERP_DESIGN_BIBLE_FULL.md
    - /mnt/data/ERP_ENTERPRISE_SCOPE_v1.md

  priority_4:
    - dump/reference files only if explicitly needed later

why_this_order:
- portal and CivilizationOS rebuilt give the best discovery return first
- foundation/system-rules should stay terse and therefore come after wording is proven
- ledger/ERP-side reflections are useful but secondary

formal_conclusion:
If broad edits are later executed,
start with the highest-discovery, lowest-semantic-risk files first.
EOF

cat <<'EOF' > "$BASE/900.meta/uploaded-broad-target-map/9000044_PRODUCT_PORTFOLIO_MANAGER_UPLOADED_TARGET_READY_NOTE.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER UPLOADED TARGET READY NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Records that uploaded broad canonical targets
have now been mapped and prioritized.

ready_now:
- uploaded target classification matrix
- insertion strategy by uploaded file
- execution priority by uploaded file

not_done_here:
- uploaded broad canonical files themselves have not been edited in this step

formal_conclusion:
ProductPortfolioManager local prep is now aligned
to the actually uploaded broad canonical set.
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
      Defines progress tracking, restart support, wide-index reflection, compression guidance, copy blocks, closure note, final handoff bundle, broad reflection planning, target-specific insert packs, execution checklists, and uploaded-target mapping.

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
- 900.meta/uploaded-broad-target-map/9000040_PRODUCT_PORTFOLIO_MANAGER_UPLOADED_BROAD_TARGET_MAP_OVERVIEW.md

current_closure_note:
The design set is broad across constitution, architecture, model, flow,
integration, operations, policy, security, and implementation requirements.
Implementation work has not started.
The current state is stable design closure with
handoff-ready meta assets,
broad reflection planning,
target-specific insert packs,
execution-check readiness,
and uploaded-target mapping prepared locally.

next_natural_topics:
- execute a separate broad-insert phase later against chosen uploaded canonicals
- otherwise stop cleanly here
EOF

echo "PATCHED: uploaded broad target map docs added"
echo "BASE=$BASE"
echo
find "$BASE/900.meta/uploaded-broad-target-map" -maxdepth 1 -type f | sort
echo
find "$BASE" -maxdepth 1 -type f | sort
