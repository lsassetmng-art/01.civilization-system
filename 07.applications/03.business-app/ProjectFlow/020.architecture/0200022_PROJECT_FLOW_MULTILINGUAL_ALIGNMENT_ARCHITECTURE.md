# ============================================================
# PROJECT FLOW MULTILINGUAL ALIGNMENT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines final multilingual alignment across UI,
customer-facing outputs,
exports,
and summary outputs.

alignment_targets:
- application UI
- customer-facing materials
- spreadsheet export headers
- one-page summary
- read-only and entitlement wording
- proposal / confirmed / reviewed / approved state wording

alignment_rules:
- one concept should resolve through stable localization keys
- one generated output should remain one locale consistently
- customer-facing wording should remain explanation-friendly
- export headers should align with output locale
- multilingual handling must not change business truth
- smartphone and pc must keep the same multilingual capability
