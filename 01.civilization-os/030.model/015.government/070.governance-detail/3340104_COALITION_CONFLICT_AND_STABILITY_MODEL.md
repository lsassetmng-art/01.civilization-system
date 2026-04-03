# ============================================================
# COALITION CONFLICT AND STABILITY MODEL
# ============================================================

status: canonical
layer: model
scope: faction-interest-group-and-lobby-builder
component: coalition-conflict-and-stability

owner: Boss
prepared_by: Zero


# ============================================================
# 1. COALITION FIELDS
# ============================================================

coalition_fields:
- coalition_id
- coalition_members
- coalition_basis
- coalition_stability
- coalition_visibility
- coalition_resource_pool
- coalition_break_trigger

conflict_fields:
- conflict_id
- actor_a
- actor_b
- conflict_type
- conflict_visibility
- conflict_intensity
- institutional_damage_risk
- violence_escalation_risk


# ============================================================
# 2. COALITION BASIS TYPES
# ============================================================

coalition_basis_types:
- shared_class_interest
- shared_region_interest
- shared_fear
- shared_profit
- shared_loyalty_to_ruler
- shared_doctrine
- shared_enemy
- shared_reform_goal
- survival_bargain


# ============================================================
# 3. CONFLICT TYPES
# ============================================================

conflict_types:
- budget_conflict
- appointment_conflict
- lawmaking_conflict
- ideological_conflict
- military_civil_conflict
- center_local_conflict
- religion_state_conflict
- old_elite_vs_new_elite_conflict
- reform_vs_stability_conflict
- covert_capture_conflict


# ============================================================
# 4. FINAL RULE
# ============================================================

Faction systems must model
both stable bargains
and destabilizing rivalries.
