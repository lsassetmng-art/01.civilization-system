# ============================================================
# PROJECT FLOW INITIAL LANGUAGE SCOPE DEFINITION
# ============================================================

status: canonical
layer: constitution
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines initial language scope for ProjectFlow.

initial_language_scope:
- japanese
- english

future_expandable_language_scope:
- chinese_simplified
- chinese_traditional
- korean
- spanish
- other languages by later policy

initial_scope_rules:
- japanese and english are first-class initial targets
- UI,
  customer-facing materials,
  and export headers should support both
- smartphone and pc must support the same initial language scope
