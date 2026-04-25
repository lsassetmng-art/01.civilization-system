# PERSONA STATE APPLY SNAPSHOT TRIGGER CLASS SPLIT POLICY

status: residual-queue-closed-candidate
system: PersonaOS
layer: implementation
confirmed_at: 20260418_184833

purpose:
Closes residual queue item 1 by fixing snapshot trigger class split policy for persona-state-apply.

problem_statement:
persona-state-apply currently treats snapshot trigger as best-effort in the generic design profile.
This is too coarse for long-term operation because not all event classes have the same release or trust impact.

policy_decision:
Snapshot trigger behavior is split into explicit event classes.

snapshot_trigger_classes:
- class_a_required_fail_closed
- class_b_required_best_effort
- class_c_no_snapshot_required

class_a_required_fail_closed_meaning:
- snapshot issuance is required to complete the event lifecycle
- if snapshot trigger fails, the overall terminal result must not be treated as fully successful
- upstream handling may remain retryable by policy

class_b_required_best_effort_meaning:
- snapshot issuance is expected but not required to preserve the primary apply success
- if snapshot trigger fails, apply success remains valid and snapshot issuance can be repaired later

class_c_no_snapshot_required_meaning:
- no snapshot issuance is required for the event class
- apply success stands without snapshot trigger

global_rules:
- event class selection must be explainable by release and trust impact
- class choice must not be hidden inside code only
- class choice must be traceable at design and policy level
- state_apply truth mutation boundary remains separate from snapshot issue boundary

