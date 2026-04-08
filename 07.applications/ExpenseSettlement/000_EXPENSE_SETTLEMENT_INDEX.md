# ============================================================
# EXPENSE SETTLEMENT INDEX
# ============================================================

status: canonical
system: applications
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

root_files:
- 000_EXPENSE_SETTLEMENT_OVERVIEW.md
- 000_EXPENSE_SETTLEMENT_INDEX.md
- 00_EXPENSE_SETTLEMENT_INTEGRATED.md

layers:
- 010.constitution
- 020.architecture
- 030.model
- 040.runtime
- 050.flow
- 060.integration
- 070.operations
- 080.policy
- 090.interface
- 100.security
- 110.infrastructure
- 120.implementation
- 130.development
- 900.meta

design_focus:
- expense reimbursement front operation
- receipt evidence control
- approval routing
- ERP publication boundary
- offline / sync / retry handling
- PocketSecretary candidate linkage
