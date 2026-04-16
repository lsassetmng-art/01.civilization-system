# ============================================================
# NAMECARD APPROVAL AUDIT CODE IMPLEMENTATION GUIDE
# ============================================================

status: draft
layer: implementation
system: applications
application: NameCardManager
implementation_scope: approval_audit_code
owner: Boss
prepared_by: Zero

purpose:
Provides implementation guidance for approval state transitions
and audit action codes.

# ============================================================
# 1. IMPLEMENTATION DIRECTION
# ============================================================

Implementation should:
- persist approval state separately from publication state
- emit stable audit action codes
- record shared BusinessOS publication routing explicitly
- keep approval result and publish result separate in UI and logs

# ============================================================
# 2. VALIDATION DIRECTION
# ============================================================

Validate:
- state transition legality
- non-bypass of approval boundary
- non-collapse of approved into published
- stable action code usage

# ============================================================
# 3. UI DIRECTION
# ============================================================

UI should show:
- pending approval
- approved but not yet published
- published
- rejected
- returned for fix
- publish failed

