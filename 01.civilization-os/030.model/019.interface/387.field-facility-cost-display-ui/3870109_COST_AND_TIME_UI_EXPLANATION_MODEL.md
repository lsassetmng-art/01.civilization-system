# ============================================================
# COST AND TIME UI EXPLANATION MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-cost-display-ui
component: cost-and-time-ui-explanation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED EXPLANATION THEMES
# ============================================================

required_explanation_themes:
- why_cost_changed
- why_time_changed
- why_review_is_required
- why_replacement_cost_exists
- why_activation_is_delayed
- why_placement_is_blocked


# ============================================================
# 2. FINAL RULE
# ============================================================

UI explanation must translate
evaluation logic into user-facing meaning.
