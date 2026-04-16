# PERSONA EXTERNAL APPLY INBOUND INTEGRATION

status: implementation-ready-followup

inbound_contract:
- receive signed request
- resolve correlation_id and dedupe_key
- normalize external envelope into internal apply request
- persist intake evidence before terminal feedback

required_controls:
- signature verification handoff
- schema version capture
- source system identifier
- retry-safe reject or accept response
