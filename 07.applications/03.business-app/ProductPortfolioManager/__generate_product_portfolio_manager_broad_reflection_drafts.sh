#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"
OUT="$BASE/900.meta/applied-broad-reflection-drafts"

mkdir -p "$OUT"

append_block() {
  SRC="$1"
  OUT_NAME="$2"

  if [ ! -f "$SRC" ]; then
    echo "SKIP: not found -> $SRC"
    return 0
  fi

  DEST="$OUT/$OUT_NAME"

  cat "$SRC" > "$DEST"
  printf '\n\n' >> "$DEST"
  cat >> "$DEST"

  echo "OK: $DEST"
}

append_block \
  "/mnt/data/003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md" \
  "003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT__PPM_REFLECTION_DRAFT.md" <<'EOF'
# ----------------------------------------------------------------
# ADDITIVE APPLICATION REFLECTION DRAFT
# ProductPortfolioManager
# ----------------------------------------------------------------

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
EOF

append_block \
  "/mnt/data/900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md" \
  "900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE__PPM_REFLECTION_DRAFT.md" <<'EOF'
# ----------------------------------------------------------------
# ADDITIVE PORTAL REFLECTION DRAFT
# ProductPortfolioManager
# ----------------------------------------------------------------

商品ポートフォリオ管理アプリ（ProductPortfolioManager）は、
ERPの事実値を参照しつつ、
商品評価、戦略分類、提案、レビュー、承認、監査履歴を扱う
軽量な商品戦略判断アプリである。
Forecast は参考情報として扱い、
ERP truth は保持したまま、
アプリ側で judgment artifact を持つ。

references_to_add:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
- /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
- /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md
EOF

append_block \
  "/mnt/data/000000_FOUNDATION_CANONICAL.md" \
  "000000_FOUNDATION_CANONICAL__PPM_REFLECTION_DRAFT.md" <<'EOF'
# ----------------------------------------------------------------
# ADDITIVE FOUNDATION REFERENCE DRAFT
# ProductPortfolioManager
# ----------------------------------------------------------------

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
EOF

append_block \
  "/mnt/data/9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md" \
  "9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED__PPM_REFLECTION_DRAFT.md" <<'EOF'
# ----------------------------------------------------------------
# ADDITIVE RULES-ALIGNED APPLICATION NOTE
# ProductPortfolioManager
# ----------------------------------------------------------------

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
EOF

append_block \
  "/mnt/data/014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md" \
  "014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER__PPM_REFLECTION_DRAFT.md" <<'EOF'
# ----------------------------------------------------------------
# ADDITIVE CONSUMER APPLICATION NOTE
# ProductPortfolioManager
# ----------------------------------------------------------------

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
EOF

append_block \
  "/mnt/data/ERP_DESIGN_BIBLE_FULL.md" \
  "ERP_DESIGN_BIBLE_FULL__PPM_REFLECTION_DRAFT.md" <<'EOF'
# ----------------------------------------------------------------
# ADDITIVE DOWNSTREAM CONSUMER NOTE
# ProductPortfolioManager
# ----------------------------------------------------------------

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
EOF

append_block \
  "/mnt/data/ERP_ENTERPRISE_SCOPE_v1.md" \
  "ERP_ENTERPRISE_SCOPE_v1__PPM_REFLECTION_DRAFT.md" <<'EOF'
# ----------------------------------------------------------------
# ADDITIVE DOWNSTREAM CONSUMER NOTE
# ProductPortfolioManager
# ----------------------------------------------------------------

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
EOF

cat <<'EOF' > "$OUT/9000054_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_DRAFT_GENERATION_NOTE.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER BROAD REFLECTION DRAFT GENERATION NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Records that draft-applied broad reflection files were generated
from uploaded broad canonicals without overwriting the originals.

generation_mode:
- source files in /mnt/data were read
- additive reflection blocks were appended into draft copies
- original uploaded files were not modified

draft_output_directory:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/900.meta/applied-broad-reflection-drafts
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
      Defines progress tracking, restart support, wide-index reflection, compression guidance, copy blocks, closure note, final handoff bundle, broad reflection planning, target-specific insert packs, execution checklists, uploaded-target mapping, uploaded-target patch proposals, and broad-reflection draft outputs.

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
- 900.meta/applied-broad-reflection-drafts/9000054_PRODUCT_PORTFOLIO_MANAGER_BROAD_REFLECTION_DRAFT_GENERATION_NOTE.md

current_closure_note:
The design set is broad across constitution, architecture, model, flow,
integration, operations, policy, security, and implementation requirements.
Implementation work has not started.
The current state is stable design closure with
handoff-ready meta assets,
uploaded-target patch proposals,
and non-destructive broad-reflection draft generation support.

next_natural_topics:
- review generated broad-reflection drafts
- apply to chosen broad canonicals later if approved
- otherwise stop cleanly here
EOF

echo "GENERATED: broad reflection draft files"
echo "OUT=$OUT"
echo
find "$OUT" -maxdepth 1 -type f | sort
