# ============================================================
# COMPETITIVE DIFFERENTIATION POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Fixes policy-level differentiation choices for InvoiceFlow.

policy_decisions:
- InvoiceFlow shall not position itself as an ERP replacement.
- InvoiceFlow shall explicitly support ERP-master coexistence.
- InvoiceFlow shall integrate collection management in the same product scope.
- InvoiceFlow shall support both bank-linked and manual payment confirmation.
- InvoiceFlow shall allow receipt issuance from confirmed payment regardless of route.
- InvoiceFlow shall visibly distinguish locally-created invoices from ERP-master invoices.
- InvoiceFlow shall visibly distinguish ERP-eligible and ERP-non-eligible operations.
- InvoiceFlow shall optimize for daily operational handling, not only accounting-office workflows.

operator_value_policy:
- an operator must understand invoice authority at a glance
- an operator must understand overdue/collection priority at a glance
- an operator must be able to confirm payment from realistic routes
- an operator must be able to move from unpaid state to collection action without leaving the app

exclusion_policy:
- do not hide collection data behind separate modules that feel like another product
- do not over-specialize into accounting-only terminology on every screen
- do not require ERP adoption for local/front invoice use
