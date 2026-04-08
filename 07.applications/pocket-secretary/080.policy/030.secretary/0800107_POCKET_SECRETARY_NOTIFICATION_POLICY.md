# ============================================================
# POCKET SECRETARY NOTIFICATION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
Notifications should provide bounded, state-grounded attention support.

rules:
- notifications should be based on actual known state
- notification delivery must not imply external success
- critical notifications should route to explicit review surfaces
- notification behavior should remain understandable in offline and pending states
