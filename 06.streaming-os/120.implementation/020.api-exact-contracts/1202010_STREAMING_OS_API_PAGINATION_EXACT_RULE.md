# ============================================================
# STREAMING OS API PAGINATION EXACT RULE
# ============================================================

status: canonical-draft
system: streaming-os
domain: api-exact-contracts
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines pagination behavior
for StreamingOS list APIs.

# ============================================================
# 2. REQUEST PAGINATION SHAPE
# ============================================================

recommended_request_pagination_fields:
- limit
  optional
- offset
  optional
- cursor
  optional

rule:
- offset mode and cursor mode must not be mixed in one request

# ============================================================
# 3. RESPONSE PAGINATION SHAPE
# ============================================================

recommended_response_pagination_fields:
- page_info:
  - mode
    offset or cursor
  - limit
    nullable
  - offset
    nullable
  - next_offset
    nullable
  - next_cursor
    nullable
  - has_more

# ============================================================
# 4. DEFAULTS
# ============================================================

recommended_defaults:
- default_limit: 20
- recommended_max_limit: 100

# ============================================================
# 5. USAGE RULE
# ============================================================

offset mode is preferred for:
- admin-like lists
- stable operator tables

cursor mode is preferred for:
- user-facing feeds
- notification lists
- history-like streams
- high-volume event lists

# ============================================================
# 6. CANONICAL FIXED STATEMENT
# ============================================================

StreamingOS list APIs
shall use explicit pagination metadata
and shall not mix offset and cursor modes
inside a single request.

