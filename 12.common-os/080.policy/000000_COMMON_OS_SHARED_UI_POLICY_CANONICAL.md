# ============================================================
# COMMON OS SHARED UI POLICY CANONICAL
# ============================================================

status: canonical
system: CommonOS
owner: Boss
prepared_by: Zero

## PURPOSE
This document fixes the policy boundary for shared UI usage in CommonOS.

## POLICY
- Shared UI components must be standardized.
- Button systems must not fragment by app.
- Token systems must not fragment by OS.
- ERP may consume the same shared UI foundation.
- Queue presentation may be shared.
- Queue business meaning remains domain-owned.
- Shared UI may contain presentation logic only.
- Business decision logic must remain outside the client.

## NON-GOALS
- business transaction canon
- pricing decision canon
- entitlement decision canon
- secret storage
