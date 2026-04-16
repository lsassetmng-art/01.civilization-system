#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p \
  "$BASE/900.meta" \
  "$BASE/900.meta/compression-pass"

cat <<'EOF' > "$BASE/900.meta/9000010_PRODUCT_PORTFOLIO_MANAGER_COMPRESSION_PASS_OVERVIEW.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER COMPRESSION PASS OVERVIEW
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the document-compression and wording-standardization pass
for ProductPortfolioManager design files.

compression_principles:
- additive only
- do not delete meaning casually
- do not compress away governance warnings
- do not merge different layer responsibilities into one text block
- prioritize readability, restartability, and navigation clarity
- implementation remains out of scope

compression_objectives:
- reduce repeated sentence patterns
- strengthen per-layer responsibility clarity
- preserve important warnings while reducing low-value duplication
- make restart reading faster
- make integrated navigation easier to scan

formal_conclusion:
Compression is a readability pass,
not a meaning-reduction pass.
EOF

cat <<'EOF' > "$BASE/900.meta/compression-pass/9000011_PRODUCT_PORTFOLIO_MANAGER_LAYER_COMPRESSION_RULES.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER LAYER COMPRESSION RULES
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines how each layer should be compressed or standardized
without losing design intent.

layer_rules:

  constitution:
    keep:
      - meaning boundaries
      - source-of-truth boundaries
      - non-negotiable principles
    compress:
      - repeated contrast phrases when already established elsewhere
    avoid:
      - implementation-style requirement wording

  architecture:
    keep:
      - structural roles
      - surface relations
      - domain responsibilities
    compress:
      - repeated warnings already owned by constitution/policy unless architecture-specific
    avoid:
      - field-by-field model semantics

  model:
    keep:
      - entity meaning
      - field semantics
      - relation semantics
    compress:
      - repeated governance phrases not specific to model meaning
    avoid:
      - UI wording

  flow:
    keep:
      - actor progression
      - state progression
      - handoff meaning
    compress:
      - repeated generic cautions already fixed in policy/security unless flow-specific
    avoid:
      - pure architecture summaries

  integration:
    keep:
      - source boundary
      - reference semantics
      - metadata expectations
    compress:
      - repeated "not truth" phrasing where already firmly established
    avoid:
      - UI-heavy wording

  operations:
    keep:
      - cadence
      - handling discipline
      - operational metrics
    compress:
      - repeated constitutional warnings unless operator-facing handling depends on them
    avoid:
      - exact schema semantics

  policy:
    keep:
      - interpretation rules
      - allowed/disallowed meaning
      - separation rules
    compress:
      - architecture descriptions
    avoid:
      - implementation checklist style wording

  security:
    keep:
      - authority boundaries
      - access rules
      - tamper-resistance expectations
    compress:
      - repeated business-value exposition not tied to security meaning
    avoid:
      - generic product descriptions

  implementation:
    keep:
      - non-code requirements
      - screen/API/data requirement statements
    compress:
      - long repeated boundary reminders already fixed above unless needed for implementation safety
    avoid:
      - code or DDL

  meta:
    keep:
      - navigation
      - cleanup guidance
      - restart support
    compress:
      - redundant summaries that merely restate root overview

formal_conclusion:
Compression should make each layer sound more like itself.
EOF

cat <<'EOF' > "$BASE/900.meta/compression-pass/9000012_PRODUCT_PORTFOLIO_MANAGER_REPEATED_PHRASE_NORMALIZATION.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER REPEATED PHRASE NORMALIZATION
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides normalization targets for common repeated phrase families.

repeated_phrase_families:

  - family_id: PPM-RPT-001
    topic: ERP boundary
    common_repetition:
      - ERP remains truth
      - no silent ERP mutation
      - application judgment is separate
    normalization_rule:
      Keep the full warning in constitution/policy/integration.
      Use shorter references elsewhere unless the layer needs explicit restatement.

  - family_id: PPM-RPT-002
    topic: forecast advisory meaning
    common_repetition:
      - forecast is advisory
      - forecast is not truth
      - forecast is not final decision
    normalization_rule:
      Keep full wording in constitution/policy/integration.
      Shorten in architecture/implementation when advisory meaning is already established.

  - family_id: PPM-RPT-003
    topic: review versus approval
    common_repetition:
      - review is not approval
      - review completion is not final approval
    normalization_rule:
      Preserve strongly in flow/policy/security.
      Use lighter wording elsewhere.

  - family_id: PPM-RPT-004
    topic: classification versus lifecycle
    common_repetition:
      - lifecycle is not classification
      - classification is strategy meaning
    normalization_rule:
      Keep strong wording in constitution/model/policy.
      Use shorter references in screen/implementation docs.

  - family_id: PPM-RPT-005
    topic: proposal versus execution
    common_repetition:
      - proposal is not execution truth
      - approved is not completed
    normalization_rule:
      Keep strong wording in constitution/policy/flow.
      Use concise reminders in UI requirements.

