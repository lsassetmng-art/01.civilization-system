# ============================================================
# PROJECT FLOW MULTILINGUAL OPERATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines practical operation notes for multilingual handling.

operation_points:
- add new wording through stable keys
- avoid hardcoded wording in screens and outputs
- review fallback leakage before customer-facing use
- review export header readability in each supported language
- keep customer-facing material headings concise
- keep one-page summary wording short and stable

maintenance_points:
- Japanese and English should remain in sync
- later language addition should not break initial packs
- terminology changes should update label catalog and presets together
