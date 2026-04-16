# ============================================================
# ESTIMATE SHARED SESSION IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This guide defines session reuse behavior for app-to-app launch.

# ============================================================
# 2. REQUIRED BEHAVIOR
# ============================================================

Implementation should support:

- shared session lookup
- session validity check
- company/workspace context resolution
- authorization re-check
- safe fallback when invalid

# ============================================================
# 3. NON-GOALS
# ============================================================

Shared session reuse must not become:

- authorization bypass
- deeplink credential transport
- implicit premium entitlement bypass

