# ============================================================
# CORPORATE SQL PRECISION DECISION PRE-SHEET
# ============================================================

status: canonical-pre-sheet
layer: implementation
domain: corporate-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Prepares the decision sheet for SQL-precision review of K5 corporate-essential.

review_role_note:
- Sato(DB reviewer) is required when SQL phase starts

channel_decisions_to_close:
- exact SQL type for channel_id
- exact FK strategy for owner_principal_id
- exact company_id type and future-root integration strategy
- exact type/length strategy for channel_name and channel_handle
- exact visibility_state check implementation
- exact default/nullability behavior for company_id on channel_records

profile_state_decisions_to_close:
- exact field type strategy for profile_image_url
- exact field type strategy for banner_image_url
- exact field type strategy for description
- exact FK action for channel_profile_states.channel_id

oversight_decisions_to_close:
- exact SQL type for corporate_oversight_record_id
- exact oversight_state check implementation
- exact JSON vs structured-column choice for review_issue_summary
- exact JSON vs structured-column choice for stream_visibility_summary
- exact note field type strategy

affiliation_decisions_to_close:
- exact SQL type for affiliated_streamer_reference_id
- exact FK strategy for target_principal_id
- exact affiliation_state check implementation
- exact affiliation_role type strategy
- exact visibility_scope type strategy
- exact company + target uniqueness strategy if needed

constraint_and_index_decisions_to_close:
- minimal index set for owner/company/channel lookup
- minimal index set for oversight company/channel lookup
- minimal index set for affiliation company/target/state lookup
- partial index deferral vs immediate introduction

policy_sql_decisions_to_close:
- exact public channel projection strategy
- exact oversight-safe projection strategy
- exact limited self-related affiliation subset strategy
- exact support-path audit linkage strategy

note:
This sheet prepares SQL review only.
It does not execute SQL against PERSONA_DATABASE_URL.
