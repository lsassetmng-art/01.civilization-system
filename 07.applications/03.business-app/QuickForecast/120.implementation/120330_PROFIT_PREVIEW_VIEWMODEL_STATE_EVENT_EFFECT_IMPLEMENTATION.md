# ============================================================
# PROFIT PREVIEW VIEWMODEL STATE EVENT EFFECT IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines ViewModel state / event / effect for profit preview screen.

state_segments:
- loading_state
- source_context_state
- assumption_form_state
- result_state
- risk_note_state
- validation_state
- save_state
- pro_handoff_hint_state
- message_state

events:
- Initialize
- ChangeQuantityAssumption
- ChangeUnitPriceAssumption
- ChangeVariableCostAssumption
- ChangeFixedExecutionCostAssumption
- ChangeInventoryImpactNote
- ChangeRiskFactorNote
- Recalculate
- SaveSnapshot
- TapBackToProposal
- TapBackToAction
- TapProceedToProApproval

effects:
- NavigateToProposalBuilder
- NavigateToActionBoard
- NavigateToProApproval
- ShowMessage
- ShowValidation

rules:
- assumptions must remain visible
- recalculation must not hide prior entered assumptions
