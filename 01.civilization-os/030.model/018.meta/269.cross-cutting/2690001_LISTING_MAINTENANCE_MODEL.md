# ============================================================
# LISTING MAINTENANCE MODEL
# ============================================================

status: canonical
layer: model
scope: cross-cutting
component: listing-maintenance

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical model for post-listing maintenance.

This model governs:
- continued listing eligibility
- suspension
- market transfer
- delisting review
- relisting posture


# ============================================================
# 2. CORE RULE
# ============================================================

Listing is not permanent.

A listed company must continuously satisfy
listing maintenance requirements after approval.


# ============================================================
# 3. MAINTENANCE AXES
# ============================================================

Core maintenance axes:
- operating_continuity_score
- evaluation_score
- activity_score
- compliance_score
- disclosure_score
- payment_default_state
- governance_integrity_state

Optional axes:
- market_capitalization_threshold
- public_float_threshold
- audit_quality_state
- nation_specific_special_rule


# ============================================================
# 4. LISTING STATUS
# ============================================================

Recommended listing_status values:
- not_listed
- listed_active
- listed_watch
- listed_suspended
- transfer_review
- delisting_review
- delisted
- relisting_review


# ============================================================
# 5. WATCH / SUSPENSION
# ============================================================

listed_watch:
- warning posture
- still listed
- remediation allowed

listed_suspended:
- public market trading suspended
- listing not yet fully removed
- remedial review continues


# ============================================================
# 6. MARKET TRANSFER
# ============================================================

Supported transfer directions:
- up_list
- down_list
- lateral_transfer

Transfer requires:
- target market compatibility
- threshold satisfaction
- review approval


# ============================================================
# 7. DELISTING
# ============================================================

Delisting review may be triggered by:
- severe compliance failure
- disclosure failure
- prolonged default
- governance breakdown
- nation market rule violation

Immediate delisting should be avoided
unless extreme blocking conditions exist.


# ============================================================
# 8. RELIGIOUS / PUBLIC / SYSTEM RULE
# ============================================================

Base non-listable:
- religious_corporation
- public_interest_corporation
- system company classes unless explicitly allowed

These should not enter listing maintenance flow
as standard listed entities.


# ============================================================
# 9. FINAL RULE
# ============================================================

Listing maintenance is a continuous governance model,
not a one-time approval result.
