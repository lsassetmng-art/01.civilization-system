# ============================================================
# PROJECT FLOW FORM MEMO COMMENT TEST NOTE
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

test_points:
- task create form creates correct task
- issue register form creates correct issue
- progress report request form stores correct request
- memo remains project-linked and searchable
- decision note is distinguishable
- comments remain attached to the correct target entity
- reply relation remains correct
- smartphone and pc expose the same form, memo, and comment capabilities
