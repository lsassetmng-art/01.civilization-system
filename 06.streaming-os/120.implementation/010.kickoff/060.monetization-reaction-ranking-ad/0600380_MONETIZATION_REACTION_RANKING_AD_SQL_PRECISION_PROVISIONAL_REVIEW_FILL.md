# ============================================================
# MONETIZATION REACTION RANKING AD SQL PRECISION PROVISIONAL REVIEW FILL
# ============================================================

status: canonical-provisional-review-fill
layer: implementation
domain: monetization-reaction-ranking-ad
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Provides Zero's provisional fill for the K6 SQL precision worksheet.
This is a draft for review acceleration and not final DB sign-off.

review_position:
- provisional
- pending Sato(DB reviewer) review
- no SQL executed

provisional_recommendations:

monetization_tables:
- tip_event_id and support-table ids
  - recommended_choice: uuid
- principal and event reference FKs
  - recommended_choice: uuid FK
- tip_amount / converted_amount
  - recommended_choice: numeric(20,6)
  - rationale: safer than integer for future currency precision needs
- tip_currency_code / converted_currency_code
  - recommended_choice: text
- note / emotional_context_code
  - recommended_choice: text
- tip_mode / processing_state / support-state families
  - recommended_choice: text + check constraint
- support-state timestamps
  - recommended_choice: timestamptz

reaction_and_ranking_tables:
- reaction_event_id / favorite_state_id / view_signal_summary_id / ranking_result_id / ranking_generation_batch_id
  - recommended_choice: uuid
- actor_principal_id
  - recommended_choice: uuid nullable FK where actor may be absent
- target_type / reaction_type / summary_window / ranking_scope / ranking_window / batch_state
  - recommended_choice: text + check constraint
- rank_position
  - recommended_choice: integer
- score_value
  - recommended_choice: numeric(20,6)
- generated_at / updated_at
  - recommended_choice: timestamptz

ad_tables:
- ad_data_id / ad_insertion_rule_id / ad_display_event_id
  - recommended_choice: uuid
- placement_type / ad_state / rule_state / display_context_code
  - recommended_choice: text, with check constraints for closed sets where appropriate
- ad_candidate_id linkage in ad_display_events
  - recommended_choice: uuid
  - rationale: candidate projection may still use stable uuid-referencable identity
- target_item_type / target_item_id
  - recommended_choice: text + uuid where applicable
- created_at / updated_at
  - recommended_choice: timestamptz

indexes_and_constraints:
- tip lookup
  - recommended_choice: index(target_type, target_id), index(beneficiary_principal_id), index(created_at)
- reaction lookup
  - recommended_choice: index(target_type, target_id), index(actor_principal_id)
- ranking lookup
  - recommended_choice: index(ranking_scope, ranking_window, rank_position)
- ad placement lookup
  - recommended_choice: index(placement_type), index(created_at) on ad_display_events
- partial indexes
  - recommended_choice: defer unless review proves need

policy_projection_strategy:
- creator/authorized monetization summaries
  - recommended_choice: projection-safe authorized views only
- public ranking
  - recommended_choice: projection-safe public views
- ad candidate list
  - recommended_choice: viewer-safe candidate projection only
- raw monetization/reaction/ranking generation/ad control families
  - recommended_choice: non-public or runtime-only access paths only
