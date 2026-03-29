# ============================================================
# CROSS LAYER EXPLANATION MODEL
# ============================================================

status: canonical
layer: model
scope: field-nation-cross-integration
component: cross-layer-explanation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED EXPLANATION THEMES
# ============================================================

required_explanation_themes:
- why_this_facility_changes_this_metric
- why_this_district_changes_nation_score
- why_preview_differs_from_current_state
- why_removed_facility_lowered_coverage
- why_anchor_facility_has_larger_effect
- why_suspension_reduces_but_does_not_delete_history


# ============================================================
# 2. FINAL RULE
# ============================================================

Cross-layer explanation
must connect local action
to nation-visible consequence
in user-readable terms.
