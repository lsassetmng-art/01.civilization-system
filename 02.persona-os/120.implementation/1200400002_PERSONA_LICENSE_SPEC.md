# 1200400002_PERSONA_LICENSE_SPEC

status: exact-ready-draft
system: PersonaOS
layer: implementation
domain: license
canonical: candidate
path: 120.implementation/1200400002_PERSONA_LICENSE_SPEC.md
exact_ready_at: 20260417_134829

purpose:
Defines the exact-ready implementation contract for license control.

authoritative_operations:
- issue license
- revoke license
- expire license
- query effective license state

required_controls:
- explicit granted scope
- explicit effective window
- audit of grant, revoke, and expire actions
- separation from access grant and transfer

acceptance_targets:
- issue success
- revoke success
- expire transition
- illegal transition blocked

review_targets:
- add exact payloads
- add exact status and code families
