# ============================================================
# POCKET SECRETARY CHECKLIST FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. user creates or opens a checklist
2. checklist structure is edited locally
3. item completion state is updated
4. local persistence occurs
5. checklist display refreshes
6. archive or retention actions occur when requested

rules:
- checklist handling remains local unless explicitly extended
- completion and archive states remain distinct
