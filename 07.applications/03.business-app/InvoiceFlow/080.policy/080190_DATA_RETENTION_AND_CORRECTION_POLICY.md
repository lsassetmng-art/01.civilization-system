# ============================================================
# DATA RETENTION AND CORRECTION POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines retention, correction, and cancellation principles.

retention_rules:
- financial operation records should be retained for audit and operational traceability
- payment confirmation, receipt issuance, collection action, and ERP reflection records should not be silently deleted
- correction should prefer additive traceable events over destructive overwrite where feasible

correction_rules:
- invoice correction after send may require controlled edit or replacement policy
- manual payment confirmation correction must remain auditable
- receipt reissue must preserve prior linkage
- cancelled invoice should remain historically visible when policy requires

deletion_rules:
- hard delete is discouraged for financial trail records
- archival or inactive visibility is preferred to destructive deletion
