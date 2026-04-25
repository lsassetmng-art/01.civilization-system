# ============================================================
# MONETIZATION REACTION RANKING AD SQL PRECISION REVIEW WORKSHEET
# ============================================================

status: canonical-review-worksheet
layer: implementation
domain: monetization-reaction-ranking-ad
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
This worksheet is the working review sheet for K6 SQL precision review.

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

review_mode:
- precision review only
- no execution
- no implementation coding

reviewer_rule:
- Sato(DB reviewer) participation required

monetization_review_items:
- exact decimal/money type strategy for tip_amount
  - decision_status:
  - reviewer_note:
- exact decimal/money type strategy for converted_amount
  - decision_status:
  - reviewer_note:
- exact field type strategy for tip_currency_code
  - decision_status:
  - reviewer_note:
- exact FK strategy across tip support tables
  - decision_status:
  - reviewer_note:
- exact field type strategy for note and emotional_context_code
  - decision_status:
  - reviewer_note:
- exact check implementation for tip_mode and processing_state
  - decision_status:
  - reviewer_note:
- exact check implementation for support resolution/conversion/profile/emotion/limit/restriction/stop states
  - decision_status:
  - reviewer_note:

reaction_and_ranking_review_items:
- exact field type strategy for reaction target pairs
  - decision_status:
  - reviewer_note:
- exact actor relation storage strategy for reaction events
  - decision_status:
  - reviewer_note:
- exact favorite state storage strategy
  - decision_status:
  - reviewer_note:
- exact summary_window and ranking_window check implementation
  - decision_status:
  - reviewer_note:
- exact ranking score type strategy
  - decision_status:
  - reviewer_note:
- exact ranking batch state check implementation
  - decision_status:
  - reviewer_note:
- exact minimal index strategy for ranking scope/window lookups
  - decision_status:
  - reviewer_note:

ad_review_items:
- exact field strategy for ad_data placement and ad_state
  - decision_status:
  - reviewer_note:
- exact field strategy for ad_insertion_rules placement and rule_state
  - decision_status:
  - reviewer_note:
- exact linkage strategy for ad_display_events.ad_candidate_id
  - decision_status:
  - reviewer_note:
- exact field strategy for display_context_code
  - decision_status:
  - reviewer_note:
- exact minimal index strategy for placement/time-based lookups
  - decision_status:
  - reviewer_note:

policy_projection_review_items:
- exact creator/authorized summary projection strategy for monetization
  - decision_status:
  - reviewer_note:
- exact public-safe ranking projection strategy
  - decision_status:
  - reviewer_note:
- exact viewer-safe ad candidate projection strategy
  - decision_status:
  - reviewer_note:
- exact runtime-only visibility strategy for ranking generation and ad control families
  - decision_status:
  - reviewer_note:
- exact raw-event non-public enforcement strategy
  - decision_status:
  - reviewer_note:

exit_condition:
- all blocking SQL precision questions marked resolved or explicitly deferred with rationale
