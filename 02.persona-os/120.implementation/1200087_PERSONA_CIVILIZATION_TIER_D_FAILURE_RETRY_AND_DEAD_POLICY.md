# PERSONA CIVILIZATION TIER D FAILURE RETRY AND DEAD POLICY

status: tier-d-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_183303

purpose:
Fixes exact failure, retry, and dead-notify semantics for civilization integration family behavior.

failure_classes:
- production_failed
- validation_failed
- dispatch_failed
- external_dispatch_failed
- dead_notify_failed

rejection_classes:
- production_rejected
- validation_rejected
- dispatch_rejected
- external_dispatch_rejected
- dead_notify_rejected

retry_classes:
- dispatch_retrying
- external_dispatch_retrying

dead_path_rules:
- validation_rejected may short-circuit before runtime handoff
- dispatch_failed may lead to retry or dead path by policy
- retry exhaustion may lead to civilization-dead-notify
- dead notification must retain original failure class context

hard_rules:
- rejected must not silently map to failed
- failed must not silently map to rejected
- dead notification must not hide original failure type
- dead notification must not mutate PersonaOS truth

