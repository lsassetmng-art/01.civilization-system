# ============================================================
# K1 FOUNDATION SCOPE AND DONE DEFINITION
# ============================================================

status: exactness-pack
scope: principal-and-session
phase: K1 foundation
prepared_by: Zero
owner: Boss

scope_in:
- streaming-core-principal
- streaming-core-session
- streaming-api-contracts portion for principal / session
- principal / session auth boundary
- principal / session screen-to-endpoint mapping

scope_out:
- asset
- publish
- creator studio
- viewer continuity
- moderation
- notification
- corporate
- Persona-side SQL execution

canonical_endpoints_in_scope:
- get_streaming_principal_detail
- list_streaming_principals
- create_streaming_session
- update_streaming_session
- get_streaming_session_detail
- list_streaming_sessions
- transition_streaming_session_state

done_definition:
- principal payload exactness fixed
- session payload exactness fixed
- principal table-column exactness fixed
- session table-column exactness fixed
- principal auth / RLS exactness fixed
- session auth / RLS exactness fixed
- screen-to-endpoint mapping fixed
- no hidden reopen point remains

stop_rules:
- ownership and affiliation get mixed
- session lifecycle becomes publicly mutable without authority boundary
- platform internal paths become public API
- session state transition loses auditability
