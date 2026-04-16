# ============================================================
# MBO OBJECTIVE MODEL
# ============================================================

status: canonical
application: Mbo
layer: model
owner: Boss
prepared_by: Zero

entity_name: objective

fields:
- objective_id
- period_id
- owner_user_id
- manager_user_id
- title
- objective_category
- objective_type
- quantitative_target
- qualitative_target
- success_criteria
- priority
- weight
- progress_percent
- status
- start_date
- due_date
- final_locked_at
- created_at
- updated_at

status_candidates:
- draft
- active
- in_review
- finalized
- transferred
