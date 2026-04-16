# ============================================================
# PROJECT FLOW MULTILINGUAL RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

runtime_rules:
- locale should be resolved at application/session level
- output generation should use the selected locale
- fallback language should be used when a localized key is missing
- export headers should reflect the chosen locale
- customer-facing materials should preserve locale consistency within one output

fallback_rules:
- primary locale first
- fallback locale second
- unresolved key should remain detectable for review

consistency_rules:
- smartphone and pc must resolve the same locale behavior
- report and customer material generation must not mix multiple locales unintentionally
