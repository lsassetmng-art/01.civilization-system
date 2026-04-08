# ============================================================
# FORECAST EDITOR REDUCER TRANSITION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines reducer-style transition examples for ForecastEditorViewModel.

transition_examples:

Initialize:
- loading_state -> loading
- draft loaded or created
- header_form_state populated
- signal_form_state populated
- scenario_state populated
- loading_state -> content

ChangeTitle / ChangeTargetScope / ChangePeriod / ChangeGrain:
- corresponding form state updated
- validation_state recalculated
- save_state -> dirty

ChangeSignalValue / ChangeManualAssumption:
- signal_form_state updated
- forecast_result_state may be recalculated locally
- validation_state recalculated
- save_state -> dirty

SelectScenario:
- scenario_state updated
- dependent displayed form/result state updated

DuplicateScenario:
- scenario_state expanded
- save_state -> dirty

SaveDraft:
- save_state -> saving
- repository saveDraft called
- on success:
  - save_state -> saved
  - message_state updated
- on failure:
  - save_state -> failed
  - message_state updated

TapContinueToAction:
- validation checked
- if allowed:
  - effect -> NavigateToActionBoard
- else:
  - effect -> ShowValidation

RefreshProReference:
- pro_reference_state -> loading
- Pro repository/reference load runs
- success/failure reflected only in pro_reference_state
- local draft state remains preserved

notes:
Local draft mutation and Pro reference loading must stay separate.
