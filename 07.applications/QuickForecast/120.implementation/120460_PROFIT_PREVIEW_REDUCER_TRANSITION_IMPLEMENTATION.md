# ============================================================
# PROFIT PREVIEW REDUCER TRANSITION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines reducer-style transition examples for ProfitPreviewViewModel.

transition_examples:

Initialize:
- loading_state -> loading
- source_context_state loaded
- assumption_form_state loaded
- result_state loaded or empty
- loading_state -> content

ChangeQuantityAssumption / ChangeUnitPriceAssumption / ChangeVariableCostAssumption / ChangeFixedExecutionCostAssumption:
- assumption_form_state updated
- validation_state recalculated
- save_state -> dirty

ChangeInventoryImpactNote / ChangeRiskFactorNote:
- note state updated
- save_state -> dirty

Recalculate:
- result_state -> calculating
- repository calculateProfitPreview called
- on success:
  - result_state updated
  - validation_state updated
- on failure:
  - result_state -> failed
  - message_state updated

SaveSnapshot:
- save_state -> saving
- repository saveProfitPreview and/or saveProfitAssumptions called
- success/failure reflected

TapProceedToProApproval:
- Pro gate checked
- if allowed:
  - effect -> NavigateToProApproval
- else:
  - ShowMessage or ShowValidation effect

notes:
Assumptions remain state.
Navigation remains effect.
