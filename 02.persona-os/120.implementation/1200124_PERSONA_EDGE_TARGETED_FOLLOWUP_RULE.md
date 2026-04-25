# PERSONA EDGE TARGETED FOLLOWUP RULE

status: final-design-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260418_195327

purpose:
Defines how future follow-up work should proceed from the current PersonaOS edge baseline.

targeted_followup_rule:
- choose exactly one function or one narrow residual refinement topic
- state the reason for reopening
- state the expected output
- update only the smallest required design docs
- do not reopen unrelated families

allowed_followup_examples:
- field naming refinement for one response surface
- retry budget numeric tuning for one dispatcher
- approved-input schema refinement for one apply boundary
- event_type classification table for one runtime orchestrator

forbidden_followup_examples:
- reopening all runtime edges together without a concrete conflict
- redesigning snapshot and trust families together for cosmetic reasons only
- changing truth ownership semantics without updating consolidated ledgers
- starting implementation while claiming the work is still design-only

hard_stop_rule:
If a proposed follow-up touches more than one family without a boundary conflict,
stop and narrow the scope first.

