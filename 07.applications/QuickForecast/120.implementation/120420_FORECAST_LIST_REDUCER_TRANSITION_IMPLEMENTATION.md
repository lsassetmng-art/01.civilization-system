# ============================================================
# FORECAST LIST REDUCER TRANSITION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines reducer-style transition examples for ForecastListViewModel.

transition_examples:

Initialize:
- loading_state -> loading
- selected_tab initialized
- list repository loads
- on success:
  - active list state updated
  - loading_state -> content

SelectTab:
- selected_tab updated
- visible list source changes
- loading_state may remain content if cached data exists

ChangeFilterQuery:
- filter_query updated
- filtered list recalculated or reloaded

TapDraft:
- effect -> NavigateToDraftDetail

TapCreateNew:
- effect -> NavigateToNewDraft

TapRetryPendingItem:
- row pending/retry state updated
- repository retry command may run if supported
- message/effect may be emitted on result

notes:
Selected tab and filter are state.
Navigation is effect.
