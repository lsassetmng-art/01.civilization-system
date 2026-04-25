# PERSONA LIFECYCLE TIER E EXACT REQUEST RESPONSE CONTRACT

status: tier-e-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_183303

purpose:
Fixes exact request and response contract for persona-create and persona-event-history.

persona_create_request_required_fields:
- user_id_or_owner_reference
- creation_mode
- requested_by

persona_create_request_optional_fields:
- initial_profile_payload
- initialization_template
- request_trace_id

persona_create_response_required_fields:
- persona_id
- lifecycle_status
- created_at

persona_event_history_request_required_fields:
- persona_id_or_subject_reference
- requested_by

persona_event_history_request_optional_fields:
- history_window
- pagination_reference
- filter_context
- visibility_scope

persona_event_history_response_required_fields:
- history_status
- event_history_reference_or_rows
- generated_at

contract_rules:
- persona-create response must remain lifecycle-oriented
- persona-event-history response must remain retrieval-oriented
- history retrieval must not imply mutation authority
- create and history surfaces must remain distinct

