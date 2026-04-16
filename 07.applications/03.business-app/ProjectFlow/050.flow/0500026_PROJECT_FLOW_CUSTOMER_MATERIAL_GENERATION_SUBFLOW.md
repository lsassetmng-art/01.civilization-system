# ============================================================
# PROJECT FLOW CUSTOMER MATERIAL GENERATION SUBFLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. user selects one of the six standard materials
2. system loads material-specific source data
3. system generates preview or table output
4. user edits wording or visible rows where supported
5. user exports or presents reviewed material

supported_materials:
- customer_facing_schedule
- progress_report
- issue_list
- risk_list
- decision_note
- follow_up_action_list
