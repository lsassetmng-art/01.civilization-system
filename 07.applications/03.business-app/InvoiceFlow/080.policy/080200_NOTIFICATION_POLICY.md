# ============================================================
# NOTIFICATION POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines notification policy for InvoiceFlow.

policy_rules:
- notifications are secondary to canonical persisted state
- overdue notifications must not be the only visibility path for overdue work
- ERP reflection failure must surface in dashboard and detail views
- promised payment reminders should be available where collection policy uses promise tracking
- repeated notification storms should be avoided for unresolved items

delivery_policy:
- in-app visibility is baseline
- external delivery channels are optional by tenant capability
- notification content should avoid ambiguous wording about authority boundaries
