# ============================================================
# NATIONAL TREASURY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
National treasury is the fiscal storage and spending center of a nation.

purpose:
- accumulate tax and lawful public revenue
- fund public operations, security, and institutions

revenue_sources:
- taxation
- grants
- lawful state fees
- policy rewards

spending_targets:
- public salaries
- security expenditure
- institution construction
- welfare or subsidy if enabled

rules:
- treasury holds nation-level internal economic value, not arbitrary external money
- treasury spending must be explicit and auditable
- treasury cannot silently fund unrelated private transfers

event_flow:
- tax_received
- treasury_balance_updated
- budget_allocation_requested
- public_spending_authorized
- treasury_outflow_recorded

constitution_alignment:
- public value lineage required
- no direct off-ledger treasury mutation

final_rule:
Treasury must operate as an explicit public ledger-backed fiscal actor.
