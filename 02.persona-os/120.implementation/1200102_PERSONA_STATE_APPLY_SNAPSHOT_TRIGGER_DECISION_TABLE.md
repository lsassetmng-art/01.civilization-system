# PERSONA STATE APPLY SNAPSHOT TRIGGER DECISION TABLE

status: residual-queue-closed-candidate
system: PersonaOS
layer: implementation
confirmed_at: 20260418_184833

purpose:
Defines the decision behavior once snapshot trigger class is known.

decision_table:
- if class = class_a_required_fail_closed
  - snapshot_success -> terminal success may stand
  - snapshot_failure -> terminal success may not stand as fully complete
  - expected_followup = retry_or_fail_closed_handling_by_policy

- if class = class_b_required_best_effort
  - snapshot_success -> terminal success stands
  - snapshot_failure -> terminal success still stands
  - expected_followup = repair_or_async_reissue_allowed

- if class = class_c_no_snapshot_required
  - snapshot_trigger_not_called -> terminal success stands
  - expected_followup = none

decision_rules:
- mark_processed remains decisive for apply completion semantics in current design
- class_a introduces stricter completion semantics but does not merge snapshot issue into truth mutation ownership
- class_b preserves current broad behavior
- class_c prevents meaningless snapshot calls

boundary_rules:
- persona-state-apply decides whether snapshot trigger is required by class
- snapshot-issue still owns snapshot issuance itself
- failure semantics must stay role-distinct from truth mutation semantics

