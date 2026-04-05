# ============================================================
# NAMECARD AUDIT ACTION CODE OPERATIONS
# ============================================================

status: draft
layer: operations
system: applications
application: NameCardManager
operations_scope: audit_action_code
owner: Boss
prepared_by: Zero

purpose:
Defines operational usage guidance for audit action codes.

# ============================================================
# 1. OPERATIONAL GOAL
# ============================================================

Audit action codes provide stable operational labels for
support, review, investigation, and reporting.

# ============================================================
# 2. OPERATIONAL RULES
# ============================================================

- Use canonical action codes consistently.
- Do not collapse approval and publication into one action.
- Distinguish request, approval, submission, success, and failure.
- Preserve sync conflict events distinctly.

# ============================================================
# 3. SUPPORT USAGE EXAMPLES
# ============================================================

Support may inspect:
- erp_publish_requested
- erp_publish_approval_required
- erp_publish_approved
- erp_publish_submitted
- erp_publish_succeeded
- erp_publish_failed
- sync_conflict_detected
- sync_conflict_resolved

