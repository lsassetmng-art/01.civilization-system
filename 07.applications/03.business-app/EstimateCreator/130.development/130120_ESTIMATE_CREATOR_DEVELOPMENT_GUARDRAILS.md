# ============================================================
# ESTIMATE CREATOR DEVELOPMENT GUARDRAILS
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. CORE GUARDRAILS
# ============================================================

Development must not violate the following:

- rough_estimate remains the default estimate class
- formal ERP authority remains outside the local app
- deeplink does not bypass validation
- shared session reuse does not bypass authorization
- offline mode does not claim external completion
- inventory remains reference-only
- premium unknown fails closed for premium-only writes

# ============================================================
# 2. COMMON COMPONENT GUARDRAILS
# ============================================================

The following must be reused,
not privately reinvented where common capability already exists:

- sharing pattern
- sync pattern
- ERP publication pattern
- shared session behavior
- premium entitlement semantics where standardized

# ============================================================
# 3. UI GUARDRAILS
# ============================================================

UI must not misrepresent:

- local save as sync completion
- sync completion as publication completion
- deeplink entry as authority grant
- premium visibility as premium entitlement success

