# ============================================================
# PROFILE UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: profile-ui-implementation
component: profile-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for profile UI inside Civilization world context.


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

Profile UI must implement:

- user identity summary
- user-visible basic profile information
- route to profile edit where supported
- safe return to prior map or route context


# ============================================================
# 3. RETURN RULE
# ============================================================

Profile return should restore
the prior route context where possible.

Profile is not a world progression route.


# ============================================================
# 4. FINAL RULE
# ============================================================

Profile implementation must remain:

- user-context-centered
- non-destructive to map routing
- return-safe
