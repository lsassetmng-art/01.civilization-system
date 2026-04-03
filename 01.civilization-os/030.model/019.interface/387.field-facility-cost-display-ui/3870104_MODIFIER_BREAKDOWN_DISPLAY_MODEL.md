# ============================================================
# MODIFIER BREAKDOWN DISPLAY MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-cost-display-ui
component: modifier-breakdown-display

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED BREAKDOWN BLOCKS
# ============================================================

required_breakdown_blocks:
- base_value_row
- nation_modifier_row
- city_modifier_row
- district_modifier_row
- operator_modifier_row
- temporary_modifier_row
- final_value_row


# ============================================================
# 2. DISPLAY RULES
# ============================================================

display_rules:
- modifier breakdown may be collapsed by default
- strong positive or negative modifiers should be highlighted
- zero-effect scopes may be hidden in simplified mode
- detailed mode must preserve evaluation order


# ============================================================
# 3. FINAL RULE
# ============================================================

Breakdown exists
to explain value formation,
not to overwhelm normal users by default.
