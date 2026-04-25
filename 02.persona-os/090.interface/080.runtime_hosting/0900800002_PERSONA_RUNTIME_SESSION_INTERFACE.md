# PERSONA RUNTIME SESSION INTERFACE

status: implementation-ready-followup

runtime_session_fields:
- session_id
- persona_id
- snapshot_id_or_package_id
- session_status
- started_at
- last_heartbeat_at
- terminal_reason

# EXACT READY INTERFACE REINFORCEMENT

status_extension: author-reviewed-with-interface-reinforcement
reinforced_at: 20260417_152041
domain: runtime_hosting

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
