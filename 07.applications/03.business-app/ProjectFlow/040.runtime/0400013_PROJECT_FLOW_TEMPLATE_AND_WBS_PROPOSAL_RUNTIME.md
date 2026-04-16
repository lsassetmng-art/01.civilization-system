# ============================================================
# PROJECT FLOW TEMPLATE AND WBS PROPOSAL RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

template_runtime_rules:
- only active templates may be used for new proposal generation
- template tasks are expanded in sequence and dependency order
- template milestone markers remain visible in proposal output

proposal_runtime_rules:
- proposal generation starts from project_start_date
- relative_start_offset_days and planned_duration_days drive initial suggestion
- dependency relation must shift downstream suggestion when needed
- business-day rule may move suggested dates away from non-working days
- generated proposal must remain distinguishable from confirmed schedule

adjustment_runtime_rules:
- user may change proposed dates before confirmation
- adjusted proposal remains traceable as adjusted state
- confirmation converts proposal into project/task/milestone operational schedule
