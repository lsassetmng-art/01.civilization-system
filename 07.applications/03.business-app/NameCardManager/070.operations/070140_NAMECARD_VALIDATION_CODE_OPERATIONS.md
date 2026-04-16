# ============================================================
# NAMECARD VALIDATION CODE OPERATIONS
# ============================================================

status: draft
layer: operations
system: applications
application: NameCardManager
operations_scope: validation_code
owner: Boss
prepared_by: Zero

purpose:
Defines operational usage guidance for validation codes.

# ============================================================
# 1. OPERATIONAL GOAL
# ============================================================

Validation codes allow support and operations to identify
what prerequisite failed before the request moved into
deeper processing.

# ============================================================
# 2. OPERATIONAL RULES
# ============================================================

- Use validation codes for unmet prerequisites.
- Use error codes for execution/path failures.
- Do not collapse validation failure into generic error prematurely.
- Preserve actionable validation meaning where possible.

# ============================================================
# 3. SUPPORT EXAMPLES
# ============================================================

Examples:
- NCM_VAL_COMPANY_ID_REQUIRED
- NCM_VAL_ERP_USE_SETTING_REQUIRED
- NCM_VAL_SHARE_TARGET_DISABLED
- NCM_VAL_FULL_NAME_REQUIRED
- NCM_VAL_OPERATION_PAYLOAD_REQUIRED

