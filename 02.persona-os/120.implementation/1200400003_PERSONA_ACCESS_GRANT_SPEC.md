# 1200400003_PERSONA_ACCESS_GRANT_SPEC

status: exact-ready-draft
system: PersonaOS
layer: implementation
domain: access_grant
canonical: candidate
path: 120.implementation/1200400003_PERSONA_ACCESS_GRANT_SPEC.md
exact_ready_at: 20260417_134829

purpose:
Defines the exact-ready implementation contract for access grant control.

authoritative_operations:
- create access grant
- revoke access grant
- expire access grant
- validate effective access

required_controls:
- explicit grantee
- explicit scope and duration
- separation from ownership transfer
- audit on every lifecycle change

acceptance_targets:
- create success
- revoke success
- expire transition
- blocked invalid change

review_targets:
- add exact payloads
- add exact lifecycle codes
