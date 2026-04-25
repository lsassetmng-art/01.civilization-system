# 0300800002_PERSONA_RUNTIME_SESSION_MODEL

status: exact-ready-draft
system: PersonaOS
layer: model
domain: runtime_hosting
canonical: candidate
path: 030.model/0300800002_PERSONA_RUNTIME_SESSION_MODEL.md
exact_ready_at: 20260417_134829

purpose:
Defines the exact-ready model boundary for runtime session hosting.

primary_entities:
- persona_runtime_session
- persona_runtime_session_event
- persona_runtime_host_binding

required_identifiers:
- session_id
- persona_id
- host_binding_id
- release_input_id

required_fields:
- session_status
- started_at
- last_heartbeat_at
- terminal_reason
- release_lineage_id
- created_by

lifecycle_states:
- created
- active
- suspended
- resumed
- terminating
- terminated
- expired

constraints:
- runtime session must originate from released input only
- terminal state requires terminal reason
- heartbeat timeout must be representable in model state
- host binding must remain traceable to release lineage

query_paths:
- by session_id
- by persona_id
- by session_status
- by release_lineage_id

review_targets:
- add exact timeout fields
- add exact restore token fields if required
- add exact event emission linkage
