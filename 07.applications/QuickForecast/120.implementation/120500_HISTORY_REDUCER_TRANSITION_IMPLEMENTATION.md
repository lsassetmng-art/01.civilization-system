# ============================================================
# HISTORY REDUCER TRANSITION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines reducer-style transition examples for HistoryViewModel.

transition_examples:

Initialize:
- loading_state -> loading
- timeline_items_state loaded
- selected_filter_state initialized
- loading_state -> content

Refresh:
- loading_state -> refreshing_or_loading
- HistoryRepository.listHistory called
- success/failure reflected

SelectFilter:
- selected_filter_state updated
- timeline_items_state filtered or reloaded

TapTimelineItem:
- selected_event_state updated

TapOpenRelatedContext:
- effect -> NavigateToRelatedScreen

TapBack:
- effect -> NavigateBack

notes:
History is mostly read-only state with filter and selection transitions.
