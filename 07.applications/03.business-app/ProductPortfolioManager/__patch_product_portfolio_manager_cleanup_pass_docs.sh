#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p "$BASE/900.meta"

cat <<'EOF' > "$BASE/900.meta/9000003_PRODUCT_PORTFOLIO_MANAGER_DUPLICATION_AND_GAP_REVIEW.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER DUPLICATION AND GAP REVIEW
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides a structured review of likely duplication,
thin descriptions,
and remaining design gaps across the current ProductPortfolioManager design set.

review_principles:
- additive only
- do not delete meaning casually
- preserve navigation clarity
- prefer explicit boundary notes over silent consolidation
- implementation is still out of scope

# ============================================================
# 1. CURRENT STRENGTHS
# ============================================================

current_strengths:
- application definition is fixed
- ERP boundary is explicit
- forecast boundary is explicit
- KPI/scoring meaning is explicit
- classification/lifecycle separation is explicit
- proposal/review/approval meaning is explicit
- alert/share/audit/governance surfaces are broadly covered
- root navigation has been refreshed

# ============================================================
# 2. EXPECTED DUPLICATION ZONES
# ============================================================

expected_duplication_zones:

  - duplication_zone_id: PPM-DUP-001
    topic: ERP boundary
    likely_overlap_files:
      - 0100002_PRODUCT_PORTFOLIO_MANAGER_BOUNDARY_CONSTITUTION.md
      - 0200003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_ARCHITECTURE.md
      - 0200010_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_ARCHITECTURE_FORMAL_DESIGN.md
      - 0600001_ERP_REFERENCE_INTEGRATION.md
      - 0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
      - 0800011_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_POLICY.md
      - 1200013_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_REQUIREMENTS.md
    interpretation:
      Coverage is good, but repeated phrases around "ERP truth" and "no silent mutation"
      are likely duplicated across constitution, architecture, policy, and implementation.
    recommended_cleanup_direction:
      Keep repetition only where layer meaning differs.
      Reduce sentence-level duplication later if readability degrades.

  - duplication_zone_id: PPM-DUP-002
    topic: Forecast boundary
    likely_overlap_files:
      - 0200004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_ARCHITECTURE.md
      - 0200011_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_ARCHITECTURE_FORMAL_DESIGN.md
      - 0600002_FORECAST_REFERENCE_INTEGRATION.md
      - 0600004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
      - 0800012_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_POLICY.md
      - 1200014_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_REQUIREMENTS.md
    interpretation:
      Advisory-reference meaning is strong,
      but multiple files repeat the same "forecast is not truth" language.
    recommended_cleanup_direction:
      Preserve boundary clarity,
      but later tighten repeated explanatory lines.

  - duplication_zone_id: PPM-DUP-003
    topic: Classification and proposal governance
    likely_overlap_files:
      - 0100003_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_AND_LIFECYCLE_CONSTITUTION.md
      - 0100004_PRODUCT_PORTFOLIO_MANAGER_PROPOSAL_CONSTITUTION.md
      - 0500007_PRODUCT_PORTFOLIO_MANAGER_BUSINESS_FLOW_FORMAL_DESIGN.md
      - 0500009_PRODUCT_PORTFOLIO_MANAGER_PROPOSAL_FORMAL_FLOW.md
      - 1200017_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_CHANGE_AND_PROPOSAL_DETAIL_REQUIREMENTS.md
    interpretation:
      Business distinction is correct,
      but current wording may repeat "classification is not proposal" and similar contrast statements.
    recommended_cleanup_direction:
      Keep contrast, but later compress repeated contrast language.

  - duplication_zone_id: PPM-DUP-004
    topic: Review / approval separation
    likely_overlap_files:
      - 0500004_REVIEW_SESSION_FLOW.md
      - 0500005_APPROVAL_FLOW.md
      - 0500008_PRODUCT_PORTFOLIO_MANAGER_REVIEW_SESSION_FORMAL_FLOW.md
      - 0800003_PRODUCT_PORTFOLIO_MANAGER_ROLE_AND_APPROVAL_POLICY.md
      - 0800009_PRODUCT_PORTFOLIO_MANAGER_REVIEW_SESSION_POLICY.md
      - 1000002_PRODUCT_PORTFOLIO_MANAGER_AUTHORIZATION_FORMAL_DESIGN.md
    interpretation:
      Separation is correctly emphasized,
      but this is one of the most repeated meanings in the set.
    recommended_cleanup_direction:
      Preserve because it is high-value,
      but later standardize wording.

