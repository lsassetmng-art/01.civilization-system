# ============================================================
# K1 FOUNDATION EXACTNESS RETURN MEMO
# ============================================================

status: canonical-return-memo
layer: meta
domain: k1-k6-exactness-return
system: StreamingOS
prepared_by: Zero
owner: Boss

return_rule:
K1 foundation exactness must be re-read with the following lock:

locked_reading:
- principal payloads may reference persona_id and snapshot-like refs
- session payloads may expose persona-linked participation by reference only
- trust/growth language must not be interpreted as local persona canonical truth
- foundation auth must not imply direct mutation authority over Persona internals

exactness_keepable_if_read_correctly:
- payload structure
- table/column structure
- auth / rls boundaries
- screen to endpoint mapping
- ddl-facing references

must_not_be_inferred:
- local persona mutable truth
- local foundation-owned trust truth
- local foundation-owned growth truth
