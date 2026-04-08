# ============================================================
# POCKET SECRETARY SYNC FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. sync-eligible local or external-linked state is identified
2. sync preconditions are checked
3. sync attempt is initiated if allowed
4. pending state is recorded
5. confirmation, failure, or conflict result is received
6. sync state is updated explicitly
7. user-visible indicators refresh

rules:
- pending must remain visible
- confirmed requires actual confirmation
- failure and conflict must remain distinguishable
