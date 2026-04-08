# ============================================================
# PRO APPROVAL SUBMISSION VIEWMODEL STATE EVENT EFFECT IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines ViewModel state / event / effect for Pro approval/submission screen.

state_segments:
- loading_state
- source_context_state
- approval_state
- approver_state
- handoff_readiness_state
- payload_summary_state
- handoff_result_state
- retry_state
- validation_state
- message_state

events:
- Initialize
- Refresh
- SelectApprover
- ChangeApprovalComment
- RequestApproval
- CancelApprovalRequest
- PrepareHandoff
- ExecuteHandoff
- RetryHandoff
- TapOpenHistory
- TapBack

effects:
- NavigateToHistory
- NavigateBack
- ShowMessage
- ShowValidation

rules:
- approval state and handoff state must remain separate
- acceptance, rejection, and technical failure must remain distinct
- screen access is Pro-only
