# ============================================================
# PROJECT FLOW CUSTOMER SCHEDULE MATERIAL DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

material_id:
customer_facing_schedule

purpose:
Explains overall project schedule to the customer.

main_sections:
- project summary
- phase summary
- milestone schedule
- current position
- next major dates

source_data:
- confirmed schedule
- WBS proposal when allowed
- milestone data
- project progress context

editing_points:
- visible phases
- visible milestones
- wording
- date-note annotations

export_targets:
- xlsx
- csv
- explanation material output
