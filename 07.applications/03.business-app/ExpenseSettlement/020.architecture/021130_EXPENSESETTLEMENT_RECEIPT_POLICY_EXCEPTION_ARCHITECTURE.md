# ============================================================
# EXPENSESETTLEMENT RECEIPT POLICY EXCEPTION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: ExpenseSettlement
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: receipt-policy-exception-architecture

purpose:
Defines the relationship between receipt quality, policy compliance,
settlement readiness, and exception handling in ExpenseSettlement.

core_principle:
- reimbursement slippage often appears first through receipt defect,
  policy breach, missing evidence, payout blocker, or ERP handoff blocker
  before it appears as final accounting failure.

architecture_rules:
- policy compliance must be represented explicitly
- receipt and evidence blockers must be reviewable as first-class settlement objects
- ERP handoff blockers must survive beyond one screen or one session
- unresolved exceptions must be visible in the same review flow as settlement health

exception_categories:
- missing receipt
- receipt quality risk
- policy breach
- payout blocker
- ERP handoff blocker

visibility_outputs:
- expense cockpit
- expense exception review screen
- compliance blocker panel
- ERP handoff readiness overview

cross_module_relation:
- claim detail editing feeds transaction and evidence detail
- settlement layer summarizes settlement checkpoints
- approval layer captures governance state
- compliance layer surfaces policy readiness
- downstream layer surfaces payout and ERP readiness
