# ============================================================
# NAMECARD APPROVAL AND AUDIT CODE POLICY
# ============================================================

status: draft
layer: policy
system: applications
application: NameCardManager
policy: approval_and_audit_code
owner: Boss
prepared_by: Zero

purpose:
Defines policy constraints for approval state coding and
audit action code stability.

# ============================================================
# 1. CORE POLICY
# ============================================================

- approval state must remain distinct from publication result
- audit action codes must be canonical and stable
- shared BusinessOS publication routing must be auditable
- ERP publication success must be distinct from approval success

# ============================================================
# 2. STATE POLICY
# ============================================================

- pending_approval must remain visible as pending
- approved must not be displayed as published unless publication succeeded
- returned_for_fix must remain distinct from rejected
- published must only occur after shared capability execution success

# ============================================================
# 3. AUDIT CODE POLICY
# ============================================================

- canonical audit codes must be reused consistently
- renamed codes should be avoided once operationalized
- codes should describe meaningful boundary events

