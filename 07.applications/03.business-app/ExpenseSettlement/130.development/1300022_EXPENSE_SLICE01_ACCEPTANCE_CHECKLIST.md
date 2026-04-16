# ============================================================
# EXPENSE SLICE01 ACCEPTANCE CHECKLIST
# ============================================================

status: canonical
layer: development
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Provides the acceptance checklist for slice_01_foundation_flow.

acceptance_checklist:
- [ ] draft report creation works
- [ ] report list/detail load works
- [ ] item create/edit works
- [ ] receipt metadata attach/list works
- [ ] submit validation blocks invalid cases correctly
- [ ] submit action updates canonical states correctly
- [ ] approval queue and approve/return/reject work
- [ ] finance queue and finance actions work
- [ ] ERP request/result skeleton works
- [ ] authority boundaries are preserved
- [ ] major audit-visible actions are preserved
- [ ] blocked states remain explainable
- [ ] no broad slice expansion occurred
- [ ] review gate questions can all be answered yes

acceptance_rule:
Slice_01 is accepted only when all checklist items are satisfied
without weakening canonical meaning.

