# ============================================================
# MARKETPLACE MODERATION AND RESTRICTION MODEL
# ============================================================

status: canonical
layer: model
scope: digital-marketplace
component: marketplace-moderation-and-restriction

owner: Boss
prepared_by: Zero


# ============================================================
# 1. MODERATION STATES
# ============================================================

moderation_states:
- draft
- auto_check_pending
- review_pending
- approved
- restricted
- rejected
- suspended
- removed


# ============================================================
# 2. RESTRICTION TYPES
# ============================================================

restriction_types:
- nation_restricted
- religion_restricted
- age_restricted
- doctrine_restricted
- state_sensitive
- copyright_sensitive
- imitation_or_brand_sensitive
- political_or_instability_sensitive


# ============================================================
# 3. REPORT TYPES
# ============================================================

report_types:
- illegal_content_report
- imitation_report
- harmful_religion_report
- nation_violation_report
- misleading_listing_report
- trust_and_fraud_report
- offensive_symbolism_report


# ============================================================
# 4. FINAL RULE
# ============================================================

Moderation must define
whether a listing is visible,
saleable,
restricted,
or removable,
and why.
