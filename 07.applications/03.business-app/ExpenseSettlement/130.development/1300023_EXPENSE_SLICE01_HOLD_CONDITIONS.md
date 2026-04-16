# ============================================================
# EXPENSE SLICE01 HOLD CONDITIONS
# ============================================================

status: canonical
layer: development
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines when slice_01 work should be held for review instead of pushed forward.

hold_conditions:
- canonical state meanings are merged
- approval / finance / ERP boundaries blur
- authority boundaries are bypassed
- attachment is treated as accepted evidence automatically
- major actions have no useful audit trail
- route / reason-code / label baselines drift with no explicit decision
- slice scope expands beyond slice_01_foundation_flow
- ERP source-of-truth boundary is weakened

hold_rule:
If any hold condition is observed,
slice_01 should pause for review before continuation.

