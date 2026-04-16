# ============================================================
# STREAMING OS CONSOLIDATED MIGRATION PHASES
# ============================================================

status: canonical-draft
system: streaming-os
domain: migration-order-and-dependency-freeze
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PHASE ORDER
# ============================================================

phase_01_foundation:
- streaming_principals
- channel_records
- channel_profile_states
- streaming_sessions
- session_*_states

phase_02_assets_and_publish:
- archive_assets
- clip_assets
- asset_review_states
- asset_governance_states
- external_publish_targets
- external_publish_settings
- external_publish_jobs
- external_publish_results

phase_03_monetization_and_reaction:
- tip_events
- tip_beneficiary_resolutions
- tip_currency_conversions
- auto_tip_emotional_contexts
- businessos_linkage_refs
- ai_auto_tipping_profiles
- ai_auto_tipping_emotion_states
- ai_auto_tipping_limit_states
- ai_auto_tipping_restriction_states
- ai_auto_tipping_stop_states
- reaction_events
- favorite_states
- view_signal_summaries
- ranking_generation_batches
- ranking_results
- ad_data
- ad_insertion_rules
- ad_display_events

phase_04_creator_and_viewer:
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

phase_05_review_and_moderation:
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

phase_06_notification_and_corporate:
- platform_event_records
- notification_records
- notification_delivery_states
- review_alert_records
- escalation_alert_records
- corporate_channel_oversight_records
- affiliated_streamer_references

# ============================================================
# 2. PHASE RULE
# ============================================================

rules:
- later phases may reference earlier phase ids
- earlier phases should not depend on later phase tables
- alerts and notification delivery are late-phase concerns
  and should not block core platform bring-up
- corporate oversight may be added after core channel bring-up
  without redefining existing ownership semantics

# ============================================================
# 3. CANONICAL FIXED STATEMENT
# ============================================================

StreamingOS migration ordering
shall proceed from:
- core principals/channels/sessions
to
- assets/publish
to
- monetization/reaction/ad
to
- creator/viewer platform structures
to
- review/moderation
to
- notifications/corporate oversight

This order preserves semantic safety
and minimizes reverse dependency coupling.

