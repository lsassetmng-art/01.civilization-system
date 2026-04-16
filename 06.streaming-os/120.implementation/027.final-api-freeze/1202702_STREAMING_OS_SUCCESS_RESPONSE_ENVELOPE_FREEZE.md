# ============================================================
# STREAMING OS SUCCESS RESPONSE ENVELOPE FREEZE
# ============================================================

status: canonical-freeze-draft
system: streaming-os
domain: final-api-freeze
owner: Boss
prepared_by: Zero

# ============================================================
# 1. COMMON SUCCESS ENVELOPE
# ============================================================

success_response_payload:
- success
  always true
- data
- meta
  nullable

# ============================================================
# 2. DATA RULE
# ============================================================

rules:
- data must contain the endpoint-specific result payload
- detail endpoints return one semantic object in data
- list endpoints return a structured collection payload in data
- mutation endpoints return resulting canonical object or canonical reference in data

# ============================================================
# 3. META RULE
# ============================================================

meta may contain:
- page_info
- request_id
- generated_at
- idempotency_replayed
- warnings

meta should be omitted when:
- there is no useful metadata
- detail response is simple and no extra envelope data is needed

# ============================================================
# 4. LIST RESPONSE SHAPE
# ============================================================

recommended_list_data_shape:
- items
- page_info
  optional in data or meta, but placement must be consistent per transport binding

freeze_rule:
- canonical design prefers page_info in meta

# ============================================================
# 5. CANONICAL FIXED STATEMENT
# ============================================================

All successful StreamingOS APIs
shall return:
- success = true
- data = endpoint-specific semantic result
- meta = optional structured metadata

