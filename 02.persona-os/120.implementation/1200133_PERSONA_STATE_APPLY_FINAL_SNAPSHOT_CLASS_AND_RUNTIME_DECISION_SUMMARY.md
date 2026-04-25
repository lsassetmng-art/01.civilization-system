# PERSONA STATE APPLY FINAL SNAPSHOT CLASS AND RUNTIME DECISION SUMMARY

status: final-targeted-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260418_204614

purpose:
Condenses the final snapshot trigger class split and runtime decision model for persona-state-apply.

snapshot_trigger_classes:
- class_a_required_fail_closed
- class_b_required_best_effort
- class_c_no_snapshot_required

class_meanings:
- class_a_required_fail_closed
  - snapshot is part of completion semantics
- class_b_required_best_effort
  - snapshot is expected but does not rewrite primary apply success
- class_c_no_snapshot_required
  - snapshot trigger is not needed

current_default_rule:
Until per-event classification is enumerated explicitly,
generic default remains:
- class_b_required_best_effort

runtime_decision_rules:
- snapshot trigger occurs after mark_processed success
- class_a failure may not be treated as fully complete success
- class_b failure does not rewrite main apply success
- class_c avoids meaningless snapshot call
- snapshot issue boundary remains separate from truth mutation boundary

best_effort_and_fail_closed_summary:
fail_closed:
- missing mandatory env
- auth failure
- invalid json
- missing required fields
- control gate disabled
- registry failure
- persona lookup failure
- engine failure
- mark_processed failure
- fatal runtime error

best_effort:
- snapshot trigger only when class policy allows
- signed apply_run_log enrichment
- non-blocking audit helper persistence

