# ============================================================
# NAMECARD APPROVAL STATE TRANSITION FLOW
# ============================================================

status: draft
layer: flow
system: applications
application: NameCardManager
flow: approval_state_transition
owner: Boss
prepared_by: Zero

purpose:
Defines the allowed state progression for ERP-wide publication
requests and results.

# ============================================================
# 1. FLOW GOAL
# ============================================================

The flow ensures that approval state and publication state
do not collapse into one ambiguous path.

# ============================================================
# 2. MAIN TRANSITIONS
# ============================================================

Allowed primary transitions:

draft
 -> submitted

submitted
 -> pending_approval
 -> accepted_for_publication
 -> rejected
 -> publish_failed

pending_approval
 -> approved
 -> rejected
 -> returned_for_fix

approved
 -> accepted_for_publication

accepted_for_publication
 -> published
 -> publish_failed

returned_for_fix
 -> submitted
 -> rejected

# ============================================================
# 3. IMPORTANT RULES
# ============================================================

- approved does not mean published
- published requires shared BusinessOS ERP publication execution
- rejected must not transition directly to published
- ordinary user cannot bypass pending_approval
- ordinary user cannot move published back to not_published

