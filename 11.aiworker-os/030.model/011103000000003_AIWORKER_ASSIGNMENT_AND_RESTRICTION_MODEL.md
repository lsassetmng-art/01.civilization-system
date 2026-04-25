# ============================================================
# AIWORKER ASSIGNMENT AND RESTRICTION MODEL
# ============================================================

status: canonical
system: AiworkerOS
layer: 030.model
owner: Boss
prepared_by: Zero

entities:
- worker_dispatch_reservation
- worker_queue_membership
- worker_company_affinity
- worker_user_affinity
- worker_assignment_fit_profile
- worker_privileged_profile
- worker_restricted_handling_policy
- worker_exception_control_state
- worker_state_change_log
- worker_growth_audit_log
- worker_assignment_history
- worker_repair_history

assignment_rule:
Assignment entity truth lives in AiworkerOS.
BusinessOS may request assignment,
but request is not the same thing as canonical assignment fact.

restriction_rule:
Restricted and privileged handling are first-class canonical worker-side states.

availability_rule:
Availability, cooldown, maintenance, repair, and rebuild states are part of assignment eligibility.

final_rule:
Assignment is resolved from worker truth plus gate,
not from commercial request alone.
