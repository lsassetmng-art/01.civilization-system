# PERSONA STATE APPLY SNAPSHOT TRIGGER EXTERNAL SURFACE IMPACT SPEC

status: residual-queue-closed-candidate
system: PersonaOS
layer: implementation
confirmed_at: 20260418_184833

purpose:
Explains how snapshot trigger class split affects external surface and readiness interpretation.

external_surface_impact:
- class_a_required_fail_closed
  - external success should assume snapshot availability is part of completion semantics
- class_b_required_best_effort
  - external success may precede snapshot refresh completion under policy
- class_c_no_snapshot_required
  - external success does not imply snapshot issuance at all

readiness_impact:
- persona-state-apply remains implementation_entry_ready
- queue item 1 is considered design-closed at policy level by adopting class split
- later event_type enumeration is a refinement task, not a reopening of broad architecture

documentation_rule:
When exact per-event classification is later added, update only:
- event classification ledger
- state apply exactness memo if materially needed
Do not reopen unrelated families.

