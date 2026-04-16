# ============================================================
# EXPENSE SLICE01 OUTCOME RULE
# ============================================================

status: canonical
layer: development
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines how slice_01 outcome should be judged.

possible_outcomes:
- pass
- hold
- fail

outcome_meaning:

  pass:
    meaning:
      - acceptance checklist passes
      - review gate passes
      - no unresolved hold condition remains
      - no canonical deviation remains unresolved

  hold:
    meaning:
      - work is promising but unresolved hold condition remains
      - repair is required before acceptance
      - broad continuation must pause

  fail:
    meaning:
      - output materially conflicts with canonical meaning
      - slice must not be accepted
      - repair or redesign request is required before continuation

judgement_rule:
Use the smallest honest judgement.
Do not call hold or fail a pass for schedule convenience.

