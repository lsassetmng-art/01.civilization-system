# ============================================================
# PROJECT FLOW MULTILINGUAL EXPORT HEADER POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines multilingual policy for spreadsheet export headers.

export_targets:
- xlsx
- csv

policy_rules:
- export headers should follow selected output language
- source column identifiers remain language-neutral
- visible header labels are localized
- fallback labels must remain detectable
- one export output should keep one locale consistently

header_scope_examples:
- project columns
- task columns
- milestone columns
- issue columns
- risk columns
- time entry columns
- customer material section headers where applicable
