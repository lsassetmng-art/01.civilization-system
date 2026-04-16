# ============================================================
# FORECAST DETAIL REDUCER TRANSITION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines reducer-style transition examples for ForecastDetailViewModel.

transition_examples:

Initialize:
- loading_state -> loading
- summary_state loaded
- signal_summary_state loaded
- scenario_summary_state loaded
- action_summary_state loaded
- proposal_summary_state loaded
- profit_summary_state loaded
- history_summary_state loaded
- Pro operation summary optionally loaded
- loading_state -> content

Refresh:
- loading_state may become refreshing
- summary sub-states reloaded
- failure updates message_state without destroying prior visible content

TapEditForecast:
- effect -> NavigateToForecastEditor

TapOpenActionBoard:
- effect -> NavigateToActionBoard

TapOpenProposalBuilder:
- effect -> NavigateToProposalBuilder

TapOpenProfitPreview:
- effect -> NavigateToProfitPreview

TapOpenHistory:
- effect -> NavigateToHistory

TapOpenProApprovalSubmission / TapOpenShareTarget:
- Pro gate checked
- if allowed:
  - effect -> NavigateToProApprovalSubmission / NavigateToShareTarget
- else:
  - effect -> ShowMessage or ShowValidation

notes:
Detail is a summary hub.
Absent downstream outputs remain explicit state, not failure.
