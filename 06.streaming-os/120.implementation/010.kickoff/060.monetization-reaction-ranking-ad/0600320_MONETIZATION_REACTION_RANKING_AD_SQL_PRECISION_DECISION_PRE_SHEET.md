# ============================================================
# MONETIZATION REACTION RANKING AD SQL PRECISION DECISION PRE-SHEET
# ============================================================

status: canonical-pre-sheet
layer: implementation
domain: monetization-reaction-ranking-ad
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Prepares the decision sheet for SQL-precision review of K6 monetization-reaction-ranking-ad.

review_role_note:
- Sato(DB reviewer) is required when SQL phase starts

monetization_decisions_to_close:
- exact decimal/money type strategy for tip_amount and converted_amount
- exact tip_currency_code storage type strategy
- exact FK strategy across tip support tables
- exact note/emotional-context field type strategy
- exact check implementation for tip_mode and processing_state
- exact check implementation for support resolution/conversion/profile/emotion/limit/restriction/stop states

reaction_and_ranking_decisions_to_close:
- exact field type strategy for reaction target pairs and actor relation
- exact favorite state storage strategy
- exact summary_window and ranking_window check implementation
- exact ranking score type strategy
- exact ranking batch state check implementation
- exact minimal index strategy for ranking scope/window lookups

ad_decisions_to_close:
- exact ad_data field strategy for placement and ad state
- exact ad_insertion_rules field strategy for placement and rule state
- exact linkage strategy for ad_display_events.ad_candidate_id
- exact display_context_code storage strategy
- exact minimal index strategy for placement/time-based lookups

policy_sql_decisions_to_close:
- exact creator/authorized summary projection strategy for monetization
- exact public-safe ranking projection strategy
- exact viewer-safe ad candidate projection strategy
- exact runtime-only visibility strategy for generation and ad control families

note:
This sheet prepares SQL review only.
It does not execute SQL against PERSONA_DATABASE_URL.
