# ============================================================
# CORPORATE BASE TABLE DDL DRAFT REVIEW MEMO
# ============================================================

status: canonical-ddl-draft-memo
layer: implementation
domain: corporate-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

draft_table_plan:

channel_records:
- channel_id: uuid primary key
- owner_principal_id: uuid not null
- company_id: uuid null
- channel_name: text not null
- channel_handle: text null
- visibility_state: text not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

channel_profile_states:
- channel_profile_state_id: uuid primary key
- channel_id: uuid not null
- profile_image_url: text null
- banner_image_url: text null
- description: text null
- created_at: timestamptz not null
- updated_at: timestamptz not null

corporate_channel_oversight_records:
- corporate_oversight_record_id: uuid primary key
- company_id: uuid not null
- channel_id: uuid not null
- oversight_state: text not null
- review_issue_summary_json: jsonb null
- stream_visibility_summary_json: jsonb null
- note: text null
- created_at: timestamptz not null
- updated_at: timestamptz not null

affiliated_streamer_references:
- affiliated_streamer_reference_id: uuid primary key
- company_id: uuid not null
- target_principal_id: uuid not null
- affiliation_state: text not null
- affiliation_role: text null
- visibility_scope: text null
- note: text null
- created_at: timestamptz not null
- updated_at: timestamptz not null

draft_constraint_plan:
- primary keys on all ids
- foreign key channel_records.owner_principal_id -> principal root
- optional foreign key channel_records.company_id -> company root when company root packet is available
- foreign key channel_profile_states.channel_id -> channel_records.channel_id
- foreign key corporate_channel_oversight_records.channel_id -> channel_records.channel_id
- foreign key corporate_channel_oversight_records.company_id -> company root when company root packet is available
- foreign key affiliated_streamer_references.target_principal_id -> principal root
- foreign key affiliated_streamer_references.company_id -> company root when company root packet is available
- check constraints on visibility_state / oversight_state / affiliation_state / affiliation_role / visibility_scope where closed set is stable enough
- affiliation remains separate from ownership semantics
- channel profile state remains separate from oversight state

open_review_points:
- final FK actions for company / channel / principal relations
- whether channel_handle should remain nullable in first draft
- whether channel_handle uniqueness is introduced in this packet or later
- whether oversight summary json fields remain jsonb or move toward structured columns later
- whether affiliation uniqueness must consider only active rows or all historical rows
