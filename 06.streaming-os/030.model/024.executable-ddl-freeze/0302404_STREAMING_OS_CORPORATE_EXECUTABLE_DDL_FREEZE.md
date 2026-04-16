# ============================================================
# STREAMING OS CORPORATE EXECUTABLE DDL FREEZE
# ============================================================

status: canonical-freeze-draft
system: streaming-os
domain: executable-ddl-freeze
owner: Boss
prepared_by: Zero

sql:
create table if not exists streaming.channel_records (
  channel_record_id uuid primary key,
  channel_owner_civilization_id uuid not null,
  channel_display_name text not null,
  channel_status text not null,
  official_channel_flag boolean not null default false,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_channel_records_status
    check (channel_status in (
      'active',
      'restricted',
      'suspended',
      'archived'
    ))
);

create index if not exists ix_channel_records_owner
  on streaming.channel_records (channel_owner_civilization_id);

create index if not exists ix_channel_records_status
  on streaming.channel_records (channel_status);

create table if not exists streaming.channel_profile_states (
  channel_profile_state_id uuid primary key,
  channel_record_id uuid not null,
  profile_description text null,
  artwork_reference text null,
  visibility_setting text not null,
  updated_at timestamptz not null default now(),

  constraint ck_channel_profile_states_visibility
    check (visibility_setting in (
      'public',
      'limited',
      'restricted'
    )),

  constraint uq_channel_profile_states_channel
    unique (channel_record_id),

  constraint fk_channel_profile_states_channel
    foreign key (channel_record_id)
    references streaming.channel_records (channel_record_id)
    on update cascade
    on delete cascade
);

create table if not exists streaming.corporate_channel_oversight_records (
  corporate_channel_oversight_record_id uuid primary key,
  company_civilization_id uuid not null,
  channel_record_id uuid not null,
  oversight_status text not null,
  latest_oversight_note text null,
  updated_at timestamptz not null default now(),

  constraint ck_corporate_channel_oversight_records_status
    check (oversight_status in (
      'active',
      'restricted',
      'suspended'
    )),

  constraint uq_corporate_channel_oversight_records_company_channel
    unique (company_civilization_id, channel_record_id),

  constraint fk_corporate_channel_oversight_records_channel
    foreign key (channel_record_id)
    references streaming.channel_records (channel_record_id)
    on update cascade
    on delete cascade
);

create index if not exists ix_corporate_channel_oversight_company
  on streaming.corporate_channel_oversight_records (company_civilization_id, oversight_status);

create table if not exists streaming.affiliated_streamer_references (
  affiliated_streamer_reference_id uuid primary key,
  company_civilization_id uuid not null,
  streamer_civilization_id uuid not null,
  affiliation_status text not null,
  official_stream_capable_flag boolean not null default false,
  updated_at timestamptz not null default now(),

  constraint ck_affiliated_streamer_references_status
    check (affiliation_status in (
      'active',
      'inactive',
      'restricted'
    )),

  constraint uq_affiliated_streamer_references_company_streamer
    unique (company_civilization_id, streamer_civilization_id)
);

create index if not exists ix_affiliated_streamer_references_company
  on streaming.affiliated_streamer_references (company_civilization_id, affiliation_status);