# ============================================================
# 3. THIN OR STILL-LIGHT AREAS
# ============================================================

thin_areas:

  - thin_area_id: PPM-THIN-001
    topic: KPI exact scoring profile examples
    current_state:
      Score meaning is well-defined,
      but exact weighting-profile examples are not yet formalized.
    impact:
      Good for design meaning,
      but later scoring governance may need more specificity.

  - thin_area_id: PPM-THIN-002
    topic: Notification routing detail
    current_state:
      Alert and notification policy exists,
      but recipient-resolution examples and escalation ladders are still high-level.
    impact:
      Operations are understandable,
      but handoff detail is not fully thick yet.

  - thin_area_id: PPM-THIN-003
    topic: Share-scope examples by entity type
    current_state:
      Share rules are present,
      but entity-by-entity recommended defaults are still somewhat abstract.
    impact:
      Policy is clear,
      but UX defaults may later need more precision.

  - thin_area_id: PPM-THIN-004
    topic: Saved preset ownership variants
    current_state:
      Personal preset meaning is clear,
      shared preset meaning is future-oriented and lighter.
    impact:
      Fine for now,
      but later team/shared preset policy may need thickening.

# ============================================================
# 4. REMAINING GAP CANDIDATES
# ============================================================

remaining_gap_candidates:
- exact notification recipient matrix by role/state
- explicit freshness guidance by surface for ERP/forecast references
- more formal examples of high-impact classification transitions
- review-session target-selection templates
- stronger examples for cross-workspace restrictions
- optional shared-preset governance if needed later

# ============================================================
# 5. CURRENT JUDGMENT
# ============================================================

current_judgment:
The design set is structurally broad and already usable as a design basis.
The remaining work is mainly refinement, deduplication discipline,
and selected deepening of thinner operational areas,
not major missing foundations.

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager is past the "missing structure" stage.
It is now in the "cleanup, standardization, and selective deepening" stage.
EOF

cat <<'EOF' > "$BASE/900.meta/9000004_PRODUCT_PORTFOLIO_MANAGER_STANDARDIZATION_PASS_NOTE.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER STANDARDIZATION PASS NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the standardization intent for the next cleanup-oriented pass.

standardization_targets:
- normalize repeated wording around ERP boundary
- normalize repeated wording around forecast advisory boundary
- normalize repeated wording around review vs approval separation
- normalize repeated wording around classification vs proposal distinction
- keep each layer responsible for its own kind of meaning

layer_standardization_rules:
constitution:
- keep meaning and boundaries only

architecture:
- keep structural role and surface relation only

model:
- keep entity semantics, field semantics, and relation meaning only

flow:
- keep operator/business progression only

policy:
- keep rule interpretation only

security:
- keep authority and access meaning only

implementation:
- keep non-code requirements only

warning:
Do not over-compress important repeated warnings if compression reduces safety or clarity.

formal_conclusion:
The next cleanup pass should improve readability and navigation quality
without weakening governance meaning.
EOF

cat <<'EOF' > "$BASE/900.meta/9000005_PRODUCT_PORTFOLIO_MANAGER_NEXT_DESIGN_BACKLOG.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER NEXT DESIGN BACKLOG
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Captures the next design backlog after the current broad design expansion.

