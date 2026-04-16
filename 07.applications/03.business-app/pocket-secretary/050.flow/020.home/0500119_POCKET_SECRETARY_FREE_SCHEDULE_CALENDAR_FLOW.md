# ============================================================
# POCKET SECRETARY FREE SCHEDULE CALENDAR FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. free user opens schedule calendar
2. month view or day view is selected
3. schedule items are displayed from local state
4. user may create or edit local schedule items
5. local persistence occurs
6. reminder and visible schedule state refresh

rules:
- schedule calendar is part of free core functionality
- local schedule handling remains usable without AI secretary capability
- local save and external confirmation remain distinct
