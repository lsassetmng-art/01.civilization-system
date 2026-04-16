# ============================================================
# HISTORY VIEWMODEL STATE EVENT EFFECT IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines ViewModel state / event / effect for history screen.

state_segments:
- loading_state
- selected_filter_state
- timeline_items_state
- selected_event_state
- message_state

events:
- Initialize
- Refresh
- SelectFilter
- TapTimelineItem
- TapOpenRelatedContext
- TapBack

effects:
- NavigateToRelatedScreen
- NavigateBack
- ShowMessage

rules:
- history is read-heavy and filter-centric
- critical event types must remain distinguishable
- Basic and Pro event families may differ, but structure remains stable
