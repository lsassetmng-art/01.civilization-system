# ============================================================
# MONETIZATION REACTION RANKING AD BASE TABLE DDL DRAFT REVIEW MEMO
# ============================================================

status: canonical-ddl-draft-memo
layer: implementation
domain: monetization-reaction-ranking-ad
system: StreamingOS
prepared_by: Zero
owner: Boss

draft_table_plan:

tip_events:
- tip_event_id: uuid primary key
- payer_principal_id: uuid null
- beneficiary_principal_id: uuid not null
- target_type: text not null
- target_id: uuid not null
- tip_amount: numeric(20,6) not null
- tip_currency_code: text not null
- tip_mode: text not null
- processing_state: text not null
- note: text null
- created_at: timestamptz not null
- updated_at: timestamptz not null

tip_beneficiary_resolutions:
- tip_beneficiary_resolution_id: uuid primary key
- tip_event_id: uuid not null
- resolution_state: text not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

tip_currency_conversions:
- tip_currency_conversion_id: uuid primary key
- tip_event_id: uuid not null
- converted_amount: numeric(20,6) not null
- converted_currency_code: text not null
- conversion_state: text not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

auto_tip_emotional_contexts:
- auto_tip_emotional_context_id: uuid primary key
- principal_id: uuid not null
- emotional_context_code: text not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

ai_auto_tipping_profiles:
- ai_auto_tipping_profile_id: uuid primary key
- principal_id: uuid not null
- profile_state: text not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

ai_auto_tipping_emotion_states:
- ai_auto_tipping_emotion_state_id: uuid primary key
- principal_id: uuid not null
- emotion_state: text not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

ai_auto_tipping_limit_states:
- ai_auto_tipping_limit_state_id: uuid primary key
- principal_id: uuid not null
- limit_state: text not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

ai_auto_tipping_restriction_states:
- ai_auto_tipping_restriction_state_id: uuid primary key
- principal_id: uuid not null
- restriction_state: text not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

ai_auto_tipping_stop_states:
- ai_auto_tipping_stop_state_id: uuid primary key
- principal_id: uuid not null
- stop_state: text not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

reaction_events:
- reaction_event_id: uuid primary key
- actor_principal_id: uuid null
- target_type: text not null
- target_id: uuid not null
- reaction_type: text not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

favorite_states:
- favorite_state_id: uuid primary key
- principal_id: uuid not null
- target_type: text not null
- target_id: uuid not null
- is_favorite: boolean not null default true
- created_at: timestamptz not null
- updated_at: timestamptz not null

view_signal_summaries:
- view_signal_summary_id: uuid primary key
- target_type: text not null
- target_id: uuid not null
- summary_window: text not null
- signal_count: numeric(20,6) not null
- generated_at: timestamptz not null
- updated_at: timestamptz not null

ranking_results:
- ranking_result_id: uuid primary key
- ranking_scope: text not null
- ranking_window: text not null
- target_type: text not null
- target_id: uuid not null
- rank_position: integer not null
- score_value: numeric(20,6) not null
- generated_at: timestamptz not null
- updated_at: timestamptz not null

ranking_generation_batches:
- ranking_generation_batch_id: uuid primary key
- ranking_scope: text not null
- ranking_window: text not null
- batch_state: text not null
- generated_at: timestamptz not null
- updated_at: timestamptz not null

ad_data:
- ad_data_id: uuid primary key
- placement_type: text not null
- ad_state: text not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

ad_insertion_rules:
- ad_insertion_rule_id: uuid primary key
- placement_type: text not null
- rule_state: text not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

ad_display_events:
- ad_display_event_id: uuid primary key
- ad_candidate_id: uuid not null
- placement_type: text not null
- display_context_code: text not null
- created_at: timestamptz not null
- updated_at: timestamptz not null

draft_constraint_plan:
- primary keys on all ids
- foreign keys from monetization support tables to tip_event root where applicable
- foreign keys from principal-bound auto-tip tables to principal root
- check constraints on all closed type/state families
- rank_position remains positive ordinal integer
- raw event families remain separate from projection families
- ranking_results remain separate from ranking_generation_batches
- ad display logging remains separate from ad control-plane families

open_review_points:
- final numeric precision and scale for monetary and score fields
- whether signal_count remains numeric or becomes bigint/integer-like aggregate later
- final actor nullability policy on reaction_events
- exact stable linkage rule for ad_candidate_id
- whether some auto-tip support families collapse or remain separate after DB review
- whether some target_type families need harder normalization support tables later
