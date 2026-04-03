# ============================================================
# CYBER DEFENSE RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: security.cyber_defense
document_id: 0401433001

owner: Boss
prepared_by: Zero

runtime_state_machine:
- SIGNAL_DETECTED
- INCIDENT_OPENED
- TRIAGED
- CONTAINMENT_ACTIVE
- RECOVERY_ACTIVE
- MONITORING
- DISCLOSURE_REVIEW
- CLOSED

runtime_rules:
- suspicious credentials may be restricted before certainty
- revoked/rotated security materials must propagate immediately
- closure requires explicit recovery and monitoring decision
- all actions must emit audit-visible events

failure_behavior:
- prefer protective restriction
- fail closed on uncertain credential legitimacy
- fail closed on invalid key state
