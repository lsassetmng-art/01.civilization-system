# ============================================================
# PRO APPROVAL SUBMISSION REDUCER TRANSITION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines reducer-style transition examples for ProApprovalSubmissionViewModel.

transition_examples:

Initialize:
- loading_state -> loading
- Pro gate checked
- source_context_state loaded
- approval_state loaded
- approver_state loaded
- handoff_readiness_state loaded
- payload_summary_state loaded if available
- handoff_result_state loaded
- loading_state -> content

SelectApprover:
- approver_state updated
- validation_state recalculated

ChangeApprovalComment:
- approval_state draft comment updated

RequestApproval:
- validation_state checked
- approval_state -> requesting
- ApprovalRepository.requestApproval called
- on success:
  - approval_state -> pending
  - message_state updated
- on failure:
  - approval_state -> request_failed
  - message_state updated

CancelApprovalRequest:
- approval_state -> canceling
- ApprovalRepository.cancelApproval called
- success/failure reflected explicitly

PrepareHandoff:
- validation_state checked
- HandoffRepository.prepareHandoff called
- handoff_readiness_state updated
- payload_summary_state updated on success

ExecuteHandoff:
- approval requirement rechecked
- handoff_result_state -> pending
- HandoffRepository.executeHandoff called
- on success:
  - handoff_result_state -> accepted_or_done
- on rejection:
  - handoff_result_state -> rejected
- on technical failure:
  - handoff_result_state -> failed

RetryHandoff:
- retry_state -> retrying
- HandoffRepository.retryHandoff called
- handoff_result_state updated from result

TapOpenHistory:
- effect -> NavigateToHistory

TapBack:
- effect -> NavigateBack

notes:
Approval state and handoff state are separate durable states.
