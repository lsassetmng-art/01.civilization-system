# ============================================================
# FACILITY MODIFIER UI EXPLANATION MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-modifier-evaluation
component: facility-modifier-ui-explanation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED UI EXPLANATION BLOCKS
# ============================================================

required_ui_explanation_blocks:
- base_value_summary
- nation_modifier_summary
- city_modifier_summary
- district_modifier_summary
- operator_modifier_summary
- temporary_modifier_summary
- final_value_summary


# ============================================================
# 2. FINAL RULE
# ============================================================

Users should be able to understand
why a facility costs what it costs
without reading internal logs.
