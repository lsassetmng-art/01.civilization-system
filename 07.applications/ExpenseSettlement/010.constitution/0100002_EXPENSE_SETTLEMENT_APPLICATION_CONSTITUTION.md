# ============================================================
# EXPENSE SETTLEMENT APPLICATION CONSTITUTION
# ============================================================

status: canonical
layer: constitution
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

mission:
Provide a small, reliable, approval-aware expense reimbursement front
for BusinessOS while preserving ERP as the final accounting authority.

musts:
- preserve user-entered facts
- preserve evidence linkability
- separate approval state and ERP state
- reject unauthorized state transitions
- keep retry and failure visible

must_not:
- impersonate ERP authority
- auto-finalize accounting
- hide failed publication
- allow silent evidence substitution after approval
