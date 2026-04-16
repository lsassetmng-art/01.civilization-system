# ============================================================
# PROJECT FLOW MULTILINGUAL IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation note for multilingual support.

implementation_targets:
- locale resolution service
- translation key catalog
- fallback key resolver
- customer material wording catalog
- export header localization map
- one-page summary wording map

implementation_rules:
- prefer key-based localization over hardcoded wording
- separate UI wording from business data
- separate export header localization from source column names
- keep customer-facing wording templates overridable after generation
