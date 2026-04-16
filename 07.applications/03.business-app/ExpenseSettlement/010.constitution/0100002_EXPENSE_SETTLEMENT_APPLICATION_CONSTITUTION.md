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

mandatory_foundation_requirements:
- multilingual operation is mandatory
- multi currency operation is mandatory
- iphone support is mandatory
- android support is mandatory
- pc support is mandatory
- tablet support is mandatory

musts:
- preserve user-entered facts
- preserve evidence linkability
- separate approval state and ERP state
- reject unauthorized state transitions
- keep retry and failure visible
- preserve consistent business meaning across all supported devices
- preserve currency meaning as structured data

must_not:
- impersonate ERP authority
- auto-finalize accounting
- hide failed publication
- allow silent evidence substitution after approval
- reduce supported platforms to mobile-only assumptions
