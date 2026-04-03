# ============================================================
# CYBER DEFENSE POLICY
# ============================================================

status: canonical
layer: policy
domain: security.cyber_defense
document_id: 0801433001

owner: Boss
prepared_by: Zero

policy_scope:
- incident severity thresholds
- emergency restriction thresholds
- revocation / rotation policy
- disclosure obligation policy
- postmortem requirement policy

decision_rules:
- high-severity compromise requires explicit containment
- suspected credential compromise may trigger temporary restriction
- confirmed compromise requires revocation or rotation
- disclosure route depends on impact and policy class

fail_closed_cases:
- uncertain compromised token validity
- untrusted key material
- unresolved containment status
