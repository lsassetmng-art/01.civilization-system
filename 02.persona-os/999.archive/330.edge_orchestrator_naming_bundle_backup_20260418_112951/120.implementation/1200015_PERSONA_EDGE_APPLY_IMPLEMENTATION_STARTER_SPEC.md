# PERSONA EDGE APPLY IMPLEMENTATION STARTER SPEC

status: implementation-starter-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_074527

target:
- edge_apply

starter_sequence:
1. confirm request contract fields
2. confirm validation order
3. confirm dedupe key evaluation order
4. confirm canonical apply handoff payload
5. confirm terminal response mapping
6. confirm audit evidence write order
7. confirm retry and dead-letter criteria

starter_inputs:
- event_id
- correlation_id
- persona_id
- event_type
- schema_version
- actor_id
- event_payload
- dedupe_key

starter_outputs:
- apply_result_id on success path
- reject_code and reject_family on reject path
- duplicate_noop result on duplicate path
- retry scheduling evidence on retry path
- dead-letter evidence on exhausted retry path

starter_ready_definition:
- no missing field names
- no ambiguous status families
- no ambiguous reject or error family
- no missing audit evidence fields
- no boundary contradiction against PersonaOS truth rules

next_after_this_doc:
Generate the concrete edge_apply implementation code block only after this starter spec is accepted.

