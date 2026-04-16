# ============================================================
# PROJECT MEMO MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- memo_id
- company_id
- project_id
- memo_type
- title
- body_text
- created_by_user_id
- created_at
- updated_at

memo_type_candidates:
- general_note
- meeting_note
- decision_note
