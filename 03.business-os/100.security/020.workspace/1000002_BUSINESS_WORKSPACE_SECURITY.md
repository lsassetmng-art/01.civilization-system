# ============================================================
# BUSINESS WORKSPACE SECURITY
# ============================================================

status: canonical
layer: 100.security
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the official workspace/user-scope security model
of BusinessOS.

BusinessOS is primarily user-scoped.
Security must therefore be enforced primarily on:
- user identity
- workspace membership
- app entitlement
- ERP-send permission where applicable


# ============================================================
# 1. PRIMARY SECURITY AXES
# ============================================================

Security must verify:
- user identity
- workspace access
- app access
- paid feature entitlement
- ERP-send permission where applicable


# ============================================================
# 2. ERP-SEND SECURITY
# ============================================================

ERP-send requires additional checks:
- company context availability
- ERP-send authorization
- payload mapping validity
- outbound policy compliance

No ERP-send may proceed on missing company context.


# ============================================================
# 3. FINAL RULE
# ============================================================

BusinessOS security is workspace/user-first.

Core summary:

- user/workspace/app security is primary
- ERP-send adds extra outbound checks
- company security is not the default root security model
