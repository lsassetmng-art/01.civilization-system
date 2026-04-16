# ============================================================
# PROJECT FLOW LANGUAGE RESOLUTION IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation detail note for language resolution.

implementation_targets:
- user language preference storage
- runtime locale resolver
- output locale resolver
- export header locale resolver
- customer material locale-aware renderer

implementation_rules:
- keep UI locale resolution and output locale resolution compatible
- allow customer-facing output locale to be explicitly chosen when needed
- keep localization keys stable when later languages are added
