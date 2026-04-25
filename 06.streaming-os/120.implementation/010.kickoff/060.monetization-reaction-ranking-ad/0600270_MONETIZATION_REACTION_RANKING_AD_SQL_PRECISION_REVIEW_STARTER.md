# ============================================================
# MONETIZATION REACTION RANKING AD SQL PRECISION REVIEW STARTER
# ============================================================

status: canonical-review-starter
layer: implementation
domain: monetization-reaction-ranking-ad
system: StreamingOS
prepared_by: Zero
owner: Boss

review_role_note:
- Sato(DB reviewer) participation is required when SQL phase starts

review_scope:
- tip_events
- tip_beneficiary_resolutions
- tip_currency_conversions
- auto_tip_emotional_contexts
- ai_auto_tipping_profiles
- ai_auto_tipping_emotion_states
- ai_auto_tipping_limit_states
- ai_auto_tipping_restriction_states
- ai_auto_tipping_stop_states
- reaction_events
- favorite_states
- view_signal_summaries
- ranking_results
- ranking_generation_batches
- ad_data
- ad_insertion_rules
- ad_display_events

precision_items:
- exact decimal/money type choices for tip amounts and conversion storage
- exact FK strategy across monetization support tables
- exact check implementation for tip/reaction/ranking/ad state sets
- exact projection SQL strategy for creator-safe and public-safe summaries
- exact runtime-only visibility strategy for ranking generation and ad control objects
- exact ad display event linkage strategy for candidate ids and placements

out_of_scope_note:
This document prepares SQL review only.
It does not execute SQL against PERSONA_DATABASE_URL.
