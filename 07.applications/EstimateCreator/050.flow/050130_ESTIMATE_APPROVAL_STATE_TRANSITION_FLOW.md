# ============================================================
# ESTIMATE APPROVAL STATE TRANSITION FLOW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Typical approval-related states:

- draft
- review_ready
- approval_pending
- approved
- rejected
- publication_pending
- publication_completed

Approval state and publication state must not be collapsed
into one ambiguous state.

