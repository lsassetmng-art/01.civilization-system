# PERSONA LIFECYCLE FAMILY REQUEST RESPONSE CONTRACT MATRIX

status: design-freeze-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_140508

purpose:
Fixes request and response contracts for persona-create and persona-event-history.

persona_create_request:
  required_fields:
    - user_id or owner reference
    - creation_mode
    - requested_by
  optional_fields:
    - initial_profile_payload
    - initialization_template
    - request_trace_id

persona_create_response:
  required_fields:
    - persona_id
    - lifecycle_status
    - created_at

persona_event_history_request:
  required_fields:
    - persona_id or subject reference
    - requested_by
  optional_fields:
    - history_window
    - pagination_reference
    - filter_context

persona_event_history_response:
  required_fields:
    - history_status
    - event_history_reference or event_history_rows
    - generated_at

contract_rules:
- persona-create response must not expose hidden mutable truth internals beyond allowed lifecycle surface
- persona-event-history response must remain retrieval-oriented
- history retrieval must not imply mutation authority

