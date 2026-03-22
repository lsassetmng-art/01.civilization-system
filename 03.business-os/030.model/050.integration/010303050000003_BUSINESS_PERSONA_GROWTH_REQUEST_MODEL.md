# BUSINESS_PERSONA_GROWTH_REQUEST_MODEL

status: canonical
layer: model
domain: integration
owner: Boss
prepared_by: Zero

## PURPOSE
Represent a canonical Business-originated request to change Persona growth.

## FIELDS
- business_persona_growth_request_id
- business_event_id
- business_workspace_id
- business_app_id
- business_module_id
- persona_id
- persona_release_id
- growth_dimension
- delta_value
- operation_type
- request_reason
- request_state
- requested_at
- applied_at
- rejected_at

## RULE
This model is a request record only.
It must not be treated as growth truth.