next_backlog_items:
- optional notification recipient matrix formalization
- optional freshness-by-surface formalization
- optional high-impact classification transition examples
- optional review-session template set
- optional shared preset governance expansion
- optional broader CivilizationOS-side index reflection
- optional integrated cleanup/compression pass

priority_view:
high:
- cleanup/compression pass
- broader index reflection if needed

medium:
- freshness-by-surface formalization
- notification recipient matrix

low:
- shared preset expansion
- review-session template library

formal_conclusion:
No implementation backlog is opened here.
This backlog remains design-only.
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
      Defines the meaning boundaries of the application,
      including classification, lifecycle, proposal, ERP boundary, and forecast boundary.

  020.architecture:
    role:
      Defines how major surfaces and domains are structured,
      including dashboard, list, comparison, detail, review session,
      proposal handling, KPI/scoring, and source boundaries.

  030.model:
    role:
      Defines product portfolio entities,
      exact tables and enums,
      relation matrix,
      API mapping,
      and settings/preset semantics.

  040.runtime:
    role:
      Defines runtime behavior for score refresh,
      classification state handling,
      and review/approval progression.

  050.flow:
    role:
      Defines business flow,
      exact payload flow,
      review/proposal/detail/list/comparison flow,
      and approval/alert/audit operational flow.

  060.integration:
    role:
      Defines ERP and forecast reference integration boundaries
      and explicit source-attributed data handling.

  070.operations:
    role:
      Defines refresh cadence,
      alert/notification handling,
      audit/history operations,
      and review-session operations.

  080.policy:
    role:
      Defines classification, approval, localization, currency,
      role, alert, share, audit, scoring,
      lifecycle, review, proposal, ERP, forecast, and preset policies.

  100.security:
    role:
      Defines access, authorization,
      share security,
      and audit-history security.

  110.infrastructure:
    role:
      Defines infrastructure shape for persistence,
      gateways, and draft/sync support.

  120.implementation:
    role:
      Defines non-code implementation requirements,
      API contracts,
      screen/API mappings,
      and screen-level requirement sets.

  130.development:
    role:
      Defines phase plan and development guardrails.

  900.meta:
    role:
      Defines meta-level progress tracking,
      root refresh notes,
      duplication/gap review,
      and standardization-pass notes.

top_priority_documents:
- 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
- 010.constitution/0100001_PRODUCT_PORTFOLIO_MANAGER_CONSTITUTION.md
- 020.architecture/0200001_PRODUCT_PORTFOLIO_MANAGER_ARCHITECTURE.md
- 030.model/0300007_PRODUCT_PORTFOLIO_MANAGER_EXACT_TABLES_AND_ENUMS.md
- 050.flow/0500007_PRODUCT_PORTFOLIO_MANAGER_BUSINESS_FLOW_FORMAL_DESIGN.md
- 060.integration/0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
- 060.integration/0600004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
- 100.security/1000002_PRODUCT_PORTFOLIO_MANAGER_AUTHORIZATION_FORMAL_DESIGN.md
- 120.implementation/1200004_PRODUCT_PORTFOLIO_MANAGER_API_CONTRACT_EXACT.md
- 900.meta/9000003_PRODUCT_PORTFOLIO_MANAGER_DUPLICATION_AND_GAP_REVIEW.md
- 900.meta/9000004_PRODUCT_PORTFOLIO_MANAGER_STANDARDIZATION_PASS_NOTE.md

current_closure_note:
The design set is broad across
constitution, architecture, model, flow, integration, operations, policy,
security, and implementation requirements.
Implementation work has not started.
The current stage is cleanup, standardization, and selective deepening.

next_natural_design_topics:
- broader CivilizationOS-side index reflection
- optional cleanup/compression pass
- optional freshness-by-surface formalization
- optional notification recipient matrix formalization
EOF

echo "PATCHED: cleanup pass docs added"
echo "BASE=$BASE"
echo
find "$BASE/900.meta" -maxdepth 1 -type f | sort
echo
find "$BASE" -maxdepth 1 -type f | sort