formal_conclusion:
Normalization should reduce reading fatigue
without weakening safety-critical meaning.
EOF

cat <<'EOF' > "$BASE/900.meta/compression-pass/9000013_PRODUCT_PORTFOLIO_MANAGER_COMPRESSION_TARGET_LIST.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER COMPRESSION TARGET LIST
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Lists candidate files or file families
that are most likely to benefit from a wording-compression pass.

high_priority_targets:
- 0200003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_ARCHITECTURE.md
- 0200010_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_ARCHITECTURE_FORMAL_DESIGN.md
- 0600001_ERP_REFERENCE_INTEGRATION.md
- 0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
- 0200004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_ARCHITECTURE.md
- 0200011_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_ARCHITECTURE_FORMAL_DESIGN.md
- 0600002_FORECAST_REFERENCE_INTEGRATION.md
- 0600004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
- 0500004_REVIEW_SESSION_FLOW.md
- 0500005_APPROVAL_FLOW.md
- 0500008_PRODUCT_PORTFOLIO_MANAGER_REVIEW_SESSION_FORMAL_FLOW.md
- 0800009_PRODUCT_PORTFOLIO_MANAGER_REVIEW_SESSION_POLICY.md

medium_priority_targets:
- 1200013_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_REQUIREMENTS.md
- 1200014_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_REQUIREMENTS.md
- 1200012_PRODUCT_PORTFOLIO_MANAGER_PROPOSAL_REQUIREMENTS.md
- 1200017_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_CHANGE_AND_PROPOSAL_DETAIL_REQUIREMENTS.md

low_priority_targets:
- root overview/index/integrated files
- meta notes that intentionally summarize state

formal_conclusion:
Compression should start with boundary-heavy files,
because that is where repetition is currently most likely.
EOF

cat <<'EOF' > "$BASE/900.meta/compression-pass/9000014_PRODUCT_PORTFOLIO_MANAGER_SAFE_COMPRESSION_CHECKLIST.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER SAFE COMPRESSION CHECKLIST
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides a safety checklist for a later wording-compression pass.

checklist:
- keep root navigation stable
- do not remove canonical files
- do not merge layer responsibilities
- do not weaken ERP boundary wording in core boundary-owning files
- do not weaken forecast advisory wording in core boundary-owning files
- do not weaken review/approval separation wording in flow/policy/security
- keep multilingual and multi-currency requirements explicit
- keep cross-device meaning parity explicit
- keep implementation out of scope
- record compression results in a meta note if a full pass is later executed

formal_conclusion:
Compression is allowed only when clarity improves
and governance meaning remains intact.
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
      Defines cadence, alert/notification handling, audit/history operations, and review-session operations.

  080.policy:
    role:
      Defines interpretation rules across classification, approval, localization, currency, share, audit, scoring, lifecycle, proposal, ERP, forecast, and presets.

  100.security:
    role:
      Defines access, authorization, share security, and audit-history security.

  110.infrastructure:
    role:
      Defines infrastructure shape for persistence, gateways, and draft/sync support.

  120.implementation:
    role:
      Defines non-code implementation requirements, API contracts, screen/API mappings, and screen-level requirements.

  130.development:
    role:
      Defines phase plan and development guardrails.

  900.meta:
    role:
      Defines progress tracking, cleanup guidance, restart support, wide-index reflection, and compression-pass guidance.

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
- 900.meta/9000006_PRODUCT_PORTFOLIO_MANAGER_WIDE_INDEX_REFLECTION_OVERVIEW.md
- 900.meta/index-reflection/9000009_PRODUCT_PORTFOLIO_MANAGER_MASTER_RESTART_NOTE.md
- 900.meta/9000010_PRODUCT_PORTFOLIO_MANAGER_COMPRESSION_PASS_OVERVIEW.md

current_closure_note:
The design set is broad across constitution, architecture, model, flow,
integration, operations, policy, security, and implementation requirements.
Implementation work has not started.
The current stage is cleanup, standardization, selective deepening,
wide navigation reflection, and future-safe compression planning.

next_natural_design_topics:
- optional actual wording-compression pass
- optional freshness-by-surface formalization
- optional notification recipient matrix formalization
- optional wider CivilizationOS-side root index insertion
EOF

echo "PATCHED: compression pass docs added"
echo "BASE=$BASE"
echo
find "$BASE/900.meta/compression-pass" -maxdepth 1 -type f | sort
echo
find "$BASE/900.meta" -maxdepth 1 -type f | sort
echo
find "$BASE" -maxdepth 1 -type f | sort
