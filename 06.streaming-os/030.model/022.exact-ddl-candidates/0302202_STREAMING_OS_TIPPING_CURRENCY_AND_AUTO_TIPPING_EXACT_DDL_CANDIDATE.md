# ============================================================
# STREAMING OS TIPPING CURRENCY AND AUTO TIPPING EXACT DDL CANDIDATE
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
for tipping, currency conversion, and auto tipping tables
in the `streaming` schema.

These DDLs are design candidates,
not yet final execution-freeze DDL.

# ============================================================
# 2. TABLE: streaming.tip_events
# ============================================================

candidate_ddl:

create table if not exists streaming.tip_events (
  tip_event_id uuid primary key,
  session_id uuid not null,
  channel_id uuid not null,
  program_id uuid null,
  stream_principal_civilization_id uuid not null,
  primary_revenue_beneficiary_civilization_id uuid not null,
  tip_origin_type text not null,
  tip_actor_civilization_id uuid null,
  target_performer_participation_id uuid null,
  target_performer_civilization_id uuid null,
  target_persona_id uuid null,
  tip_amount_source numeric(20,6) not null,
  tip_currency_source_id uuid not null,
  source_nation_id uuid not null,
  tip_message text null,
  tip_status text not null,
  fee_amount_source numeric(20,6) not null default 0,
  net_amount_source numeric(20,6) not null default 0,
  hold_reason text null,
  fraud_state text not null default 'none',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_tip_events_origin_type
    check (tip_origin_type in (
      'manual',
      'ai_emotional_auto'
    )),

  constraint ck_tip_events_status
    check (tip_status in (
      'initiated',
      'authorized',
      'captured',
      'failed',
      'refunded',
      'partially_refunded',
      'held',
      'released',
      'reversed',
      'blocked'
    )),

  constraint ck_tip_events_fraud_state
    check (fraud_state in (
      'none',
      'suspected',
      'confirmed'
    )),

  constraint ck_tip_events_amounts_nonnegative
    check (
      tip_amount_source >= 0
      and fee_amount_source >= 0
      and net_amount_source >= 0
    ),

  constraint fk_tip_events_session_id
    foreign key (session_id)
    references streaming.streaming_sessions (session_id)
    on update cascade
    on delete restrict
);

candidate_indexes:
- create index idx_tip_events_session_id
  on streaming.tip_events (session_id);
- create index idx_tip_events_beneficiary
  on streaming.tip_events (primary_revenue_beneficiary_civilization_id);
- create index idx_tip_events_status
  on streaming.tip_events (tip_status);
- create index idx_tip_events_origin_type
  on streaming.tip_events (tip_origin_type);
- create index idx_tip_events_source_nation_id
  on streaming.tip_events (source_nation_id);
- create index idx_tip_events_created_at
  on streaming.tip_events (created_at desc);

# ============================================================
# 3. TABLE: streaming.tip_beneficiary_resolutions
# ============================================================

candidate_ddl:

create table if not exists streaming.tip_beneficiary_resolutions (
  tip_beneficiary_resolution_id uuid primary key,
  tip_event_id uuid not null,
  beneficiary_civilization_id uuid not null,
  beneficiary_type text not null,
  beneficiary_nation_id uuid not null,
  beneficiary_currency_id uuid not null,
  beneficiary_amount_converted numeric(20,6) not null,
  display_currency_id uuid not null,
  display_amount numeric(20,6) not null,
  conversion_rule_reference text null,
  conversion_timestamp timestamptz null,
  resolved_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_tip_beneficiary_resolutions_beneficiary_type
    check (beneficiary_type in (
      'individual',
      'group',
      'company',
      'ai_human'
    )),

  constraint ck_tip_beneficiary_resolutions_amounts_nonnegative
    check (
      beneficiary_amount_converted >= 0
      and display_amount >= 0
    ),

  constraint fk_tip_beneficiary_resolutions_tip_event_id
    foreign key (tip_event_id)
    references streaming.tip_events (tip_event_id)
    on update cascade
    on delete cascade
);

candidate_indexes:
- create unique index uq_tip_beneficiary_resolutions_tip_event_id
  on streaming.tip_beneficiary_resolutions (tip_event_id);
- create index idx_tip_beneficiary_resolutions_beneficiary
  on streaming.tip_beneficiary_resolutions (beneficiary_civilization_id);
