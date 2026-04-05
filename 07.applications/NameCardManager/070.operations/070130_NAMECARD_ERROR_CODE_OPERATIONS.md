# ============================================================
# NAMECARD ERROR CODE OPERATIONS
# ============================================================

status: draft
layer: operations
system: applications
application: NameCardManager
operations_scope: error_code
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling guidance for canonical error codes.

# ============================================================
# 1. OPERATIONAL GOAL
# ============================================================

Error codes provide stable diagnostic meaning across UI,
API, support, audit, and operations.

# ============================================================
# 2. OPERATIONAL RULES
# ============================================================

- Use canonical error codes consistently.
- Do not replace canonical code meaning with ad hoc text.
- Support may map codes to human-readable guidance separately.
- Conflict, approval-required, rejection, and publish-failure
  must remain distinct.

# ============================================================
# 3. SUPPORT EXAMPLES
# ============================================================

Examples:
- NCM_ERR_SYNC_CONFLICT_DETECTED
- NCM_ERR_ERP_APPROVAL_REQUIRED
- NCM_ERR_ERP_APPROVAL_REJECTED
- NCM_ERR_ERP_PUBLICATION_FAILED
- NCM_ERR_PROTECTED_ACCESS_DENIED
- NCM_ERR_FAIL_CLOSED_TRIGGERED

