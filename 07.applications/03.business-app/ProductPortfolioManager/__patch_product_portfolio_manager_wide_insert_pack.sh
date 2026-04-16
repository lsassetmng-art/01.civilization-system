#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p \
  "$BASE/900.meta" \
  "$BASE/900.meta/wide-insert-pack"

cat <<'EOF' > "$BASE/900.meta/wide-insert-pack/9000028_PRODUCT_PORTFOLIO_MANAGER_WIDE_INSERT_PACK_OVERVIEW.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER WIDE INSERT PACK OVERVIEW
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides a target-by-target insert pack
for reflecting ProductPortfolioManager into broader canonical documents.

principles:
- additive only
- reflection only
- no implementation opening
- no boundary weakening
- use short/medium/long insert depth depending on target document role

target_families:
- CivilizationOS canonical full rebuilt
- foundation / system rules canonicals
- portal-side index reflection notes
- application/common ledgers or reflection notes
- ERP-side reflection notes only where ERP boundary explanation is useful

formal_conclusion:
This pack is for controlled broad navigation reflection,
not for changing ProductPortfolioManager meaning.
EOF

cat <<'EOF' > "$BASE/900.meta/wide-insert-pack/9000029_PRODUCT_PORTFOLIO_MANAGER_INSERT_BLOCK_FOR_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER INSERT BLOCK FOR CIVILIZATION OS CANONICAL FULL REBUILT
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_file_hint:
/mnt/data/003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md

recommended_insert_depth:
medium

recommended_insert_location:
- application catalog area
- applications landscape area
- business-side application summary area
- restart/navigation appendix area

copy_block:
  - application_name: ProductPortfolioManager
    system_group: 07.applications
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

note:
Use medium depth here because Civilization OS canonical rebuilt
is broad enough to benefit from identity + boundary summary,
but does not need low-level payload/schema detail.
EOF

cat <<'EOF' > "$BASE/900.meta/wide-insert-pack/9000030_PRODUCT_PORTFOLIO_MANAGER_INSERT_BLOCK_FOR_FOUNDATION_AND_SYSTEM_RULES.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER INSERT BLOCK FOR FOUNDATION AND SYSTEM RULES
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_file_hints:
- /mnt/data/000000_FOUNDATION_CANONICAL.md
- /mnt/data/9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md

recommended_insert_depth:
short

recommended_insert_location:
- applications overview appendix
- example application mapping
- system navigation reflection note section

copy_block:
  - application_name: ProductPortfolioManager
    role:
      - product portfolio judgment
      - product strategy classification
      - proposal/review/approval governance
    boundaries:
      - ERP facts preserved
      - forecast advisory preserved
    state:
      - design expanded
      - implementation not started
    entry:
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md

note:
Use short depth here because these files are likely system-level canonicals,
not app-specific drill-down catalogs.
EOF

cat <<'EOF' > "$BASE/900.meta/wide-insert-pack/9000031_PRODUCT_PORTFOLIO_MANAGER_INSERT_BLOCK_FOR_PORTAL_REFLECTION.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER INSERT BLOCK FOR PORTAL REFLECTION
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_file_hint:
/mnt/data/900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md

recommended_insert_depth:
medium_to_long

recommended_insert_location:
- app discovery area
- navigation tiles summary area
- system-index reflection entry area

copy_block:
  - application_name: ProductPortfolioManager
    display_label: Product Portfolio Manager / Product Strategy Judgment
    category: business-judgment-application
    summary:
      Lightweight product strategy judgment application
      that helps evaluate products,
      rank and classify them strategically,
      manage proposals,
      run review sessions,
      handle approvals,
      surface alerts,
      and preserve audit/history.
    distinguishing_points:
      - ERP truth boundary preserved
      - forecast treated as advisory reference
      - multilingual / multi-currency / cross-device design fixed
    primary_entries:
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md

note:
Portal/index reflection can tolerate slightly richer wording
because it is discovery-oriented.
EOF

cat <<'EOF' > "$BASE/900.meta/wide-insert-pack/9000032_PRODUCT_PORTFOLIO_MANAGER_INSERT_BLOCK_FOR_COMMON_LEDGER_OR_APP_LEDGER.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER INSERT BLOCK FOR COMMON LEDGER OR APP LEDGER
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_file_hint:
/mnt/data/014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md

