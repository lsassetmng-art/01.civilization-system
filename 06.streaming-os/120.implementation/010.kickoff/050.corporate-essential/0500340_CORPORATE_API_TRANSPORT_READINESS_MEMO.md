# ============================================================
# CORPORATE API TRANSPORT READINESS MEMO
# ============================================================

status: canonical-readiness-memo
layer: implementation
domain: corporate-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Summarizes K5 readiness for later API transport design.

endpoints_in_scope:
- get_channel_detail
- upsert_channel_record
- upsert_corporate_oversight_record
- upsert_affiliated_streamer_reference

meaning_level_ready_items:
- channel detail meaning is closed
- channel upsert meaning is closed
- oversight upsert meaning is closed
- affiliation upsert meaning is closed
- public vs company-scoped audience separation is closed

transport_precision_open:
- exact HTTP method
- exact path
- exact RPC naming
- exact auth carrier placement
- exact error-to-status mapping
- exact mutation serialization
- exact summary-field serialization
- exact field casing and serialization detail

transport_risk_notes:
- do not expose oversight-safe data on public channel transport
- do not imply ownership mutation authority through affiliation transport
- do not flatten affiliation object into channel identity transport
- do not widen company-scoped transport into viewer/public transport

recommended_future_order:
1. lock request/response field casing
2. lock auth carrier placement
3. lock mutation serialization shapes
4. lock error/status mapping
5. run transport review against K5 decision pack
