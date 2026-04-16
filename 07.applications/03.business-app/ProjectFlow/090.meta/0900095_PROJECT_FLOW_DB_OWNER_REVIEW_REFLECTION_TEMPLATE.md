# ============================================================
# PROJECT FLOW DB OWNER REVIEW REFLECTION TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Template for reflecting DB-owner review results
back into ProjectFlow local canonical notes.

reflection_template_fields:
- review_date
- reviewer
- source_review_record
- confirmed_items_to_reflect
- blocked_items_to_keep
- files_to_update
- files_not_to_update
- reflection_completed: yes_no
- notes

reflection_rules:
- only explicitly confirmed DB items may be reflected as fixed
- blocked DB items must remain visible as blocked
- reflection should update local notes,
  not silently replace external ownership
