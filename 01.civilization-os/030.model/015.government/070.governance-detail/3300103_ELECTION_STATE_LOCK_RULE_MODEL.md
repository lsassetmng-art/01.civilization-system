# ============================================================
# ELECTION STATE LOCK RULE MODEL
# ============================================================

status: canonical
layer: model
scope: nation-builder-power-structure-extension
component: election-state-lock-rule

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RULE
# ============================================================

For election-based states,
after nation creation,
ordinary editing must not alter
constitutional power structure fields.

Only legal power-scope operation
may be edited in normal operation.


# ============================================================
# 2. LOCKED AFTER CREATION
# ============================================================

locked_after_creation_fields:
- regime_type
- head_of_state_type
- legislature_structure
- executive_selection_method
- election_system_type
- term_system
- constitutional_identity
- amendment_rule
- judiciary_base
- sovereignty_distribution_base


# ============================================================
# 3. EDITABLE AFTER CREATION
# ============================================================

editable_after_creation_fields:
- executive_power_level
- ministry_scope_map
- delegation_map
- emergency_power_active
- legislative_override_strength_within_law
- local_discretion_level
- influence_weights
- audit_intensity
- enforcement_intensity
- appointment_discretion_level_within_law


# ============================================================
# 4. SPECIAL EXCEPTION
# ============================================================

The locked fields may be altered only if:

- regime_change_mode is active
and
- a valid transition event grants permission


# ============================================================
# 5. FINAL RULE
# ============================================================

Election legitimacy must not be broken
by ordinary builder editing.
