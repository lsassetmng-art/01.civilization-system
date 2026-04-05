# ============================================================
# NAME CARD MANAGER SECURITY
# ============================================================

status: draft
layer: security
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines security controls for NameCardManager.

# ============================================================
# 1. AUTHENTICATION SECURITY
# ============================================================

Supported controls:
- id/password authentication
- fingerprint authentication
- face authentication

Access is denied unless authentication succeeds.

# ============================================================
# 2. STORAGE SECURITY
# ============================================================

- BusinessOS-side stored data must be protected.
- Sensitive fields must not be exposed without authorization.
- Local storage should use protected storage where possible.
- Local pending operation data should be protected.

# ============================================================
# 3. SHARE SECURITY
# ============================================================

- App-internal sharing must be restricted to configured targets.
- ERP-wide publication must follow controlled publication rules.
- Standard users cannot silently revoke ERP-wide publication.

# ============================================================
# 4. AUDIT SECURITY
# ============================================================

The system should preserve auditability for:
- create
- update
- delete
- app-internal share
- app-internal share revoke
- ERP publication request
- ERP publication result

# ============================================================
# 5. FAILURE SECURITY
# ============================================================

- Failed sync must remain visible.
- Failed publication must remain visible.
- Failed authentication must not grant access.

