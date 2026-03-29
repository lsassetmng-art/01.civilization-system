# ============================================================
# MARKETPLACE REVIEW AND TRUST MODEL
# ============================================================

status: canonical
layer: model
scope: digital-marketplace
component: marketplace-review-and-trust

owner: Boss
prepared_by: Zero


# ============================================================
# 1. TRUST ELEMENTS
# ============================================================

trust_elements:
- seller_rating
- listing_rating
- review_count
- refund_rate
- restriction_history
- moderation_violation_history
- official_badge
- certified_company_badge
- state_certified_badge


# ============================================================
# 2. REVIEW FIELDS
# ============================================================

review_fields:
- review_id
- reviewer_id
- listing_id
- seller_id
- rating_score
- review_summary
- review_visibility_state
- suspicious_review_risk
- moderation_link


# ============================================================
# 3. FINAL RULE
# ============================================================

Trust must represent
quality,
consistency,
and safety,
not only popularity.
