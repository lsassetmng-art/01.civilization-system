# ============================================================
# SETTINGS REDUCER TRANSITION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines reducer-style transition examples for SettingsViewModel.

transition_examples:

Initialize:
- loading_state -> loading
- tier_info_state loaded
- local_preference_state loaded
- display_preference_state loaded
- Pro connection summary loaded if Pro
- app_info_state loaded
- loading_state -> content

ChangeAutosavePreference / ChangeDefaultScreenPreference / ChangeCompactModePreference:
- corresponding preference state updated
- save_state -> dirty

RefreshProConnectionState:
- pro_connection_state -> loading
- SettingsRepository or dedicated source loads connection summary
- success/failure reflected without mutating local preferences

SavePreferences:
- save_state -> saving
- SettingsRepository.saveSettings called
- success/failure reflected in save_state and message_state

TapBack:
- effect -> NavigateBack

notes:
Local preferences and Pro connection summary must remain separate.
