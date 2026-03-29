# ============================================================
# BUILDER VALIDATION GATE MODEL
# ============================================================

status: canonical
layer: model
scope: builder-execution-and-property-revenue-distribution
component: builder-validation-gate

owner: Boss
prepared_by: Zero


# VALIDATION GATES

validation_gates:
- compatibility_validation
- authority_validation
- right_basis_validation
- zone_validation
- placement_rule_validation
- ownership_or_occupancy_validation_where_needed


# DECISION STATES

decision_states:
- pass
- fail
- approval_required
- unresolved


# FINAL RULE

Builder execution
must not proceed
unless all required gates resolve safely.
