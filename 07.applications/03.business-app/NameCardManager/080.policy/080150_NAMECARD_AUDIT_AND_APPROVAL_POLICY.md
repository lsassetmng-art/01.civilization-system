# ============================================================
# NAMECARD AUDIT AND APPROVAL POLICY
# ============================================================

status: draft
layer: policy
system: applications
application: NameCardManager
policy: audit_and_approval
owner: Boss
prepared_by: Zero

purpose:
Defines policy rules for audit, history, and approval events,
including the use of shared BusinessOS ERP publication capability.

# ============================================================
# 1. CORE POLICY
# ============================================================

- ERP-wide publication must use shared BusinessOS capability.
- Important state transitions must be auditable.
- Approval events must remain distinguishable from publication result.
- User-facing history and audit records serve different purposes.

# ============================================================
# 2. AUDIT POLICY
# ============================================================

Audit is required for:
- create
- update
- delete
- app share
- app share revoke
- ERP publication request
- approval result
- ERP publication result
- sync conflict handling

# ============================================================
# 3. APPROVAL POLICY
# ============================================================

- approval event is not equal to final publication
- approved is not equal to published unless publication succeeds
- rejected must not appear as published
- returned_for_fix must remain distinguishable from rejected

# ============================================================
# 4. SHARED CAPABILITY POLICY
# ============================================================

- application must not bypass shared BusinessOS ERP publication capability
- application-local direct ERP transmission is prohibited by design
- company scoping, approval, payload transformation, and ERP execution
  are shared capability concerns

