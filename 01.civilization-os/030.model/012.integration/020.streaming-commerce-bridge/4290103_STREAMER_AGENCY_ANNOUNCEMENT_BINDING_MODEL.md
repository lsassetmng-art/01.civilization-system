# ============================================================
# STREAMER AGENCY ANNOUNCEMENT BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: streamer-agency-and-streaming-commerce-bridge
component: streamer-agency-announcement-binding

owner: Boss
prepared_by: Zero


# ANNOUNCEMENT BINDING

announcement_bindings:
- civilization_notice_board
- city_notice_surface
- nation_notice_surface
- sponsored_civilization_announcement


# EXECUTION RULE

civilization_announcement_executor:
- streamer_agency


# SOURCE REQUEST

announcement_source_requests:
- streaming_live_event_promotion_request
- channel_promotion_request
- streamer_brand_promotion_request


# FINAL RULE

Civilization-side announcement
must be executed by streamer agency.
