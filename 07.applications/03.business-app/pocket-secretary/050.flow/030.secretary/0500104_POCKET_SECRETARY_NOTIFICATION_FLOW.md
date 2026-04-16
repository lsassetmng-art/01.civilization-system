# ============================================================
# POCKET SECRETARY NOTIFICATION FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. runtime condition for notification is met
2. notification eligibility is checked
3. notification content is assembled from actual state
4. local notification is issued
5. user may open, dismiss, defer, or inspect
6. follow-up local state is updated as needed

rules:
- notification issuance must be state-grounded
- local notification success must not imply external action success
