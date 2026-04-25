# PERSONA CIVILIZATION DISPATCHER RETRY BUDGET AND EXHAUSTION POLICY

status: residual-queue-closed-candidate
system: PersonaOS
layer: implementation
confirmed_at: 20260418_193641

purpose:
Closes residual queue item 7 by fixing retry budget and retry exhaustion policy for civilization-event-dispatcher.

policy_decision:
civilization-event-dispatcher uses explicit retry budget classes and exhaustion outcomes.

retry_budget_classes:
- no_retry
- bounded_retry_3
- bounded_retry_5
- policy_defined_retry

retry_exhaustion_outcomes:
- dead_notify_required
- terminal_dispatch_failure
- external_followup_required

dispatcher_rules:
- retry budget class must be known before retrying
- retrying remains distinct from failed
- exhaustion must produce an explicit exhaustion outcome
- dead notification remains downstream from controlled exhaustion path
- dispatcher does not own truth mutation or hidden infinite retry behavior

hard_rules:
- no implicit infinite retry
- no silent collapse from retry exhaustion into generic failure
- exhaustion handling must preserve original failure context

