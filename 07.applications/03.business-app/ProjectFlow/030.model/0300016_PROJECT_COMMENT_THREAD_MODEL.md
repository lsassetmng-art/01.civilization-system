# ============================================================
# PROJECT COMMENT THREAD MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- comment_id
- company_id
- project_id
- target_entity_type
- target_entity_id
- parent_comment_id
- comment_text
- created_by_user_id
- created_at
- updated_at

target_entity_type_candidates:
- project
- task
- issue
- risk
- milestone
