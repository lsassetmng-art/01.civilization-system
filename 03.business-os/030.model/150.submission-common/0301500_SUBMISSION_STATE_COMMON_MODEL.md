# ============================================================
# SUBMISSION STATE COMMON MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

definition:
Represents common submission state.

states:
- draft
- review_ready
- awaiting_user_send
- submitted_pending_response
- accepted
- failed
- conflicted

rules:
- accepted requires external response
- draft and submitted states remain distinct
