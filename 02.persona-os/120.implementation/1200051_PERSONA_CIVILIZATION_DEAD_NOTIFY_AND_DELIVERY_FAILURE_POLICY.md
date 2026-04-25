# PERSONA CIVILIZATION DEAD NOTIFY AND DELIVERY FAILURE POLICY

status: design-freeze-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_140508

purpose:
Fixes delivery failure and dead notification policy for civilization integration.

delivery_failure_classes:
- validation_failed
- dispatch_rejected
- runtime_engine_failed
- retry_exhausted
- terminal_delivery_failure

civilization_dead_notify_role:
- receives failed-delivery or dead-path notification input
- publishes failure signal or records failure-side outcome
- does not retry truth mutation by itself
- does not become truth mutation owner

policy_rules:
- dead notification must stay separate from primary dispatch success
- retry exhaustion may lead to dead notification
- validation failure may short-circuit before runtime engine handoff
- failure notification must remain distinguishable from release success or apply success

hard_rules:
- civilization-dead-notify must not mutate PersonaOS truth
- dead notification must not hide original failure class
- dispatcher and dead notification remain separate boundaries

