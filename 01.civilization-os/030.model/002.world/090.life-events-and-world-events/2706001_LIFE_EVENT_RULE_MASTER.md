# ============================================================
# LIFE EVENT RULE MASTER
# ============================================================

status: canonical
layer: model
scope: civilization-life-events
component: life-event-rule-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the configurable rule master
for life stage events.

This master controls variable conditions
without changing canonical event structure.


# ============================================================
# 2. CORE RULE
# ============================================================

Event structure is canonical.
Event runtime conditions are configurable.

This rule master may define:
- enabled_flag
- min_age
- max_age
- trigger_probability
- cost_amount
- duration_days
- cooldown_days
- growth_effect_profile
- nation_override_profile
- policy_override_profile
- seasonal_modifier_profile


# ============================================================
# 3. OFFICIAL FIELD SET
# ============================================================

Recommended fields:
- life_event_rule_code
- event_family
- event_type
- enabled_flag
- min_age
- max_age
- prerequisite_profile
- trigger_probability
- cost_amount
- settlement_currency_scope
- duration_days
- cooldown_days
- growth_effect_profile
- nation_override_profile
- policy_override_profile
- notes
- updated_at


# ============================================================
# 4. FINAL RULE
# ============================================================

Life event rule master controls variable runtime conditions,
not canonical event identity.
