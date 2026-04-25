# ============================================================
# K6 REACTION RANKING AD TABLE-COLUMN EXACTNESS
# ============================================================

status: exact-table-column
domain: reaction-ranking-ad
prepared_by: Zero
owner: Boss

tables:
- reaction_events
- favorite_states
- view_signal_summaries
- ranking_results
- ranking_generation_batches
- ad_data
- ad_insertion_rules
- ad_display_events

reaction_events_required_columns:
- reaction_event_id
- target_type
- target_id
- reaction_type
- created_at

reaction_events_optional_columns:
- actor_principal_id

favorite_states_required_columns:
- favorite_state_id
- principal_id
- target_type
- target_id
- favorite_state
- updated_at

view_signal_summaries_required_columns:
- view_signal_summary_id
- item_type
- item_id
- summary_window
- updated_at

ranking_results_required_columns:
- ranking_result_id
- ranking_scope
- ranking_window
- item_type
- item_id
- rank_position
- generated_at
- updated_at

ranking_generation_batches_required_columns:
- ranking_generation_batch_id
- ranking_scope
- ranking_window
- batch_state
- generated_at
- updated_at

ad_data_required_columns:
- ad_data_id
- placement_type
- ad_state
- updated_at

ad_insertion_rules_required_columns:
- ad_insertion_rule_id
- placement_type
- rule_state
- updated_at

ad_display_events_required_columns:
- ad_display_event_id
- ad_candidate_id
- placement_type
- created_at

ad_display_events_optional_columns:
- target_item_type
- target_item_id
- actor_principal_id
- display_context_code

recommended_constraints:
- check(reaction_type in allowed set)
- check(favorite_state in allowed set)
- check(summary_window in allowed set)
- check(ranking_scope in allowed set)
- check(ranking_window in allowed set)
- check(batch_state in allowed set)
- check(ad_state in allowed set)
- check(rule_state in allowed set)

recommended_indexes:
- idx_reaction_events_target
- idx_reaction_events_actor_principal_id
- idx_favorite_states_principal_target
- idx_view_signal_summaries_item
- idx_ranking_results_scope_window
- idx_ranking_results_item
- idx_ranking_generation_batches_scope_window
- idx_ad_data_placement_type
- idx_ad_insertion_rules_placement_type
- idx_ad_display_events_ad_candidate_id
- idx_ad_display_events_created_at

semantic_notes:
- reaction event remains raw action object
- favorite state remains principal-target state object
- view signal summary remains rollup object, not raw watch-history substitute
- ranking result remains projection object
- ranking generation batch remains runtime generation tracking object
- ad display event remains display logging/control object, not general content object

open_for_sql_precision_only:
- exact SQL type names
- exact fk strategy for ad_candidate_id
- exact default clauses
- exact partial index conditions
