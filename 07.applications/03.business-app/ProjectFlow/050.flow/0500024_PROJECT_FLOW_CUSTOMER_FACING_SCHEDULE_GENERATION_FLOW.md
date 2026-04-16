# ============================================================
# PROJECT FLOW CUSTOMER FACING SCHEDULE GENERATION FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. user selects project or WBS proposal
2. user selects customer-facing schedule output
3. system groups tasks into explanation-friendly phases or milestones
4. system generates simplified schedule draft
5. user edits wording and visible items if needed
6. user exports or presents the schedule after review

important_rules:
- internal task detail is not required to be fully shown
- milestone and phase visibility must remain clear
- external-use review remains mandatory
