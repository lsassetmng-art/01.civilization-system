# ============================================================
# EXPENSE CANONICAL DEVIATION HANDLING
# ============================================================

status: canonical
layer: development
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines what to do when slice_01 output deviates from canonical meaning.

deviation_examples:
- merged approval/finance/ERP states
- authority bypass
- attachment treated as accepted evidence automatically
- ERP treated as non-source-of-truth
- candidate/template treated as formal truth
- missing audit trace for major actions

handling_rule:
- stop broad forward progress
- classify the deviation explicitly
- restore canonical boundary first
- only then continue slice work

important_rule:
Deviation repair has priority over slice breadth progress.

