# ============================================================
# COMPANY LISTING READINESS MODEL
# ============================================================

status: canonical
layer: model
scope: company-builder
component: company-listing-readiness

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the official model
for company listing readiness.

Listing readiness is the structured preparation state
that determines whether a company is approaching
public market eligibility under nation-defined market rules.

It is not the listing application itself.
It is the readiness state before application.


# ============================================================
# 2. CORE RULE
# ============================================================

A company may track listing readiness
even before it becomes listable.

Listing readiness must distinguish between:

- base eligibility
- current readiness
- target markets
- missing requirements
- blocked reasons


# ============================================================
# 3. OFFICIAL FIELD SET
# ============================================================

A company listing readiness structure should contain:

- company_id
- base_listing_eligibility
- blocked_listing_reason
- listing_readiness_state
- target_market_candidates
- readiness_snapshot
- missing_requirements
- last_readiness_evaluated_at
- readiness_notes


# ============================================================
# 4. BASE ELIGIBILITY
# ============================================================

base_listing_eligibility means whether the company type
is structurally eligible to ever pursue listing.

Examples of base non-eligible entities:
- religious_corporation
- public_interest_corporation
- system company

Base eligibility must be determined
before detailed readiness logic runs.


# ============================================================
# 5. LISTING READINESS STATE
# ============================================================

Recommended listing_readiness_state values:
- not_applicable
- not_ready
- early_preparation
- progressing
- near_ready
- application_ready
- blocked

not_applicable:
- used when company type is structurally non-listable

blocked:
- used when a blocking condition exists
even though the type may otherwise be listable


# ============================================================
# 6. TARGET MARKET CANDIDATES
# ============================================================

target_market_candidates should contain
the markets that are plausible targets
under current nation market design.

Examples:
- prime_market
- standard_market
- growth_market
- venture_market
- regional_market
- special_public_market

These candidates depend on:
- nation listing style
- company type eligibility
- current evaluation
- operating maturity


# ============================================================
# 7. READINESS SNAPSHOT
# ============================================================

A readiness snapshot should summarize
the major readiness axes.

Recommended dimensions:
- operating_period_readiness
- evaluation_score_readiness
- activity_score_readiness
- compliance_score_readiness
- disclosure_score_readiness
- optional_scale_readiness

These may be represented as:
- insufficient
- developing
- sufficient
- strong


# ============================================================
# 8. MISSING REQUIREMENTS
# ============================================================

missing_requirements should explicitly list
what remains unresolved.

Examples:
- operating period below threshold
- compliance score too low
- disclosure baseline incomplete
- activity score insufficient
- target market eligibility unresolved

This field should be highly visible to both company management
and readiness analytics.


# ============================================================
# 9. BLOCKED LISTING REASON
# ============================================================

blocked_listing_reason is used when readiness
cannot proceed due to structural or policy restriction.

Examples:
- company type is non-listable
- nation market regime excludes this company type
- unresolved compliance block
- system-limited classification
- public policy restriction

blocked_listing_reason should be explicit,
not inferred silently.


# ============================================================
# 10. NATION MARKET CONNECTION
# ============================================================

Listing readiness must obey nation-side rules.

It must reference:
- listing_system_style
- market tiers
- threshold rules
- company type eligibility
- securities regime posture

Company Builder does not define these rules.
Nation-side market design is authoritative.


# ============================================================
# 11. EVALUATION CONNECTION
# ============================================================

Listing readiness depends materially on evaluation.

Key linked dimensions include:
- current evaluation
- activity score
- compliance score
- growth trajectory
- reputation and visibility support where relevant

Evaluation informs readiness,
but readiness remains its own object.


# ============================================================
# 12. DISCLOSURE CONNECTION
# ============================================================

Readiness should explicitly track disclosure posture.

This includes whether the company
has reached the level of structured visibility
required by the target market.

Disclosure readiness is separate from
general public profile quality.


# ============================================================
# 13. APPLICATION TRANSITION
# ============================================================

A company may proceed to listing application
only when listing_readiness_state reaches
application_ready
and no blocking condition remains.

application_ready does not guarantee approval.
It only means the company may validly apply.


# ============================================================
# 14. ANALYTICS CONNECTION
# ============================================================

Listing readiness should support analytics such as:
- readiness trend
- missing requirement dashboard
- target market fit view
- pre-IPO comparison view


# ============================================================
# 15. FINAL RULE
# ============================================================

company_listing_readiness is the official pre-application model
for public market preparation.

It must remain explicit,
nation-rule-aware,
evaluation-aware,
and block-aware.
