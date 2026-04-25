# ============================================================
# COMPANY OVERSEER READABLE SUBSET DECISION
# ============================================================

status: canonical-decision
layer: implementation
domain: foundation
system: StreamingOS
prepared_by: Zero
owner: Boss

decision_id:
K1-003

decision:
company_overseer may read only the oversight-safe subset for principal and session.

oversight_safe_subset_for_principal:
- principal_id
- principal_type
- display_name
- handle
- profile_image_url
- banner_image_url
- public_country_code
- public_language_code
- channel_id
- company_id
- affiliation_type
- ownership_type
- visibility_state
- verification_state
- followable_flag
- created_at
- updated_at

oversight_safe_subset_for_session:
- session_id
- principal_id
- session_kind
- title
- lifecycle_state
- visibility_state
- monetization_mode
- age_gate_level
- language_code
- primary_country_code
- scheduled_start_at
- actual_start_at
- actual_end_at
- publish_ready_flag
- governance_block_flag
- created_at
- updated_at

excluded_from_oversight_safe_subset:
- private contact data
- support-path internal flags
- raw moderation-only notes
- raw policy evaluation notes
- internal runtime lock or retry markers
- private creator-side draft-only content
- secret or credential-bearing fields

principles:
- oversight read is not ownership mutation
- oversight read is not support full-read
- oversight-safe subset is broader than public projection
- oversight-safe subset is narrower than platform support access

canonical_effect:
company_overseer access in K1 should be implemented as a constrained projection,
not as unrestricted base-table read.
