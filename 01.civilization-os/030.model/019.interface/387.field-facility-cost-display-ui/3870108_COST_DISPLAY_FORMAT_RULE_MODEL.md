# ============================================================
# COST DISPLAY FORMAT RULE MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-cost-display-ui
component: cost-display-format-rule

owner: Boss
prepared_by: Zero


# ============================================================
# 1. FORMAT RULES
# ============================================================

format_rules:
- build_cost should be displayed in primary facility build currency
- maintenance should be displayed per canonical maintenance interval
- build_time_seconds may be displayed as seconds or short duration label
- activation_delay should be displayed separately from build time
- hidden internal precision may be rounded for normal users
- exact values may be shown in detailed mode


# ============================================================
# 2. FINAL RULE
# ============================================================

Formatting must preserve user trust
while remaining readable in rapid play.
