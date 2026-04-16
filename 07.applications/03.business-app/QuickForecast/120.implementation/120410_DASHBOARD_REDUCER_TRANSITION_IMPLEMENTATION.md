# ============================================================
# DASHBOARD REDUCER TRANSITION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines reducer-style transition examples for DashboardViewModel.

transition_examples:

Initialize:
- loading_state -> loading
- repository load starts
- on success:
  - recent_drafts updated
  - pending_pro_items updated if Pro
  - loading_state -> content
- on failure:
  - loading_state -> content_or_partial_failure
  - message_state updated

TapNewDraft:
- no durable content mutation
- effect -> NavigateToNewDraft

TapRecentDraft:
- no durable content mutation
- effect -> NavigateToDraftDetail

TapPendingItem:
- no durable content mutation
- effect -> NavigateToDraftDetail or NavigateToProApproval

notes:
Dashboard is effect-heavy and content-light.
