# ============================================================
# EVENT AND TEMPORARY MODIFIER MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-modifier-evaluation
component: event-and-temporary-modifier

owner: Boss
prepared_by: Zero


# ============================================================
# 1. TEMPORARY MODIFIER TYPES
# ============================================================

temporary_modifier_types:
- festival_boost
- emergency_build_acceleration
- disaster_delay
- political_review_delay
- reconstruction_discount
- infrastructure_shortage_penalty
- national_campaign_discount


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

temporary_modifier_fields:
- modifier_id
- modifier_type
- start_at
- end_at
- nation_id_or_null
- city_id_or_null
- facility_type_or_null
- build_cost_multiplier
- maintenance_multiplier
- build_time_multiplier
- activation_delay_seconds
- enabled_flag


# ============================================================
# 3. FINAL RULE
# ============================================================

Temporary modifiers must expire cleanly
and never silently overwrite base rules.
