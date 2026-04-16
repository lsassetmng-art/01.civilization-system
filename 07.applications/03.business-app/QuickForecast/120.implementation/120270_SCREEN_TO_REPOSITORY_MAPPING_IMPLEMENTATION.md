# ============================================================
# SCREEN TO REPOSITORY MAPPING IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines intended mapping from screens to repositories.

mapping:
- dashboard -> ForecastRepository, ApprovalRepository, HandoffRepository
- forecast_list -> ForecastRepository, ShareRepository, ApprovalRepository, HandoffRepository
- forecast_detail -> ForecastRepository, ScenarioRepository, ActionRepository, ProposalRepository, ProfitRepository, HistoryRepository
- forecast_editor -> ForecastRepository, ScenarioRepository
- action_idea_board -> ActionRepository, ScenarioRepository
- proposal_draft_builder -> ProposalRepository, ActionRepository, ProfitRepository
- profit_preview -> ProfitRepository
- pro_approval_submission -> ApprovalRepository, HandoffRepository
- history -> HistoryRepository
- share_target -> ShareRepository
- settings -> SettingsRepository

principles:
- keep screen coupling minimal
- prefer a small repository set per screen
- Pro repositories should not leak into Basic-only flows unless gated
