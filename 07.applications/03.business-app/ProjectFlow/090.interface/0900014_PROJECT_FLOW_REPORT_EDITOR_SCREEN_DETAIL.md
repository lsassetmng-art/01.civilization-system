# ============================================================
# PROJECT FLOW REPORT EDITOR SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
report_editor

purpose:
Supports progress report draft generation and human editing.

main_components:
- project selector
- report type selector
- period selector
- template selector
- quantitative summary area
- qualitative editor area
- next actions editor
- support requests editor
- customer confirmation items editor
- approval status area
- export/copy actions

actions:
- generate draft
- save draft
- mark reviewed
- mark approved
- export report
- copy report text

rules:
- generated text must remain editable
- approval status must be visible
- external-use warning must appear before unapproved export
