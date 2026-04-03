# ============================================================
# BUILD CONFIRMATION COST TIME DISPLAY MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-cost-display-ui
component: build-confirmation-cost-time-display

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED CONFIRMATION BLOCKS
# ============================================================

required_confirmation_blocks:
- base_value_summary
- final_value_summary
- applied_modifier_summary
- build_time_summary
- activation_delay_summary
- replacement_summary
- review_requirement_summary
- final_confirm_action
- cancel_action


# ============================================================
# 2. DISPLAY RULES
# ============================================================

display_rules:
- confirmation must show final evaluated build cost prominently
- confirmation must show maintenance expectation
- confirmation must show time to construction completion
- confirmation must show activation delay separately if applicable
- replacement extra cost and downtime must be displayed when relevant


# ============================================================
# 3. FINAL RULE
# ============================================================

Build confirmation must explain
not only the placement action,
but the economic and timing consequences.
