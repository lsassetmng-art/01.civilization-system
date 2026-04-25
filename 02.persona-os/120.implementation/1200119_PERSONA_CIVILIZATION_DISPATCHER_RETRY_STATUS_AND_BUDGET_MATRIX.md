# PERSONA CIVILIZATION DISPATCHER RETRY STATUS AND BUDGET MATRIX

status: residual-queue-closed-candidate
system: PersonaOS
layer: implementation
confirmed_at: 20260418_193641

purpose:
Provides the exact status and retry-budget matrix for civilization-event-dispatcher.

status_matrix:
- dispatch_succeeded
- dispatch_rejected
- dispatch_retrying
- dispatch_failed
- dispatch_exhausted

retry_budget_matrix:
- no_retry
  - max_attempts: 1
  - exhaustion_outcome: terminal_dispatch_failure
- bounded_retry_3
  - max_attempts: 3
  - exhaustion_outcome: dead_notify_required_or_policy_selected
- bounded_retry_5
  - max_attempts: 5
  - exhaustion_outcome: dead_notify_required_or_policy_selected
- policy_defined_retry
  - max_attempts: policy_controlled
  - exhaustion_outcome: policy_controlled

matrix_rules:
- dispatch_retrying must include retry budget context
- dispatch_exhausted must remain distinct from dispatch_failed
- dispatch_rejected must remain distinct from dispatch_failed
- exhaustion outcome selection must stay explicit

