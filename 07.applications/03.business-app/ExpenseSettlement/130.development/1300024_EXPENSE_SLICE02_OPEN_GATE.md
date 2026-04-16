# ============================================================
# EXPENSE SLICE02 OPEN GATE
# ============================================================

status: canonical
layer: development
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines when slice_02 may be opened after slice_01.

slice_02_may_open_only_when:
- slice_01 acceptance checklist passes
- slice_01 review gate passes
- no unresolved hold condition remains
- canonical meaning survived implementation-start work
- slice_02 scope is explicitly locked before expansion

recommended_slice_02_candidates:
- stronger candidate inbox support
- stronger template management support
- refined export/reminder behavior
- refined evidence/duplicate handling
- broader settlement operations support

gate_rule:
Do not use unfinished slice_01 as justification
to broaden into slice_02.

