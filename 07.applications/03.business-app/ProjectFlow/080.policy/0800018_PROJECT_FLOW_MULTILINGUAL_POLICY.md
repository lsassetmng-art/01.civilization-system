# ============================================================
# PROJECT FLOW MULTILINGUAL POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

policy_statement:
ProjectFlow must support multilingual operation
for UI and customer-facing outputs.

policy_targets:
- internal operation UI
- customer explanation materials
- exportable spreadsheet headers
- summary outputs

policy_rules:
- multilingual support applies to smartphone and pc equally
- customer-facing outputs should be language-selectable where supported
- fallback behavior must be explicit
- localized wording should remain concise and explanation-friendly
