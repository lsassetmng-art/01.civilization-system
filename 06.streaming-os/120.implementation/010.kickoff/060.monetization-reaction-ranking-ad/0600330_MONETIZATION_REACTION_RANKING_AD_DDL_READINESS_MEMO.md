# ============================================================
# MONETIZATION REACTION RANKING AD DDL READINESS MEMO
# ============================================================

status: canonical-readiness-memo
layer: implementation
domain: monetization-reaction-ranking-ad
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Summarizes K6 readiness for future DDL drafting.

tables_in_scope:
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

meaning_level_ready_items:
- raw monetization visibility boundary is closed
- ranking output vs generation control boundary is closed
- ad candidate projection vs control-plane boundary is closed
- raw reaction visibility boundary is closed at meaning level
- support state family meanings are closed

still_precision_open:
- exact SQL type names
- exact decimal/money choices
- exact default clauses
- exact FK action clauses
- exact check syntax
- exact uniqueness/index method and partial-index strategy
- exact policy/projection SQL

ddl_risk_notes:
- do not expose raw monetization or reaction events as public output
- do not collapse ranking_results and ranking_generation_batches
- do not treat ad candidate projection as ad control-plane data
- do not leak targeting or insertion internals into viewer-safe projection

recommended_future_order:
1. decide SQL precision items with Sato(DB reviewer)
2. draft monetization tables
3. draft reaction/ranking tables
4. draft ad control and display tables
5. draft minimal indexes
6. draft creator-safe/public-safe/viewer-safe projection strategies
7. review against K6 decision pack
