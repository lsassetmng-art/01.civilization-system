# ============================================================
# POCKET SECRETARY HOME SCREEN FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. home screen opens
2. secretary render and background render are bound
3. speech bubble content is selected
4. primary buttons are shown
5. user may open schedule, todo, library, or tools
6. user may tap secretary to change secretary
7. user may tap background to change background
8. user may open settings

rules:
- home screen must make information, navigation,
  and secretary presentation understandable at a glance
- speech bubble content remains advisory and bounded
