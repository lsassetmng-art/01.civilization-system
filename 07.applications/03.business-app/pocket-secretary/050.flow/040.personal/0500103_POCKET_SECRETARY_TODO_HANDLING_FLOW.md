# ============================================================
# POCKET SECRETARY TODO HANDLING FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. user creates or opens a todo item
2. todo content is edited locally
3. local validation is applied
4. todo state is persisted
5. list and widget surfaces refresh
6. reminder or due-state logic updates if applicable
7. completion or archive transition occurs when user requests it

rules:
- local todo save must not depend on external confirmation
- completion and archive transitions must remain explicit