recommended_insert_depth:
short_to_medium

recommended_insert_location:
- application consumers section
- application references section
- future reuse/reference appendix

copy_block:
  - consumer_application: ProductPortfolioManager
    consumer_role:
      product strategy judgment application
    common-needing-areas:
      - localization
      - currency context display
      - score/status display surfaces
      - alert and approval surfaces
      - history/audit visibility surfaces
      - responsive cross-device shell
    current_state:
      - common-component candidates already separated out
      - app-specific design expanded
      - implementation not started

note:
This is not for moving ProductPortfolioManager into common components.
It is only for showing that the app consumes common capabilities.
EOF

cat <<'EOF' > "$BASE/900.meta/wide-insert-pack/9000033_PRODUCT_PORTFOLIO_MANAGER_INSERT_BLOCK_FOR_ERP_SIDE_REFERENCE_NOTE.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER INSERT BLOCK FOR ERP SIDE REFERENCE NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_file_hints:
- /mnt/data/ERP_DESIGN_BIBLE_FULL.md
- /mnt/data/ERP_ENTERPRISE_SCOPE_v1.md
- /mnt/data/ERP_SYSTEM_FULL_DUMP.txt

recommended_insert_depth:
short

recommended_insert_location:
- consuming applications appendix
- downstream application references
- business-side judgment consumer note

copy_block:
  - downstream_application: ProductPortfolioManager
    relationship_to_erp:
      Consumes ERP product and operational facts as reference.
      Does not replace ERP truth.
      Owns application-side portfolio judgment artifacts only.
    owned_by_application:
      - score
      - classification
      - proposal
      - review
      - approval
      - alert
      - audit/history
    entry:
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/060.integration/0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md

note:
ERP-side documents should receive only a narrow consumer-boundary note,
not a full application summary.
EOF

cat <<'EOF' > "$BASE/900.meta/wide-insert-pack/9000034_PRODUCT_PORTFOLIO_MANAGER_WIDE_INSERT_EXECUTION_ORDER.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER WIDE INSERT EXECUTION ORDER
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the safest order for later wide insert execution.

execution_order:
1. portal/index reflection note
2. Civilization OS canonical full rebuilt
3. foundation/system-rules summary docs
4. common/app ledger note
5. ERP-side consumer-boundary note only if needed

reasoning:
- portal/index reflection is lowest risk and highest discovery value
- Civilization OS canonical full rebuilt is broad and suitable for application reflection
- system/foundation docs should remain terse
- ERP-side docs should receive only minimal consumer-boundary reflection

formal_conclusion:
If broad insertion is executed later,
this order minimizes semantic disruption.
EOF

cat <<'EOF' > "$BASE/900.meta/9000035_PRODUCT_PORTFOLIO_MANAGER_WIDE_INSERT_READY_NOTE.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER WIDE INSERT READY NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Records that target-by-target insert blocks
for broader canonical documents are now prepared locally.

prepared_assets:
- Civilization OS canonical full rebuilt insert block
- foundation/system-rules insert block
- portal reflection insert block
- common ledger insert block
- ERP-side consumer-boundary insert block
- execution order note

not_done_here:
- no external canonical file has been edited in this local phase

formal_conclusion:
Local preparation for broad insertion is complete.
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
      Defines progress tracking, restart support, wide-index reflection, compression guidance, copy blocks, closure note, final handoff bundle, broad reflection execution planning, and target-specific wide insert packs.

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

current_closure_note:
The design set is broad across constitution, architecture, model, flow,
integration, operations, policy, security, and implementation requirements.
Implementation work has not started.
The current state is stable design closure with
handoff-ready meta assets,
broad reflection planning,
and target-specific insert packs prepared locally.

next_natural_topics:
- execute a separate wide-insert phase later against chosen canonical files
- otherwise stop cleanly here
EOF

echo "PATCHED: target-specific wide insert pack added"
echo "BASE=$BASE"
echo
find "$BASE/900.meta/wide-insert-pack" -maxdepth 1 -type f | sort
echo
find "$BASE/900.meta" -maxdepth 1 -type f | sort
echo
find "$BASE" -maxdepth 1 -type f | sort
