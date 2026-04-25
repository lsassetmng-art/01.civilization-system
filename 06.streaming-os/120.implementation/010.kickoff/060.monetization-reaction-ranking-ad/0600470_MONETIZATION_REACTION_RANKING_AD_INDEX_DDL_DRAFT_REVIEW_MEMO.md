# ============================================================
# MONETIZATION REACTION RANKING AD INDEX DDL DRAFT REVIEW MEMO
# ============================================================

status: canonical-ddl-draft-memo
layer: implementation
domain: monetization-reaction-ranking-ad
system: StreamingOS
prepared_by: Zero
owner: Boss

draft_index_plan:

tip_events:
- idx_tip_events_target
  - columns:
    - target_type
    - target_id
- idx_tip_events_beneficiary_principal_id
  - columns:
    - beneficiary_principal_id
- idx_tip_events_created_at
  - columns:
    - created_at

reaction_events:
- idx_reaction_events_target
  - columns:
    - target_type
    - target_id
- idx_reaction_events_actor_principal_id
  - columns:
    - actor_principal_id

ranking_results:
- idx_ranking_results_scope_window_rank
  - columns:
    - ranking_scope
    - ranking_window
    - rank_position

ad_data:
- idx_ad_data_placement_type
  - columns:
    - placement_type

ad_insertion_rules:
- idx_ad_insertion_rules_placement_type
  - columns:
    - placement_type

ad_display_events:
- idx_ad_display_events_created_at
  - columns:
    - created_at

index_strategy_note:
- keep first-pass index set minimal and read-pattern obvious
- avoid speculative partial indexes at this stage
- do not let future optimization pressure collapse raw-event and control-plane separations

open_review_points:
- whether ranking_results also needs target lookup support index
- whether ad_display_events needs placement_type composite index with created_at
- whether favorite_states requires unique principal-target support in first packet
- whether any monetization state families require status-oriented composite indexes later
