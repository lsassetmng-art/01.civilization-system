# ============================================================
# LIFE EVENT INSTANCE MODEL
# ============================================================

status: canonical
layer: model
scope: civilization-life-events
component: life-event-instance

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the actual instantiated life event record.

This instance preserves the concrete conditions
used when the event became active or was created.


# ============================================================
# 2. CORE RULE
# ============================================================

An instance must store concrete values
used at the time of generation.

Later rule-master changes must not silently rewrite
past event instances.


# ============================================================
# 3. OFFICIAL FIELD SET
# ============================================================

Recommended fields:
- life_event_instance_id
- life_event_rule_code
- person_ref
- event_family
- event_type
- event_state
- triggered_at
- started_at
- expected_end_at
- ended_at
- applied_age
- applied_cost_amount
- applied_duration_days
- applied_growth_effect_profile
- applied_prerequisite_snapshot
- outcome_snapshot
- related_actor_ref_set
- related_facility_ref_set
- notes


# ============================================================
# 4. FINAL RULE
# ============================================================

Life event instance is the authoritative historical event record.
