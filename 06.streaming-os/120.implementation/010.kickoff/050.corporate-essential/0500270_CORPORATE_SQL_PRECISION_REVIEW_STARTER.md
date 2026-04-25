# ============================================================
# CORPORATE SQL PRECISION REVIEW STARTER
# ============================================================

status: canonical-review-starter
layer: implementation
domain: corporate-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

review_role_note:
- Sato(DB reviewer) participation is required when SQL phase starts

review_scope:
- channel_records
- channel_profile_states
- corporate_channel_oversight_records
- affiliated_streamer_references

precision_items:
- exact FK strategy for owner_principal_id and channel_id relations
- exact company_id type and future-root integration strategy
- exact visibility_state / oversight_state / affiliation_state check implementation
- exact JSON vs structured-column choices for summary fields
- exact unique constraints for handles or company-target combinations where needed
- exact projection SQL strategy for public vs oversight-safe subsets

out_of_scope_note:
This document prepares SQL review only.
It does not execute SQL against PERSONA_DATABASE_URL.