- create index idx_tip_beneficiary_resolutions_beneficiary_nation
  on streaming.tip_beneficiary_resolutions (beneficiary_nation_id);

# ============================================================
# 4. TABLE: streaming.tip_currency_conversions
# ============================================================

candidate_ddl:

create table if not exists streaming.tip_currency_conversions (
  tip_currency_conversion_id uuid primary key,
  tip_event_id uuid not null,
  source_nation_id uuid not null,
  source_currency_id uuid not null,
  source_amount numeric(20,6) not null,
  beneficiary_nation_id uuid not null,
  beneficiary_currency_id uuid not null,
  converted_amount numeric(20,6) not null,
  display_currency_id uuid not null,
  display_amount numeric(20,6) not null,
  conversion_rate_reference text null,
  conversion_status text not null,
  conversion_timestamp timestamptz null,
  updated_at timestamptz not null default now(),

  constraint ck_tip_currency_conversions_status
    check (conversion_status in (
      'pending',
      'converted',
      'failed',
      'blocked'
    )),

  constraint ck_tip_currency_conversions_amounts_nonnegative
    check (
      source_amount >= 0
      and converted_amount >= 0
      and display_amount >= 0
    ),

  constraint fk_tip_currency_conversions_tip_event_id
    foreign key (tip_event_id)
    references streaming.tip_events (tip_event_id)
    on update cascade
    on delete cascade
);

candidate_indexes:
- create unique index uq_tip_currency_conversions_tip_event_id
  on streaming.tip_currency_conversions (tip_event_id);
- create index idx_tip_currency_conversions_source_nation
  on streaming.tip_currency_conversions (source_nation_id);
- create index idx_tip_currency_conversions_beneficiary_nation
  on streaming.tip_currency_conversions (beneficiary_nation_id);
- create index idx_tip_currency_conversions_status
  on streaming.tip_currency_conversions (conversion_status);

# ============================================================
# 5. TABLE: streaming.auto_tip_emotional_contexts
# ============================================================

candidate_ddl:

create table if not exists streaming.auto_tip_emotional_contexts (
  auto_tip_emotional_context_id uuid primary key,
  tip_event_id uuid not null,
  auto_tipping_subject_civilization_id uuid not null,
  persona_profile_reference text null,
  video_impression_intensity numeric(10,4) not null default 0,
  video_empathy_intensity numeric(10,4) not null default 0,
  video_support_intention numeric(10,4) not null default 0,
  broadcaster_impression_intensity numeric(10,4) not null default 0,
  broadcaster_empathy_intensity numeric(10,4) not null default 0,
  broadcaster_support_intention numeric(10,4) not null default 0,
  auto_tipping_total_limit numeric(20,6) not null default 0,
  auto_tipping_per_stream_limit numeric(20,6) not null default 0,
  auto_tipping_per_day_limit numeric(20,6) not null default 0,
  current_auto_tipping_total_amount numeric(20,6) not null default 0,
  current_auto_tipping_stream_amount numeric(20,6) not null default 0,
  current_auto_tipping_day_amount numeric(20,6) not null default 0,
  available_national_currency_balance numeric(20,6) not null default 0,
  minor_equivalent_flag boolean not null default false,
  auto_tipping_stop_flag boolean not null default false,
  stop_reason_code text null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_auto_tip_emotional_contexts_nonnegative
    check (
      auto_tipping_total_limit >= 0
      and auto_tipping_per_stream_limit >= 0
      and auto_tipping_per_day_limit >= 0
      and current_auto_tipping_total_amount >= 0
      and current_auto_tipping_stream_amount >= 0
      and current_auto_tipping_day_amount >= 0
      and available_national_currency_balance >= 0
    ),

  constraint fk_auto_tip_emotional_contexts_tip_event_id
    foreign key (tip_event_id)
    references streaming.tip_events (tip_event_id)
    on update cascade
    on delete cascade
);

candidate_indexes:
- create unique index uq_auto_tip_emotional_contexts_tip_event_id
  on streaming.auto_tip_emotional_contexts (tip_event_id);
- create index idx_auto_tip_emotional_contexts_subject
  on streaming.auto_tip_emotional_contexts (auto_tipping_subject_civilization_id);
