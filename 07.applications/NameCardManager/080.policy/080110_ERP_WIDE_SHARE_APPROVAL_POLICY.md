# ============================================================
# ERP WIDE SHARE APPROVAL POLICY
# ============================================================

status: draft
layer: policy
system: applications
application: NameCardManager
policy: erp_wide_share_approval
owner: Boss
prepared_by: Zero

purpose:
Defines approval policy constraints for ERP-wide sharing.

# ============================================================
# 1. POLICY GOAL
# ============================================================

ERP-wide sharing is treated as controlled publication into ERP.
It must not be treated as ordinary app-level sharing.

# ============================================================
# 2. CORE RULES
# ============================================================

- ERP-wide sharing is explicit only.
- ERP-wide sharing may require approval.
- Approval requirement must be evaluated before publication.
- Ordinary users must not bypass required approval.
- Ordinary users must not revoke published ERP-wide data.

# ============================================================
# 3. APPROVAL POLICY RULES
# ============================================================

Where approval is required:
- publication must stop at pending state until decision
- approval outcome must be recorded
- rejected publication must not appear as published
- returned_for_fix must not appear as approved

# ============================================================
# 4. USER AUTHORITY RULES
# ============================================================

Ordinary user may:
- request ERP-wide publication
- inspect publication eligibility
- inspect publication state
- inspect approval requirement visibility

Ordinary user may not:
- force approval
- force publish where approval is required
- revoke already published ERP-wide data

# ============================================================
# 5. AUDIT RULES
# ============================================================

The following must be auditable:
- publication request creation
- approval requirement determination
- approval result
- final publication result
- publication failure

# ============================================================
# 6. STATE RULES
# ============================================================

Allowed ERP publication states:
- not_published
- publish_pending
- published
- publish_failed

No ordinary-user revoke state is provided for published ERP-wide sharing.

