# ============================================================
# PROJECT FLOW REFERENCE UPDATE RULES
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines practical update rules for external reference usage.

update_rules:
- when a new external canonical file is uploaded,
  ProjectFlow should decide whether it replaces,
  supplements,
  or is irrelevant to the current scope
- when a filename changes,
  the uploaded file register should be updated explicitly
- when a higher-priority canonical changes,
  ProjectFlow local alignment notes should be reviewed
- when only dumps or schema summaries change,
  ProjectFlow local ownership rules should not be rewritten automatically

review_triggers:
- BusinessOS integrated canonical replaced
- ERP design bible replaced
- ERP enterprise scope replaced
- foundation canonical replaced
- schema summary replaced
