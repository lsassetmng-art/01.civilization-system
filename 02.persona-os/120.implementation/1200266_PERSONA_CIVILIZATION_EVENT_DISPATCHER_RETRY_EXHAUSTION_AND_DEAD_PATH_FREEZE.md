# PERSONA CIVILIZATION EVENT DISPATCHER RETRY EXHAUSTION AND DEAD PATH FREEZE

status: no-code-implementation-entry
system: PersonaOS
layer: implementation
confirmed_at: 20260419_112633

purpose:
Freezes retry, exhaustion, and dead-path semantics for civilization-event-dispatcher.

retry_budget_classes:
- no_retry
- bounded_retry_3
- bounded_retry_5
- policy_defined_retry

retry_budget_freeze_rules:
- retry budget class must be known before retrying
- no implicit infinite retry is allowed
- retry budget class remains distinct from dispatch terminal status

exhaustion_outcomes:
- dead_notify_required
- terminal_dispatch_failure
- external_followup_required

exhaustion_freeze_rules:
- dispatch_retrying means attempts remain inside budget
- dispatch_exhausted means budget is spent
- dispatch_exhausted must carry an explicit exhaustion outcome
- exhaustion outcome must preserve original failure context
- retry exhaustion must not silently collapse into generic dispatch_failed

dead_path_relation_rules:
- civilization-dead-notify remains a separate downstream boundary
- dead notification may be triggered by explicit exhaustion or controlled failure policy
- dead path must not erase original failure class
- dead notification is not retry execution

hard_rules:
- rejected must never silently map to failed
- failed must never silently map to exhausted
- exhausted must never silently map to succeeded
