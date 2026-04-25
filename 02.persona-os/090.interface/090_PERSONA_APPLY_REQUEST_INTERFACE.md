# PERSONA APPLY REQUEST INTERFACE

status: implementation-ready-followup

request_fields:
- event_id
- correlation_id
- persona_id
- event_type
- schema_version
- actor_id
- event_payload
- dedupe_key

# EXACT READY INTERFACE REINFORCEMENT

status_extension: author-reviewed-with-interface-reinforcement
reinforced_at: 20260417_152041
domain: interface

minimum_interface_requirements:
- define request or input shape
- define response or output shape
- define required identifiers
- define status or result family
- define error family where applicable

mandatory_interface_controls:
- no ambiguous field meaning
- no missing identifier in terminal result
- no undocumented reject family

minimum_interface_acceptance_targets:
- valid input and output example
- reject or error example
- result code example where applicable
