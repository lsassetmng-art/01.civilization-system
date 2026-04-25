# PERSONA REQUEST AUTH SECURITY

status: implementation-ready-followup

mandatory_controls:
- actor authentication
- source system verification
- signature verification
- replay protection using correlation and dedupe context
- request rejection on failed verification

forbidden:
- unsigned privileged request acceptance
- unverifiable callback acceptance
