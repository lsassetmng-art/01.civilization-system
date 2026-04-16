
# ============================================================
# ESTIMATE PERMISSION IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This guide defines implementation rules
for permission evaluation and UI gating.

# ============================================================
# 2. IMPLEMENTATION RULE
# ============================================================

Permission evaluation must be explicit and object-aware.

Do not infer full edit capability merely because:

- session is valid
- deeplink context exists
- premium entitlement is active

# ============================================================
# 3. SEPARATION RULE
# ============================================================

Keep separate:

- authentication
- authorization
- premium entitlement
- readonly launch context

These must not be merged into one generic access boolean.

# ============================================================
# 4. CUSTOMER READONLY RULE
# ============================================================

Readonly customer delivery access should use
a dedicated permission path and dedicated UI mode.

Do not treat it as normal shared-user access.

# ============================================================
# 5. ACTION GATING RULE
# ============================================================

Each sensitive action should be gated independently.

Examples:
- edit estimate
- edit memo
- request publication
- create share
- create QA
- edit template
- premium write

