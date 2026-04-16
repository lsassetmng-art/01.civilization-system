# ============================================================
# EXPENSE SLICE01 REPAIR LOOP
# ============================================================

status: canonical
layer: development
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines the repair loop when slice_01 is held or failed.

repair_loop_steps:
- classify the issue
- confirm whether it is bug, gap, baseline misalignment, deviation, or scope expansion
- stop forward expansion
- repair the smallest relevant layer first
- re-check against acceptance checklist
- re-check against review gate
- re-check hold conditions
- then judge pass / hold / fail again

important_rule:
Repair should restore canonical meaning first,
not add compensating breadth.

