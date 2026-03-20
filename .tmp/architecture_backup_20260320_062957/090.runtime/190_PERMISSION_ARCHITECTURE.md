# ============================================================
# PERMISSION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Permission runtime determines whether an actor may perform a requested action.

permission_inputs:
- actor_identity
- role
- authority_level
- legal_status
- contextual_constraints
- domain_rule_reference

permission_outputs:
- allowed
- denied
- escalation_required

rules:
- permission checks must be explicit
- denied action must fail closed
- permissions may not be inferred from UI visibility
- permission outcome must be loggable

integration_points:
- security
- law
- government
- player
- company

final_rule:
No runtime action may proceed without explicit permission evaluation.
