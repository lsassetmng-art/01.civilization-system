# ============================================================
# DASHBOARD VIEWMODEL STATE EVENT EFFECT IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines ViewModel state / event / effect for dashboard screen.

state_segments:
- loading_state
- recent_drafts
- pending_pro_items
- quick_summary_state
- tier_state
- message_state

events:
- Initialize
- Refresh
- TapNewDraft
- TapRecentDraft
- TapPendingItem
- TapForecastList
- TapSettings

effects:
- NavigateToNewDraft
- NavigateToDraftDetail
- NavigateToForecastList
- NavigateToSettings
- ShowMessage

rules:
- dashboard state is resume-first
- Pro pending items are additive to Basic core
