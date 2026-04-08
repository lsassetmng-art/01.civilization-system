# ============================================================
# SHARE TARGET VIEWMODEL STATE EVENT EFFECT IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines ViewModel state / event / effect for share target screen.

state_segments:
- loading_state
- search_query_state
- target_type_state
- search_result_state
- selected_target_state
- permission_level_state
- current_share_list_state
- validation_state
- message_state

events:
- Initialize
- ChangeSearchQuery
- SelectTargetType
- SelectSearchResult
- SelectPermissionLevel
- ConfirmShare
- RevokeShare
- TapBack

effects:
- NavigateBack
- ShowMessage
- ShowValidation

rules:
- permission scope must remain explicit
- share success and target response are separate
- screen access is Pro-only
