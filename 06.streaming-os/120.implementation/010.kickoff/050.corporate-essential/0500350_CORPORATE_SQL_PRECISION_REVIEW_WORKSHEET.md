# ============================================================
# CORPORATE SQL PRECISION REVIEW WORKSHEET
# ============================================================

status: canonical-review-worksheet
layer: implementation
domain: corporate-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
This worksheet is the working review sheet for K5 SQL precision review.

review_scope:
- channel_records
- channel_profile_states
- corporate_channel_oversight_records
- affiliated_streamer_references

review_mode:
- precision review only
- no execution
- no implementation coding

reviewer_rule:
- Sato(DB reviewer) participation required

channel_review_items:
- exact SQL type for channel_id
  - decision_status:
  - reviewer_note:
- exact FK type/action for owner_principal_id
  - decision_status:
  - reviewer_note:
- exact company_id type strategy
  - decision_status:
  - reviewer_note:
- exact type/length strategy for channel_name
  - decision_status:
  - reviewer_note:
- exact type/length strategy for channel_handle
  - decision_status:
  - reviewer_note:
- exact visibility_state check implementation
  - decision_status:
  - reviewer_note:
- exact default/nullability behavior for company_id
  - decision_status:
  - reviewer_note:

profile_state_review_items:
- exact SQL type for channel_profile_state_id
  - decision_status:
  - reviewer_note:
- exact FK type/action for channel_id
  - decision_status:
  - reviewer_note:
- exact field type strategy for profile_image_url
  - decision_status:
  - reviewer_note:
- exact field type strategy for banner_image_url
  - decision_status:
  - reviewer_note:
- exact field type strategy for description
  - decision_status:
  - reviewer_note:

oversight_review_items:
- exact SQL type for corporate_oversight_record_id
  - decision_status:
  - reviewer_note:
- exact FK type/action for company_id
  - decision_status:
  - reviewer_note:
- exact FK type/action for channel_id
  - decision_status:
  - reviewer_note:
- exact oversight_state check implementation
  - decision_status:
  - reviewer_note:
- exact JSON vs structured-column choice for review_issue_summary
  - decision_status:
  - reviewer_note:
- exact JSON vs structured-column choice for stream_visibility_summary
  - decision_status:
  - reviewer_note:
- exact field type strategy for note
  - decision_status:
  - reviewer_note:

affiliation_review_items:
- exact SQL type for affiliated_streamer_reference_id
  - decision_status:
  - reviewer_note:
- exact FK type/action for company_id
  - decision_status:
  - reviewer_note:
- exact FK type/action for target_principal_id
  - decision_status:
  - reviewer_note:
- exact affiliation_state check implementation
  - decision_status:
  - reviewer_note:
- exact type strategy for affiliation_role
  - decision_status:
  - reviewer_note:
- exact type strategy for visibility_scope
  - decision_status:
  - reviewer_note:
- exact uniqueness strategy for company_id + target_principal_id if needed
  - decision_status:
  - reviewer_note:

index_and_constraint_review_items:
- minimal index set for owner/company/channel lookup
  - decision_status:
  - reviewer_note:
- minimal index set for oversight company/channel lookup
  - decision_status:
  - reviewer_note:
- minimal index set for affiliation company/target/state lookup
  - decision_status:
  - reviewer_note:
- partial index now vs later
  - decision_status:
  - reviewer_note:

policy_projection_review_items:
- exact public channel projection strategy
  - decision_status:
  - reviewer_note:
- exact oversight-safe projection strategy
  - decision_status:
  - reviewer_note:
- exact limited self-related affiliation subset strategy
  - decision_status:
  - reviewer_note:
- exact support-path audit linkage strategy
  - decision_status:
  - reviewer_note:

exit_condition:
- all blocking SQL precision questions marked resolved or explicitly deferred with rationale
