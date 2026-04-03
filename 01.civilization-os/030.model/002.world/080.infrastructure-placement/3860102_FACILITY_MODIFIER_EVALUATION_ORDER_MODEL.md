# ============================================================
# FACILITY MODIFIER EVALUATION ORDER MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-modifier-evaluation
component: facility-modifier-evaluation-order

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CANONICAL ORDER
# ============================================================

canonical_evaluation_order:
- load_base_cost_and_time
- apply_global_modifiers
- apply_nation_modifiers
- apply_city_modifiers
- apply_district_modifiers
- apply_operator_class_modifiers
- apply_facility_type_modifiers
- apply_event_modifiers
- clamp_or_round_values
- write_final_evaluated_values


# ============================================================
# 2. FINAL RULE
# ============================================================

Evaluation order must remain fixed
so results are debuggable and auditable.
