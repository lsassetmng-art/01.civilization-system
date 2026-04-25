# 1200800002_PERSONA_RUNTIME_SESSION_IMPLEMENTATION

status: exact-ready-draft
system: PersonaOS
layer: implementation
domain: runtime_hosting
canonical: candidate
path: 120.implementation/1200800002_PERSONA_RUNTIME_SESSION_IMPLEMENTATION.md
exact_ready_at: 20260417_134829

purpose:
Defines the exact-ready implementation contract for runtime session hosting.

authoritative_operations:
- create session
- activate session
- record heartbeat
- suspend and resume
- terminate or expire

request_side:
- persona_id
- release_input_id
- host_context
- actor_or_system_id

response_side:
- session_created
- session_active
- session_blocked
- session_terminated
- session_expired

required_controls:
- released input only
- heartbeat timeout handling
- terminal reason capture
- audit event on terminal path

acceptance_targets:
- create from released input
- block unreleased input
- heartbeat expiry
- suspend and resume
- terminal audit persisted

review_targets:
- add exact timeout values
- add exact request and response payloads
