# ============================================================
# UI STATE CODE TABLE
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: ui_state_code_table
owner: Boss
prepared_by: Zero

entries:

draft_states:
- QF-STATE-DRAFT-NEW
- QF-STATE-DRAFT-LOCAL
- QF-STATE-DRAFT-EDITED

sync_states:
- QF-STATE-SYNC-NONE
- QF-STATE-SYNC-PENDING
- QF-STATE-SYNC-DONE
- QF-STATE-SYNC-FAILED

approval_states:
- QF-STATE-APPROVAL-NOT-REQUESTED
- QF-STATE-APPROVAL-PENDING
- QF-STATE-APPROVAL-APPROVED
- QF-STATE-APPROVAL-REJECTED

submission_states:
- QF-STATE-SUBMIT-NOT-READY
- QF-STATE-SUBMIT-READY
- QF-STATE-SUBMIT-PENDING
- QF-STATE-SUBMIT-DONE
- QF-STATE-SUBMIT-FAILED
