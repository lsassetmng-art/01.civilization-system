# ============================================================
# STREAMING OS REACTION RANKING AND AD EXACT DDL CANDIDATE
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
for reaction, ranking, and ad tables
in the `streaming` schema.

These DDLs are design candidates,
not yet final execution-freeze DDL.

# ============================================================
# 2. TABLE: streaming.reaction_events
# ============================================================

candidate_ddl:

create table if not exists streaming.reaction_events (
  reaction_event_id uuid primary key,
  reaction_type text not null,
  reaction_target_type text not null,
  reaction_target_id uuid not null,
  audience_subject_id uuid not null,
  audience_subject_type text not null,
  reaction_value text null,
  reaction_note text null,
  reaction_timestamp timestamptz not null default now(),
  created_at timestamptz not null default now(),

  constraint ck_reaction_events_type
    check (reaction_type in (
      'like',
      'dislike',
      'favorite',
      'comment',
      'continued_view',
      'rewatch'
    )),

  constraint ck_reaction_events_target_type
    check (reaction_target_type in (
      'video_asset',
      'live_session',
      'broadcaster',
      'clip_asset'
    )),

  constraint ck_reaction_events_audience_subject_type
    check (audience_subject_type in (
      'individual',
      'ai_human',
      'group',
      'company'
    ))
);

candidate_indexes:
- create index idx_reaction_events_target
  on streaming.reaction_events (reaction_target_type, reaction_target_id);
- create index idx_reaction_events_audience_subject
  on streaming.reaction_events (audience_subject_id);
- create index idx_reaction_events_type
  on streaming.reaction_events (reaction_type);
- create index idx_reaction_events_timestamp
  on streaming.reaction_events (reaction_timestamp desc);

# ============================================================
# 3. TABLE: streaming.favorite_states
# ============================================================

candidate_ddl:

create table if not exists streaming.favorite_states (
  favorite_state_id uuid primary key,
  audience_subject_id uuid not null,
  favorite_target_type text not null,
  favorite_target_id uuid not null,
  favorite_active_flag boolean not null default true,
  favorited_at timestamptz not null default now(),
  unfavorited_at timestamptz null,
  updated_at timestamptz not null default now(),

  constraint ck_favorite_states_target_type
    check (favorite_target_type in (
      'video_asset',
      'live_session',
      'broadcaster',
      'clip_asset'
    )),

  constraint ck_favorite_states_unfavorite_time
    check (
      unfavorited_at is null
      or favorited_at <= unfavorited_at
    )
);

candidate_indexes:
- create unique index uq_favorite_states_subject_target
  on streaming.favorite_states (
    audience_subject_id,
    favorite_target_type,
    favorite_target_id
  );
- create index idx_favorite_states_active
  on streaming.favorite_states (favorite_active_flag);
- create index idx_favorite_states_updated_at
  on streaming.favorite_states (updated_at desc);

# ============================================================
# 4. TABLE: streaming.view_signal_summaries
# ============================================================

candidate_ddl:

create table if not exists streaming.view_signal_summaries (
  view_signal_summary_id uuid primary key,
  target_type text not null,
  target_id uuid not null,
  total_view_count bigint not null default 0,
  total_continued_view_count bigint not null default 0,
  total_rewatch_count bigint not null default 0,
  total_like_count bigint not null default 0,
  total_dislike_count bigint not null default 0,
  total_favorite_count bigint not null default 0,
  total_comment_count bigint not null default 0,
  updated_at timestamptz not null default now(),

  constraint ck_view_signal_summaries_target_type
    check (target_type in (
      'video_asset',
      'live_session',
      'broadcaster',
      'clip_asset'
    )),

  constraint ck_view_signal_summaries_nonnegative
    check (
      total_view_count >= 0
      and total_continued_view_count >= 0
      and total_rewatch_count >= 0
      and total_like_count >= 0
      and total_dislike_count >= 0
      and total_favorite_count >= 0
      and total_comment_count >= 0
    )
);

candidate_indexes:
- create unique index uq_view_signal_summaries_target
  on streaming.view_signal_summaries (target_type, target_id);
- create index idx_view_signal_summaries_updated_at
  on streaming.view_signal_summaries (updated_at desc);

# ============================================================
# 5. TABLE: streaming.ranking_results
# ============================================================

candidate_ddl:

create table if not exists streaming.ranking_results (
  ranking_result_id uuid primary key,
  ranking_target_type text not null,
  ranking_target_id uuid not null,
  ranking_period_type text not null,
  ranking_score numeric(20,6) not null,
  ranking_position integer not null,
  ranking_generated_at timestamptz not null,
  ranking_note text null,
  created_at timestamptz not null default now(),

  constraint ck_ranking_results_target_type
    check (ranking_target_type in (
      'video',
      'stream',
      'broadcaster'
    )),

  constraint ck_ranking_results_period_type
    check (ranking_period_type in (
      'daily',
      'monthly',
      'yearly',
      'overall'
    )),

  constraint ck_ranking_results_position_positive
    check (ranking_position > 0)
);

candidate_indexes:
- create unique index uq_ranking_results_target_period_generated
  on streaming.ranking_results (
    ranking_target_type,
    ranking_target_id,
    ranking_period_type,
    ranking_generated_at
  );
- create index idx_ranking_results_period_position
  on streaming.ranking_results (
    ranking_period_type,
    ranking_position
  );
- create index idx_ranking_results_generated_at
  on streaming.ranking_results (ranking_generated_at desc);

# ============================================================
# 6. TABLE: streaming.ranking_generation_batches
# ============================================================

