# ============================================================
# K6 SCOPE AND DONE DEFINITION
# ============================================================

status: exactness-pack
scope: monetization-reaction-ranking-ad
phase: K6 monetization-reaction-ranking-ad
prepared_by: Zero
owner: Boss

scope_in:
- streaming-core-monetization
- streaming-core-reaction-ranking-ad
- streaming-api-contracts portion for monetization / reaction / ranking / ad
- monetization / reaction / ranking / ad auth boundary
- monetization / reaction / ranking / ad screen-to-endpoint mapping

scope_out:
- Persona-side SQL execution
- corporate export/share detail
- ad-vendor exact transport detail
- ERP transfer exact mapping

canonical_endpoints_in_scope:
- create_tip_event
- get_tip_event_detail
- list_tip_events
- create_reaction_event
- list_reaction_events
- list_ranking_results
- get_ad_candidate_list
- create_ad_display_event

done_definition:
- monetization payload exactness fixed
- reaction / ranking / ad payload exactness fixed
- monetization table-column exactness fixed
- reaction / ranking / ad table-column exactness fixed
- auth / RLS exactness fixed
- screen-to-endpoint mapping fixed
- no hidden reopen point remains

stop_rules:
- raw monetization events become public viewer objects
- reaction raw events become public analytics objects
- ranking results lose projection-only identity
- ad display control leaks into general viewer content identity
