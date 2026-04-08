# ============================================================
# ANDROID VIEWMODEL IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines ViewModel-layer implementation direction for QuickForecast.

viewmodel_goals:
- hold screen state explicitly
- preserve working object context
- support resumable editing
- separate local draft logic from Pro governed actions

recommended_viewmodels:
- DashboardViewModel
- ForecastListViewModel
- ForecastDetailViewModel
- ForecastEditorViewModel
- ActionBoardViewModel
- ProposalBuilderViewModel
- ProfitPreviewViewModel
- ProApprovalSubmissionViewModel
- HistoryViewModel
- ShareTargetViewModel
- SettingsViewModel

common_state_segments:
- screen loading state
- draft object state
- validation state
- action state
- sync state
- approval state
- handoff state
- user message state

principles:
- one primary working object per major ViewModel
- governed Pro actions should be explicit commands
- local save and governed handoff must remain separate flows
