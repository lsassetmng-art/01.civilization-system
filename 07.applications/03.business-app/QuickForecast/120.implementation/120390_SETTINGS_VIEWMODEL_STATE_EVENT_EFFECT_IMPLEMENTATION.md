# ============================================================
# SETTINGS VIEWMODEL STATE EVENT EFFECT IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines ViewModel state / event / effect for settings screen.

state_segments:
- loading_state
- tier_info_state
- local_preference_state
- display_preference_state
- pro_connection_state
- app_info_state
- save_state
- message_state

events:
- Initialize
- ChangeAutosavePreference
- ChangeDefaultScreenPreference
- ChangeCompactModePreference
- RefreshProConnectionState
- SavePreferences
- TapBack

effects:
- NavigateBack
- ShowMessage

rules:
- settings changes should be explicit
- tier visibility should remain readable
- Pro connection state is additive to core settings
