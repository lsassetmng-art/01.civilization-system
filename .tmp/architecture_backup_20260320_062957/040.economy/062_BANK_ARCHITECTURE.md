# ============================================================
# BANK ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Banking provides regulated storage, transfer, and loan infrastructure
for persons, companies, and governments.

purpose:
- store balances safely
- support payment and transfer flows
- connect treasury, company, and personal accounts

bank_types:
- central_bank
- commercial_bank

central_bank_functions:
- issue national currency
- manage monetary supply
- support macroeconomic stability
- serve treasury infrastructure

commercial_bank_functions:
- maintain personal and company accounts
- process transfers
- support loans and deposits

account_types:
- personal_account
- company_account
- treasury_account
- reserve_account

rules:
- banks do not create arbitrary balances
- transfers require explicit transaction events
- bank failures must fail closed and be logged
- real-money payout is outside ordinary bank layer unless explicitly modeled

event_flow:
- account_opened
- deposit_recorded
- withdrawal_requested
- transfer_validated
- transfer_executed
- loan_issued
- repayment_recorded

integration_points:
- currency
- revenue_ledger
- treasury
- company
- taxation

constitution_alignment:
- no silent balance mutation
- auditable transaction lineage
- explicit permission and validation

final_rule:
All bank balance changes must be event-driven, validated,
and traceable to a lawful source.
