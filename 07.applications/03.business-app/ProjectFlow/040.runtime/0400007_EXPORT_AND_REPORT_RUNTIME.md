# ============================================================
# EXPORT AND REPORT RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

export_rules:
- export output is generated from current filtered view snapshot
- column visibility must follow permission policy
- masked fields must remain masked in file output
- export history must preserve requester and timing

report_generation_rules:
- quantitative section is system-generated from operational data
- qualitative section is draft-generated from templates and recent records
- auto-generated report must remain editable
- external sharing must be blocked until human review is complete

approval_rules:
- project_manager or higher must confirm final external report usage
