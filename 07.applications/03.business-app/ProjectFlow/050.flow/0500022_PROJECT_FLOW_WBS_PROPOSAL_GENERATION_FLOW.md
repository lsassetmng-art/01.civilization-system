# ============================================================
# PROJECT FLOW WBS PROPOSAL GENERATION FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. user selects project type
2. user selects project template
3. user enters project start date
4. user optionally selects business-day rule
5. system expands template structure
6. system applies offsets, durations, and dependencies
7. system generates proposed schedule
8. user reviews gantt or timeline preview
9. user adjusts proposal if needed
10. user confirms proposal to create the operational schedule
