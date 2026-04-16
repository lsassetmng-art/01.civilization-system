# ============================================================
# SCREEN TO MODEL TRACE NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines intended traceability between key screens and core models.

screen_to_model_map:
- forecast_editor -> forecast_draft, forecast_signal, forecast_scenario
- action_idea_board -> action_idea
- proposal_draft_builder -> proposal_draft
- profit_preview -> profit_preview, profit_assumption
- pro_approval_submission -> approval_request, approval_event, erp_handoff
- history -> history_entry, approval_event, erp_handoff
