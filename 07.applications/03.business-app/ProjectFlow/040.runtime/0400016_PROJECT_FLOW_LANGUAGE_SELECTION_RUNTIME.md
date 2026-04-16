# ============================================================
# PROJECT FLOW LANGUAGE SELECTION RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines runtime behavior for language selection.

language_selection_order:
1. explicit user language setting
2. organization or workspace default if later supported
3. application default language

runtime_rules:
- selected language should apply consistently across screens
- selected language should apply to customer-facing material generation
- selected language should apply to export header generation
- language change should refresh visible UI wording without changing business data

safety_rules:
- changing language must not alter source business records
- changing language must not change project truth,
  task truth,
  or schedule truth
