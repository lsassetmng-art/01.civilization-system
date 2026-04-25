# ============================================================
# FOUNDATION EXACTNESS REVIEW CHECKLIST
# ============================================================

status: canonical-checklist
layer: implementation
domain: foundation
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
This checklist is used to review the K1 foundation exact pack
before implementation starts.

scope:
- principal
- session

review_targets:
- 0100120_PRINCIPAL_EXACT_PAYLOAD.md
- 0100130_SESSION_EXACT_PAYLOAD.md
- 0100140_PRINCIPAL_TABLE_COLUMN_EXACTNESS.md
- 0100150_SESSION_TABLE_COLUMN_EXACTNESS.md
- 0100160_PRINCIPAL_AUTH_RLS_EXACTNESS.md
- 0100170_SESSION_AUTH_RLS_EXACTNESS.md
- 0100180_SCREEN_TO_ENDPOINT_MAPPING.md

checklist:

principal_payload:
- principal_id is canonical stable id
- principal_type is explicit and not inferred
- ownership_type is explicit and not inferred from affiliation
- public projection fields are separated from private/internal fields
- list payload does not leak private or moderation-only fields

session_payload:
- session_id is canonical stable id
- lifecycle_state is explicit and stable
- visibility_state is explicit and stable
- publish_ready_flag is not treated as lifecycle_state replacement
- governance_block_flag is not treated as lifecycle_state replacement
- transition_action allowlist is closed

principal_table_column:
- required columns are sufficient for identity and ownership
- nullable fields remain nullable only where semantically justified
- unique(handle) remains intentional
- company_id and channel_id semantics remain separated

session_table_column:
- principal_id dependency is explicit
- scheduled_start_at / actual_start_at / actual_end_at are unambiguous
- lifecycle_state remains canonical
- FK and index intentions are implementation-ready at meaning level

auth_rls:
- public read always means projection-safe subset
- ownership and affiliation are not mixed
- support-path access remains explicit and auditable
- runtime_worker does not gain human ownership semantics
- session transition authority remains bounded and auditable

screen_mapping:
- creator-side screens use principal/session canonical endpoints only
- viewer watch screens stay on detail projection
- upload/publish confirm paths do not turn into runtime internal paths

gate_condition:
- all blocking semantic ambiguities must be resolved before implementation
- wording-only refinements may remain open
