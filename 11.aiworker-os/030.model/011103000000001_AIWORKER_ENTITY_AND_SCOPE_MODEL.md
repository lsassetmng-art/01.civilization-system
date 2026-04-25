# ============================================================
# AIWORKER ENTITY AND SCOPE MODEL
# ============================================================

status: canonical
system: AiworkerOS
layer: 030.model
owner: Boss
prepared_by: Zero

entities:
- worker_master
- worker_identity_projection
- worker_domain_role_binding
- worker_lifecycle_state
- worker_capability_matrix
- worker_specialization_profile
- worker_assignment_state
- worker_availability_state

domain_rule:
At minimum, AiworkerOS supports these worker domains:
- operations
- casual_conversation
- casual_relationship
- streaming
- game
- education
- qualification_prep
- utility_assist
- workforce_execution
- combat_unit
- clerical_execution
- clerical_control
- senior_clerical_control

role_rule:
Role is separate from domain.
Multiple roles may exist inside one domain.

rank_rule:
Rank exists as an attached official canonical class,
but official rank names are imported from the existing rank canon
and are not redefined here.

entity_truth_rule:
worker_id is the worker truth anchor.
All worker-side mutable truth binds to worker_id.

final_rule:
AiworkerOS models all AI workers as one unified worker framework
with domain and role variation,
not as disconnected species.