- create index idx_auto_tip_emotional_contexts_stop_flag
  on streaming.auto_tip_emotional_contexts (auto_tipping_stop_flag);

# ============================================================
# 6. TABLE: streaming.businessos_linkage_refs
# ============================================================

candidate_ddl:

create table if not exists streaming.businessos_linkage_refs (
  businessos_linkage_ref_id uuid primary key,
  tip_event_id uuid not null,
  businessos_linkage_flag boolean not null default false,
  linkage_status text not null default 'none',
  businessos_reference_id text null,
  linkage_note text null,
  updated_at timestamptz not null default now(),

  constraint ck_businessos_linkage_refs_status
    check (linkage_status in (
      'none',
      'pending',
      'linked',
      'failed'
    )),

  constraint fk_businessos_linkage_refs_tip_event_id
    foreign key (tip_event_id)
    references streaming.tip_events (tip_event_id)
    on update cascade
    on delete cascade
);

candidate_indexes:
- create unique index uq_businessos_linkage_refs_tip_event_id
  on streaming.businessos_linkage_refs (tip_event_id);
- create index idx_businessos_linkage_refs_status
  on streaming.businessos_linkage_refs (linkage_status);

# ============================================================
# 7. TABLE: streaming.ai_auto_tipping_profiles
# ============================================================

candidate_ddl:

create table if not exists streaming.ai_auto_tipping_profiles (
  ai_auto_tipping_profile_id uuid primary key,
  ai_human_civilization_id uuid not null,
  persona_profile_reference text null,
  affiliated_company_civilization_id uuid null,
  auto_tipping_enabled_flag boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint uq_ai_auto_tipping_profiles_ai_human
    unique (ai_human_civilization_id)
);

candidate_indexes:
- create index idx_ai_auto_tipping_profiles_company
  on streaming.ai_auto_tipping_profiles (affiliated_company_civilization_id);
- create index idx_ai_auto_tipping_profiles_enabled
  on streaming.ai_auto_tipping_profiles (auto_tipping_enabled_flag);

# ============================================================
# 8. TABLE: streaming.ai_auto_tipping_emotion_states
# ============================================================

candidate_ddl:

create table if not exists streaming.ai_auto_tipping_emotion_states (
  ai_auto_tipping_emotion_state_id uuid primary key,
  ai_auto_tipping_profile_id uuid not null,
  target_session_id uuid null,
  target_broadcaster_civilization_id uuid null,
  video_impression_intensity numeric(10,4) not null default 0,
  video_empathy_intensity numeric(10,4) not null default 0,
  video_support_intention numeric(10,4) not null default 0,
  broadcaster_impression_intensity numeric(10,4) not null default 0,
  broadcaster_empathy_intensity numeric(10,4) not null default 0,
  broadcaster_support_intention numeric(10,4) not null default 0,
  emotion_trend text not null,
  updated_at timestamptz not null default now(),

  constraint ck_ai_auto_tipping_emotion_states_trend
    check (emotion_trend in (
      'rising',
      'stable',
      'falling'
    )),

  constraint fk_ai_auto_tipping_emotion_states_profile_id
    foreign key (ai_auto_tipping_profile_id)
    references streaming.ai_auto_tipping_profiles (ai_auto_tipping_profile_id)
    on update cascade
    on delete cascade
);

candidate_indexes:
- create index idx_ai_auto_tipping_emotion_states_profile_id
  on streaming.ai_auto_tipping_emotion_states (ai_auto_tipping_profile_id);
- create index idx_ai_auto_tipping_emotion_states_target_session
  on streaming.ai_auto_tipping_emotion_states (target_session_id);
- create index idx_ai_auto_tipping_emotion_states_target_broadcaster
  on streaming.ai_auto_tipping_emotion_states (target_broadcaster_civilization_id);

# ============================================================
# 9. TABLE: streaming.ai_auto_tipping_limit_states
# ============================================================

candidate_ddl:

