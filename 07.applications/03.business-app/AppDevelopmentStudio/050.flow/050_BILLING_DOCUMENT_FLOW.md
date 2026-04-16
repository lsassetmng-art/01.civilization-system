# ============================================================
# BILLING DOCUMENT FLOW
# ============================================================

flow:
billable event or billing period resolved
-> amount breakdown resolved
-> document type resolved
-> invoice or receipt generated
-> document history updated
-> user can review billing document
