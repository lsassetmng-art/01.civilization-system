# PERSONA EDGE FINAL TARGETED FOLLOWUP CONTROL RULE

status: final-governance-refresh
system: PersonaOS
layer: implementation
confirmed_at: 20260418_204327

purpose:
Defines the control rule for all future PersonaOS Edge work after final governance refresh.

control_rules:
1. choose one function only
2. state the exact reason for followup
3. name the exact document outputs to update
4. do not reopen unrelated families
5. do not reinterpret truth ownership without updating consolidated baseline docs
6. do not start code, DB, or app implementation under design-only followup
7. when followup ends, append result back into the integrated baseline

allowed_followup_examples:
- final field naming polish for one response surface
- policy-scope refinement for one function
- exact dependency clarification for one function
- pre-implementation comparison between two specific functions

forbidden_followup_examples:
- reopening all runtime family docs together without a concrete contradiction
- broad snapshot family redesign because of one field naming preference
- mixing design-only followup with implementation work
- changing release surface semantics without updating governance docs

hard_stop_rule:
If the proposed followup touches multiple families and does not name a concrete boundary conflict,
stop and narrow the request first.

