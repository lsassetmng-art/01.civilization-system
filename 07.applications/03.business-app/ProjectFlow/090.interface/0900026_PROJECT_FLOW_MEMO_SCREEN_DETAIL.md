# ============================================================
# PROJECT FLOW MEMO SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
project_memo

purpose:
Provides project-linked note and meeting note management.

main_components:
- memo type filter
- memo list
- memo detail editor
- create memo action
- search area

memo_types:
- general_note
- meeting_note
- decision_note

list_columns:
- memo_type
- title
- created_by_user_id
- created_at
- updated_at

actions:
- create memo
- edit memo
- search memos
- filter by memo type
- open from project detail

ui_rules:
- decision_note should be visually distinguishable
- recent updates should be easy to find
- memo access should stay close to project detail context
