# ============================================================
# FORECAST EDITOR VIEWMODEL STATE EVENT EFFECT IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines ViewModel state / event / effect for forecast editor screen.

state_segments:
- loading_state
- draft_identity_state
- header_form_state
- signal_form_state
- scenario_state
- forecast_result_state
- validation_state
- save_state
- pro_reference_state
- message_state

events:
- Initialize
- ChangeTitle
- ChangeTargetScope
- ChangePeriod
- ChangeGrain
- ChangeSignalValue
- ChangeManualAssumption
- SelectScenario
- DuplicateScenario
- SaveDraft
- TapContinueToAction
- RefreshProReference

effects:
- NavigateToActionBoard
- ShowMessage
- ShowValidation

rules:
- local save must be independent from Pro reference availability
- signal edits must not silently destroy scenario selection
