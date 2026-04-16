# ============================================================
# PROJECT FLOW MULTILINGUAL CUSTOMER OUTPUT POLICY
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines multilingual behavior for customer-facing outputs.

output_targets:
- customer-facing schedule
- progress report
- issue list
- risk list
- decision note
- follow-up action list
- one-page summary

output_rules:
- output locale should be selectable where supported
- section headings should be localized
- export headers should be localized
- wording overrides should remain possible after localized generation
- review before external use remains mandatory
