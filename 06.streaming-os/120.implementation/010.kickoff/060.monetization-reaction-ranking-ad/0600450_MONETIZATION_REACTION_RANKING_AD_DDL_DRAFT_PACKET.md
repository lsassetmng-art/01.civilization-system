# ============================================================
# MONETIZATION REACTION RANKING AD DDL DRAFT PACKET
# ============================================================

status: canonical-ddl-draft-packet
layer: implementation
domain: monetization-reaction-ranking-ad
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
This packet defines the DDL draft review body for K6 monetization-reaction-ranking-ad.

packet_state:
- draft_only
- pending_sato_db_review
- no_sql_executed
- not_approved_for_apply

included_documents:
- 0600460_MONETIZATION_REACTION_RANKING_AD_BASE_TABLE_DDL_DRAFT_REVIEW_MEMO.md
- 0600470_MONETIZATION_REACTION_RANKING_AD_INDEX_DDL_DRAFT_REVIEW_MEMO.md
- 0600480_MONETIZATION_REACTION_RANKING_AD_PROJECTION_POLICY_SQL_DRAFT_REVIEW_MEMO.md

draft_scope:
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

review_intent:
- confirm money / score precision choices
- confirm raw-event vs projection vs control-plane table support
- confirm minimal index strategy
- confirm creator-safe / public-safe / viewer-safe / runtime-only projection split
