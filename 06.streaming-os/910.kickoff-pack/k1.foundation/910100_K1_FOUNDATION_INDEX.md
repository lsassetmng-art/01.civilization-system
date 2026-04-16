# ============================================================
# STREAMING OS K1 FOUNDATION INDEX
# ============================================================

status: canonical-k1-index
scope: StreamingOS
phase: K1 foundation
prepared_by: Zero
owner: Boss

purpose:
- Records the exact-design kickoff pack for principal and session.
- This is still design preparation only.
- Implementation has not started.
- SQL execution is not included here.

documents:
- 910110_K1_FOUNDATION_SCOPE_AND_DONE_DEFINITION.md
- 910120_K1_PRINCIPAL_EXACT_PAYLOAD.md
- 910130_K1_SESSION_EXACT_PAYLOAD.md
- 910140_K1_PRINCIPAL_TABLE_COLUMN_EXACTNESS.md
- 910150_K1_SESSION_TABLE_COLUMN_EXACTNESS.md
- 910160_K1_PRINCIPAL_AUTH_RLS_EXACTNESS.md
- 910170_K1_SESSION_AUTH_RLS_EXACTNESS.md
- 910180_K1_SCREEN_TO_ENDPOINT_MAPPING.md

dependencies:
- ../900.freeze/900110_STREAMING_OS_F1_EXECUTABLE_DDL_FREEZE_RESULT_V1.md
- ../900.freeze/900120_STREAMING_OS_F2_API_FREEZE_RESULT_V1.md
- ../900.freeze/900130_STREAMING_OS_F3_AUTH_ACCESSCONTROL_RLS_FREEZE_RESULT_V1.md
- ../900.freeze/900150_STREAMING_OS_F5_SCREEN_SPEC_FREEZE_RESULT_V1.md

notes:
- principal and session are the first vertical slice
- ownership / affiliation distinction must remain intact
- runtime internal paths must remain non-public
