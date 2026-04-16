# ============================================================
# PROJECT FLOW LOCALIZED EXPORT HEADER MAP NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation note for localized export header mapping.

mapping_rule:
language-neutral field ids map to localized visible header labels.

example_scope:
- project_name -> localized label
- project_status -> localized label
- progress_percent -> localized label
- planned_end_date -> localized label
- risk_score -> localized label
- owner_name_snapshot -> localized label

implementation_rules:
- export header maps should be locale-aware
- export generation should use the selected output locale
- missing localized header should fall back through defined fallback chain
