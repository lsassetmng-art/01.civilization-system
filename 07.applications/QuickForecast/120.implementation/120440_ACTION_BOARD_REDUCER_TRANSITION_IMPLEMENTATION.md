# ============================================================
# ACTION BOARD REDUCER TRANSITION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines reducer-style transition examples for ActionBoardViewModel.

transition_examples:

Initialize:
- loading_state -> loading
- forecast_context_state loaded
- suggested_actions_state loaded/generated
- selected_actions_state loaded
- loading_state -> content

SelectSuggestedAction:
- selected_actions_state updated
- validation_state recalculated
- save_state -> dirty

DeselectAction:
- selected_actions_state updated
- validation_state recalculated
- save_state -> dirty

AddCustomAction / UpdateCustomAction:
- custom_action_form_state updated
- selected_actions_state may update
- save_state -> dirty

SaveSelection:
- save_state -> saving
- repository saveActionSelection called
- on success -> save_state saved
- on failure -> save_state failed

TapContinueToProposal:
- validation checked
- if valid:
  - effect -> NavigateToProposalBuilder
- else:
  - effect -> ShowValidation

notes:
Action selection is durable state.
Continue navigation is effect.
