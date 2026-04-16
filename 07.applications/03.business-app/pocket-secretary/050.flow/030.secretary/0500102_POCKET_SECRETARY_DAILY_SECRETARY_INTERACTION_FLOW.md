# ============================================================
# POCKET SECRETARY DAILY SECRETARY INTERACTION FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. user opens dashboard or entry surface
2. current local secretary state is displayed
3. user reviews schedule, todos, and reminders
4. user performs local actions
5. local state updates are persisted
6. optional pending sync indicators are refreshed
7. Persona presentation updates where applicable

rules:
- local use must remain primary
- visible state must reflect actual known state
- Persona presentation must not conceal pending or failed conditions
