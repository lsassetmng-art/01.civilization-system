# PERSONA LIFECYCLE CREATE ENTRY SUMMARY

status: final-bundle-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_065446

purpose:
Condenses lifecycle entry semantics inside the lifecycle bundle.

function:
- persona-create

persona-create role:
- lifecycle entry only
- may create root lifecycle records through approved PersonaOS path
- not runtime-engine owner
- not snapshot owner
- not publish owner
- not generic mutable truth owner by label alone

request_required_fields:
- user_id_or_owner_reference
- creation_mode
- requested_by

request_optional_fields:
- initial_profile_payload
- initialization_template
- request_trace_id

response_required_fields:
- persona_id
- lifecycle_status
- created_at

status_family:
- persona_created
- persona_create_rejected
- persona_create_failed

status_rules:
- persona_created means lifecycle entry completed through approved path
- persona_create_rejected means policy, authority, or input gate blocked lifecycle entry
- persona_create_failed means operational failure prevented lifecycle entry
- persona_create_rejected must remain distinct from persona_create_failed

hard_rules:
- lifecycle entry must not bypass PersonaOS lifecycle rules
- lifecycle entry must not masquerade as runtime apply
- lifecycle entry result must remain lifecycle-oriented, not broad truth-surface oriented
