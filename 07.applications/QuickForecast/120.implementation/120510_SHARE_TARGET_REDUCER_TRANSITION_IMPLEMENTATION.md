# ============================================================
# SHARE TARGET REDUCER TRANSITION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines reducer-style transition examples for ShareTargetViewModel.

transition_examples:

Initialize:
- loading_state -> loading
- Pro gate checked
- current_share_list_state loaded
- loading_state -> content

ChangeSearchQuery:
- search_query_state updated
- search_result_state may refresh

SelectTargetType:
- target_type_state updated
- search_result_state may refresh

SelectSearchResult:
- selected_target_state updated
- validation_state recalculated

SelectPermissionLevel:
- permission_level_state updated
- validation_state recalculated

ConfirmShare:
- validation checked
- ShareRepository.addShareTarget called
- on success:
  - current_share_list_state updated
  - message_state updated
- on failure:
  - message_state updated
  - validation_state or failure marker updated

RevokeShare:
- ShareRepository.removeShareTarget called
- current_share_list_state updated on success

TapBack:
- effect -> NavigateBack

notes:
Share creation updates share state; recipient behavior is out of scope.
