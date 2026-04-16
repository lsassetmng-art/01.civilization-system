# ============================================================
# PROJECT FLOW COMMENT HISTORY SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
comment_history

purpose:
Shows lightweight communication history on project-linked entities.

main_components:
- target entity header
- comment thread list
- new comment input
- reply input
- filter area when needed

supported_targets:
- project
- task
- issue
- risk
- milestone

comment_item_fields:
- author
- created_at
- comment_text
- parent_comment_relation optional

actions:
- add comment
- reply to comment
- open target entity

ui_rules:
- comments must remain lightweight
- thread depth should remain simple
- this screen is not a full chat replacement
