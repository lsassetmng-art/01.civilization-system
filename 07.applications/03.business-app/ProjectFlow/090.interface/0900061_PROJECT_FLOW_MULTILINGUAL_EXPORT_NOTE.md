# ============================================================
# PROJECT FLOW MULTILINGUAL EXPORT NOTE
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines multilingual behavior in export and customer-facing output screens.

export_rules:
- export screen should show selected output language where relevant
- xlsx/csv header language should follow selected output locale
- customer material preview should reflect selected locale before export
- wording override remains possible after localized generation

screen_targets:
- export
- report_editor
- customer_explanation_material
- one_page_summary
