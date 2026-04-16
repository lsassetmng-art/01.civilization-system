# ============================================================
# ANDROID MINIMUM I18N AND MULTICURRENCY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines implementation boundary for minimum multilingual and multicurrency support.

minimum_multilingual_scope:
- key-based UI text
- default language rendering
- fallback language rendering
- locale preference retrieval

minimum_multicurrency_scope:
- canonical money value handling
- display currency rendering
- base currency preference retention
- no advanced rate conversion yet unless explicitly available

important_rule:
Phase 1 may support multicurrency-safe structure
without full exchange-rate density.
Structure first, density later.
