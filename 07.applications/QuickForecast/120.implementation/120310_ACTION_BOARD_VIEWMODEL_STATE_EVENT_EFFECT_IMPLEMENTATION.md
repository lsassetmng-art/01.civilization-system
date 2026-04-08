# ============================================================
# ACTION BOARD VIEWMODEL STATE EVENT EFFECT IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines ViewModel state / event / effect for action board screen.

state_segments:
- loading_state
- forecast_context_state
- scenario_context_state
- suggested_actions_state
- selected_actions_state
- custom_action_form_state
- validation_state
- save_state
- message_state

events:
- Initialize
- SelectSuggestedAction
- DeselectAction
- AddCustomAction
- UpdateCustomAction
- SaveSelection
- TapContinueToProposal
- TapBackToEditor

effects:
- NavigateToProposalBuilder
- NavigateBack
- ShowMessage
- ShowValidation

rules:
- selected actions must remain editable
- no-action-selected state must remain explicit
