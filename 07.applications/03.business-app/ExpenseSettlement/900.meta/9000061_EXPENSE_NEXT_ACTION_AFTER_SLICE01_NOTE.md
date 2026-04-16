# ============================================================
# EXPENSE NEXT ACTION AFTER SLICE01 NOTE
# ============================================================

status: canonical
layer: meta
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
States what should happen after slice_01 is completed.

next_action_after_slice_01:
- review slice_01 against the review gate
- confirm canonical meaning survived
- only then define slice_02
- do not jump directly into broad expansion

recommended_slice_02_direction:
- deeper candidate/template support
- stronger export/reminder surfaces
- refined evidence/duplicate behaviors
- broader settlement and operations support

rule:
slice_02 should not be opened before slice_01 is accepted.

