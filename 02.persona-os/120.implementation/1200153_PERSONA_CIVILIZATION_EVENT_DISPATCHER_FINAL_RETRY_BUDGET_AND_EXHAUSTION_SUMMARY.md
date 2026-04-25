# PERSONA CIVILIZATION EVENT DISPATCHER FINAL RETRY BUDGET AND EXHAUSTION SUMMARY

status: final-targeted-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260418_211826

purpose:
Condenses the final retry budget and exhaustion semantics for civilization-event-dispatcher.

retry_budget_classes:
- no_retry
- bounded_retry_3
- bounded_retry_5
- policy_defined_retry

retry_budget_rules:
- retry budget class must be known before retrying
- no implicit infinite retry is allowed
- retry budget class must remain distinct from dispatch result status

exhaustion_outcomes:
- dead_notify_required
- terminal_dispatch_failure
- external_followup_required

exhaustion_rules:
- dispatch_retrying means attempts remain inside budget
- dispatch_exhausted means budget is spent
- dispatch_exhausted must carry an explicit exhaustion outcome
- exhaustion outcome must preserve original failure context
- retry exhaustion must not silently collapse into generic dispatch_failed

hard_rules:
- rejected must never silently map to failed
- failed must never silently map to exhausted
- exhausted must never silently map to succeeded
- dead notification must remain downstream from explicit exhaustion or controlled failure policy

