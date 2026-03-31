# ============================================================
# LEGAL EXPLANATION UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: legal-explanation-ui-implementation
component: legal-explanation-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for legal explanation UI
inside Civilization.


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

Legal explanation UI must implement:

- readable legal content presentation
- sectioned navigation where supported
- safe return to source route

Legal explanation is reachable from:

- login
- top-right map support menu


# ============================================================
# 3. RETURN RULE
# ============================================================

Return should restore source route:

- login if entered from login
- previous map screen if entered from map menu

Source-aware return behavior is required.


# ============================================================
# 4. FINAL RULE
# ============================================================

Legal-explanation implementation must remain:

- support-centered
- readable
- source-return-safe
