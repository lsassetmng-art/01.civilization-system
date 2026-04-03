# ============================================================
# NATION SPECIFIC OFFICE OVERRIDE MODEL
# ============================================================

status: canonical
layer: model
scope: public-office-actor-compatibility
component: nation-specific-office-override

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED FIELDS
# ============================================================

required_fields:
- nation_id
- office_class
- office_type
- actor_class
- compatibility_state
- human_requirement_override
- entry_route_override
- legitimacy_requirement_override
- blocked_reason_set


# ============================================================
# 2. FINAL RULE
# ============================================================

Nation-specific office override
may narrow or specialize office compatibility,
but must not silently erase explicit restrictions.
