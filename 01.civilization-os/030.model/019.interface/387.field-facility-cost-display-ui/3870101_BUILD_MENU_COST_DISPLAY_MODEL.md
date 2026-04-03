# ============================================================
# BUILD MENU COST DISPLAY MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-cost-display-ui
component: build-menu-cost-display

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED CARD FIELDS
# ============================================================

required_card_fields:
- facility_type
- facility_name
- evaluated_build_cost
- evaluated_maintenance_cost
- evaluated_build_time_seconds
- buildable_state
- review_required_flag
- zoning_match_state
- quick_modifier_hint
- blocked_or_warning_badge


# ============================================================
# 2. DISPLAY RULES
# ============================================================

display_rules:
- build menu must show evaluated build cost if lot context is known
- build menu must show evaluated build time if lot context is known
- blocked candidates must show disabled style and reason hint
- review-required candidates must show review badge
- large modifier deltas may show quick_modifier_hint


# ============================================================
# 3. FINAL RULE
# ============================================================

Build menu is the first place
where users should understand
whether a facility is easy,
expensive,
or blocked.
