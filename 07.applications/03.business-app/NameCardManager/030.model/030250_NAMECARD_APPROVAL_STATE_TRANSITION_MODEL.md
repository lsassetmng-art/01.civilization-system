# ============================================================
# NAMECARD APPROVAL STATE TRANSITION MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_approval_state_transition
owner: Boss
prepared_by: Zero

purpose:
Defines approval-related state transitions for ERP-wide publication
requests routed through shared BusinessOS publication capability.

states:
- draft
- submitted
- pending_approval
- approved
- rejected
- returned_for_fix
- accepted_for_publication
- published
- publish_failed

notes:
- approved is not equal to published
- published requires shared BusinessOS publication execution success
- ordinary user cannot force transition from pending_approval to published
- ordinary user cannot revoke published state
