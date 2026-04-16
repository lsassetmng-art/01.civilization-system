# ============================================================
# OUT OF SCOPE LEDGER
# ============================================================

status: canonical-meta
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines what is intentionally outside the current InvoiceFlow design scope.

out_of_scope_items:
- formal ERP invoice-master creation inside InvoiceFlow
- full accounting ledger functionality
- formal ERP-side final settlement truth
- payment gateway orchestration as a core product theme
- full BI/reporting warehouse design
- cross-application shared component formal design
- advanced ML-based collection scoring
- advanced bank auto-reconciliation beyond current front-side scope

scope_rule:
If a requirement contradicts the current authority boundary,
it must be treated as a scope review item,
not as an implementation shortcut.
