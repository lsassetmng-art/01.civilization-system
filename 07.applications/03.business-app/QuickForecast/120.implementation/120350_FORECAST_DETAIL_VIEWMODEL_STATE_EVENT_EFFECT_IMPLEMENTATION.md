# ============================================================
# FORECAST DETAIL VIEWMODEL STATE EVENT EFFECT IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines ViewModel state / event / effect for forecast detail screen.

state_segments:
- loading_state
- summary_state
- signal_summary_state
- scenario_summary_state
- action_summary_state
- proposal_summary_state
- profit_summary_state
- history_summary_state
- pro_operation_state
- message_state

events:
- Initialize
- Refresh
- TapEditForecast
- TapOpenActionBoard
- TapOpenProposalBuilder
- TapOpenProfitPreview
- TapOpenHistory
- TapOpenProApprovalSubmission
- TapOpenShareTarget

effects:
- NavigateToForecastEditor
- NavigateToActionBoard
- NavigateToProposalBuilder
- NavigateToProfitPreview
- NavigateToHistory
- NavigateToProApprovalSubmission
- NavigateToShareTarget
- ShowMessage

rules:
- detail state is summary-hub oriented
- missing downstream outputs must remain explicit
- Pro actions must be additive and gated
