# ============================================================
# PROJECT FLOW MULTILINGUAL EXPORT HEADER NOTE
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines multilingual behavior for export headers and label presentation.

screen_targets:
- export
- report_editor
- customer_explanation_material
- one_page_summary

ui_rules:
- selected output language should be visible before generation
- header preview should reflect selected language where supported
- export header wording should stay concise and readable
- source data field names are not shown to end users unless explicitly needed
