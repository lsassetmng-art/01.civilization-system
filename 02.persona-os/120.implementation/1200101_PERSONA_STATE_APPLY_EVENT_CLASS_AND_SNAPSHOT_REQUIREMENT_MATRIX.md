# PERSONA STATE APPLY EVENT CLASS AND SNAPSHOT REQUIREMENT MATRIX

status: residual-queue-closed-candidate
system: PersonaOS
layer: implementation
confirmed_at: 20260418_184833

purpose:
Maps event classes to snapshot trigger requirement classes.

class_a_required_fail_closed_examples:
- events that produce externally consumable released state immediately
- events that change trust-relevant externally validated artifact state
- events whose successful completion contract explicitly includes snapshot availability

class_b_required_best_effort_examples:
- events that update canonical mutable truth but do not require immediate external artifact availability
- events where snapshot freshness is desirable but not contractually required for immediate success
- events whose external surface can tolerate delayed snapshot refresh

class_c_no_snapshot_required_examples:
- internal-only maintenance events
- low-impact state transitions with no release or external trust implication
- operational bookkeeping updates with no artifact issuance requirement

classification_rule:
Every event_type handled by persona-state-apply must be assigned one of:
- class_a_required_fail_closed
- class_b_required_best_effort
- class_c_no_snapshot_required

temporary_default_rule:
Until event_type-by-event_type classification is fully enumerated,
the generic default remains:
- class_b_required_best_effort

hard_rule:
No event_type may silently behave as class_a in implementation unless explicitly classified in design.

