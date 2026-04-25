# ============================================================
# STREAMING OS CORPORATE SCREEN INVENTORY AND TRANSITION MAP
# ============================================================

status: canonical-draft
system: streaming-os
domain: screen-inventory-and-transition-map
owner: Boss
prepared_by: Zero

corporate_screens:
- corporate_channel_home
- corporate_channel_profile
- corporate_official_stream_list
- affiliated_streamer_list
- affiliated_streamer_detail
- corporate_oversight_dashboard
- company_review_issue_list
- company_monetization_visibility

transitions:
- corporate_channel_home
  -> corporate_channel_profile
  -> corporate_official_stream_list
  -> affiliated_streamer_list
  -> corporate_oversight_dashboard
  -> company_review_issue_list
  -> company_monetization_visibility

- affiliated_streamer_list
  -> affiliated_streamer_detail

- corporate_oversight_dashboard
  -> company_review_issue_list
  -> company_monetization_visibility

primary_entry:
- corporate_channel_home

canonical_statement:
Corporate-side screen flow
shall distinguish:
- official company channel home
- channel profile
- official stream visibility
- affiliated streamer visibility
- oversight dashboard
- review issue visibility
- monetization visibility

