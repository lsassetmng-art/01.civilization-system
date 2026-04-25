# ============================================================
# K6 SCREEN TO ENDPOINT MAPPING
# ============================================================

status: exact-mapping
scope: monetization-reaction-ranking-ad
prepared_by: Zero
owner: Boss

purpose:
Maps K6-level screens and UI entry points to monetization,
reaction, ranking, and ad canonical endpoints.

screen_mapping:

viewer_home:
- list_ranking_results
- get_ad_candidate_list

viewer_live_watch:
- create_reaction_event
- list_reaction_events
- create_tip_event
- get_ad_candidate_list
- create_ad_display_event

viewer_archive_watch:
- create_reaction_event
- list_reaction_events
- create_tip_event
- get_tip_event_detail
- get_ad_candidate_list
- create_ad_display_event

viewer_clip_watch:
- create_reaction_event
- list_reaction_events
- create_tip_event
- get_tip_event_detail
- get_ad_candidate_list
- create_ad_display_event

creator_analytics_dashboard:
- list_tip_events
- list_reaction_events
- list_ranking_results

creator_my_page_home:
- list_tip_events
- list_ranking_results

mapping_rules:
- viewer watch screens may invoke monetization/reaction paths but must not expose raw support tables
- creator analytics uses projection/list outputs only
- ranking is read/projection-facing, not end-user mutable
- ad display create is controlled logging path, not ad-control editing path
- viewer_home may consume ranking/ad candidate projections without exposing ad control-plane internals

out_of_scope_note:
- company_monetization_visibility deeper exact endpoint binding remains later refinement
- ERP transfer mapping remains outside this pack