candidate_ddl:

create table if not exists streaming.ranking_generation_batches (
  ranking_generation_batch_id uuid primary key,
  ranking_period_type text not null,
  generated_at timestamptz not null,
  generation_status text not null,
  metric_scope_note text null,
  created_at timestamptz not null default now(),

  constraint ck_ranking_generation_batches_period_type
    check (ranking_period_type in (
      'daily',
      'monthly',
      'yearly',
      'overall'
    )),

  constraint ck_ranking_generation_batches_status
    check (generation_status in (
      'pending',
      'completed',
      'failed'
    ))
);

candidate_indexes:
- create index idx_ranking_generation_batches_period_generated
  on streaming.ranking_generation_batches (
    ranking_period_type,
    generated_at desc
  );
- create index idx_ranking_generation_batches_status
  on streaming.ranking_generation_batches (generation_status);

# ============================================================
# 7. TABLE: streaming.ad_data
# ============================================================

candidate_ddl:

create table if not exists streaming.ad_data (
  ad_data_id uuid primary key,
  ad_title text not null,
  ad_origin_subject_id uuid null,
  ad_origin_type text not null,
  ad_asset_reference text null,
  ad_text_payload text null,
  ad_status text not null,
  active_from timestamptz null,
  active_until timestamptz null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_ad_data_origin_type
    check (ad_origin_type in (
      'sponsor',
      'internal_campaign',
      'company',
      'partner'
    )),

  constraint ck_ad_data_status
    check (ad_status in (
      'draft',
      'active',
      'inactive',
      'blocked',
      'archived'
    )),

  constraint ck_ad_data_active_range
    check (
      active_from is null
      or active_until is null
      or active_from <= active_until
    )
);

candidate_indexes:
- create index idx_ad_data_status
  on streaming.ad_data (ad_status);
- create index idx_ad_data_active_from
  on streaming.ad_data (active_from);
- create index idx_ad_data_active_until
  on streaming.ad_data (active_until);
- create index idx_ad_data_updated_at
  on streaming.ad_data (updated_at desc);

# ============================================================
# 8. TABLE: streaming.ad_insertion_rules
# ============================================================

candidate_ddl:

create table if not exists streaming.ad_insertion_rules (
  ad_insertion_rule_id uuid primary key,
  ad_data_id uuid not null,
  target_content_type text not null,
  insertion_position text not null,
  frequency_policy_note text null,
  target_nation_id uuid null,
  target_channel_id uuid null,
  target_program_id uuid null,
  rule_status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_ad_insertion_rules_target_content_type
    check (target_content_type in (
      'live_session',
      'archive_asset',
      'clip_asset'
    )),

  constraint ck_ad_insertion_rules_position
    check (insertion_position in (
      'pre_roll',
      'mid_roll',
      'post_roll',
      'overlay'
    )),

  constraint ck_ad_insertion_rules_status
    check (rule_status in (
      'active',
      'inactive',
      'blocked'
    )),

  constraint fk_ad_insertion_rules_ad_data_id
    foreign key (ad_data_id)
    references streaming.ad_data (ad_data_id)
    on update cascade
    on delete cascade
);

candidate_indexes:
- create index idx_ad_insertion_rules_ad_data_id
  on streaming.ad_insertion_rules (ad_data_id);
- create index idx_ad_insertion_rules_target_position
  on streaming.ad_insertion_rules (
    target_content_type,
    insertion_position
  );
- create index idx_ad_insertion_rules_status
  on streaming.ad_insertion_rules (rule_status);

# ============================================================
# 9. TABLE: streaming.ad_display_events
# ============================================================

candidate_ddl:

create table if not exists streaming.ad_display_events (
  ad_display_event_id uuid primary key,
  ad_data_id uuid not null,
  ad_insertion_rule_id uuid not null,
  target_content_type text not null,
  target_content_id uuid not null,
  displayed_at timestamptz not null default now(),
  display_status text not null,
  display_note text null,
  created_at timestamptz not null default now(),

  constraint ck_ad_display_events_target_content_type
    check (target_content_type in (
      'live_session',
      'archive_asset',
      'clip_asset'
    )),

  constraint ck_ad_display_events_status
    check (display_status in (
      'shown',
      'skipped',
      'blocked',
      'failed'
    )),

  constraint fk_ad_display_events_ad_data_id
    foreign key (ad_data_id)
    references streaming.ad_data (ad_data_id)
    on update cascade
    on delete restrict,

  constraint fk_ad_display_events_rule_id
    foreign key (ad_insertion_rule_id)
    references streaming.ad_insertion_rules (ad_insertion_rule_id)
    on update cascade
    on delete restrict
);

candidate_indexes:
- create index idx_ad_display_events_target
  on streaming.ad_display_events (
    target_content_type,
    target_content_id
  );
- create index idx_ad_display_events_status
  on streaming.ad_display_events (display_status);
- create index idx_ad_display_events_displayed_at
  on streaming.ad_display_events (displayed_at desc);

# ============================================================
# 10. FOREIGN KEY POLICY NOTE
# ============================================================

Candidate policy:
- keep foreign keys inside `streaming` where stable
- keep typed target references flexible where polymorphism exists
- do not prematurely harden cross-domain polymorphic FK behavior

# ============================================================
# 11. CANONICAL FIXED STATEMENT
# ============================================================

The exact DDL candidate for reaction, ranking, and ad tables
shall preserve:
- raw reaction history
- stateful favorites
- aggregated signal summaries
- ranking outputs and ranking batches
- ad master data
- ad insertion rule history
- ad display-event history

