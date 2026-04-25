# ============================================================
# K6 REACTION RANKING AD EXACT PAYLOAD
# ============================================================

status: exact-payload
domain: reaction-ranking-ad
prepared_by: Zero
owner: Boss

endpoints:
- create_reaction_event
- list_reaction_events
- list_ranking_results
- get_ad_candidate_list
- create_ad_display_event

canonical_objects:
- reaction_event
- ranking_result
- ad_candidate_projection
- ad_display_event

reaction_create_request_shape:
{
  target_type,
  target_id,
  reaction_type,
  actor_principal_id?,
  idempotency_key
}

reaction_list_shape:
{
  success: true,
  data: {
    items: [
      {
        reaction_event_id,
        target_type,
        target_id,
        reaction_type,
        actor_principal_id?,
        created_at
      }
    ]
  },
  meta?: {
    limit?,
    offset?,
    cursor?,
    total_count?
  }
}

ranking_list_shape:
{
  success: true,
  data: {
    items: [
      {
        ranking_result_id,
        ranking_scope,
        ranking_window,
        item_type,
        item_id,
        rank_position,
        score_value?,
        generated_at,
        updated_at
      }
    ]
  },
  meta?: {
    limit?,
    offset?,
    cursor?,
    total_count?,
    generated_at?
  }
}

ad_candidate_list_shape:
{
  success: true,
  data: {
    items: [
      {
        ad_candidate_id,
        placement_type,
        target_item_type?,
        target_item_id?,
        title?,
        media_ref?,
        display_rule_summary?,
        updated_at
      }
    ]
  },
  meta?: {
    request_id?,
    candidate_generation_at?
  }
}

ad_display_create_request_shape:
{
  ad_candidate_id,
  placement_type,
  target_item_type?,
  target_item_id?,
  actor_principal_id?,
  display_context_code?,
  idempotency_key
}

ad_display_mutation_response_shape:
{
  success: true,
  data: {
    canonical_id,
    canonical_type,
    resulting_state?,
    updated_at_or_created_at?
  }
}

filter_allowlist:
- reaction target_type
- reaction target_id
- reaction_type
- ranking_scope
- ranking_window
- item_type
- placement_type

sort_allowlist:
- created_at
- generated_at
- updated_at
- rank_position

field_rules:
- reaction_type is required
- ranking_scope is required for ranking queries
- ranking_window is required for ranking queries
- placement_type is required for ad display
- idempotency_key is required for reaction create and ad display create
- ranking results are projection outputs, not writable end-user objects
- ad candidate list is control/projection output, not ad-delivery log output

not_returned_publicly:
- raw rollup input detail
- raw ranking feature vector
- raw bidding / auction markers
- raw ad targeting internals
- internal delivery retry markers
