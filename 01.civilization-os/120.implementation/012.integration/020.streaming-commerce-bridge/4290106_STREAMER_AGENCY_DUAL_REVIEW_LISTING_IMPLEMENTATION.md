# ============================================================
# STREAMER AGENCY DUAL REVIEW LISTING
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 012.integration

# 1. PURPOSE

Defines dual-review listing flow where both agency-side and system-side review may apply.

# 2. STORAGE

- dual_review_listing_id
- listing_ref
- agency_review_status
- system_review_status
- final_release_status
- review_trace_ref

# 3. EXECUTION

1. create listing draft
2. execute agency-side review
3. execute system-side review
4. compute release eligibility
5. publish final decision

# 4. FAILURE HANDLING

Fail closed on unresolved review status, conflicting review results, or missing traceability.
