# ============================================================
# CIVILIZATION SECURITY EVENT DETAIL
# ============================================================

status: canonical
layer: 100.security
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define detailed security-event handling for CivilizationOS.

security_event_categories:
- authorization_failure
- privilege_escalation_attempt
- incompatible_contract_attempt
- repeated_invalid_retry
- unauthorized_truth_mutation_attempt

success_condition:
- security-relevant event classified and recorded

failure_condition:
- security event not attributable
- audit trail not preserved
- terminal security event not escalated
