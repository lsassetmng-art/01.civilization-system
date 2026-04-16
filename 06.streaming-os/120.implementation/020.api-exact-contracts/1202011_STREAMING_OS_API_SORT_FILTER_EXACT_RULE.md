# ============================================================
# STREAMING OS API SORT / FILTER EXACT RULE
# ============================================================

status: canonical-draft
system: streaming-os
domain: api-exact-contracts
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines filter and sort behavior
for StreamingOS exact APIs.

# ============================================================
# 2. REQUEST SHAPE
# ============================================================

recommended_request_fields:
- filters
  optional:
  - field_name
  - operator
  - value
- sorts
  optional:
  - field_name
  - direction

# ============================================================
# 3. ALLOWED OPERATORS
# ============================================================

recommended_filter_operators:
- eq
- neq
- in
- not_in
- contains
- prefix
- gte
- lte
- is_null
- is_not_null

recommended_sort_directions:
- asc
- desc

# ============================================================
# 4. RULES
# ============================================================

rules:
- filters must only use endpoint-approved fields
- sorts must only use endpoint-approved fields
- unknown filter fields should fail with invalid_field
- unknown sort fields should fail with invalid_field
- repeated sorts are allowed only when field order matters explicitly

# ============================================================
# 5. EXAMPLES OF ENDPOINT-SIDE ALLOWLISTS
# ============================================================

example_allowlists:
- creator_video_list
  filters:
    - status
    - visibility
    - review_status
  sorts:
    - created_at
    - updated_at
    - publish_schedule_at

- notification_list
  filters:
    - notification_category
    - read_flag
  sorts:
    - created_at

- report_queue
  filters:
    - report_status
    - report_target_type
  sorts:
    - created_at
    - updated_at

# ============================================================
# 6. CANONICAL FIXED STATEMENT
# ============================================================

StreamingOS exact APIs
shall use allowlisted filter and sort fields only,
with explicit operator semantics
and deterministic sort direction semantics.

