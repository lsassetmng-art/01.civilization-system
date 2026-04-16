# ============================================================
# PROJECT FLOW FORM MEMO COMMENT RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

form_runtime_rules:
- form submission must validate required fields before downstream creation
- successful form submission may create target entities directly
- invalid form submission must remain reviewable to the user

memo_runtime_rules:
- memo remains editable by permitted roles
- meeting note and decision note must preserve created/updated history
- memo is project-linked and should remain discoverable from project detail

comment_runtime_rules:
- comments are append-oriented
- short edit window may be allowed by implementation policy
- comment threads must remain attached to their target entity
- deleted comment behavior should prefer hidden/archived semantics over destructive erase
