# ============================================================
# K2 ASSET PUBLISH EXACTNESS RETURN MEMO
# ============================================================

status: canonical-return-memo
layer: meta
domain: k1-k6-exactness-return
system: StreamingOS
prepared_by: Zero
owner: Boss

return_rule:
K2 asset-publish exactness must be re-read with the following lock:

locked_reading:
- archive/clip/persona-facing display references must point to signed snapshot
  or formal Persona result references
- publish-side persona references are display-facing or permission-facing only
- release/license/access remain formal ref surfaces
- publish exactness must not imply local persona profile canonical ownership

exactness_keepable_if_read_correctly:
- asset payload structure
- publish job structure
- auth / rls boundaries
- screen to endpoint mapping
- ddl-facing references

must_not_be_inferred:
- local persona rights canonical
- local persona profile canonical in asset context
