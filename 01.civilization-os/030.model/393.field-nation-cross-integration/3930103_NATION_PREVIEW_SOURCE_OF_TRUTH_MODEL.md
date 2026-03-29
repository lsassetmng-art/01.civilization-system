# ============================================================
# NATION PREVIEW SOURCE OF TRUTH MODEL
# ============================================================

status: canonical
layer: model
scope: field-nation-cross-integration
component: nation-preview-source-of-truth

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PREVIEW SOURCES
# ============================================================

preview_sources:
- current_field_state
- current_facility_state
- current_nation_aggregate
- candidate_facility_action
- projected_metric_evaluation


# ============================================================
# 2. RULES
# ============================================================

rules:
- preview must not use already-updated nation values as if they were projected values
- preview must evaluate candidate action against current committed state
- preview must distinguish current_value from projected_value
- preview must remain invalidated if target lot context changes


# ============================================================
# 3. FINAL RULE
# ============================================================

Preview must be counterfactual,
not post-hoc.
