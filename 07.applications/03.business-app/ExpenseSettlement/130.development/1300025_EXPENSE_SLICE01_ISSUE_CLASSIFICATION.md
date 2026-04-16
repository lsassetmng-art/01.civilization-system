# ============================================================
# EXPENSE SLICE01 ISSUE CLASSIFICATION
# ============================================================

status: canonical
layer: development
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Classifies issue types found during slice_01 work.

issue_classes:

  - issue_class: implementation_bug
    meaning:
      - intended canonical behavior is clear
      - implementation output simply does not match it

  - issue_class: implementation_gap
    meaning:
      - required slice_01 behavior is missing or incomplete
      - no broad redesign is implied

  - issue_class: baseline_misalignment
    meaning:
      - route / label / reason-code / settlement baseline was not followed

  - issue_class: canonical_deviation
    meaning:
      - implementation output weakens or changes canonical meaning

  - issue_class: scope_expansion
    meaning:
      - work went beyond slice_01 lock without explicit approval

classification_rule:
Treat issues as small as possible first.
Do not escalate to redesign unless canonical deviation is real.

