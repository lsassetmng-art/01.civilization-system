# ============================================================
# STREAMING OS F1 EXECUTABLE DDL FREEZE RESULT V1
# ============================================================

status: frozen
phase: F1
scope: executable-ddl
prepared_by: Zero
owner: Boss

decision:
The DDL family structure is frozen.
Execution is split into boot DDL and supplementary DDL.

canonical_schema:
- streaming

boot_execution_group:
- 43 tables

supplementary_execution_group:
- 20 tables

boot_tables:

core:
- streaming_principals
- streaming_sessions
- archive_assets
- clip_assets
- external_publish_jobs
- tip_events
- reaction_events
- ranking_results
- ad_data

creator_and_viewer:
- creator_profile_view_states
- creator_studio_drafts
- upload_preparation_records
- creator_settings_states
- creator_analytics_snapshot_refs
- viewer_home_feed_states
- viewer_search_histories
- viewer_watch_histories
- subscription_follow_states
- playlist_records
- playlist_items
- watch_queue_states
- watch_queue_items

moderation_and_notification:
- review_queue_items
- ai_review_jobs
- human_review_tasks
- review_decision_records
- review_dimension_results
- re_review_requests
- restoration_review_records
- comment_records
- comment_moderation_states
- report_records
- appeal_records
- moderation_restoration_records
- platform_event_records
- notification_records
- notification_delivery_states
- review_alert_records
- escalation_alert_records

corporate:
- channel_records
- channel_profile_states
- corporate_channel_oversight_records
- affiliated_streamer_references

supplementary_tables:
- clip_derivation_refs
- asset_review_states
- asset_governance_states
- external_publish_targets
- external_publish_settings
- external_publish_results
- tip_beneficiary_resolutions
- tip_currency_conversions
- auto_tip_emotional_contexts
- businessos_linkage_refs
- ai_auto_tipping_profiles
- ai_auto_tipping_emotion_states
- ai_auto_tipping_limit_states
- ai_auto_tipping_restriction_states
- ai_auto_tipping_stop_states
- favorite_states
- view_signal_summaries
- ranking_generation_batches
- ad_insertion_rules
- ad_display_events

ddl_principles:
- additive-safe only
- no reverse dependency
- stable migration order only
- enum-like control by check constraint
- uniqueness by unique constraint
- major search paths must be index-backed
- trigger / function / policy remain separate from base table DDL
- no silent new table-family creation

closed_scope:
- canonical table family
- boot vs supplementary execution boundary
- migration dependency direction
- boot execution target set
- supplementary execution target set

open_refinement_only:
- exact column precision for supplementary tables
- exact trigger / function SQL
- exact policy SQL
- exact Persona-side SQL execution timing
