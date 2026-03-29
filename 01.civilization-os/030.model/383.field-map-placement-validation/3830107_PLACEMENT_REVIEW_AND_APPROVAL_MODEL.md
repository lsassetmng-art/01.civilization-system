# ============================================================
# PLACEMENT REVIEW AND APPROVAL MODEL
# ============================================================

status: canonical
layer: model
scope: field-map-placement-validation
component: placement-review-and-approval

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REVIEW TRIGGERS
# ============================================================

review_triggers:
- high_visibility_facility
- restricted_operator_case
- nation_sensitive_facility
- district_anchor_facility
- large_scale_replacement
- tenant_displacement_case
- mixed_use_complex_creation


# ============================================================
# 2. REVIEW STATES
# ============================================================

review_states:
- no_review_required
- review_required_before_build
- review_required_before_activation
- review_failed
- review_approved


# ============================================================
# 3. FINAL RULE
# ============================================================

Review requirement must be explicit
and must not masquerade
as ordinary successful placement.
