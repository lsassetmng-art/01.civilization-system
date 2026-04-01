# ============================================================
# CODE TABLE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: code-table-implementation
component: code-table-implementation

owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Define representative code families
for Civilization.

# ============================================================
# 2. ERROR CODE FAMILY
# ============================================================

Representative examples:

- ERR_UNKNOWN
- ERR_INVALID_STATE
- ERR_PERMISSION_DENIED
- ERR_CAPACITY_EXCEEDED
- ERR_ROUTE_NOT_AVAILABLE
- ERR_DEPENDENCY_BROKEN

# ============================================================
# 3. WARNING CODE FAMILY
# ============================================================

Representative examples:

- WARN_HIGH_LOAD
- WARN_LOW_CAPACITY
- WARN_DEGRADED_SERVICE
- WARN_HIGH_RISK
- WARN_PENDING_REVIEW

# ============================================================
# 4. HOLD / REJECTION / RESULT FAMILY
# ============================================================

Representative examples:

- HOLD_REVIEW_REQUIRED
- HOLD_IDENTITY_SUSPECTED
- REJECT_INELIGIBLE
- REJECT_CONFLICTING_STATE
- RESULT_RECOVERED
- RESULT_PARTIAL_RECOVERY
- RESULT_RELEASED
- RESULT_NOT_RESOLVED

# ============================================================
# 5. FINAL RULE
# ============================================================

Code table implementation must remain:

- short
- explicit
- category-prefixed
- extensible
