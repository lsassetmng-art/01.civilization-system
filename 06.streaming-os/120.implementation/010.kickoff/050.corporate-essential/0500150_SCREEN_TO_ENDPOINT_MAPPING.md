# ============================================================
# K5 SCREEN TO ENDPOINT MAPPING
# ============================================================

status: exact-mapping
scope: corporate-essential
prepared_by: Zero
owner: Boss

purpose:
Maps K5-level screens and UI entry points to corporate
canonical endpoints.

screen_mapping:

corporate_channel_home:
- get_channel_detail
- upsert_corporate_oversight_record
- upsert_affiliated_streamer_reference

corporate_channel_profile:
- get_channel_detail
- upsert_channel_record

corporate_official_stream_list:
- get_channel_detail

affiliated_streamer_list:
- upsert_affiliated_streamer_reference

affiliated_streamer_detail:
- upsert_affiliated_streamer_reference

corporate_oversight_dashboard:
- upsert_corporate_oversight_record

company_review_issue_list:
- upsert_corporate_oversight_record

company_monetization_visibility:
- upsert_corporate_oversight_record

mapping_rules:
- corporate screens must not reuse public viewer channel projection as oversight source of truth
- channel profile editing remains distinct from oversight mutation
- affiliated streamer flows remain distinct from channel ownership flows
- official stream summary may be shown in dashboard context, but dashboard does not replace channel detail identity

out_of_scope_note:
- deeper monetization detail remains later refinement
- explicit export/share endpoint binding remains later refinement
