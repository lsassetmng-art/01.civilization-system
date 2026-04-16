# ============================================================
# STREAMING OS PRINCIPALS AND SESSIONS EXACT DDL CANDIDATE
# ============================================================

status: canonical-draft
system: streaming-os
domain: exact-ddl-candidates
owner: Boss
prepared_by: Zero

physical_schema:
- streaming

# ============================================================
# 1. PURPOSE
# ============================================================

This document proposes exact DDL candidates
for:
- streaming.streaming_principals
- streaming.streaming_sessions

These DDLs are design candidates,
not yet final execution-freeze DDL.

# ============================================================
# 2. ENUM / CHECK POLICY
# ============================================================

Candidate policy:
- prefer text columns + check constraints
- avoid premature database enum locking at this phase
- keep application and schema evolution easier

# ============================================================
# 3. TABLE: streaming.streaming_principals
# ============================================================

candidate_ddl:

create table if not exists streaming.streaming_principals (
  streaming_principal_id uuid primary key,
  stream_principal_civilization_id uuid not null,
  stream_principal_type text not null,
  stream_principal_status text not null,
  stream_principal_origin_type text not null,
  stream_principal_display_name text not null,
  affiliation_civilization_id uuid null,
  company_official_stream_capable_flag boolean not null default false,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_streaming_principals_type
    check (stream_principal_type in (
      'individual',
      'group',
      'company',
      'ai_human'
    )),

  constraint ck_streaming_principals_status
    check (stream_principal_status in (
      'pending',
      'active',
      'suspended',
      'banned',
      'archived'
    )),

  constraint ck_streaming_principals_origin_type
    check (stream_principal_origin_type in (
      'native',
      'imported_existing',
      'system_generated'
    )),

  constraint uq_streaming_principals_civilization_id
    unique (stream_principal_civilization_id)
);

candidate_indexes:
- create index idx_streaming_principals_type
  on streaming.streaming_principals (stream_principal_type);
- create index idx_streaming_principals_status
  on streaming.streaming_principals (stream_principal_status);
- create index idx_streaming_principals_affiliation
  on streaming.streaming_principals (affiliation_civilization_id);
- create index idx_streaming_principals_updated_at
  on streaming.streaming_principals (updated_at desc);

# ============================================================
# 4. TABLE: streaming.streaming_sessions
# ============================================================

candidate_ddl:

create table if not exists streaming.streaming_sessions (
  session_id uuid primary key,
  channel_id uuid not null,
  program_id uuid null,
  session_title text not null,
  stream_principal_civilization_id uuid not null,
  stream_principal_type text not null,
  ownership_mode text not null,
  session_state text not null,
  scheduled_start_at timestamptz null,
  actual_start_at timestamptz null,
  actual_end_at timestamptz null,
  affiliated_company_civilization_id uuid null,
  corporate_stream_flag boolean not null default false,
  individual_stream_flag boolean not null default false,
  archived_flag boolean not null default false,
  lock_flag boolean not null default false,
  suspension_flag boolean not null default false,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_streaming_sessions_principal_type
    check (stream_principal_type in (
      'individual',
      'group',
      'company',
      'ai_human'
    )),

  constraint ck_streaming_sessions_ownership_mode
    check (ownership_mode in (
      'corporate_official',
      'individual_owned',
      'group_owned',
      'ai_human_owned'
    )),

  constraint ck_streaming_sessions_state
    check (session_state in (
      'draft',
      'scheduled',
      'ready',
      'pre_live_check',
      'live',
      'paused',
      'interrupted',
      'ended',
      'archive_generating',
      'archive_ready',
      'rights_review_pending',
      'publish_ready',
      'pushing_external',
      'externally_published',
      'monetization_open',
      'settlement_pending',
      'settled',
      'locked',
      'suspended',
      'cancelled',
      'archived'
    )),

  constraint fk_streaming_sessions_principal_civilization_id
    foreign key (stream_principal_civilization_id)
    references streaming.streaming_principals (stream_principal_civilization_id)
    on update cascade
    on delete restrict,

  constraint ck_streaming_sessions_time_order
    check (
      (actual_start_at is null or actual_end_at is null)
      or actual_start_at <= actual_end_at
    ),

  constraint ck_streaming_sessions_corporate_company_consistency
    check (
      ownership_mode <> 'corporate_official'
      or affiliated_company_civilization_id is not null
    )
);

candidate_indexes:
- create index idx_streaming_sessions_state
  on streaming.streaming_sessions (session_state);
- create index idx_streaming_sessions_principal
  on streaming.streaming_sessions (stream_principal_civilization_id);
- create index idx_streaming_sessions_ownership_mode
  on streaming.streaming_sessions (ownership_mode);
- create index idx_streaming_sessions_scheduled_start_at
  on streaming.streaming_sessions (scheduled_start_at);
- create index idx_streaming_sessions_updated_at
  on streaming.streaming_sessions (updated_at desc);
- create index idx_streaming_sessions_company
  on streaming.streaming_sessions (affiliated_company_civilization_id);

# ============================================================
# 5. UPDATE TIMESTAMP POLICY
# ============================================================

Candidate policy:
- updated_at is mandatory on mutable tables
- trigger-based auto-update may be added later
- trigger DDL is intentionally not frozen yet

# ============================================================
# 6. FOREIGN KEY POLICY NOTE
# ============================================================

Candidate policy:
- keep foreign keys inside `streaming` where stable
- external canonical domains such as Civilization / Persona / BusinessOS
  should remain referenced by id only at this phase
- do not add cross-schema hard foreign keys prematurely

# ============================================================
# 7. CANONICAL FIXED STATEMENT
# ============================================================

The exact DDL candidate for principal and session tables
shall preserve:
- principal identity separation
- ownership mode separation
- lifecycle-state validity
- company-owned stream consistency
- stable internal primary keys
- explicit Civilization-id-based ownership reference

