# ============================================================
# AUTH CONTEXT COMMON SECURITY
# ============================================================

status: canonical
layer: 100.security
system: business-os
owner: Boss
prepared_by: Zero

definition:
Defines common security requirements for auth context handling.

rules:
- token or equivalent auth material must be handled securely
- invalid or expired auth context must block submission
- auth possession must not be mistaken for acceptance
