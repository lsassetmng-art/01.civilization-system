# ============================================================
# FOUNDATION BASE TABLE DDL DRAFT REVIEW MEMO
# ============================================================

status: canonical-ddl-draft-memo
layer: implementation
domain: foundation
system: StreamingOS
prepared_by: Zero
owner: Boss

draft_table_plan:

streaming_principals:
- principal_id: uuid primary key
- principal_type: text not null
- display_name: text not null
- handle: text not null
- profile_image_url: text null
- banner_image_url: text null
- bio: text null
- public_country_code: text null
- public_language_code: text null
- channel_id: uuid null
- company_id: uuid null
- affiliation_type: text null
- ownership_type: text not null
- visibility_state: text not null
- verification_state: text not null
- followable_flag: boolean not null default true
- created_at: timestamptz not null
- updated_at: timestamptz not null

streaming_sessions:
- session_id: uuid primary key
- principal_id: uuid not null
- session_kind: text not null
- title: text not null
- description: text null
- lifecycle_state: text not null
- visibility_state: text not null
- monetization_mode: text not null
- age_gate_level: text not null
- language_code: text null
- primary_country_code: text null
- thumbnail_asset_ref: text null
- scheduled_start_at: timestamptz null
- actual_start_at: timestamptz null
- actual_end_at: timestamptz null
- publish_ready_flag: boolean not null default false
- governance_block_flag: boolean not null default false
- created_at: timestamptz not null
- updated_at: timestamptz not null

draft_constraint_plan:
- primary keys on principal_id and session_id
- foreign key streaming_sessions.principal_id -> streaming_principals.principal_id
- check constraints on all closed state/type families
- lifecycle and gate flags remain separate
- handle uniqueness remains reviewed separately at index strategy level

open_review_points:
- final FK action for streaming_sessions.principal_id
- whether any text field needs explicit varchar cap
- whether channel_id / company_id foreign keys are deferred to later packet or introduced here
- whether audit tables are introduced in K1 or separately after review

important_note:
This is a DDL draft review memo only.
It is not executable SQL.