create table if not exists streaming.ai_auto_tipping_limit_states (
  ai_auto_tipping_limit_state_id uuid primary key,
  ai_auto_tipping_profile_id uuid not null,
  auto_tipping_total_limit numeric(20,6) not null default 0,
  auto_tipping_per_stream_limit numeric(20,6) not null default 0,
  auto_tipping_per_day_limit numeric(20,6) not null default 0,
  current_auto_tipping_total_amount numeric(20,6) not null default 0,
  current_auto_tipping_stream_amount numeric(20,6) not null default 0,
  current_auto_tipping_day_amount numeric(20,6) not null default 0,
  system_safety_cap_note text null,
  updated_at timestamptz not null default now(),

  constraint ck_ai_auto_tipping_limit_states_nonnegative
    check (
      auto_tipping_total_limit >= 0
      and auto_tipping_per_stream_limit >= 0
      and auto_tipping_per_day_limit >= 0
      and current_auto_tipping_total_amount >= 0
      and current_auto_tipping_stream_amount >= 0
      and current_auto_tipping_day_amount >= 0
    ),

  constraint fk_ai_auto_tipping_limit_states_profile_id
    foreign key (ai_auto_tipping_profile_id)
    references streaming.ai_auto_tipping_profiles (ai_auto_tipping_profile_id)
    on update cascade
    on delete cascade
);

candidate_indexes:
- create unique index uq_ai_auto_tipping_limit_states_profile_id
  on streaming.ai_auto_tipping_limit_states (ai_auto_tipping_profile_id);

# ============================================================
# 10. TABLE: streaming.ai_auto_tipping_restriction_states
# ============================================================

candidate_ddl:

create table if not exists streaming.ai_auto_tipping_restriction_states (
  ai_auto_tipping_restriction_state_id uuid primary key,
  ai_auto_tipping_profile_id uuid not null,
  available_national_currency_balance numeric(20,6) not null default 0,
  minor_equivalent_flag boolean not null default false,
  company_policy_restriction_flag boolean not null default false,
  governance_restriction_flag boolean not null default false,
  session_restriction_flag boolean not null default false,
  restriction_note text null,
  updated_at timestamptz not null default now(),

  constraint ck_ai_auto_tipping_restriction_states_balance_nonnegative
    check (available_national_currency_balance >= 0),

  constraint fk_ai_auto_tipping_restriction_states_profile_id
    foreign key (ai_auto_tipping_profile_id)
    references streaming.ai_auto_tipping_profiles (ai_auto_tipping_profile_id)
    on update cascade
    on delete cascade
);

candidate_indexes:
- create unique index uq_ai_auto_tipping_restriction_states_profile_id
  on streaming.ai_auto_tipping_restriction_states (ai_auto_tipping_profile_id);
- create index idx_ai_auto_tipping_restriction_states_flags
  on streaming.ai_auto_tipping_restriction_states (
    minor_equivalent_flag,
    company_policy_restriction_flag,
    governance_restriction_flag,
    session_restriction_flag
  );

# ============================================================
# 11. TABLE: streaming.ai_auto_tipping_stop_states
# ============================================================

candidate_ddl:

create table if not exists streaming.ai_auto_tipping_stop_states (
  ai_auto_tipping_stop_state_id uuid primary key,
  ai_auto_tipping_profile_id uuid not null,
  auto_tipping_stop_flag boolean not null default false,
  stop_reason_code text null,
  stop_reason_note text null,
  resumable_flag boolean not null default false,
  updated_at timestamptz not null default now(),

  constraint fk_ai_auto_tipping_stop_states_profile_id
    foreign key (ai_auto_tipping_profile_id)
    references streaming.ai_auto_tipping_profiles (ai_auto_tipping_profile_id)
    on update cascade
    on delete cascade
);

candidate_indexes:
- create unique index uq_ai_auto_tipping_stop_states_profile_id
  on streaming.ai_auto_tipping_stop_states (ai_auto_tipping_profile_id);
- create index idx_ai_auto_tipping_stop_states_stop_flag
  on streaming.ai_auto_tipping_stop_states (auto_tipping_stop_flag);

# ============================================================
# 12. FOREIGN KEY POLICY NOTE
# ============================================================

Candidate policy:
- keep foreign keys inside `streaming` where stable
- keep external canonical domains referenced by id only
- do not prematurely harden cross-schema FK coupling

# ============================================================
# 13. CANONICAL FIXED STATEMENT
# ============================================================

The exact DDL candidate for tipping, currency, and auto tipping tables
shall preserve:
- formal tip event history
- beneficiary resolution
- source-to-beneficiary conversion
- optional BusinessOS linkage
- auto tipping event context
- auto tipping profile, emotion, limit, restriction, and stop separation

