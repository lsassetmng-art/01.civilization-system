# ============================================================
# NOTIFICATION OPERATIONS STANDARD
# ============================================================

status: canonical
layer: operations
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines notification-related operation standards.

notification_targets:
- invoice send request result
- overdue occurrence
- collection due reminder
- promised payment due reminder
- ERP reflection failure
- receipt issuance completion

notification_rules:
- notifications are advisory and must not replace canonical status persistence
- urgent financial exceptions should surface in dashboard even if notifications fail
- duplicate notifications should be minimized for the same unresolved issue
- notification wording must remain understandable for operators
- multilingual delivery should follow actor or tenant preference where possible
