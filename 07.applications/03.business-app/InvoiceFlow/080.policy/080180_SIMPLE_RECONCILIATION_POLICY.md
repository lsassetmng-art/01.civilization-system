# ============================================================
# SIMPLE RECONCILIATION POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines simple reconciliation policy.

policy_position:
- simple reconciliation is front-side operational alignment
- simple reconciliation is not ERP-side formal settlement truth

matching_rules:
- exact amount match may be treated as direct match candidate
- fee-adjusted differences must remain explicit
- partial payment must remain explicit
- operator must be shown difference_amount
- unresolved differences must not be hidden by UI simplification

closure_rules:
- payment may be operationally closed in InvoiceFlow according to policy
- formal ERP truth remains separate for ERP_MASTER paths
