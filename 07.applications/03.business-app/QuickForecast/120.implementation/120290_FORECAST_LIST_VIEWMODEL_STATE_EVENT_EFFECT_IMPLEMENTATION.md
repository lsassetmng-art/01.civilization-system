# ============================================================
# FORECAST LIST VIEWMODEL STATE EVENT EFFECT IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines ViewModel state / event / effect for forecast list screen.

state_segments:
- loading_state
- selected_tab
- filter_query
- sort_mode
- draft_list
- shared_list
- pending_approval_list
- pending_handoff_list
- message_state

events:
- Initialize
- Refresh
- SelectTab
- ChangeFilterQuery
- ChangeSortMode
- TapDraft
- TapCreateNew
- TapRetryPendingItem

effects:
- NavigateToDraftDetail
- NavigateToNewDraft
- ShowMessage

rules:
- Basic tabs and Pro tabs must remain distinguishable
- row state must remain explicit
