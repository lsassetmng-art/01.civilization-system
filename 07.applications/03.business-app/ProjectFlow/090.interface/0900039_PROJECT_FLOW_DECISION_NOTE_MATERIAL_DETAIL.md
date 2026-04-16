# ============================================================
# PROJECT FLOW DECISION NOTE MATERIAL DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

material_id:
decision_note

purpose:
Explains what has been decided and when.

main_sections:
- decision summary list
- decision date
- decision owner or participants
- related context note

source_data:
- decision_note memos
- project memo context

key_fields:
- title
- body_text
- created_at
- created_by_user_id

editing_points:
- visible decisions
- wording cleanup
- ordering
