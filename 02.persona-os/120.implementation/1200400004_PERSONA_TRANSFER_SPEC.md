# 1200400004_PERSONA_TRANSFER_SPEC

status: exact-ready-draft
system: PersonaOS
layer: implementation
domain: transfer
canonical: candidate
path: 120.implementation/1200400004_PERSONA_TRANSFER_SPEC.md
exact_ready_at: 20260417_134829

purpose:
Defines the exact-ready implementation contract for transfer control.

authoritative_operations:
- initiate transfer
- review and approve
- reject
- complete transfer with lineage update

required_controls:
- explicit source and destination party
- explicit approval boundary
- lineage preservation
- separation from access grant and release approval

acceptance_targets:
- initiate success
- reject path
- complete path
- invalid transition blocked

review_targets:
- add exact request and result payloads
- add exact lineage update mappings
