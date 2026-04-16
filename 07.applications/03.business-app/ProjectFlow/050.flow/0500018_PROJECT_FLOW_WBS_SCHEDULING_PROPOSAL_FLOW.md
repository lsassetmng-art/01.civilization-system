# ============================================================
# PROJECT FLOW WBS SCHEDULING PROPOSAL FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. user selects project type
2. user selects WBS template
3. user enters project start date
4. system reads template task structure and dependencies
5. system applies relative offsets and duration rules
6. system applies business-day rules
7. proposed schedule is generated
8. user reviews and adjusts proposed dates
9. user confirms schedule

important_rule:
Generated schedules are proposals only.
Human review and adjustment remain possible before confirmation.
